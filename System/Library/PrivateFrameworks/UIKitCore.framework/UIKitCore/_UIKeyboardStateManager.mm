@interface _UIKeyboardStateManager
+ (BOOL)_isInputEligibleForSpaceAutodelete:(id)a3;
+ (Class)layoutClassForInputMode:(id)a3 keyboardType:(int64_t)a4 screenTraits:(id)a5;
- (BOOL)_canDeleteForward;
- (BOOL)_canHandleResponderCommand:(SEL)a3;
- (BOOL)_canHandleResponderCommandConservatively:(SEL)a3;
- (BOOL)_cancelOperation:(BOOL)a3 testOnly:(BOOL)a4;
- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)a3;
- (BOOL)_delegateRequiresKeyEvents;
- (BOOL)_handleKeyInputMethodCommandForEvent:(id)a3 canHandleAppKeyCommand:(BOOL)a4;
- (BOOL)_hasMarkedText;
- (BOOL)_insertSupplementalCandidate:(id)a3 overridingCandidateText:(id)a4;
- (BOOL)_isShowingCandidateUIWithAvailableCandidates;
- (BOOL)_isShowingSuggestionForKeyboardCamera;
- (BOOL)_isValidKeyInput:(id)a3;
- (BOOL)_shouldAcceptAutocorrectionOnSelectionChange;
- (BOOL)_shouldEmitString:(id)a3 forKeyEvent:(id)a4;
- (BOOL)_shouldLoadAutofillSignUpInputViewController;
- (BOOL)_shouldLoadPredictionsBasedOnCurrentTraits;
- (BOOL)_shouldRequestInputManagerSyncForKeyboardOutputCallbacks:(id)a3;
- (BOOL)acceptAutofillExtraCandidateIfNeeded:(id)a3;
- (BOOL)acceptInputString:(id)a3;
- (BOOL)acceptWord:(id)a3 firstDelete:(unint64_t)a4 forInput:(id)a5;
- (BOOL)allowsReachableKeyboard;
- (BOOL)applyAutocorrection:(id)a3;
- (BOOL)assertTextForRemoteDocument:(id)a3 withSelectionDelta:(id)a4 updatingSelection:(BOOL)a5;
- (BOOL)autocapitalizationPreference;
- (BOOL)autocorrectionPreference;
- (BOOL)automaticMinimizationEnabled;
- (BOOL)callLayoutIgnoresShiftState;
- (BOOL)callLayoutIsShiftKeyBeingHeld;
- (BOOL)callLayoutIsShiftKeyPlaneChooser;
- (BOOL)callLayoutUsesAutoShift;
- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)a3 characterCountForRapidDelete:(int)a4;
- (BOOL)callShouldInsertText:(id)a3;
- (BOOL)callShouldInsertText:(id)a3 onDelegate:(id)a4;
- (BOOL)canHandleKeyHitTest;
- (BOOL)canInsertAdaptiveImageGlyph;
- (BOOL)canInsertEmojiImageTextAttachment;
- (BOOL)canInsertStickerAsTextInputPayload;
- (BOOL)canPasteImage;
- (BOOL)canPresentPressAndHoldPopover:(id)a3;
- (BOOL)canShowAppConnections;
- (BOOL)canShowPredictionBar;
- (BOOL)canUseCandidateBarAsSupplementToInlineView;
- (BOOL)candidateSelectionPredictionForTraits;
- (BOOL)checkSpellingPreference;
- (BOOL)checkSpellingPreferenceForTraits;
- (BOOL)continuousPathUnderway;
- (BOOL)currentInputModeRequiresLTRMathExpression;
- (BOOL)currentKeyboardTraitsAllowCandidateBarWhileIgnoringHidePredictionTrait:(BOOL)a3;
- (BOOL)cursorIsAtEndOfMarkedText;
- (BOOL)cursorIsAtStartOfInlineCompletionMarkedText;
- (BOOL)deferEventHandlingToSystemWithContext:(id)a3;
- (BOOL)delegateAlreadyInAutofillGroup;
- (BOOL)delegateSuggestionsForCurrentInput;
- (BOOL)delegateSupportsCorrectionUI;
- (BOOL)deleteForwardAndNotify:(BOOL)a3 producedByDeleteInput:(BOOL)a4;
- (BOOL)disableInputBars;
- (BOOL)dontPushOneTimeCode;
- (BOOL)doubleSpacePeriodPreference;
- (BOOL)exclusivityIdentifierMatched;
- (BOOL)handleCandidateListNavigation:(unsigned int)a3 hasCandidatesForTypedInput:(BOOL)a4 shiftDown:(BOOL)a5 keyCommandTypeHandled:(unint64_t *)a6 allowRepeat:(BOOL *)a7 beforePublic:(BOOL)a8 keyEvent:(id)a9;
- (BOOL)handleHorizontalArrow:(BOOL)a3 shiftDown:(BOOL)a4 beforePublicKeyCommands:(BOOL)a5 testOnly:(BOOL)a6 isVerticalCandidate:(BOOL)a7 hasCandidatesForTypedInput:(BOOL)a8 shouldNavigateCandidateList:(BOOL)a9 canHandleInputDelegateCommand:(id)a10 savedHistory:(id)a11 keyCommandTypeHandled:(unint64_t *)a12 keyEvent:(id)a13;
- (BOOL)handleInputManagerBasedKeybind:(id)a3 testOnly:(BOOL)a4;
- (BOOL)handleInputSwitcherForKeyEvent:(id)a3;
- (BOOL)handleKeyAppCommandForCurrentEvent;
- (BOOL)handleKeyCommand:(id)a3 repeatOkay:(BOOL *)a4 beforePublicKeyCommands:(BOOL)a5;
- (BOOL)handleKeyCommandsBeforePublicAsInputUIHost:(id)a3;
- (BOOL)handleKeyInputMethodCommandForCurrentEvent;
- (BOOL)handleKeyTextCommandForCurrentEvent;
- (BOOL)handleMoveCursorToEndOfLine:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 testOnly:(BOOL)a5 savedHistory:(id)a6 force:(BOOL)a7 canHandleSelectableInputDelegateCommand:(id)a8 keyEvent:(id)a9;
- (BOOL)handleMoveCursorToStartOfLine:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 testOnly:(BOOL)a5 savedHistory:(id)a6 force:(BOOL)a7 canHandleSelectableInputDelegateCommand:(id)a8 keyEvent:(id)a9;
- (BOOL)handleReturnKey:(BOOL)a3;
- (BOOL)handleTabWithShift:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 isMoveAction:(BOOL)a5 testOnly:(BOOL)a6;
- (BOOL)handleVerticalArrow:(BOOL)a3 shiftDown:(BOOL)a4 beforePublicKeyCommands:(BOOL)a5 testOnly:(BOOL)a6 isVerticalCandidate:(BOOL)a7 hasCandidatesForTypedInput:(BOOL)a8 inputDelegateCommandEnabled:(BOOL)a9 canHandleInputDelegateCommand:(id)a10 savedHistory:(id)a11 keyCommandTypeHandled:(unint64_t *)a12 keyEvent:(id)a13;
- (BOOL)hasAdvancedInputDelegate;
- (BOOL)hasAsyncCapableInputDelegate;
- (BOOL)hasAutocorrectPrompt;
- (BOOL)hasDelegate;
- (BOOL)hasEditableMarkedText;
- (BOOL)hasInlineCompletionAsMarkedText;
- (BOOL)imageSuggestionEnabled;
- (BOOL)initializationDone;
- (BOOL)inputModeSwitcherVisible;
- (BOOL)inputUIHandleTabWithShift:(BOOL)a3 testOnly:(BOOL)a4;
- (BOOL)insertAutoFillTextSuggestion:(id)a3;
- (BOOL)insertTextIfShould:(id)a3;
- (BOOL)insertsSpaceAfterPredictiveInput;
- (BOOL)isAutoFillMode;
- (BOOL)isCallingInputDelegate;
- (BOOL)isCapsLockASCIIToggle;
- (BOOL)isCapsLockSwitchEnabled;
- (BOOL)isCurrentEditResponderInEditingMode;
- (BOOL)isCurrentEditResponderWebKit;
- (BOOL)isInHardwareKeyboardMode;
- (BOOL)isInlineCompletionEnabled;
- (BOOL)isMemberOfAutofillGroup:(id)a3;
- (BOOL)isMemberOfPossibleAutofillGroup:(id)a3;
- (BOOL)isMinimized;
- (BOOL)isPredictionViewControllerVisible;
- (BOOL)isRTIClient;
- (BOOL)isRotating;
- (BOOL)isSelecting;
- (BOOL)isSelectionAtSentenceAutoshiftBoundary:(BOOL)a3;
- (BOOL)isSelectionChanging;
- (BOOL)isShiftKeyBeingHeld;
- (BOOL)isTrackpadMode;
- (BOOL)keyboardInputModeIndicatorControllerShouldPresentIndicator:(id)a3;
- (BOOL)keyboardIsInPencilTextInputMode;
- (BOOL)keyboardLayoutIsInAnotherProcess;
- (BOOL)keyboardsExpandedPreference;
- (BOOL)maximizing;
- (BOOL)needAutofillLogin;
- (BOOL)needCellularAutofill;
- (BOOL)needOneTimeCodeAutofill;
- (BOOL)needsToDeferUpdateTextCandidateView;
- (BOOL)nextCharacterIsWordCharacter;
- (BOOL)nextInputWouldStartSentence;
- (BOOL)noContent;
- (BOOL)performKeyboardEvent:(id)a3;
- (BOOL)performKeyboardOutput:(id)a3 checkingDelegate:(BOOL)a4 forwardToRemoteInputSource:(BOOL)a5;
- (BOOL)performKeyboardOutput:(id)a3 userInfo:(id)a4;
- (BOOL)performSendAction;
- (BOOL)predictionFromPreference;
- (BOOL)preferFallbackAutofillGroup;
- (BOOL)presentTextCompletionAsMarkedText:(id)a3;
- (BOOL)prewarmsPredictiveCandidates;
- (BOOL)returnKeyEnabled;
- (BOOL)selectionScrolling;
- (BOOL)shiftLockPreference;
- (BOOL)shouldAcceptCandidate:(id)a3 beforeInputString:(id)a4;
- (BOOL)shouldAcceptContinuousPathConversion:(id)a3;
- (BOOL)shouldAccessInputManagerService;
- (BOOL)shouldAllowRepeatEvent:(id)a3;
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)shouldApplyAcceptedAutocorrection:(id)a3;
- (BOOL)shouldApplyKeyboardCommandToUIHost;
- (BOOL)shouldApplyKeyboardInputToUIHost;
- (BOOL)shouldClearConversationContextForClient:(id)a3;
- (BOOL)shouldDeferEventHandlingToSystemForTextInput:(id)a3 context:(id)a4;
- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)a3;
- (BOOL)shouldGenerateCandidatesAfterSelectionChange;
- (BOOL)shouldLoadAutofillSignUpInputViewController;
- (BOOL)shouldPreventLongFormSmartRepliesFromStarting;
- (BOOL)shouldPrioritizeTextSuggestionsOverCandidateResultSet:(id)a3;
- (BOOL)shouldRapidDelete;
- (BOOL)shouldShowCandidateBar;
- (BOOL)shouldShowKeyboardMenu;
- (BOOL)shouldShowLongPredictionList;
- (BOOL)shouldSuppressSelectionCommands;
- (BOOL)shouldSwitchFromInputManagerMode:(id)a3 toInputMode:(id)a4;
- (BOOL)shouldSwitchInputMode:(id)a3;
- (BOOL)shouldUnderlineCandidate:(id)a3;
- (BOOL)shouldUseAdaptiveDelete;
- (BOOL)shouldUseCarPlayModes;
- (BOOL)shouldUsePinyinStyleRowNavigation;
- (BOOL)showingEmojiSearch;
- (BOOL)showsCandidateBar;
- (BOOL)showsCandidateInline;
- (BOOL)smartInsertDeleteIsEnabled;
- (BOOL)suppliesCompletions;
- (BOOL)supportsGenmojiCreation;
- (BOOL)supportsNumberKeySelection;
- (BOOL)supportsSetPhraseBoundary;
- (BOOL)suppressOptOutASPCandidateUpdateForDelegate:(id)a3;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5 fromCapsLock:(BOOL)a6;
- (BOOL)textInputTraitsNeedAutofill;
- (BOOL)textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact;
- (BOOL)textInputTraitsNeedContactAutoFill;
- (BOOL)textInputTraitsNeedOneTimeCode;
- (BOOL)textInputTraitsNeedSignup;
- (BOOL)uncachedDelegateSupportsImagePaste;
- (BOOL)usesAutoDeleteWord;
- (BOOL)usesCandidateSelection;
- (BOOL)utlizeEuclidModelForDictationReplacement;
- (BOOL)willDoubleSpacePeriodForInputString:(id)a3 afterSpace:(BOOL)a4 elapsedTime:(double)a5;
- (CGRect)correctionRect;
- (CGRect)getCorrectionRectIsVertical:(BOOL *)a3;
- (CGRect)subtractKeyboardFrameFromRect:(CGRect)a3 inView:(id)a4;
- (TIDocumentState)documentState;
- (TIKeyboardInputManagerStub)inputManager;
- (TISmartPunctuationController)smartPunctuationController;
- (TUIKeyboardBackendController)backendController;
- (UIKBRTIPartner)remoteTextInputPartner;
- (UIKBRTIPartner)remoteTextInputPartnerPrivate;
- (UIKeyInput)delegate;
- (UITextInteractionAssistant)textInteractionAssistant;
- (UIView)overlayContainerObserved;
- (_UIKeyboardPresentationDelegate)presentationDelegate;
- (_UIKeyboardStateManager)initWithPresentationDelegateView:(id)a3 forCustomInputView:(BOOL)a4;
- (_UIKeyboardTextSelectionController)textSelectionController;
- (_UITextChoiceAccelerationAssistant)_textChoicesAssistant;
- (_UITextInputUserInteractionDelegate)userInteractionDelegate;
- (_UITextInteractionEditMenuAssistant)_editMenuAssistant;
- (double)biasedKeyboardWidthRatio;
- (double)scaleCurrentForceFrom:(double)result to:(double)a4;
- (double)shouldExtendLongPressAction:(id)a3;
- (double)timeoutForCurrentForce;
- (double)timestampOfLastTouchesEnded;
- (id)UILanguagePreference;
- (id)_acquireWaitingOnPerformAutocorrect;
- (id)_activeAssertionController;
- (id)_attributedCorrectionTextEffectAnimation:(id)a3;
- (id)_attributedCorrectionTextEffectStyle:(id)a3;
- (id)_autocorrectionListDemotingAutocorrectionFromList:(id)a3;
- (id)_autofillGroup;
- (id)_buildCandidatesFromResults:(id)a3 selectedText:(id)a4;
- (id)_contentsOfUsernameField;
- (id)_fallbackAutofillGroup;
- (id)_getAutocorrection;
- (id)_getAutocorrectionList;
- (id)_getCandidateList;
- (id)_getCurrentKeyboardName;
- (id)_getCurrentKeyplaneName;
- (id)_getLocalizedInputMode;
- (id)_keyboardBehaviorState;
- (id)_markedText;
- (id)_obtainSessionIdentifierAssertionForReason:(id)a3;
- (id)_rangeForAutocorrectionText:(id)a3;
- (id)_rangeForSupplementalItemText:(id)a3;
- (id)_remoteAppId;
- (id)_remoteAssociatedDomains;
- (id)_remoteLocalizedAppName;
- (id)_remoteUnlocalizedAppName;
- (id)_rtiDocumentStateForAutoFillPopover;
- (id)_supplementalCandidateIcon:(id)a3;
- (id)_targetForResponderCommand:(SEL)a3;
- (id)_textInputController;
- (id)acceptAutocorrectionForWordTerminator:(id)a3;
- (id)acceptCurrentCandidateForInput:(id)a3;
- (id)acceptInlineCandidateForInput:(id)a3 withSpace:(BOOL)a4;
- (id)activeLayout;
- (id)asyncCapableInputDelegate;
- (id)asyncInputDelegate;
- (id)asyncWebKitInteractionDelegate;
- (id)attributedCorrectionFromTextAnimationCandidate:(id)a3;
- (id)attributedText;
- (id)autocorrectPromptRectsFromFirstDelegateRect:(CGRect)a3 lastDelegateRect:(CGRect)a4;
- (id)autocorrectionRecordForWord:(id)a3;
- (id)buildInputSourceState;
- (id)delegateAsResponder;
- (id)desirableInputModesWithExtensions:(BOOL)a3;
- (id)dictationAlternativesForReplacement;
- (id)documentIdentifierForInputDelegate:(id)a3;
- (id)dynamicCaretList;
- (id)emojiCandidate:(id)a3;
- (id)generateAutocorrectionListForSelectedText;
- (id)generateAutocorrectionReplacements:(id)a3;
- (id)handleDeleteAutospaceForInputString:(id)a3 afterSpace:(BOOL)a4;
- (id)handleReplacement:(id)a3 forSpaceAndInput:(id)a4;
- (id)hardwareKeyboardsSeenPreference;
- (id)inputDelegate;
- (id)inputEventForInputString:(id)a3;
- (id)inputModePreference;
- (id)inputOverlayContainerForCandidateView:(BOOL)a3;
- (id)inputStringFromPhraseBoundary;
- (id)inputSystemSourceSession;
- (id)inputWordForTerminatorAtSelection;
- (id)internationalKeyDisplayStringOnEmojiKeyboard;
- (id)layoutState;
- (id)physicalKeyboardEventWithInput:(id)a3 inputFlags:(int)a4;
- (id)replacementsFromSelectedText;
- (id)responderForSendCurrentLocation;
- (id)savedAutocorrectionListForCandidate:(id)a3;
- (id)searchStringForMarkedText;
- (id)textContentTypeForCurrentInputDelegate;
- (id)textSuggestions;
- (id)updateKeyBehaviors:(id)a3 withBehaviors:(id)a4 forState:(id)a5;
- (id)updateSecureCandidateRenderTraits;
- (id)updatedKeyBehaviors;
- (id)webInputDelegate;
- (int)returnKeyType;
- (int64_t)_textInputSourceForDelegate:(id)a3;
- (int64_t)autofillSubMode;
- (int64_t)currentHandBias;
- (int64_t)needAutofill;
- (int64_t)needAutofillCandidate:(id)a3;
- (int64_t)preferredCandidateViewTypeForCandidateResultSet:(id)a3;
- (unint64_t)_handleKeyCommandCommon:(id)a3 options:(unint64_t)a4;
- (unint64_t)_updateAutocorrectionPreferenceForTraitsWithCurrentPreference:(BOOL)a3;
- (unint64_t)autocorrectionPreferenceForTraits;
- (unint64_t)delegateConformanceType;
- (unint64_t)handleKeyCommand:(id)a3 repeatOkay:(BOOL *)a4 options:(unint64_t)a5;
- (unint64_t)maxNumberOfProactiveCells;
- (unint64_t)phraseBoundary;
- (unint64_t)textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unsigned)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 compareAttributes:(BOOL)a8;
- (unsigned)assertIntermediateText:(id)a3;
- (unsigned)setMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 candidateOffset:(int64_t)a8 liveConversionSegments:(id)a9 highlighSegmentIndex:(unint64_t)a10;
- (void)_acceptAutocorrection;
- (void)_acceptAutofillCandidateRequiringAuthentication:(id)a3 payloadDelegate:(id)a4 executionContext:(id)a5;
- (void)_acceptSupplementalCandidate:(id)a3 completion:(id)a4;
- (void)_addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 withInputSource:(int64_t)a6;
- (void)_attemptAuthenticationWithMessage:(id)a3;
- (void)_cancelPendingSupplementalCandidateInsertion;
- (void)_completePerformInputViewControllerOutput:(id)a3 executionContext:(id)a4;
- (void)_conditionallyNotifyPredictionsAreAvailableForCandidates:(id)a3 containingProactiveTriggers:(BOOL)a4;
- (void)_configureMarkedTextAttributesForConversion:(id)a3 selectedRange:(_NSRange)a4 highlightRange:(_NSRange)a5;
- (void)_deactiveActiveKeys;
- (void)_deleteFromInputWithFlags:(unint64_t)a3;
- (void)_didReplaceText:(id)a3 withSupplementalCandidate:(id)a4;
- (void)_dispatchInsertionPointEnteredText:(id)a3 range:(id)a4 withSupplementalCandidate:(id)a5;
- (void)_dispatchInsertionPointExitedRangeWithSupplementalCandidate;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_ensureRTIConnection;
- (void)_forwardNeededShiftStatesToDestination;
- (void)_generateTextSuggestionForKeyboardCamera;
- (void)_handleKeyBehavior:(unint64_t)a3 forKeyType:(id)a4;
- (void)_handleKeyEvent:(id)a3 executionContext:(id)a4;
- (void)_handleWebKeyEvent:(id)a3 withEventType:(int)a4 withInputString:(id)a5 withInputStringIgnoringModifiers:(id)a6 executionContext:(id)a7;
- (void)_handleWebKeyEvent:(id)a3 withEventType:(unint64_t)a4 withInputString:(id)a5 withInputStringIgnoringModifiers:(id)a6;
- (void)_handleWebKeyEvent:(id)a3 withIndex:(unint64_t)a4 inInputString:(id)a5;
- (void)_handleWebKeyEvent:(id)a3 withIndex:(unint64_t)a4 inInputString:(id)a5 executionContext:(id)a6;
- (void)_handleWebKeyEvent:(id)a3 withInputString:(id)a4 executionContext:(id)a5;
- (void)_inputManagerDidGenerateSupplementalCandidates:(id)a3;
- (void)_insertSmartText:(id)a3 completionHandler:(id)a4;
- (void)_insertStickerAsNonTextAttachment:(id)a3;
- (void)_insertionPointExitedRangeWithSupplementalCandidate;
- (void)_local_acceptAutocorrection;
- (void)_noteInlineCompletionAsMarkedText:(id)a3;
- (void)_notifyDidTeardownExistingDelegate:(id)a3 newDelegate:(id)a4;
- (void)_notifyWillSetupNewDelegate:(id)a3 existingDelegate:(id)a4;
- (void)_performInputViewControllerOutput:(id)a3;
- (void)_performKeyboardOutput:(id)a3 respectingForwardingDelegate:(BOOL)a4;
- (void)_performTextOperationsForAutoFill:(id)a3;
- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)a3 selectionChanged:(BOOL)a4;
- (void)_postInputResponderChangedNotification;
- (void)_processInputViewControllerKeyboardOutput:(id)a3 executionContext:(id)a4;
- (void)_reloadInputViewsForSameDelegate:(id)a3 existingDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6;
- (void)_remapKeyEvent:(id)a3 withKeyEventMap:(id)a4;
- (void)_requestInputManagerSync;
- (void)_scheduleInputAdditionOrDeletion:(id)a3;
- (void)_setAutofillGroup:(id)a3;
- (void)_setDelegate:(id)a3 existingDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6;
- (void)_setInputManager:(id)a3;
- (void)_setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 force:(BOOL)a5;
- (void)_setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 force:(BOOL)a6 executionContext:(id)a7;
- (void)_setSuggestions:(id)a3;
- (void)_setTransientSelectionModeEnabled:(BOOL)a3 forInputDelegate:(id)a4;
- (void)_setWaitingOnPerformAutocorrect:(id)a3;
- (void)_setupDelegate:(id)a3 delegateSame:(BOOL)a4 hardwareKeyboardStateChanged:(BOOL)a5 endingInputSessionIdentifier:(id)a6 force:(BOOL)a7 delayEndInputSession:(BOOL)a8;
- (void)_signalInvocationOfKeyCommandForAction:(uint64_t)a1;
- (void)_startSmartReplyWritingToolWithPrompt:(id)a3 entryPoint:(id)a4 inputContextHistory:(id)a5;
- (void)_stopAutoDeleteAtDocumentStart;
- (void)_tagTouchForTypingMenu:(unsigned int)a3;
- (void)_teardownExistingDelegate:(id)a3 forSetDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6;
- (void)_updateCanSuggestSupplementalItemsForCurrentSelection;
- (void)_updateCandidatesWithCandidates:(id)a3 usesCandidateSelection:(BOOL)a4;
- (void)_updateDelegateRequiresKeyEventsFromRemoteTextInput;
- (void)_updateInputViewControllerOutput:(id)a3 forKeyboardOutput:(id)a4;
- (void)_updateKeyboardConfigurations;
- (void)_willReplaceText:(id)a3 withSupplementalCandidate:(id)a4;
- (void)acceptAutocorrection;
- (void)acceptAutocorrection:(id)a3 executionContextPassingTIKeyboardCandidate:(id)a4;
- (void)acceptAutocorrectionAndEndComposition;
- (void)acceptAutocorrectionForWordTerminator:(id)a3 executionContextPassingTIKeyboardCandidate:(id)a4;
- (void)acceptAutocorrectionWithCompletionHandler:(id)a3 requestedByRemoteInputDestination:(BOOL)a4;
- (void)acceptCandidate:(id)a3 forInput:(id)a4;
- (void)acceptCandidate:(id)a3 forInput:(id)a4 executionContext:(id)a5;
- (void)acceptCurrentCandidateIfSelected;
- (void)acceptCurrentCandidateIfSelectedWithExecutionContext:(id)a3;
- (void)acceptFirstCandidate;
- (void)acceptHandwritingCandidate;
- (void)acceptInlineCompletionWithCompletionHandler:(id)a3;
- (void)acceptPredictiveInput:(id)a3 appendSeparator:(BOOL)a4;
- (void)acceptPredictiveInput:(id)a3 appendSeparator:(BOOL)a4 executionContext:(id)a5;
- (void)acceptRecentInput:(id)a3;
- (void)acceptingCandidateWithTrigger:(id)a3;
- (void)addInputEvent:(id)a3 executionContext:(id)a4;
- (void)addInputObject:(id)a3;
- (void)addInputObject:(id)a3 executionContext:(id)a4;
- (void)addInputString:(id)a3 fromVariantKey:(BOOL)a4;
- (void)addInputString:(id)a3 withFlags:(unint64_t)a4;
- (void)addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5;
- (void)addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 withInputSource:(int64_t)a6 executionContext:(id)a7;
- (void)addSupplementalLexicon:(id)a3;
- (void)addWordTerminator:(id)a3 afterSpace:(BOOL)a4 afterAcceptingCandidate:(id)a5 elapsedTime:(double)a6 executionContext:(id)a7;
- (void)adjustAutoDeleteTimerForForce:(double)a3;
- (void)adjustCapsLockDelayOverride;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4 executionContext:(id)a5;
- (void)adjustSegmentSize:(int64_t)a3;
- (void)animateAutocorrectionToRect:(CGRect)a3 fromRect:(CGRect)a4;
- (void)animateAutocorrectionToText:(id)a3 fromRect:(CGRect)a4;
- (void)applyAssistantItem:(id)a3;
- (void)becomeFirstResponderAndMakeVisible:(BOOL)a3;
- (void)beginAcceptingInlineCompletionByDirectTap;
- (void)callChangedDelegate;
- (void)callLayoutLongPressAction;
- (void)callLayoutSetAutoshift:(BOOL)a3;
- (void)callLayoutSetShift:(BOOL)a3;
- (void)callLayoutUpdateAllLocalizedKeys;
- (void)callLayoutUpdateLocalizedKeys;
- (void)cancelCandidateRequests;
- (void)cancelDictationOnSendReturnKeyPressed;
- (void)candidateBarDidExtendWithGesture;
- (void)candidateListAcceptCandidate:(id)a3;
- (void)candidateListSelectionDidChange:(id)a3;
- (void)changingContextWithTrigger:(id)a3;
- (void)cleanUpBeforeInputModeSwitch;
- (void)clearAutoDeleteTimer;
- (void)clearAutocorrectPromptTimer;
- (void)clearAutofillGroup;
- (void)clearCapsLockDelayOverrideTimer;
- (void)clearDelayDeleteTimer;
- (void)clearDelegate;
- (void)clearForwardingInputDelegateAndResign:(BOOL)a3;
- (void)clearIdleDetectionAction;
- (void)clearInput;
- (void)clearInputForMarkedText;
- (void)clearInputWithCandidatesCleared:(BOOL)a3;
- (void)clearKeyboardWindowSnapshot;
- (void)clearLongPressTimer;
- (void)clearRemoteTextInputPartner;
- (void)clearSelection;
- (void)clearShiftState;
- (void)clearTimers;
- (void)clearTransientState;
- (void)clearUpdateLastUsedInputModeAction;
- (void)collapseSelection;
- (void)completeAcceptCandidate:(id)a3;
- (void)completeAcceptCandidateBeforeAddingInputObject:(id)a3 executionContext:(id)a4;
- (void)completeAddInputString:(id)a3 generateCandidates:(BOOL)a4;
- (void)completeDelete;
- (void)completeDeleteFromInput;
- (void)completeDeleteOnceFromInputWithCharacterBefore:(unsigned int)a3;
- (void)completeHandleAutoDelete;
- (void)completeHandleKeyEvent:(id)a3;
- (void)completeUpdateForChangedSelection:(BOOL)a3;
- (void)conversationContext:(id)a3 didChange:(id)a4;
- (void)createTypoTrackerReport;
- (void)deactivateLayout;
- (void)dealloc;
- (void)deferReplaceTextActionToSystem:(id)a3;
- (void)deleteBackwardAndNotifyAtEnd:(BOOL)a3 deletionCount:(unint64_t)a4 reinsertTextInLoop:(BOOL)a5;
- (void)deleteFromInputWithFlags:(unint64_t)a3;
- (void)deleteFromInputWithFlags:(unint64_t)a3 executionContext:(id)a4;
- (void)deleteHandwritingStrokesAtIndexes:(id)a3;
- (void)deleteOnceFromInputWithExecutionContext:(id)a3;
- (void)detach;
- (void)didAcceptAutocorrection:(id)a3 inputCandidate:(id)a4 wordTerminator:(id)a5 learningFlagsMask:(unint64_t)a6;
- (void)didApplyAutocorrection:(id)a3 autocorrectPromptFrame:(CGRect)a4;
- (void)didChangeForwardingInputDelegate:(id)a3;
- (void)didChangePhraseBoundary;
- (void)didClearText;
- (void)didSetDelegate;
- (void)disableTransientSelectionMode;
- (void)dismissAutoFillMenu;
- (void)dismissKeyboard;
- (void)dismissTextChoicePrompt;
- (void)displayAutoFillPopoverIfAutoFillModeDetected;
- (void)documentStateFromInputDelegate:(id)a3;
- (void)ejectKeyDown;
- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4;
- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4 selectionMethod:(id)a5 inputType:(id)a6;
- (void)enableTransientInputDelegateSelectionMode;
- (void)enableTransientSelectionMode;
- (void)endAcceptingInlineCompletionByDirectTap;
- (void)fadeAutocorrectPrompt;
- (void)finishSetExtensionInputMode:(id)a3 didChangeDirection:(BOOL)a4;
- (void)finishSetInputMode:(id)a3 didChangeDirection:(BOOL)a4;
- (void)finishSetInputModeToNextInPreferredListWithExecutionContext:(id)a3 withPreviousInputMode:(id)a4;
- (void)finishSetKeyboardInputMode:(id)a3 previousInputMode:(id)a4 didChangeDirection:(BOOL)a5;
- (void)finishTextChanged;
- (void)flushDelayedTasks;
- (void)flushKeyboardOutputOnInputSourceSession;
- (void)flushTouchEventWaitingForKeyInputEventIfNecessary;
- (void)forceShiftUpdateIfKeyboardStateChanged;
- (void)forwardDictationEvent_cancelDictation;
- (void)forwardDictationEvent_handleDictationShouldPause:(BOOL)a3 withNewDelagate:(BOOL)a4;
- (void)forwardDictationEvent_handleTip:(id)a3 title:(id)a4;
- (void)forwardDictationEvent_movePopoverView:(id)a3;
- (void)forwardDictationEvent_resumeDictation;
- (void)forwardDictationEvent_startDictation;
- (void)forwardDictationEvent_stopDictation:(BOOL)a3;
- (void)forwardDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)forwardDictationEvent_switchToDictationInputModeWithOptions:(id)a3;
- (void)forwardDictationEvent_switchToDictationLanguage:(id)a3;
- (void)forwardDictationEvent_updateIdleDetection:(int64_t)a3;
- (void)forwardKeyboardCameraEvent_selfDestruct;
- (void)forwardKeyboardCameraEvent_startCameraInput:(id)a3;
- (void)forwardKeyboardCameraEvent_updatePreviewText:(id)a3 asMarkedText:(BOOL)a4;
- (void)forwardKeyboardEventBackToDestination:(id)a3;
- (void)generateAutocorrectionWithExecutionContext:(id)a3;
- (void)generateAutocorrectionsWithCompletionHandler:(id)a3;
- (void)generateAutofillCandidateByAddingTask:(BOOL)a3;
- (void)generateCandidatesAsynchronously;
- (void)generateCandidatesAsynchronouslyWithRange:(_NSRange)a3 selectedCandidate:(id)a4;
- (void)generateCandidatesFromReplacements;
- (void)generateCandidatesWithOptions:(int)a3;
- (void)generateReplacementsForString:(id)a3 candidatesHandler:(id)a4 executionContext:(id)a5;
- (void)handleAcceptedCandidate:(id)a3 executionContext:(id)a4;
- (void)handleAutoDeleteContinuationOnDestinationWithDeletionCount:(unint64_t)a3;
- (void)handleAutoDeleteWithExecutionContext:(id)a3;
- (void)handleAutoFillContactDetected;
- (void)handleAutoFillContactPopoverCommand;
- (void)handleAutoFillCreditCardDetected;
- (void)handleAutoFillCreditCardPopoverCommand;
- (void)handleAutoFillPasswordDetected;
- (void)handleAutoFillPasswordPopoverCommand;
- (void)handleAutofillCredentialSaveIfNeeded:(id)a3;
- (void)handleClear;
- (void)handleClearWithExecutionContext:(id)a3;
- (void)handleClearWithInsertBeforeAdvance:(id)a3;
- (void)handleDelayedActionLongPress:(id)a3;
- (void)handleDelete;
- (void)handleDeleteAsRepeat:(BOOL)a3 executionContext:(id)a4;
- (void)handleDeleteWithExecutionContext:(id)a3;
- (void)handleDeleteWordWithExecutionContext:(id)a3;
- (void)handleDeletionForCandidate:(id)a3;
- (void)handleEmojiInput:(id)a3 keyboardState:(id)a4;
- (void)handleEmojiPopoverKeyCommand;
- (void)handleEventCallbackFromRemoteDestination_didChooseSupplementalItem:(id)a3 toReplaceText:(id)a4;
- (void)handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection:(BOOL)a3;
- (void)handleEventFromRemoteSource_autoFillIsMenuPresented:(BOOL)a3;
- (void)handleEventFromRemoteSource_autoFillIsModalUIPresented:(BOOL)a3;
- (void)handleEventFromRemoteSource_chooseSupplementalItem:(id)a3 toReplaceText:(id)a4;
- (void)handleEventFromRemoteSource_insertAutofillContent:(id)a3;
- (void)handleEventFromRemoteSource_insertSupplementalCandidate:(id)a3 textToCommit:(id)a4;
- (void)handleEventFromRemoteSource_insertionPointEnteredText:(id)a3 withSupplementalCandidate:(id)a4;
- (void)handleGrammarCorrectionEntries:(id)a3;
- (void)handleIdleDetectionAction;
- (void)handleInsertSmartCandidate:(id)a3;
- (void)handleKeyEvent:(id)a3;
- (void)handleKeyEvent:(id)a3 executionContext:(id)a4;
- (void)handleKeyWithString:(id)a3 forKeyEvent:(id)a4 executionContext:(id)a5;
- (void)handleKeyboardInput:(id)a3 executionContext:(id)a4;
- (void)handleModifiersChangeForKeyEvent:(id)a3 executionContext:(id)a4;
- (void)handleRemoteDictationEvent_cancelDictation;
- (void)handleRemoteDictationEvent_handleTip:(id)a3;
- (void)handleRemoteDictationEvent_movePopoverView:(id)a3;
- (void)handleRemoteDictationEvent_resumeDictation;
- (void)handleRemoteDictationEvent_setDisambiguationActive:(BOOL)a3 maxOptions:(unint64_t)a4;
- (void)handleRemoteDictationEvent_setEditMenuFrame:(id)a3;
- (void)handleRemoteDictationEvent_startDictation;
- (void)handleRemoteDictationEvent_stopDictation:(BOOL)a3;
- (void)handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)handleRemoteDictationEvent_switchToDictationInputModeWithOptions:(id)a3;
- (void)handleRemoteDictationEvent_switchToDictationLanguage:(id)a3;
- (void)handleRemoteDictationEvent_updateIdleDetection:(int64_t)a3;
- (void)handleRemoteIndirectGestureWithState:(id)a3;
- (void)handleRemoteKeyboardCameraEvent_startCameraInput:(id)a3;
- (void)handleStringInput:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 executionContext:(id)a6;
- (void)handleUpdateLastUsedInputModeAction:(id)a3;
- (void)handleWebViewCredentialsSaveForWebsiteURL:(id)a3 user:(id)a4 password:(id)a5 passwordIsAutoGenerated:(BOOL)a6;
- (void)hostApplicationDidEnterBackground;
- (void)hostApplicationWillEnterForeground;
- (void)inputManagerDidGenerateAutocorrections:(id)a3 forPredictiveInput:(id)a4 executionContext:(id)a5;
- (void)inputManagerDidGenerateCandidateResultSet:(id)a3;
- (void)insertAdaptiveImageGlyph:(id)a3;
- (void)insertAttributedText:(id)a3;
- (void)insertCustomTextSuggestion:(id)a3;
- (void)insertDictationResult:(id)a3;
- (void)insertEmojiImageTextAttachment:(id)a3;
- (void)insertSticker:(id)a3;
- (void)insertText:(id)a3 withAlternativePredictions:(id)a4;
- (void)insertTextSuggestionCandidate:(id)a3;
- (void)insertedAccentVariantFromPopover:(id)a3;
- (void)insertedEmojiFromPopover:(id)a3 selectionMethod:(id)a4;
- (void)invalidateTextEntryContextForTextInput:(id)a3;
- (void)keyboardInputModeIndicatorControllerDismissIndicator:(id)a3;
- (void)keyboardInputModeIndicatorControllerPresentIndicator:(id)a3 reason:(id)a4;
- (void)keyboardSceneDelegate:(id)a3 startedPinningInputViewsOnBehalfOfResponder:(id)a4;
- (void)keyboardSceneDelegate:(id)a3 stoppedPinningInputViewsOnBehalfOfResponder:(id)a4;
- (void)layoutDidResize;
- (void)longPressAction:(id)a3;
- (void)lookUpResponderChainForCustomInputView;
- (void)modifyTextInputTraits:(id)a3 forceSync:(BOOL)a4;
- (void)moveCursorByAmount:(int64_t)a3;
- (void)movePhraseBoundaryToDirection:(int64_t)a3 granularity:(int64_t)a4;
- (void)nonDestructivelyDismissKeyboard;
- (void)notifyInputSourceStateChangeIfNeeded;
- (void)notifyShiftState;
- (void)optOutASPInTextField;
- (void)performAutoDeleteNumberOfTimes:(unint64_t)a3 deleteOneWord:(BOOL)a4 forwardToInputSource:(BOOL)a5 deleteCount:(int64_t *)a6;
- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)a3;
- (void)performDelete;
- (void)performHitTestForTouchEvent:(id)a3 executionContextPassingNSNumber:(id)a4;
- (void)performHitTestForTouchEvents:(id)a3 executionContextPassingNSNumber:(id)a4;
- (void)performKeyBehaviorCommitInlineWithSpace:(BOOL)a3;
- (void)performKeyBehaviorConfirm;
- (void)performKeyBehaviorConfirmFirstCandidate;
- (void)performKeyboardActionButtonAction;
- (void)performKeyboardOutput:(id)a3;
- (void)performKeyboardOutput:(id)a3 forwardToRemoteInputSource:(BOOL)a4;
- (void)performKeyboardOutputAsInputViewControllerOutput:(id)a3 textInputSource:(int64_t)a4;
- (void)performKeyboardOutputAsRTIClient:(id)a3;
- (void)performKeyboardOutputInfo:(id)a3;
- (void)performKeyboardOutputOnInputSourceSession:(id)a3 shouldFlush:(BOOL)a4;
- (void)performOnInputSourceSessionActionSelector:(SEL)a3;
- (void)performOperations:(id)a3 withTextInputSource:(int64_t)a4;
- (void)performReturn;
- (void)performSendCurrentLocation;
- (void)performStopAutoDeleteAtDocumentStart;
- (void)performTextOperationActionSelector:(SEL)a3;
- (void)populateDictationAlternativesCandidates:(BOOL)a3 withDictationAlternatives:(id)a4;
- (void)populateEuclidCandidates:(BOOL)a3;
- (void)postInputResponderCapabilitiesChangedNotification;
- (void)postInputViewControllerShouldUpdateNotification:(id)a3;
- (void)prepareForSelectionChange;
- (void)prepareKeyboardInputModeFromPreferences:(id)a3;
- (void)presentContinuousPathIntroductionView;
- (void)presentEmojiGenerationWithInputString:(id)a3;
- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)a3;
- (void)presentTextChoicePromptForRange:(id)a3;
- (void)presentationDelegateWillDetach;
- (void)proceedShouldReturnIfNeededForASP;
- (void)processPayloadInfo:(id)a3;
- (void)pushAutocorrections:(id)a3 requestToken:(id)a4;
- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4;
- (void)queueDelayedTask:(id)a3;
- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3;
- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3 allowNonLinguisticInputModes:(BOOL)a4;
- (void)refreshAutofillModeIfNecessary;
- (void)refreshKeyboardStateUpdatingSecureCandidateRenderTraits:(BOOL)a3;
- (void)refreshSecureCandidatesIfNecessary;
- (void)reinitializeAfterInputModeSwitch:(BOOL)a3;
- (void)rejectAutocorrection:(id)a3;
- (void)rejectAutocorrectionForPromptFade;
- (void)releaseInputManager;
- (void)releaseInputManagerIfInactive;
- (void)reloadCurrentInputMode;
- (void)removeASPVisualEffectsIfNecessary:(id)a3;
- (void)removeAllDynamicDictionaries;
- (void)removeAutocorrectPrompt;
- (void)removeAutocorrectPromptAndCandidateList;
- (void)removeAutocorrection;
- (void)removeCandidateList;
- (void)removeInlineTextCompletionPrompt;
- (void)removeRecentInput:(id)a3 completionHandler:(id)a4;
- (void)removeSpaceAfterEmojiForInputString:(id)a3;
- (void)removeSupplementalLexicon:(id)a3;
- (void)removeTextChoicePrompt;
- (void)removeTextChoicePromptAndAutocorrection;
- (void)removeTextChoicePromptWithUnderline;
- (void)removeTextChoiceUnderlines;
- (void)removeTextChoiceUnderlinesInRange:(id)a3;
- (void)removeTextCompletionFromMarkedText:(id)a3;
- (void)replaceAllTextInResponder:(id)a3 withText:(id)a4;
- (void)replaceText:(id)a3;
- (void)resetInputDelegate;
- (void)responseContextDidChange;
- (void)restoreTextSuggestions;
- (void)resumeDictationForResponderChange;
- (void)scheduleReplacementsAfterDeletionToEndOfWord;
- (void)scheduleReplacementsWithOptions:(unint64_t)a3;
- (void)selectionDidChange:(id)a3;
- (void)selectionWillChange:(id)a3;
- (void)sendCallbacksForPostCorrectionsRemoval;
- (void)sendCallbacksForPreCorrectionsDisplay;
- (void)setAutocorrectSpellingEnabled:(BOOL)a3;
- (void)setAutocorrection:(id)a3;
- (void)setAutocorrectionList:(id)a3;
- (void)setAutomaticMinimizationEnabled:(BOOL)a3;
- (void)setCandidateDisplayIsExtended:(BOOL)a3;
- (void)setCandidateList:(id)a3;
- (void)setCandidates:(id)a3;
- (void)setCapsLockIfNeeded;
- (void)setCaretVisible:(BOOL)a3;
- (void)setChangedDelegate;
- (void)setCorrectionLearningAllowed:(BOOL)a3;
- (void)setCurrentCandidateRequest:(id)a3;
- (void)setDefaultTextInputTraits:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDelegate:(id)a3 force:(BOOL)a4 delayEndInputSession:(BOOL)a5;
- (void)setDidTeardownExistingDelegate:(id)a3;
- (void)setDocumentState:(id)a3;
- (void)setDocumentStateForAutocorrection:(id)a3;
- (void)setHardwareKeyboardsSeenPreference:(id)a3;
- (void)setInHardwareKeyboardMode:(BOOL)a3 forceRebuild:(BOOL)a4 shouldMoveKeyboard:(BOOL)a5;
- (void)setInitialDirectionIgnoreRangeCheck:(BOOL)a3;
- (void)setInlineCompletionAsMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 searchString:(id)a6;
- (void)setInputManagerFromCurrentInputMode;
- (void)setInputManagerState:(id)a3;
- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4;
- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 executionContext:(id)a6;
- (void)setInputModeFromPreferences;
- (void)setInputModeSwitcherVisibleInRemote:(BOOL)a3;
- (void)setInputModeToNextASCIICapableInPreferredList;
- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)a3;
- (void)setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 executionContext:(id)a6;
- (void)setKeyboardInputModeFromPreferences:(id)a3;
- (void)setKeyboardMinimizedByDictation:(BOOL)a3;
- (void)setLayoutRenderConfig:(id)a3;
- (void)setOverrideTextInputTraits:(id)a3;
- (void)setPendingAutofillIndex:(int64_t)a3;
- (void)setPreviousGlobeKeyEvent:(id)a3;
- (void)setPreviousInputString:(id)a3;
- (void)setRemoteDelegateSupportsAdaptiveImageGlyph:(BOOL)a3;
- (void)setRemoteDelegateSupportsImagePaste:(BOOL)a3;
- (void)setRestoresToEmojiInputMode;
- (void)setReturnKeyEnabled:(BOOL)a3;
- (void)setSelectionWithPoint:(CGPoint)a3;
- (void)setShift:(BOOL)a3 autoshift:(BOOL)a4;
- (void)setShiftLocked:(BOOL)a3;
- (void)setShiftLockedForced:(BOOL)a3;
- (void)setShiftNeedsUpdate;
- (void)setShiftOffIfNeeded;
- (void)setShiftStatesNeededInDestination:(BOOL)a3 autoShifted:(BOOL)a4 shiftLocked:(BOOL)a5;
- (void)setShouldSkipCandidateSelection:(BOOL)a3 userInitiated:(BOOL)a4;
- (void)setShowsCandidateBar:(BOOL)a3;
- (void)setSuggestions:(id)a3;
- (void)setTwoFingerTapTimestamp:(double)a3;
- (void)setUsesCandidateSelection:(BOOL)a3;
- (void)setWillSetupNewDelegate:(id)a3;
- (void)showCursorAccessory;
- (void)showFirstTextAlternativeWithRangeAdjustment:(int64_t)a3;
- (void)showSelectionCommands;
- (void)skipHitTestForTouchEvent:(id)a3;
- (void)skipHitTestForTouchEvent:(id)a3 delayed:(BOOL)a4;
- (void)skipHitTestForTouchEvents:(id)a3;
- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)startAutoDeleteTimer;
- (void)startAutoDeleteTimerForForce:(double)a3;
- (void)startSmartReplyWritingToolWithParams:(id)a3;
- (void)stopAutoDelete;
- (void)syncDocumentStateToInputDelegate;
- (void)syncDocumentStateToInputDelegateWithExecutionContext:(id)a3;
- (void)syncInputManagerToAcceptedAutocorrection:(id)a3 forInput:(id)a4;
- (void)syncInputManagerToKeyboardState;
- (void)syncInputManagerToKeyboardStateWithExecutionContext:(id)a3;
- (void)syncKeyboardToConfiguration:(id)a3;
- (void)takeTextInputTraitsFromDelegate;
- (void)textAccepted:(id)a3;
- (void)textAccepted:(id)a3 executionContext:(id)a4;
- (void)textAttributesDidChange:(id)a3 inRange:(id)a4;
- (void)textChanged:(id)a3;
- (void)textChanged:(id)a3 executionContext:(id)a4;
- (void)textDidChange:(id)a3 inRange:(id)a4;
- (void)textDidScroll;
- (void)textInput:(id)a3 setCandidateSuggestions:(id)a4;
- (void)textLayoutDidChange:(id)a3 inRange:(id)a4;
- (void)textSuggestionDidChange:(id)a3;
- (void)textWillChange:(id)a3 inRange:(id)a4;
- (void)textWillScroll;
- (void)toggleSoftwareKeyboard;
- (void)touchAutoDeleteTimerWithThreshold:(double)a3 adjustForPartialCompletion:(BOOL)a4;
- (void)touchAutocorrectPromptTimer;
- (void)touchDelayDeleteTimerWithThreshold:(double)a3;
- (void)touchLongPressTimerWithDelay:(double)a3 userInfo:(id)a4;
- (void)touchUpdateLastUsedInputModeAction;
- (void)trackUsageForAcceptedAutocorrection:(id)a3 promptWasShowing:(BOOL)a4;
- (void)trackUsageForCandidateAcceptedAction:(id)a3;
- (void)trackUsageForPromptedCorrection:(id)a3 inputString:(id)a4 previousPrompt:(id)a5;
- (void)traitCollectionDidChange;
- (void)triggerPendingKeyup;
- (void)underlineCandidate:(id)a3;
- (void)undoWithKeyboardInput:(id)a3;
- (void)unmarkText:(id)a3;
- (void)updateAssistantView;
- (void)updateAssistantViewInfo:(id)a3;
- (void)updateAutocorrectPrompt:(id)a3;
- (void)updateAutocorrectPrompt:(id)a3 executionContext:(id)a4;
- (void)updateCandidateDisplay;
- (void)updateCandidateDisplayAsyncWithCandidateSet:(id)a3;
- (void)updateDefaultsWithResults:(id)a3;
- (void)updateDelegatePasteSupport;
- (void)updateDelegatePasteSupportIfNeeded;
- (void)updateDocumentViewsAfterKeyboardOutput:(id)a3;
- (void)updateDoubleSpacePeriodStateForCharacter:(unsigned int)a3;
- (void)updateDoubleSpacePeriodStateForString:(id)a3;
- (void)updateForChangedSelection;
- (void)updateForChangedSelectionWithExecutionContext:(id)a3;
- (void)updateForExpectedRemoteDocumentStateChange:(id)a3 selectedTextRange:(_NSRange)a4 forceSync:(BOOL)a5;
- (void)updateFromTextInputTraits;
- (void)updateHardwareKeyboardExclusivityIdentifier;
- (void)updateHardwareKeyboardLayout:(BOOL)a3;
- (void)updateIdleDetection:(int64_t)a3;
- (void)updateInputAssistantButtonItems;
- (void)updateInputDelegateForRemoteDocumentStateChange:(id)a3 selectedTextRange:(_NSRange)a4 hasText:(BOOL)a5 forceSync:(BOOL)a6;
- (void)updateInputDelegateForRemoteTraitChange:(id)a3 forceSync:(BOOL)a4;
- (void)updateInputManagerAutocapitalizationType;
- (void)updateInputManagerMode;
- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)a3 preserveIfPossible:(BOOL)a4;
- (void)updateInputModeLastChosenPreference;
- (void)updateKeyboardConfigurations;
- (void)updateKeyboardEventsLagging:(id)a3;
- (void)updateKeyboardOutput:(id)a3 withInputForSmartPunctuation:(id)a4 keyboardConfiguration:(id)a5;
- (void)updateKeyboardStateForDeletion;
- (void)updateKeyboardStateForInsertion:(id)a3;
- (void)updateKeyboardStateForReplacingText:(id)a3 withText:(id)a4;
- (void)updateLayoutAndSetShift;
- (void)updateNoContentViews;
- (void)updatePreferencesWithBlock:(id)a3;
- (void)updateReturnKey:(BOOL)a3;
- (void)updateShiftState;
- (void)updateShiftStateAfterAsyncSelectionChange;
- (void)updateShowCandidateBar;
- (void)updateSmartPunctuationOptionsForLocaleIdentifier:(id)a3;
- (void)updateTextCandidateView;
- (void)updateTextChoicePromptSelection:(id)a3 toRange:(id)a4;
- (void)updateTextInputKeyboardSource;
- (void)updateTextInputKeyboardSource:(id)a3;
- (void)willReplaceTextInRangedSelectionWithKeyboardInput;
- (void)writingToolsDidEnd;
@end

@implementation _UIKeyboardStateManager

- (BOOL)isInHardwareKeyboardMode
{
  v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 rtiInputSourceState];
    v7 = [v6 hardwareKeyboardMode];

    return v7;
  }

  else
  {
    m_keyboardState = self->m_keyboardState;

    return [(TIKeyboardState *)m_keyboardState hardwareKeyboardMode];
  }
}

- (void)takeTextInputTraitsFromDelegate
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 textInputTraits];

  if (!v4)
  {
    v5 = self->m_defaultTraits;
    if (!v5)
    {
      v5 = objc_alloc_init(UITextInputTraits);
    }

    v4 = v5;
  }

  if (self->m_overrideTraits)
  {
    [v4 overrideWithTraits:?];
  }

  else if (+[UIKeyboard isKeyboardProcess])
  {
    [v4 overrideWithPrivateTraits:self->m_traits];
  }

  v6 = +[UIKeyboard activeKeyboard];
  if ([v6 isAutomatic])
  {
    v7 = [v4 isSecureTextEntry];
    if (v7 != [(UITextInputTraits *)self->m_traits isSecureTextEntry])
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v9 = [WeakRetained _rootInputWindowController];
      [v9 setDisableUpdateMaskForSecureTextEntry:{objc_msgSend(v4, "isSecureTextEntry")}];
    }
  }

  else
  {
    v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v11 = [v10 preferencesActions];
    v12 = [v11 BOOLForPreferenceKey:@"ShowPasswordKeyboardInVideo"];

    if ((v12 & 1) == 0)
    {
      [v6 _setDisableUpdateMaskForSecureTextEntry:{objc_msgSend(v4, "isSecureTextEntry")}];
    }
  }

  v13 = [v4 keyboardType];
  v14 = [(_UIKeyboardStateManager *)self showingEmojiSearch];
  v54 = v13 != 122;
  v15 = [v4 copy];
  m_traits = self->m_traits;
  self->m_traits = v15;

  if (!self->m_correctionLearningAllowed)
  {
    [(UITextInputTraits *)self->m_traits setLearnsCorrections:0];
  }

  if ([(_UIKeyboardStateManager *)self shouldUseCarPlayModes])
  {
    [(UITextInputTraits *)self->m_traits setIsCarPlayIdiom:1];
  }

  if (!+[UIKeyboard isKeyboardProcess]&& ![(UITextInputTraits *)self->m_traits inlinePredictionType])
  {
    v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v18 = [v17 keyInputDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v21 = [v20 hasAsyncCapableInputDelegate];

    if ((isKindOfClass & 1) == 0 && (v21 & 1) == 0)
    {
      [(UITextInputTraits *)self->m_traits setInlinePredictionType:1];
    }
  }

  v22 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v23 = [v22 keyInputDelegate];

  if (v23)
  {
    v24 = [(_UIKeyboardStateManager *)self floatingForced];
    v25 = [(UITextInputTraits *)self->m_traits forceFloatingKeyboard];
    [(_UIKeyboardStateManager *)self setFloatingForced:[(UITextInputTraits *)self->m_traits forceFloatingKeyboard]];
    if (v24 != v25)
    {
      if (+[UIKeyboard isMajelEnabled])
      {
        v26 = objc_loadWeakRetained(&self->_presentationDelegate);
        v27 = [v26 isUsingDictationLayout];

        if ((v27 & 1) == 0)
        {
          [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:[(UITextInputTraits *)self->m_traits isSecureTextEntry]^ 1 allowNonLinguisticInputModes:1];
        }
      }
    }
  }

  v28 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v28 refreshRivenPreferences];

  [(_UIKeyboardStateManager *)self updateInputManagerAutocapitalizationType];
  [(TIKeyboardState *)self->m_keyboardState setWordLearningEnabled:[(UITextInputTraits *)self->m_traits learnsCorrections]];
  v29 = [(_UIKeyboardStateManager *)self textInputTraits];
  v30 = [v29 autocorrectionContext];
  [(TIKeyboardState *)self->m_keyboardState setRecipientIdentifier:v30];

  v31 = [(_UIKeyboardStateManager *)self textInputTraits];
  v32 = [v31 responseContext];
  [(TIKeyboardState *)self->m_keyboardState setResponseContext:v32];

  v33 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
  v34 = [(_UIKeyboardStateManager *)self textInputTraits];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_34;
  }

  v35 = [(_UIKeyboardStateManager *)self textInputTraits];
  v36 = [v35 conversationContext];
  if (!v36)
  {

LABEL_34:
    goto LABEL_35;
  }

  v37 = v36;
  v38 = _os_feature_enabled_impl();

  if (!v38)
  {
LABEL_35:
    v39 = [(_UIKeyboardStateManager *)self textInputTraits];
    v40 = [v39 inputContextHistory];
    v41 = [v40 tiInputContextHistory];
    [(TIKeyboardState *)self->m_keyboardState setInputContextHistory:v41];
    goto LABEL_36;
  }

  if (v33)
  {
    goto LABEL_37;
  }

  v39 = [(_UIKeyboardStateManager *)self textInputTraits];
  v40 = [v39 conversationContext];
  v41 = [v40 inputContextHistoryRepresentation];
  v42 = [v41 tiInputContextHistory];
  [(TIKeyboardState *)self->m_keyboardState setInputContextHistory:v42];

LABEL_36:
LABEL_37:
  v43 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];

  if (v33 != v43)
  {
    v44 = _UIKeyboardSmartReplyLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
      v46 = [v45 debugDescription];
      *buf = 138477827;
      v56 = v46;
      _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_DEFAULT, "Setting state to found ICH: %{private}@", buf, 0xCu);
    }
  }

  v47 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];

  if (v47)
  {
    v48 = [(_UIKeyboardStateManager *)self smartReplyGenerator];
    [v48 syncToKeyboardState:self->m_keyboardState];
  }

  v49 = v54 ^ v14;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v50 = [(UITextInputTraits *)self->m_traits supplementalLexicon];
    if (v50)
    {
      v51 = [(UITextInputTraits *)self->m_traits supplementalLexicon];
      -[TIKeyboardState setSupplementalLexiconIdentifier:](self->m_keyboardState, "setSupplementalLexiconIdentifier:", [v51[1] identifier]);
    }

    else
    {
      [(TIKeyboardState *)self->m_keyboardState setSupplementalLexiconIdentifier:0];
    }
  }

  if ((v49 & 1) == 0)
  {
    [(_UIKeyboardStateManager *)self notifyInputSourceStateChangeIfNeeded];
  }

  if (self->_remoteTextInputTraits)
  {
    v52 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v53 = [v52 forwardingInputDelegate];

    if (!v53)
    {
      [(_UIKeyboardStateManager *)self updateInputDelegateForRemoteTraitChange:self->_remoteTextInputTraits forceSync:0];
    }
  }
}

- (void)updateInputManagerMode
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentSystemInputMode];

  v5 = [(TIKeyboardState *)self->m_keyboardState inputMode];
  v6 = [(_UIKeyboardStateManager *)self shouldSwitchFromInputManagerMode:v5 toInputMode:v4];

  if (v6)
  {
    v7 = [v4 identifierWithLayouts];
    [(TIKeyboardState *)self->m_keyboardState setInputMode:v7];

    v8 = [v4 identifier];
    v9 = [v8 isEqualToString:@"intl_HWR"];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v12 = [v11 suggestedInputModesForPreferredLanguages];

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v18 + 1) + 8 * v16) identifier];
            [v10 addObject:v17];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v10 = 0;
    }

    [(TIKeyboardState *)self->m_keyboardState setAuxiliaryInputModeLanguages:v10];
  }
}

- (BOOL)shouldShowLongPredictionList
{
  v3 = [(TIKeyboardState *)self->m_keyboardState longPredictionListEnabled];
  if (v3)
  {
    LOBYTE(v3) = ![(UITextInputTraits *)self->m_traits isSecureTextEntry];
  }

  return v3;
}

- (UIKBRTIPartner)remoteTextInputPartner
{
  if (!self->_remoteTextInputPartner)
  {
    v3 = objc_alloc_init(UIKBRTIPartner);
    remoteTextInputPartner = self->_remoteTextInputPartner;
    self->_remoteTextInputPartner = v3;

    [(UIKBRTIPartner *)self->_remoteTextInputPartner setPartnerDelegate:self];
    [(UIKBRTIPartner *)self->_remoteTextInputPartner setInputSystemClientEnabled:[(_UIKeyboardStateManager *)self serviceRole]== 1];
  }

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 automaticAppearanceEnabled], v5, !v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_remoteTextInputPartner;
  }

  return v7;
}

- (BOOL)shouldUseCarPlayModes
{
  if ([UIApp _isSpringBoard])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v5 = [objc_opt_class() keyboardWindow];

  v6 = [v5 screen];
  v7 = [UIKBScreenTraits traitsWithScreen:v6 orientation:0];

  v3 = [v7 idiom] == 3;
  return v3;
}

- (void)updateInputManagerAutocapitalizationType
{
  [(TIKeyboardState *)self->m_keyboardState setAutocapitalizationEnabled:self->m_autocapitalizationPreference];
  v3 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->m_traits];
  [(TIKeyboardState *)self->m_keyboardState setTextInputTraits:v3];
}

- (unint64_t)autocorrectionPreferenceForTraits
{
  v3 = [(_UIKeyboardStateManager *)self autocorrectionPreference];
  self->m_autocorrectionPreference = v3;

  return [(_UIKeyboardStateManager *)self _updateAutocorrectionPreferenceForTraitsWithCurrentPreference:v3];
}

- (BOOL)autocorrectionPreference
{
  v2 = [(_UIKeyboardStateManager *)self isInHardwareKeyboardMode];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = v4;
  v6 = MEMORY[0x1E69D9750];
  if (!v2)
  {
    v6 = MEMORY[0x1E69D9808];
  }

  v7 = [v4 BOOLForPreferenceKey:*v6];

  return v7;
}

- (BOOL)checkSpellingPreferenceForTraits
{
  v3 = [(_UIKeyboardStateManager *)self checkSpellingPreference];
  if (v3)
  {
    v4 = [(UITextInputTraits *)self->m_traits spellCheckingType];
    if (v4 == 2)
    {
      LOBYTE(v3) = 1;
    }

    else if (v4)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = [(UITextInputTraits *)self->m_traits autocorrectionType]!= 1;
    }
  }

  return v3;
}

- (BOOL)checkSpellingPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x1E69D9830]];

  return v4;
}

- (BOOL)isInlineCompletionEnabled
{
  v2 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  v3 = [v2 currentInlineTextCompletionMode] == 1;

  return v3;
}

- (BOOL)delegateSupportsCorrectionUI
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 textInputView];
  v4 = v3 != 0;

  return v4;
}

- (void)setInputManagerFromCurrentInputMode
{
  [(_UIKeyboardStateManager *)self updateInputManagerMode];
  [(_UIKeyboardImplProxy *)self->m_implProxy setDelegate:self];
  v5 = sharedInputManagerMux();
  if ((_UIApplicationIsKeyboardExtension() & 1) == 0)
  {
    [v5 setResponseDelegate:self];
  }

  v3 = [(_UIKeyboardStateManager *)self autofillController];
  v4 = +[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", [v3 delegateNeedsAutofillMode]);

  [v5 setSystemInputManagerFromTextInputTraits:self->m_traits autofillMode:v4 implProxy:self->m_implProxy];
}

- (BOOL)needAutofillLogin
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 delegateNeedsAutofillMode] == 1;

  return v3;
}

- (void)_updateDelegateRequiresKeyEventsFromRemoteTextInput
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v3 = [v4 documentTraits];
    self->m_delegateRequiresKeyEvents = ([v3 delegateConformanceType] >> 8) & 1;
  }
}

- (void)clearKeyboardWindowSnapshot
{
  m_keyboardWindowSnapshot = self->m_keyboardWindowSnapshot;
  self->m_keyboardWindowSnapshot = 0;
}

- (void)restoreTextSuggestions
{
  if (!+[UIKeyboard isKeyboardProcess]&& self->m_pendingRestoreTextSuggestions)
  {
    v3 = [(_UIKeyboardStateManager *)self textSuggestions];
    [(_UIKeyboardStateManager *)self _setSuggestions:v3];
  }

  self->m_pendingRestoreTextSuggestions = 0;
}

- (id)textSuggestions
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v3 = [v2 textSuggestionList];

  if (v3 && ([v3 predictions], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = [v3 predictions];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v3 predictions];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v15 = [v14 textSuggestion];
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isRTIClient
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [objc_opt_class() keyboardScreen];
  v5 = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v4, [v5 _keyboardOrientation]);

  if ([v6 idiom] == 3)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
    v7 = [v8 inputSystemClientEnabled];
  }

  return v7;
}

- (UIKBRTIPartner)remoteTextInputPartnerPrivate
{
  v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  remoteTextInputPartner = v3;
  if (!v3)
  {
    remoteTextInputPartner = self->_remoteTextInputPartner;
  }

  v5 = remoteTextInputPartner;

  return remoteTextInputPartner;
}

- (BOOL)showingEmojiSearch
{
  v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (!v4)
  {
    return [(UITextInputTraits *)self->m_traits keyboardType]== 122;
  }

  v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v6 = [v5 rtiInputSourceState];
  v7 = [v6 showingEmojiSearch];

  return v7;
}

- (BOOL)_hasMarkedText
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 _hasMarkedText];

  return v3;
}

- (void)updateHardwareKeyboardExclusivityIdentifier
{
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v4 hardwareKeyboardExclusivityIdentifier];
  [(_UIKeyboardStateManager *)self setHardwareKeyboardExclusivityIdentifier:v3];
}

- (UITextInteractionAssistant)textInteractionAssistant
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 textInteractionAssistant];

  return v3;
}

- (int)returnKeyType
{
  if ([(UITextInputTraits *)self->m_traits emptyContentReturnKeyType]&& [(_UIKeyboardStateManager *)self noContent])
  {
    m_traits = self->m_traits;

    return [(UITextInputTraits *)m_traits emptyContentReturnKeyType];
  }

  else
  {
    v5 = [(UITextInputTraits *)self->m_traits suppressReturnKeyStyling];
    result = [(UITextInputTraits *)self->m_traits returnKeyType];
    if (v5)
    {
      return -result;
    }
  }

  return result;
}

- (BOOL)callLayoutIsShiftKeyBeingHeld
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_presentationDelegate);
  v7 = [v6 layout];
  v8 = [v7 isShiftKeyBeingHeld];

  return v8;
}

- (BOOL)callLayoutIsShiftKeyPlaneChooser
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];

  if (!v4)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [v5 layout];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_presentationDelegate);
  v9 = [v8 layout];
  v10 = [v9 isShiftKeyPlaneChooser];

  return v10;
}

- (id)_keyboardBehaviorState
{
  v3 = objc_alloc_init(MEMORY[0x1E69D95C0]);
  v4 = [(_UIKeyboardStateManager *)self inputManagerState];
  if ([v4 usesCandidateSelection])
  {
    [v3 setHasInput:{-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText")}];
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self autocorrectionController];
    if ([v5 hasAutocorrection])
    {
      v6 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v7 = [v6 autocorrection];
      [v3 setHasInput:v7 != 0];
    }

    else
    {
      [v3 setHasInput:1];
    }
  }

  v8 = [(_UIKeyboardStateManager *)self autocorrectionController];
  if ([v8 hasAutocorrection])
  {
    v9 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v10 = [v9 autocorrection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 candidate];
  if ([v11 length])
  {
    v12 = [v10 input];
    v13 = [v10 candidate];
    [v3 setHasAutocorrection:{objc_msgSend(v12, "isEqualToString:", v13) ^ 1}];
  }

  else
  {
    [v3 setHasAutocorrection:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setContinuousPathUnderway:{-[_UIKeyboardStateManager continuousPathUnderway](self, "continuousPathUnderway")}];
  }

  [v3 setHasCandidates:{-[TIKeyboardCandidateResultSet hasCandidates](self->m_candidateResultSet, "hasCandidates")}];
  m_candidateList = self->m_candidateList;
  if (m_candidateList)
  {
    v15 = [(UIKeyboardCandidateList *)m_candidateList currentIndex]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
  }

  [v3 setHasCandidateSelected:v15];
  if (objc_opt_respondsToSelector())
  {
    [v3 setHasNextPage:{-[UIKeyboardCandidateList hasCandidateInForwardDirection:granularity:](self->m_candidateList, "hasCandidateInForwardDirection:granularity:", 1, 2)}];
  }

  [v3 setUserSelectedCurrentCandidate:{-[TIKeyboardState userSelectedCurrentCandidate](self->m_keyboardState, "userSelectedCurrentCandidate")}];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v17 = [WeakRetained candidateController];
  [v3 setShowsExtendedList:{objc_msgSend(v17, "isExtended")}];

  v18 = [(TIKeyboardState *)self->m_keyboardState layoutState];
  [v3 setShowsCandidatesInLayout:{objc_msgSend(v18, "hasCandidateKey")}];

  v19 = [(_UIKeyboardStateManager *)self _markedText];
  v20 = [v19 _lastGrapheme];

  if ([v20 _containsBopomofoOnly])
  {
    v21 = [v20 _containsBopomofoToneOnly] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  [v3 setFollowsZhuyin:v21];
  [v3 setFollowsIncompleteRomaji:{-[TIKeyboardInputManagerState shouldFixupIncompleteRomaji](self->m_inputManagerState, "shouldFixupIncompleteRomaji")}];
  v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v23 = [v22 preferencesActions];
  v24 = [v23 valueForPreferenceKey:*MEMORY[0x1E69D9958]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = 1;
    goto LABEL_27;
  }

  if (v24)
  {
    v25 = [v24 BOOLValue];
LABEL_27:

    goto LABEL_28;
  }

  v25 = 1;
LABEL_28:
  [v3 setSpaceConfirmation:v25];
  [v3 setHardwareKeyboardMode:{-[_UIKeyboardStateManager isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode")}];

  return v3;
}

- (TUIKeyboardBackendController)backendController
{
  if ([(_UIKeyboardStateManager *)self shouldAccessInputManagerService])
  {
    v3 = sharedInputManagerMux();
    if (([v3 hasSystemInputManager] & 1) == 0)
    {
      [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUIKeyboardBackendControllerClass_softClass;
    v13 = getTUIKeyboardBackendControllerClass_softClass;
    if (!getTUIKeyboardBackendControllerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUIKeyboardBackendControllerClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUIKeyboardBackendControllerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 sharedInstance];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(_UIKeyboardStateManager *)self implProxy];
      [v6 setCandidateReceiver:v7];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldLoadPredictionsBasedOnCurrentTraits
{
  v3 = [(_UIKeyboardStateManager *)self predictionFromPreference];
  if (v3)
  {
    if (![(_UIKeyboardStateManager *)self prewarmsPredictiveCandidates]&& ([(UITextInputTraits *)self->m_traits disablePrediction]|| [(UITextInputTraits *)self->m_traits hidePrediction]) || [(UITextInputTraits *)self->m_traits autocorrectionType]== 1)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(UITextInputTraits *)self->m_traits isSecureTextEntry];
    }
  }

  return v3;
}

- (BOOL)predictionFromPreference
{
  if ([(_UIKeyboardStateManager *)self disableInputBars])
  {
    return 0;
  }

  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 predictionEnabled];

  return v5;
}

- (id)updatedKeyBehaviors
{
  v3 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
  v4 = [(UIKeyboardCandidateList *)self->m_candidateList keyboardBehaviors];
  v5 = [(_UIKeyboardStateManager *)self updateKeyBehaviors:0 withBehaviors:v4 forState:v3];

  v6 = [(_UIKeyboardStateManager *)self inputManagerState];
  v7 = [v6 keyboardBehaviors];
  v8 = [(_UIKeyboardStateManager *)self updateKeyBehaviors:v5 withBehaviors:v7 forState:v3];

  return v8;
}

- (id)_markedText
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 markedText];

  return v3;
}

- (void)updateShiftState
{
  v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v25 keyInputDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIKeyboardStateManager *)self suppressUpdateShiftState];

    if (v5)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained layout];

    if (+[UIKeyboard isKeyboardProcess])
    {
      if ([(_UIKeyboardStateManager *)self noContent])
      {
        v7 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
        v8 = [v7 documentState];
        v9 = [v8 documentState];

        if (!v9)
        {
          return;
        }
      }
    }

    v10 = objc_loadWeakRetained(&self->_presentationDelegate);
    v11 = [v10 layout];
    if (v11)
    {
      v12 = v11;
      v13 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyPlaneChooser];

      if (v13)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v14 = objc_loadWeakRetained(&self->_presentationDelegate);
    v15 = [v14 layout];
    if (v15)
    {
      v16 = v15;
      v17 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld];

      if (v17)
      {
        if (!self->m_shift || self->m_shiftHeldDownNeedsUpdated)
        {
          return;
        }

        self->m_shiftHeldDownNeedsUpdated = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    self->m_shiftHeldDownNeedsUpdated = 0;
    if ([(_UIKeyboardStateManager *)self keyboardIsKeyPad])
    {
      m_disableAutocapitalization = 1;
    }

    else if ([(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents])
    {
      m_disableAutocapitalization = self->m_disableAutocapitalization;
    }

    else
    {
      m_disableAutocapitalization = 0;
    }

    if (!self->m_autocapitalizationPreference || self->m_shiftPreventAutoshift || self->m_shiftLocked || m_disableAutocapitalization || [(UITextInputTraits *)self->m_traits isSecureTextEntry]&& ![(UITextInputTraits *)self->m_traits displaySecureTextUsingPlainText])
    {
LABEL_28:

      [(_UIKeyboardStateManager *)self notifyShiftState];
      return;
    }

    if (!-[_UIKeyboardStateManager callLayoutUsesAutoShift](self, "callLayoutUsesAutoShift") || -[UITextInputTraits autocapitalizationType](self->m_traits, "autocapitalizationType") == 1 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v19 = objc_claimAutoreleasedReturnValue(), [v19 markedTextRange], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
    {
      *&self->m_autoshift = 0;
    }

    else
    {
      v21 = [(_UIKeyboardStateManager *)self inputDelegate];

      if (v21)
      {
        self->m_autoshift = 0;
        v22 = [(UITextInputTraits *)self->m_traits autocapitalizationType];
        if (v22 == 1)
        {
          v23 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v24 = [v23 _characterBeforeCaretSelection];

          if ((v24 > 0x20 || ((1 << v24) & 0x100000401) == 0) && v24 != 160)
          {
            goto LABEL_37;
          }
        }

        else if (v22 != 3 && (v22 != 2 || ![(_UIKeyboardStateManager *)self isSelectionAtSentenceAutoshiftBoundary:1]))
        {
          goto LABEL_37;
        }

        *&self->m_autoshift = 257;
      }
    }

LABEL_37:
    [(_UIKeyboardStateManager *)self notifyShiftState];

    [(_UIKeyboardStateManager *)self _forwardNeededShiftStatesToDestination];
    return;
  }
}

- (void)notifyShiftState
{
  [(_UIKeyboardStateManager *)self callLayoutSetShift:self->m_shift];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained hasLanguageIndicator];

  if (v4)
  {
    [(_UIKeyboardStateManager *)self updateInputModeIndicatorOnSingleKeyOnly:0 preserveIfPossible:1];
  }

  [(_UIKeyboardStateManager *)self callLayoutSetAutoshift:self->m_autoshift];
  [(_UIKeyboardStateManager *)self callLayoutUpdateLocalizedKeys];
  v5 = [(TIKeyboardState *)self->m_keyboardState shiftState];
  if (self->m_shiftLocked && ![(_UIKeyboardStateManager *)self isMinimized])
  {
LABEL_7:
    v8 = objc_loadWeakRetained(&self->_presentationDelegate);
    v9 = [v8 layout];
    if (v9)
    {
      v10 = v9;
      v11 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld];

      if (v11)
      {
        m_keyboardState = self->m_keyboardState;
LABEL_14:
        v13 = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    m_keyboardState = self->m_keyboardState;
    v13 = 3;
    goto LABEL_18;
  }

  v6 = objc_loadWeakRetained(&self->_presentationDelegate);
  if ([v6 isCapsLockSignOn])
  {
    v7 = [(_UIKeyboardStateManager *)self isMinimized];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!self->m_autoshift)
  {
    m_keyboardState = self->m_keyboardState;
    if (!self->m_shift)
    {
      v13 = 0;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  m_keyboardState = self->m_keyboardState;
  v13 = 2;
LABEL_18:
  [(TIKeyboardState *)m_keyboardState setShiftState:v13];
  [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
  v14 = [(TIKeyboardState *)self->m_keyboardState shiftState];
  v15 = objc_loadWeakRetained(&self->_presentationDelegate);
  v16 = [v15 layout];
  v17 = [v16 isAlphabeticPlane];

  if (v14 != v5 && v17)
  {
    if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists])
    {
      v18 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v18 updateAfterShiftStateChange];
    }

    if ([(TIKeyboardState *)self->m_keyboardState longPredictionListEnabled])
    {
      if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
      {
        if (!-[_UIKeyboardStateManager usesAutocorrectionLists](self, "usesAutocorrectionLists") || (-[_UIKeyboardStateManager autocorrectionController](self, "autocorrectionController"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 hasAutocorrection], v19, (v20 & 1) == 0))
        {
          [(_UIKeyboardStateManager *)self generateCandidates];
        }
      }
    }
  }

  if (v14 != v5)
  {
    v21 = objc_loadWeakRetained(&self->_presentationDelegate);
    v22 = [v21 layout];
    if (v22)
    {
      v23 = v22;
      v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v25 = [v24 hasAsyncCapableInputDelegate];

      if (v25)
      {
        v26 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        objc_initWeak(&location, v26);

        v27 = [(TIKeyboardState *)self->m_keyboardState shiftState];
        if (qword_1ED49D1E8[0] != -1)
        {
          dispatch_once(qword_1ED49D1E8, &__block_literal_global_1223);
        }

        v28 = [(_UIKeyboardStateManager *)self taskQueue];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __43___UIKeyboardStateManager_notifyShiftState__block_invoke_3;
        v30[3] = &unk_1E70FD848;
        objc_copyWeak(&v31, &location);
        v32 = v5;
        v33 = v27;
        [v28 addTask:v30 breadcrumb:qword_1ED49D1E0];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }

  v29 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v29 setCapsLockSign];
}

- (void)callLayoutUpdateLocalizedKeys
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_presentationDelegate);
    v6 = [v7 layout];
    [v6 updateLocalizedKeys:0];
  }
}

- (void)notifyInputSourceStateChangeIfNeeded
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 textOperations];
      v5 = [(_UIKeyboardStateManager *)self buildInputSourceState];
      [v4 setInputSourceState:v5];

      [v6 flushOperations];
      v3 = v6;
    }
  }
}

- (BOOL)continuousPathUnderway
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained continuousPathUnderway];

  return v3;
}

- (BOOL)_delegateRequiresKeyEvents
{
  if (self->m_delegateRequiresKeyEvents)
  {
    v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v3 = [v2 shouldRespectForwardingInputDelegate] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)shouldAccessInputManagerService
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  if (WeakRetained)
  {
    v3 = [objc_opt_class() shouldAccessInputManagerService];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)shouldGenerateCandidatesAfterSelectionChange
{
  if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    return 1;
  }

  if (![(_UIKeyboardStateManager *)self _shouldLoadPredictionsBasedOnCurrentTraits])
  {
    if ([UIApp _isSpringBoard])
    {
      v3 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v4 = [v3 hasAutocorrection];

      if (v4)
      {
        v5 = [(_UIKeyboardStateManager *)self autocorrectionController];
        v6 = [v5 autocorrectionList];
        if (v6)
        {
        }

        else
        {
          v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
          v8 = [v7 textSuggestionList];

          if (!v8)
          {
            return 0;
          }
        }
      }
    }
  }

  if ([(UITextInputTraits *)self->m_traits contentsIsSingleValue])
  {
    return 1;
  }

  v9 = [(_UIKeyboardStateManager *)self inputManagerState];
  v10 = [v9 shouldExtendPriorWord];

  if (v10)
  {
    return 1;
  }

  return [(_UIKeyboardStateManager *)self _shouldLoadPredictionsBasedOnCurrentTraits];
}

- (void)setShiftOffIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];

  if (v4 && !self->m_shiftLocked)
  {
    v5 = objc_loadWeakRetained(&self->_presentationDelegate);
    v6 = [v5 layout];
    if (v6)
    {
      v7 = v6;
      v8 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld];

      if (v8)
      {
        return;
      }
    }

    else
    {
    }

    v9 = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [v9 layout];
    if (v10)
    {
      v11 = v10;
      v12 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyPlaneChooser];

      if (v12)
      {
        return;
      }
    }

    else
    {
    }

    [(_UIKeyboardStateManager *)self setShift:0];

    [(_UIKeyboardStateManager *)self setShiftPreventAutoshift:0];
  }
}

- (void)updateCandidateDisplay
{
  [(_UISmartReplyFeedbackManager *)self->_smartReplyFeedbackManager resetSmartReplyFeedbackUIIfAlreadyShown];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateCandidateDisplay];
}

- (void)setShiftNeedsUpdate
{
  self->m_shiftNeedsUpdate = 1;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateObserverState];
}

- (void)_forwardNeededShiftStatesToDestination
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isKeyboardProcess])
  {
    WeakRetained = objc_loadWeakRetained(&qword_1ED49D1F0);
    v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v5 = [v4 keyInputDelegate];

    if (self->m_shift != byte_1ED49CF39 || self->m_autoshift != byte_1ED49CF3A || WeakRetained != v5 || self->m_shiftLocked != byte_1ED49CF3B)
    {
      v6 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      v13[0] = @"shift";
      v7 = [MEMORY[0x1E696AD98] numberWithBool:self->m_shift];
      v14[0] = v7;
      v13[1] = @"autoShift";
      v8 = [MEMORY[0x1E696AD98] numberWithBool:self->m_autoshift];
      v14[1] = v8;
      v13[2] = @"shiftLocked";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:self->m_shiftLocked];
      v14[2] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
      [v6 forwardKeyboardOperation:sel_setShiftStatesNeededInDestination_autoShifted_shiftLocked_ object:v10];

      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v12 = [v11 keyInputDelegate];
      objc_storeWeak(&qword_1ED49D1F0, v12);

      byte_1ED49CF39 = self->m_shift;
      byte_1ED49CF3A = self->m_autoshift;
      byte_1ED49CF3B = self->m_shiftLocked;
    }
  }
}

- (void)updateKeyboardConfigurations
{
  if (!self->m_inDealloc)
  {
    [(_UIKeyboardStateManager *)self _updateKeyboardConfigurations];
  }
}

- (void)_updateKeyboardConfigurations
{
  v3 = [(UIKeyboardCandidateList *)self->m_candidateList keyboardBehaviors];
  if (v3)
  {
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self inputManagerState];
    v5 = [v4 keyboardBehaviors];

    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v6 = [WeakRetained layout];
      [v6 restoreDefaultsForAllKeys];

      goto LABEL_10;
    }
  }

  if (self->m_hasInputOnAcceptCandidate)
  {
    [(_UIKeyboardStateManager *)self _handleKeyBehavior:8 forKeyType:@"_keyid_space_"];

    [(_UIKeyboardStateManager *)self _handleKeyBehavior:8 forKeyType:@"_keyid_return_"];
    return;
  }

  WeakRetained = [(_UIKeyboardStateManager *)self updatedKeyBehaviors];
  -[_UIKeyboardStateManager _handleKeyBehavior:forKeyType:](self, "_handleKeyBehavior:forKeyType:", [WeakRetained spaceKeyBehavior], @"_keyid_space_");
  -[_UIKeyboardStateManager _handleKeyBehavior:forKeyType:](self, "_handleKeyBehavior:forKeyType:", [WeakRetained returnKeyBehavior], @"_keyid_return_");
LABEL_10:
}

- (void)clearDelayDeleteTimer
{
  [(UIKeyboardScheduledTask *)self->m_delayDeleteTask invalidate];
  m_delayDeleteTask = self->m_delayDeleteTask;
  self->m_delayDeleteTask = 0;
}

- (_UITextChoiceAccelerationAssistant)_textChoicesAssistant
{
  v3 = [(_UIKeyboardStateManager *)self textInteractionAssistant];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
    v5 = [v4 _textChoicesAssistant];

    [v5 setDelegate:self];
    v6 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
    v7 = [v6 _textChoicesAssistant];
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    customInputDelegateChoiceAccelerationAssistant = self->_customInputDelegateChoiceAccelerationAssistant;
    if (!customInputDelegateChoiceAccelerationAssistant || ([(_UITextChoiceAccelerationAssistant *)customInputDelegateChoiceAccelerationAssistant textInputResponder], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v5))
    {
      v10 = [[_UITextChoiceAccelerationAssistant alloc] initWithTextInputResponder:v5];
      v11 = self->_customInputDelegateChoiceAccelerationAssistant;
      self->_customInputDelegateChoiceAccelerationAssistant = v10;

      [(_UITextChoiceAccelerationAssistant *)self->_customInputDelegateChoiceAccelerationAssistant setDelegate:self];
    }

    v7 = self->_customInputDelegateChoiceAccelerationAssistant;
  }

  return v7;
}

- (_UIKeyboardTextSelectionController)textSelectionController
{
  v3 = [(_UIKeyboardStateManager *)self textInteractionAssistant];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
    v5 = [v4 activeSelectionController];
    goto LABEL_12;
  }

  v4 = [(_UIKeyboardStateManager *)self inputDelegate];
  customInputDelegateSelectionController = self->_customInputDelegateSelectionController;
  if (!customInputDelegateSelectionController || ([(_UIKeyboardTextSelectionController *)customInputDelegateSelectionController inputDelegate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v4))
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 hasAsyncCapableInputDelegate];

    if (v9)
    {
      v10 = _UIKeyboardAsyncTextSelectionController;
    }

    else
    {
      if (!v4)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v10 = _UIKeyboardTextSelectionController;
    }

    v11 = [[v10 alloc] initWithInputDelegate:v4];
LABEL_10:
    v12 = self->_customInputDelegateSelectionController;
    self->_customInputDelegateSelectionController = v11;
  }

  v5 = self->_customInputDelegateSelectionController;
LABEL_12:
  v13 = v5;

  return v13;
}

- (id)inputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 textInputDelegate];

  return v3;
}

- (BOOL)disableInputBars
{
  if (![(UITextInputTraits *)self->m_traits disableInputBars]&& !self->_disableInputBars)
  {
    return 0;
  }

  if ([(UITextInputTraits *)self->m_traits isDevicePasscodeEntry])
  {
    return 1;
  }

  return [(_UIKeyboardStateManager *)self isMinimized];
}

- (BOOL)usesCandidateSelection
{
  v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 rtiInputSourceState];
    v7 = [v6 usesCandidateSelection];

    return v7;
  }

  if (self->m_usesCandidateSelection)
  {
    if ((UIKeyboardNeverShowCandidateBarForCurrentInputMode() & 1) == 0)
    {
      return [(TIKeyboardState *)self->m_keyboardState suppressingCandidateSelection]^ 1;
    }
  }

  else if (UIKeyboardAlwaysShowCandidateBarForCurrentInputMode())
  {
    return [(TIKeyboardState *)self->m_keyboardState suppressingCandidateSelection]^ 1;
  }

  return 0;
}

- (id)inputSystemSourceSession
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 inputSystemSourceSession];

  return v3;
}

- (id)delegateAsResponder
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 delegateAsResponder];

  return v3;
}

- (void)_cancelPendingSupplementalCandidateInsertion
{
  v3 = [(_UIKeyboardStateManager *)self pendingSupplementalCandidateToInsert];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      self->m_textInputChangesIgnored = 1;
      v7 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v7 _cancelChooseSupplementalItemToInsert];

      self->m_textInputChangesIgnored = 0;
    }
  }

  [(_UIKeyboardStateManager *)self setPendingSupplementalCandidateToInsert:0];
}

- (void)removeAutocorrectPromptAndCandidateList
{
  [(_UIKeyboardStateManager *)self removeAutocorrectPrompt];
  [(_UIKeyboardStateManager *)self removeCandidateList];
  [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
  v3 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v3 removeTextCompletionPrompt];
}

- (void)removeAutocorrectPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained removeAutocorrectPrompt];
}

- (void)removeCandidateList
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46___UIKeyboardStateManager_removeCandidateList__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (+[UIViewPropertyAnimator _trackedAnimationsStartPaused])
  {
    [UIView performWithoutAnimation:v3];
  }

  else
  {
    v3[2](v3);
  }

  m_candidateList = self->m_candidateList;
  self->m_candidateList = 0;

  [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:0];
  [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
}

- (void)removeTextChoicePrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained removeTextChoicePrompt];
}

- (void)updateDelegatePasteSupport
{
  v11 = +[UIKeyboard keyboardBundleIdentifier];
  if ([v11 isEqualToString:@"com.apple.springboard"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v11 isEqualToString:@"com.apple.Spotlight"];
  }

  if (qword_1ED49D000 != -1)
  {
    dispatch_once(&qword_1ED49D000, &__block_literal_global_598);
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 normalizedEnabledInputModeIdentifiers];
  v6 = [v5 containsObject:@"emoji"];

  if ((v3 & 1) != 0 || (_MergedGlobals_1036 & 1) != 0 || [(UITextInputTraits *)self->m_traits isSecureTextEntry]|| v6 != 1)
  {
    *&self->m_needsPasteSupportUpdate = 0;
  }

  else
  {
    v7 = [(_UIKeyboardStateManager *)self uncachedDelegateSupportsImagePaste];
    self->m_delegateSupportsImagePaste = v7;
    self->m_needsPasteSupportUpdate = 0;
    if ((v7 & v6) == 1)
    {
      v8 = +[UIKeyboardMediaController sharedKeyboardMediaController];
      if ([v8 recentsViewWillBeVisible])
      {
        WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
        v10 = [objc_opt_class() isSplit];

        if ((v10 & 1) == 0)
        {
          +[_UIKeyboardMediaServiceWarmUpConnection warmUp];
        }
      }

      else
      {
      }
    }
  }
}

- (BOOL)canInsertStickerAsTextInputPayload
{
  v2 = +[UITextInputPayloadController sharedInstance];
  v3 = [v2 supportedPayloadIds];

  LOBYTE(v2) = [v3 containsObject:@"com.apple.messages.stageSticker"];
  return v2;
}

- (BOOL)canInsertAdaptiveImageGlyph
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 delegateRespectingForwardingDelegate:0];

  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 supportsAdaptiveImageGlyph];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)returnKeyEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained returnKeyEnabled];

  return v3;
}

- (BOOL)selectionScrolling
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained selectionScrolling];

  return v3;
}

- (BOOL)textInputTraitsNeedAutofill
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 delegateNeedsAutofillMode] != 0;

  return v3;
}

- (void)responseContextDidChange
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 privateInputDelegate];
  v5 = [v4 textInputTraits];
  v6 = [v5 responseContext];

  if (!v6)
  {
    v7 = [(_UIKeyboardStateManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(_UIKeyboardStateManager *)self delegate];
      v6 = [v9 responseContext];
    }

    else
    {
      v6 = 0;
    }
  }

  [(TIKeyboardState *)self->m_keyboardState setResponseContext:v6];
  v10 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
  v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v12 = [v11 textInputTraits];
  v13 = [v12 inputContextHistory];

  if (!v13)
  {
    v14 = [(_UIKeyboardStateManager *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(_UIKeyboardStateManager *)self delegate];
      v13 = [v16 inputContextHistory];
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = _UIKeyboardSmartReplyLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v10 debugDescription];
    v19 = [v13 tiInputContextHistory];
    v20 = [v19 debugDescription];
    v36 = 138478083;
    v37 = v18;
    v38 = 2113;
    v39 = v20;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Handling responseContextDidChange - existing: %{private}@, new: %{private}@", &v36, 0x16u);
  }

  if (!v13 || ([v13 tiInputContextHistory], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 == v10))
  {
    v28 = 0;
  }

  else
  {
    v22 = [v13 tiInputContextHistory];
    [(TIKeyboardState *)self->m_keyboardState setInputContextHistory:v22];

    v23 = _UIKeyboardSmartReplyLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
      v25 = [v24 debugDescription];
      v36 = 138477827;
      v37 = v25;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "Handling setting state to: %{private}@", &v36, 0xCu);
    }

    v26 = [(_UIKeyboardStateManager *)self textInputTraits];
    [v26 setInputContextHistory:v13];

    v27 = [v13 tiInputContextHistory];

    v28 = 1;
    v10 = v27;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v29 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v29 documentTraitsChanged];
LABEL_19:

    goto LABEL_20;
  }

  v30 = [v10 mostRecentNonSenderTextEntry];
  if (v30 && (v31 = v30, v32 = [v10 mostRecentTextEntryIsByMe], v31, !v32) || objc_msgSend(v6, "length"))
  {
    v33 = [(_UIKeyboardStateManager *)self inputDelegate];
    if ([v33 hasText])
    {
      v34 = v28 | [v10 hasPendingEntries];

      if ((v34 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  else if ((v28 | [v10 hasPendingEntries]) != 1)
  {
    goto LABEL_20;
  }

  v35 = _UIKeyboardSmartReplyLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "Will regenerate smart replies for responseContextDidChange", &v36, 2u);
  }

  if ([(_UIKeyboardStateManager *)self canShowPredictionBar]&& ![(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
  {
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
    v29 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v29 setNeedsAutocorrection];
    goto LABEL_19;
  }

  if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
    [(_UIKeyboardStateManager *)self generateCandidatesAsynchronouslyWithRange:0 selectedCandidate:0x7FFFFFFFLL, 0];
  }

LABEL_20:
}

- (void)clearTransientState
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained clearTransientState];

  self->m_selecting = 0;
  *&self->m_userChangedSelection = 0;
}

- (void)clearLongPressTimer
{
  [(UIDelayedAction *)self->m_longPressAction setTarget:0];
  m_longPressAction = self->m_longPressAction;
  self->m_longPressAction = 0;

  self->m_longPress = 0;
}

- (void)dismissAutoFillMenu
{
  if (self->m_isAutoFillMenuPresented)
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_dismissAutoFillMenu];

    self->m_isAutoFillMenuPresented = 0;
    self->m_shouldSuppressSelectionCommands = 0;
  }
}

- (void)_insertionPointExitedRangeWithSupplementalCandidate
{
  v3 = [(_UIKeyboardStateManager *)self lastMatchedSupplementalCandidate];

  if (v3)
  {
    [(_UIKeyboardStateManager *)self _dispatchInsertionPointExitedRangeWithSupplementalCandidate];

    [(_UIKeyboardStateManager *)self setLastMatchedSupplementalCandidate:0];
  }
}

- (id)asyncInputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 asyncInputDelegate];

  return v3;
}

- (id)webInputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 webInputDelegate];

  return v3;
}

- (UIKeyInput)delegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 keyInputDelegate];

  return v3;
}

- (void)deactivateLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained clearLanguageIndicator];

  v5 = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [v5 layout];
  [v4 deactivateActiveKeys];
}

- (unint64_t)delegateConformanceType
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 delegateConformanceType];

  return v3;
}

- (void)stopAutoDelete
{
  if (pthread_main_np())
  {
    if ([(UIKeyboardScheduledTask *)self->m_autoDeleteTask isValid]|| self->m_repeatDeleteFromHardwareKeyboard)
    {
      self->m_autoDeleteOK = 0;
      [(_UIKeyboardStateManager *)self clearAutoDeleteTimer];
      self->m_autoDeleteUseForce = 0;
      if (self->m_needsOneShotGenerateCandidatesAfterStoppingAutoDelete || self->m_autoDeleteCount > self->m_repeatDeleteFromHardwareKeyboard)
      {
        [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
        [(_UIKeyboardStateManager *)self completeDelete];
      }

      self->m_repeatDeleteFromHardwareKeyboard = 0;
      self->m_needsOneShotGenerateCandidatesAfterStoppingAutoDelete = 0;
    }
  }

  else
  {

    [(_UIKeyboardStateManager *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (BOOL)autocapitalizationPreference
{
  v2 = [(_UIKeyboardStateManager *)self isInHardwareKeyboardMode];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = v4;
  v6 = MEMORY[0x1E69D9748];
  if (!v2)
  {
    v6 = MEMORY[0x1E69D9800];
  }

  v7 = [v4 BOOLForPreferenceKey:*v6];

  return v7;
}

- (void)clearShiftState
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained keyboardLayoutIsInAnotherProcess];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v5 forwardInputDestinationEventToUIHost:sel_clearShiftState];
  }

  else
  {
    [(_UIKeyboardStateManager *)self setShift:0];

    [(_UIKeyboardStateManager *)self setShiftPreventAutoshift:0];
  }
}

- (void)_postInputResponderChangedNotification
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];
  if (v4)
  {
    v9 = @"UITextInputResponderCapabilitiesChangedInputResponderKey";
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 keyInputDelegate];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"UITextInputResponderDidChangeNotification" object:0 userInfo:v7];
}

- (BOOL)isMinimized
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained isMinimized];

  return v3;
}

- (BOOL)delegateAlreadyInAutofillGroup
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  if (([v3 __isKindOfUIResponder] & 1) == 0)
  {
    v4 = [(_UIKeyboardStateManager *)self delegateAsResponder];

    v3 = v4;
  }

  v5 = [(_UIKeyboardStateManager *)self autofillController];
  [v5 updateAutofillContextForInputDelegate:v3];

  v6 = [(_UIKeyboardStateManager *)self isMemberOfAutofillGroup:v3];
  return v6;
}

- (BOOL)shouldLoadAutofillSignUpInputViewController
{
  if ([(_UIKeyboardStateManager *)self _shouldLoadAutofillSignUpInputViewController])
  {
    return !self->m_usesSystemKeyboardForASP;
  }

  else
  {
    v3 = 0;
    self->m_usesSystemKeyboardForASP = 0;
  }

  return v3;
}

- (BOOL)_shouldLoadAutofillSignUpInputViewController
{
  if ((self->m_cachedAutofillMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v3 = [(_UIKeyboardStateManager *)self _autofillContext];
  v4 = [v3 objectForKey:@"_automaticPasswordKeyboard"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    return 1;
  }

  v7 = +[UIKeyboardInputMode autofillSignupInputMode];
  v8 = [v7 viewControllerClass];

  if (!v8)
  {
    return 0;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v9 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v10 = [v9 documentTraits];

    LOBYTE(v9) = [v10 shouldLoadAutofillSignUp];
    if (v9)
    {
      return 1;
    }
  }

  v11 = [(_UIKeyboardStateManager *)self autofillController];
  v12 = [v11 autofillGroup];
  v13 = [v12 objectForKey:@"UIAutofillASPOptInKey"];

  if (AutoFillUILibraryCore() && !v13)
  {
    v14 = [(_UIKeyboardStateManager *)self autofillController];
    v15 = [v14 autofillGroup];
    v16 = getAFUIAutoFillASPOptInKey();
    v13 = [v15 objectForKey:v16];
  }

  if (v13 && ![v13 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v17 = [(_UIKeyboardStateManager *)self inputDelegate];
    if (([v17 __isKindOfUIResponder] & 1) == 0)
    {
      v18 = [(_UIKeyboardStateManager *)self delegateAsResponder];

      v17 = v18;
    }

    v19 = [(_UIKeyboardStateManager *)self autofillController];
    v6 = [v19 shouldLoadASPForResponder:v17];
  }

  return v6;
}

- (id)_activeAssertionController
{
  v3 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  v4 = [v3 _assertionController];

  if (!v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 selectionDisplayInteraction];
    v4 = [v6 _cursorAssertionController];
  }

  return v4;
}

- (BOOL)noContent
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = +[UIDictationLandingView activeInstance];
  v6 = [v5 delegateWasEmpty];

  if (v6)
  {
    return 1;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v9 = [v8 documentState];
    v10 = [v9 hasText];
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v10 = [v8 hasText];
  }

  v7 = v10 ^ 1;

  return v7;
}

- (void)updateDelegatePasteSupportIfNeeded
{
  if (self->m_needsPasteSupportUpdate)
  {
    [(_UIKeyboardStateManager *)self updateDelegatePasteSupport];
  }
}

- (CGRect)correctionRect
{
  [(_UIKeyboardStateManager *)self getCorrectionRectIsVertical:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)needAutofill
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v4 = [v3 documentTraits];

    LOBYTE(v3) = [v4 shouldLoadAutofillSignUp];
    if (v3)
    {
      return 2;
    }
  }

  v6 = [(_UIKeyboardStateManager *)self autofillController];
  v7 = [v6 delegateNeedsAutofillMode];

  if (v7 == 8)
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    if ([v8 hasText])
    {
      v5 = 0;
    }

    else
    {
      v5 = 8;
    }
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self autofillController];
    v5 = [v8 delegateNeedsAutofillMode];
  }

  return v5;
}

- (void)displayAutoFillPopoverIfAutoFillModeDetected
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained displayAutoFillPopoverIfAutoFillModeDetected];
}

- (BOOL)doubleSpacePeriodPreference
{
  v2 = [(_UIKeyboardStateManager *)self isInHardwareKeyboardMode];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = v4;
  v6 = MEMORY[0x1E69D9770];
  if (!v2)
  {
    v6 = MEMORY[0x1E69D98A8];
  }

  v7 = [v4 BOOLForPreferenceKey:*v6];

  return v7;
}

- (void)setInputModeFromPreferences
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputModeInPreference];
  v5 = v4;
  if (v4 && ([v4 isAllowedForTraits:self->m_traits] & 1) == 0)
  {
    v6 = [v3 activeInputModes];
    v7 = [v3 nextInputModeFromList:v6 withFilter:1 withTraits:self->m_traits];

    v5 = v7;
  }

  v8 = [v3 activeInputModes];
  v9 = v8;
  if (v5)
  {
    if (([v8 containsObject:v5] & 1) == 0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54___UIKeyboardStateManager_setInputModeFromPreferences__block_invoke;
      v11[3] = &unk_1E70FD190;
      v12 = v5;
      v10 = [v9 indexOfObjectPassingTest:v11];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v5 = [v9 objectAtIndex:v10];
        if (v5)
        {
          [v3 setCurrentInputModeInPreference:v5];
        }
      }
    }

    if ([(_UIKeyboardStateManager *)self initializationDone])
    {
      goto LABEL_14;
    }

    if (v5)
    {
LABEL_17:
      [(_UIKeyboardStateManager *)self prepareKeyboardInputModeFromPreferences:v5];
      goto LABEL_18;
    }

LABEL_16:
    v5 = +[UIKeyboardInputMode intlInputMode];
    goto LABEL_17;
  }

  if (![(_UIKeyboardStateManager *)self initializationDone])
  {
    goto LABEL_16;
  }

  v5 = 0;
LABEL_14:
  [(_UIKeyboardStateManager *)self setKeyboardInputModeFromPreferences:v5];
LABEL_18:

  [v3 updateCurrentAndNextInputModes];
}

- (BOOL)initializationDone
{
  if (self->m_initializationDone)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v3 = [WeakRetained isInitializing] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)shiftLockPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x1E69D9828]];

  return v4;
}

- (id)UILanguagePreference
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = @"intl";
  }

  return v3;
}

- (id)inputModePreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 activeInputModeIdentifiers];

  return v3;
}

- (void)hostApplicationWillEnterForeground
{
  v2 = [(_UIKeyboardStateManager *)self backendController];
  [v2 applicationWillEnterForeground];
}

- (BOOL)callLayoutUsesAutoShift
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 isExtensionInputMode];

  if (v5)
  {
    return self->m_usesAutoShiftFor3PK;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v8 = [WeakRetained layout];

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_presentationDelegate);
      v10 = [v9 layout];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_presentationDelegate);
        v13 = [v12 layout];
        v14 = [v13 usesAutoShift];

        return v14;
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

- (TIKeyboardInputManagerStub)inputManager
{
  v3 = sharedInputManagerMux();
  if (([v3 hasSystemInputManager] & 1) == 0)
  {
    [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
  }

  return v3;
}

- (BOOL)hasAdvancedInputDelegate
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)clearInput
{
  if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists]|| [(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    if (self->m_hasInputOnAcceptCandidate)
    {
      v3 = 0;
    }

    else
    {
      v4 = +[UIKeyboardImpl activeInstance];
      v5 = [v4 textInputTraits];

      v6 = [v5 keyboardType];
      v3 = (v6 > 0xB || ((1 << v6) & 0x930) == 0) && v6 != 127;
    }
  }

  else
  {
    v3 = 1;
  }

  [(_UIKeyboardStateManager *)self clearInputWithCandidatesCleared:v3];
}

- (BOOL)isPredictionViewControllerVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained isPredictionViewControllerVisible];

  return v3;
}

- (void)clearInputForMarkedText
{
  [(TIKeyboardState *)self->m_keyboardState setInputForMarkedText:0];
  [(TIKeyboardState *)self->m_keyboardState setSearchStringForMarkedText:0];
  self->m_hasEditedMarkedTextInExtendedView = 0;
}

- (void)removeTextChoiceUnderlines
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
    [v3 removeAllUnderlines];
  }
}

- (void)updateAssistantView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateAssistantView];
}

- (TIDocumentState)documentState
{
  v2 = [(TIKeyboardState *)self->m_keyboardState documentState];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D9590]);
  }

  v5 = v4;

  return v5;
}

- (id)asyncWebKitInteractionDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 asyncWebKitInteractionDelegate];

  return v3;
}

- (void)flushTouchEventWaitingForKeyInputEventIfNecessary
{
  v3 = [(_UIKeyboardStateManager *)self touchEventWaitingForKeyInputEvent];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self touchEventWaitingForKeyInputEvent];
    [(_UIKeyboardStateManager *)self skipHitTestForTouchEvent:v4];

    [(_UIKeyboardStateManager *)self setTouchEventWaitingForKeyInputEvent:0];
  }
}

- (id)layoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained layoutState];

  return v3;
}

- (BOOL)candidateSelectionPredictionForTraits
{
  if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]|| [(UITextInputTraits *)self->m_traits disablePrediction]|| [(UITextInputTraits *)self->m_traits autocorrectionType]== 1)
  {
    return 0;
  }

  else
  {
    return ![(_UIKeyboardStateManager *)self keyboardIsKeyPad];
  }
}

- (BOOL)prewarmsPredictiveCandidates
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 predictionEnabled];
  v5 = kbPrewarmsPredictiveCandidates;

  return v4 & v5;
}

- (id)responderForSendCurrentLocation
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v3 = [v2 _sendCurrentLocationAction]) != 0)
  {
    v4 = [v2 targetForAction:v3 withSender:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCurrentEditResponderInEditingMode
{
  if (WebKitFramework)
  {
    v3 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v6 = [v5 _responderForEditing];

  if ((isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      if (![v10 isEditable])
      {
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v11 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      v7 = [v11 isFirstResponder];
    }

    else
    {
      v12 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      v10 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
      v11 = [(_UIKeyboardStateManager *)self inputDelegate];
      if ([v10 viewCouldBecomeEditable:v11])
      {
        v14 = [(_UIKeyboardStateManager *)self inputDelegate];
        v7 = [v14 isFirstResponder];
      }

      else
      {
        v7 = 0;
      }
    }

    goto LABEL_19;
  }

  if (![v6 isEditing])
  {
LABEL_15:
    v7 = 0;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 isEditable];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (BOOL)canShowPredictionBar
{
  if (UIKeyboardPredictionEnabledForCurrentInputMode() & 1) != 0 || (UIKeyboardShowsTransliterationCandidatesForCurrentInputMode())
  {
    return 1;
  }

  return [(_UIKeyboardStateManager *)self isAutofillPrediction];
}

- (BOOL)needOneTimeCodeAutofill
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  if ([v3 hasText])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self autofillController];
    v4 = [v5 delegateNeedsAutofillMode] == 8;
  }

  return v4;
}

- (BOOL)needCellularAutofill
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  if ([v3 hasText])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self autofillController];
    v4 = [v5 delegateNeedsAutofillMode] == 10;
  }

  return v4;
}

- (int64_t)autofillSubMode
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    return self->m_autofillSubMode;
  }

  result = [(_UIKeyboardStateManager *)self needAutofill];
  if (result)
  {
    v4 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v5 = [v4 documentTraits];

    v6 = [v5 autofillSubMode];
    return v6;
  }

  return result;
}

- (id)updateSecureCandidateRenderTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  if (v4)
  {
    v5 = [(UITextInputTraits *)self->m_traits keyboardAppearance];

    if (v5 == 127)
    {
      v4 = 0;
      goto LABEL_31;
    }

    v6 = +[UIDevice currentDevice];
    if ([v6 userInterfaceIdiom])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(_UIKeyboardStateManager *)self isMinimized];
    }

    v8 = objc_loadWeakRetained(&self->_presentationDelegate);
    v9 = [v8 layout];
    v10 = [v9 candidateList];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_presentationDelegate);
      v13 = [v12 layout];
      v14 = [v13 candidateList];
      v4 = [v14 secureCandidateRenderTraits];

      goto LABEL_9;
    }

    if (!v7 && self->m_usesCandidateSelection)
    {
      v15 = objc_loadWeakRetained(&self->_presentationDelegate);
      v12 = [v15 candidateController];

      if (objc_opt_respondsToSelector())
      {
        v4 = [v12 secureCandidateRenderTraits];
LABEL_9:

        if (v4)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }
    }

LABEL_16:
    v16 = [off_1E70ECC18 systemFontOfSize:14.0];
    WeakRetained = [v16 fontName];

    v4 = objc_alloc_init(MEMORY[0x1E69D9648]);
    v17 = objc_loadWeakRetained(&self->_presentationDelegate);
    v18 = [v17 _inheritedRenderConfig];
    v19 = [v18 lightKeyboard];

    if (v19)
    {
      [MEMORY[0x1E69D9640] blackColor];
    }

    else
    {
      [MEMORY[0x1E69D9640] whiteColor];
    }
    v20 = ;
    v21 = [objc_alloc(MEMORY[0x1E69D9650]) initWithFontName:WeakRetained maxFontSize:v20 minFontSize:14.0 textColor:11.0];
    [v4 setHeaderTextTraits:v21];

    v22 = [objc_alloc(MEMORY[0x1E69D9650]) initWithFontName:WeakRetained maxFontSize:v20 minFontSize:17.0 textColor:11.0];
    [v4 setInputTextTraits:v22];

    [v4 setResultCountToSingleCellWidth:MEMORY[0x1E695E0F0]];
    v23 = +[UIKeyboardPredictionCellMetrics secureCandidateEstimatedMetricsDictionary];
    [v4 setCellWidthOptions:v23];

    [v4 setMaxCellCount:{-[_UIKeyboardStateManager maxNumberOfProactiveCells](self, "maxNumberOfProactiveCells")}];
    v24 = [objc_opt_self() mainScreen];
    [v24 scale];
    [v4 setScreenScale:?];

    [v4 setIsCandidateUI:0];
    v25 = objc_loadWeakRetained(&self->_presentationDelegate);
    v26 = [v25 traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v26];
    [v4 setSingleCellHeight:ceil(v27)];

    if (v7)
    {
      if ([(TIKeyboardState *)self->m_keyboardState needAutofill]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v4 setIsInlinePromptUI:1];
        if (v19)
        {
          [MEMORY[0x1E69D9640] darkSecondaryLabelColor];
        }

        else
        {
          [MEMORY[0x1E69D9640] lightSecondaryLabelColor];
        }
        v34 = ;
        v35 = [v4 headerTextTraits];
        [v35 setTextColor:v34];

        [v4 setSingleCellHeight:60.0];
        [v4 setMaxCellCount:1];
      }

      else
      {
        v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v30 = [v29 existingContainerWindow];
        [v30 safeAreaInsets];
        v32 = v31;
        [v4 singleCellHeight];
        [v4 setSingleCellHeight:v33 - v32];
      }
    }

    else if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v4 singleCellHeight];
      [v4 setSingleCellHeight:v28 + -6.0];
    }

    [v4 setSingleCellVerticalPadding:0.0];
  }

LABEL_31:

  return v4;
}

- (unint64_t)maxNumberOfProactiveCells
{
  v3 = +[UIPeripheralHost activeInstance];
  v4 = [v3 loadAwareInputViews];
  v5 = [v4 keyboard];
  v6 = [v5 interfaceOrientation];

  v7 = 2;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v6 - 3) <= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    if ([objc_opt_class() isSplit])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  return v7;
}

- (void)_updateCanSuggestSupplementalItemsForCurrentSelection
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    self->m_textInputChangesIgnored = 1;
    v3 = [(_UIKeyboardStateManager *)self inputDelegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(_UIKeyboardStateManager *)self inputDelegate];
      -[_UIKeyboardStateManager setCanSuggestSupplementalItemsForCurrentSelection:](self, "setCanSuggestSupplementalItemsForCurrentSelection:", [v4 _canSuggestSupplementalItemsForCurrentSelection]);
    }

    else
    {
      [(_UIKeyboardStateManager *)self setCanSuggestSupplementalItemsForCurrentSelection:1];
    }

    self->m_textInputChangesIgnored = 0;
    if (![(_UIKeyboardStateManager *)self canSuggestSupplementalItemsForCurrentSelection])
    {

      [(_UIKeyboardStateManager *)self _insertionPointExitedRangeWithSupplementalCandidate];
    }
  }
}

- (BOOL)imageSuggestionEnabled
{
  if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v4 = [WeakRetained candidateController];
    v5 = [v4 activeCandidateViewType];

    if ((v5 & 4) != 0)
    {
      return 0;
    }
  }

  if ([(_UIKeyboardStateManager *)self delegateSupportsImagePaste])
  {
    return 1;
  }

  return [(_UIKeyboardStateManager *)self canInsertAdaptiveImageGlyph];
}

- (void)didSetDelegate
{
  v3 = [(_UIKeyboardStateManager *)self deferredDidSetDelegateAction];
  [v3 invalidate];

  [(_UIKeyboardStateManager *)self setDeferredDidSetDelegateAction:0];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained _updateSoundPreheating];

  [(_UIKeyboardStateManager *)self releaseInputManagerIfInactive];
  v5 = [(_UIKeyboardStateManager *)self inputDelegate];
  v6 = [v5 textInputView];

  if (_UIViewIsAnimating(v6))
  {
    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __41___UIKeyboardStateManager_didSetDelegate__block_invoke;
    v21 = &unk_1E70F5A28;
    objc_copyWeak(&v22, &location);
    [(_UIKeyboardStateManager *)self queueDelayedTask:&v18];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_UIKeyboardStateManager *)self updateDelegatePasteSupport];
  }

  if (didSetDelegate_onceToken != -1)
  {
    dispatch_once(&didSetDelegate_onceToken, &__block_literal_global_587);
  }

  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager:v18];
  v8 = [v7 keyInputDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    v12 = [v11 isExtensionInputMode];

    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v13 keyboardWindow];

    v14 = [v7 rootViewController];
    [v14 updateKeyboardDockViewVisibility];
  }

LABEL_10:
  v15 = [(_UIKeyboardStateManager *)self inputDelegate];

  v16 = objc_loadWeakRetained(&self->_presentationDelegate);
  v17 = v16;
  if (v15)
  {
    [v16 prewarmEmojiKeyboardIfNeeded];
  }

  else
  {
    [v16 releaseEmojiKeyboardPrewarmingAssertion];
  }
}

- (void)releaseInputManagerIfInactive
{
  v3 = [(_UIKeyboardStateManager *)self delegate];

  if (!v3)
  {

    [(_UIKeyboardStateManager *)self releaseInputManager];
  }
}

- (void)flushDelayedTasks
{
  deferredUpdateTask = self->_deferredUpdateTask;
  if (deferredUpdateTask)
  {
    deferredUpdateTask[2](deferredUpdateTask, a2);
    v4 = self->_deferredUpdateTask;
    self->_deferredUpdateTask = 0;
  }
}

- (BOOL)canShowAppConnections
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 beginningOfDocument];
  v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v7 = [v6 endOfDocument];
  v8 = [v3 comparePosition:v5 toPosition:v7];

  v9 = [(_UIKeyboardStateManager *)self textInputTraits];
  v10 = [v9 textContentType];

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  return !v11;
}

- (BOOL)_isShowingSuggestionForKeyboardCamera
{
  v2 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v3 = [v2 textSuggestionList];
  v4 = [v3 isShowingSuggestionForKeyboardCamera];

  return v4;
}

- (BOOL)utlizeEuclidModelForDictationReplacement
{
  v3 = [(_UIKeyboardStateManager *)self _textInputController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _selectedText];
    v6 = [v5 length];
    if (!v6)
    {
      LOBYTE(v9) = 0;
LABEL_15:

      goto LABEL_16;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67___UIKeyboardStateManager_utlizeEuclidModelForDictationReplacement__block_invoke;
    v14[3] = &unk_1E70FDB08;
    v14[4] = &v15;
    [v5 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v14}];
    if (v16[3] > 4)
    {
      LOBYTE(v9) = 0;
LABEL_14:
      _Block_object_dispose(&v15, 8);
      goto LABEL_15;
    }

    v7 = [v4 dictationLanguageForSelectedText];
    if (v7)
    {
      v8 = +[UIDictationController activeInstance];
      v9 = [v8 enableEuclidAlternatives];
      if (!v9)
      {
LABEL_8:

LABEL_13:
        goto LABEL_14;
      }

      v10 = [v7 isEqualToString:@"en_US"];

      if (v10)
      {
        v8 = +[UIDictationController sharedInstance];
        v11 = [(_UIKeyboardStateManager *)self _sessionIdentifier];
        v12 = [v11 UUIDString];
        [v8 preheatEuclidModelWithLanguageCode:v7 clientID:v12];

        goto LABEL_8;
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_13;
  }

  LOBYTE(v9) = 0;
LABEL_16:

  return v9;
}

- (id)_textInputController
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    v6 = [v5 performSelector:sel_textLayoutController];

    v7 = [(_UITextLayoutControllerBase *)v6 textInputController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_requestInputManagerSync
{
  if (qword_1ED49D5B8 != -1)
  {
    dispatch_once(&qword_1ED49D5B8, &__block_literal_global_1942);
  }

  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51___UIKeyboardStateManager__requestInputManagerSync__block_invoke_3;
  v4[3] = &unk_1E70FD058;
  v4[4] = self;
  [v3 addTask:v4 breadcrumb:qword_1ED49D5B0];
}

- (BOOL)uncachedDelegateSupportsImagePaste
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    m_remoteDelegateSupportsImagePaste = self->m_remoteDelegateSupportsImagePaste;
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self inputDelegate];
    if (([v4 __isKindOfUIResponder] & 1) == 0)
    {
      v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];

      v4 = v5;
    }

    if ([(_UIKeyboardStateManager *)self showingEmojiSearch])
    {
      v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v7 = [v6 delegateRespectingForwardingDelegate:0];

      v4 = v7;
    }

    v8 = [v4 _responderForEditing];

    if (_IsKindOfUIView(v8))
    {
      v9 = v8;
      v8 = v9;
      if (([v9 _isInAWindow] & 1) == 0)
      {

        v8 = 0;
      }
    }

    if (v8)
    {
      m_remoteDelegateSupportsImagePaste = [v8 _supportsImagePaste];
    }

    else
    {
      m_remoteDelegateSupportsImagePaste = 0;
    }
  }

  return m_remoteDelegateSupportsImagePaste & 1;
}

- (void)refreshAutofillModeIfNecessary
{
  v3 = [(_UIKeyboardStateManager *)self needAutofillLogin];
  v4 = [(_UIKeyboardStateManager *)self needAutofill];
  if (v3 != [(TIKeyboardState *)self->m_keyboardState needAutofill])
  {
    [(TIKeyboardState *)self->m_keyboardState setNeedAutofill:v3];
  }

  if ([(TIKeyboardState *)self->m_keyboardState autofillMode]!= v4)
  {
    [(TIKeyboardState *)self->m_keyboardState setAutofillMode:v4];
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v5 == 1)
  {
    self->m_keyboardDelegateStateNeedsRefresh = 1;

    [(_UIKeyboardStateManager *)self generateAutofillCandidate];
  }
}

- (void)hostApplicationDidEnterBackground
{
  v3 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v3 removeTextCompletionPrompt];

  v4 = [(_UIKeyboardStateManager *)self backendController];
  [v4 applicationDidEnterBackground];
}

- (void)setCapsLockIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setCapsLockIfNeeded];
}

- (_UIKeyboardStateManager)initWithPresentationDelegateView:(id)a3 forCustomInputView:(BOOL)a4
{
  v4 = a4;
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v65.receiver = self;
  v65.super_class = _UIKeyboardStateManager;
  v7 = [(_UIKeyboardStateManager *)&v65 init];
  v8 = v7;
  if (v7)
  {
    v9 = qword_1ED49D5C0++;
    v7->_id = v9;
    if (os_variant_has_internal_diagnostics())
    {
      v62 = _UIKeyboardExtendedLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = "No";
        id = v8->_id;
        if (v4)
        {
          v63 = "Yes";
        }

        *buf = 136315394;
        *&buf[4] = v63;
        *&buf[12] = 2048;
        *&buf[14] = id;
        _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_DEFAULT, "Impl init forCustomInputView:%s (id=%ld)", buf, 0x16u);
      }
    }

    objc_storeWeak(&v8->_presentationDelegate, v6);
    v8->_forCustomInputView = v4;
    _UIKBRT_ResetSystemUptimeOnResume();
    v10 = objc_alloc_init(UIKeyboardTaskQueue);
    taskQueue = v8->_taskQueue;
    v8->_taskQueue = v10;

    v12 = objc_alloc_init(_UIKeyboardImplProxy);
    m_implProxy = v8->m_implProxy;
    v8->m_implProxy = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69D9660]);
    m_keyboardState = v8->m_keyboardState;
    v8->m_keyboardState = v14;

    v16 = _UIMainBundleIdentifier();
    [(TIKeyboardState *)v8->m_keyboardState setClientIdentifier:v16];

    v17 = objc_alloc_init(UIKeyboardAutocorrectionController);
    m_autocorrectionController = v8->m_autocorrectionController;
    v8->m_autocorrectionController = v17;

    [(UIKeyboardAutocorrectionController *)v8->m_autocorrectionController setDelegate:v8];
    v19 = [[_UIAssertionController alloc] initWithAssertionSubject:v8];
    assertionController = v8->_assertionController;
    v8->_assertionController = v19;

    if (+[UIKeyboard isInlineTextCompletionUIEnabled](UIKeyboard, "isInlineTextCompletionUIEnabled") && !+[UIKeyboard usesInputSystemUI])
    {
      v21 = objc_alloc_init(UIInlineTextCompletionController);
      m_inlineTextCompletionController = v8->m_inlineTextCompletionController;
      v8->m_inlineTextCompletionController = v21;

      [(UIInlineTextCompletionController *)v8->m_inlineTextCompletionController setDelegate:v8];
      v23 = +[UIKBAnalyticsDispatcher sharedInstance];
      [(UIInlineTextCompletionController *)v8->m_inlineTextCompletionController setAnalyticsDispatcher:v23];
    }

    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v24 = qword_1ED49D5C8;
    v69 = qword_1ED49D5C8;
    if (!qword_1ED49D5C8)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getTUISmartReplyGeneratorClass_block_invoke;
      v71 = &unk_1E70F2F20;
      v72 = &v66;
      __getTUISmartReplyGeneratorClass_block_invoke(buf);
      v24 = v67[3];
    }

    v25 = v24;
    _Block_object_dispose(&v66, 8);
    v26 = [v24 sharedInstance];
    smartReplyGenerator = v8->_smartReplyGenerator;
    v8->_smartReplyGenerator = v26;

    v28 = objc_alloc_init(MEMORY[0x1E69D96A0]);
    m_smartPunctuationController = v8->m_smartPunctuationController;
    v8->m_smartPunctuationController = v28;

    v30 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
    [v30 setDelegate:v8];

    v31 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    [v31 setDelegate:v8];

    v8->m_currentDirection = 0;
    v8->m_textInputSource = 1;
    v8->m_correctionLearningAllowed = 1;
    [(_UIKeyboardStateManager *)v8 takeTextInputTraitsFromDelegate];
    v32 = +[UIDevice currentDevice];
    v33 = [v32 _isHardwareKeyboardAvailable];

    if (v33)
    {
      v34 = _UIKeyboardLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[_UIKeyboardStateManager initWithPresentationDelegateView:forCustomInputView:]";
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "%s UIDevice.currentDevice._hardwareKeyboardAvailable = YES", buf, 0xCu);
      }

      [(_UIKeyboardStateManager *)v8 updateHardwareKeyboardExclusivityIdentifier];
    }

    v35 = +[UIDevice currentDevice];
    -[_UIKeyboardStateManager setHardwareKeyboardAttached:](v8, "setHardwareKeyboardAttached:", [v35 _isHardwareKeyboardAvailable]);

    m_hardwareKeyboardAttached = v8->m_hardwareKeyboardAttached;
    if (m_hardwareKeyboardAttached)
    {
      v8->m_textInputSource = 4;
    }

    [(TIKeyboardState *)v8->m_keyboardState setHardwareKeyboardMode:m_hardwareKeyboardAttached];
    ++v8->m_updatingPreferences;
    v8->m_shiftLockedEnabled = [(_UIKeyboardStateManager *)v8 shiftLockPreference];
    v8->m_doubleSpacePeriodPreference = [(_UIKeyboardStateManager *)v8 doubleSpacePeriodPreference];
    UIKeyboardAutocorrectSpellingFlag = 0;
    v37 = [(_UIKeyboardStateManager *)v8 inputModePreference];
    UIKeyboardSetActiveInputModes(v37);

    v38 = [(_UIKeyboardStateManager *)v8 UILanguagePreference];
    v39 = [v38 copy];
    v40 = UIKeyboardCurrentUILanguage;
    UIKeyboardCurrentUILanguage = v39;

    if (![(_UIKeyboardStateManager *)v8 forCustomInputView])
    {
      [(_UIKeyboardStateManager *)v8 setInputModeFromPreferences];
    }

    --v8->m_updatingPreferences;
    if (m_hardwareKeyboardAttached)
    {
      v41 = UIApp;
      v42 = +[UIKeyboardInputModeController sharedInputModeController];
      v43 = [v42 hardwareInputMode];
      v44 = [v43 automaticHardwareLayout];
      [v41 setHardwareKeyboardLayoutName:v44];

      [(_UIKeyboardStateManager *)v8 setCapsLockIfNeeded];
    }

    [(_UIKeyboardStateManager *)v8 setServiceRole:+[UIKeyboard serviceRole]];
    WeakRetained = objc_loadWeakRetained(&v8->_presentationDelegate);
    [WeakRetained updateLayout];

    v46 = objc_alloc_init(UIKBAutofillController);
    m_autofillController = v8->m_autofillController;
    v8->m_autofillController = v46;

    v8->m_pendingAutofillIndex = -1;
    v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    m_hardwareKeyDownCodeToEventMap = v8->m_hardwareKeyDownCodeToEventMap;
    v8->m_hardwareKeyDownCodeToEventMap = v48;

    v50 = objc_alloc_init(UIKeyboardInputModeIndicatorController);
    inputModeIndicatorController = v8->_inputModeIndicatorController;
    v8->_inputModeIndicatorController = v50;

    [(UIKeyboardInputModeIndicatorController *)v8->_inputModeIndicatorController setDelegate:v8];
    v52 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v53 = [v52 preferencesActions];
    v54 = [v53 valueForPreferenceKey:@"kbUserDidPath"];
    v8->m_numCPwords = [v54 integerValue];

    v8->m_lastChooseSupplementalItemToInsertCallbackIdentifier = 0;
    v8->m_initializationDone = 1;
    v55 = objc_loadWeakRetained(&v8->_presentationDelegate);
    [v55 _setSafeAreaInsetsFrozen:1];

    v56 = objc_alloc_init(UIKBInputDelegateManager);
    [(_UIKeyboardStateManager *)v8 setInputDelegateManager:v56];

    v57 = [(_UIKeyboardStateManager *)v8 inputDelegateManager];
    [v57 setKeyboardStateDelegate:v8];

    v58 = -*MEMORY[0x1E695E460];
    [(_UIKeyboardStateManager *)v8 setDeleteWordLastDelete:v58];
    v8->m_autoDeleteLastDelete = v58;
    v59 = [[_UISmartReplyFeedbackManager alloc] initWithKeyboardStateManagerDelegate:v8];
    [(_UIKeyboardStateManager *)v8 setSmartReplyFeedbackManager:v59];

    v8->m_userInteraction = 10;
    v60 = v8;
  }

  return v8;
}

- (void)presentationDelegateWillDetach
{
  [(_UIKeyboardStateManager *)self detach];

  objc_storeWeak(&self->_presentationDelegate, 0);
}

- (void)detach
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      v8 = 134217984;
      v9 = id;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "KeyboardStateManager detach (id=%ld)", &v8, 0xCu);
    }
  }

  v3 = sharedInputManagerMux();
  v4 = [v3 responseDelegate];

  if (v4 == self)
  {
    [v3 setResponseDelegate:0];
  }

  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v5 cancelPerformSelectorsWithTarget:self];

  [(_UIKeyboardStateManager *)self clearTimers];
  [(_UIKeyboardStateManager *)self clearRemoteTextInputPartner];
}

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v25 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      *buf = 134217984;
      v29 = id;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "KeyboardStateManager dealloc (id=%ld)", buf, 0xCu);
    }
  }

  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = [v3 inputDelegate];

  if (v4 == self)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v5 setInputDelegate:0];
  }

  v6 = [(_UIKeyboardStateManager *)self asyncInputDelegate];

  if (v6)
  {
    v7 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
    v8 = [v7 asyncSystemInputDelegate];

    if (v8 == self)
    {
      v9 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
      [v9 setAsyncSystemInputDelegate:0];
    }
  }

  v10 = [(_UIKeyboardStateManager *)self webInputDelegate];

  if (v10)
  {
    v11 = [(_UIKeyboardStateManager *)self webInputDelegate];
    v12 = [v11 asyncInputDelegate];

    if (v12 == self)
    {
      v13 = [(_UIKeyboardStateManager *)self webInputDelegate];
      [v13 setAsyncInputDelegate:0];
    }
  }

  self->m_inDealloc = 1;
  [(_UIKeyboardStateManager *)self detach];
  m_previousInputString = self->m_previousInputString;
  self->m_previousInputString = 0;

  m_previousGlobeKeyEvent = self->m_previousGlobeKeyEvent;
  self->m_previousGlobeKeyEvent = 0;

  [(_UIKeyboardStateManager *)self setChangedDelegate:0];
  [(_UIKeyboardStateManager *)self removeAutocorrectPromptAndCandidateList];
  [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
  [(_UIKeyboardStateManager *)self removeTextChoiceUnderlines];
  [(_UIActionWhenIdle *)self->m_deferredDidSetDelegateAction invalidate];
  [(_UIActionWhenIdle *)self->m_delayedCandidateRequest invalidate];
  v16 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
  v17 = [v16 delegate];

  if (v17 == self)
  {
    v18 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
    [v18 setDelegate:0];
  }

  v19 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
  v20 = [v19 delegate];

  if (v20 == self)
  {
    v21 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    [v21 setDelegate:0];
  }

  [(_UIKeyboardImplProxy *)self->m_implProxy setDelegate:0];
  characterRectsForCharacterRange = self->_characterRectsForCharacterRange;
  self->_characterRectsForCharacterRange = 0;

  deferredUpdateTask = self->_deferredUpdateTask;
  self->_deferredUpdateTask = 0;

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained resetIsPhysicallyAttachedHardwareKeyboard];

  v27.receiver = self;
  v27.super_class = _UIKeyboardStateManager;
  [(_UIKeyboardStateManager *)&v27 dealloc];
}

- (BOOL)shouldSwitchFromInputManagerMode:(id)a3 toInputMode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = [v6 identifier];
  if (![v8 hasPrefix:@"emoji"])
  {

    goto LABEL_6;
  }

  HasWordNgramModelForInputMode = UIKeyboardHasWordNgramModelForInputMode();

  if ((HasWordNgramModelForInputMode & 1) == 0)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)refreshKeyboardStateUpdatingSecureCandidateRenderTraits:(BOOL)a3
{
  v3 = a3;
  [(_UIKeyboardStateManager *)self updateInputManagerMode];
  v5 = [(_UIKeyboardStateManager *)self layoutState];
  [(TIKeyboardState *)self->m_keyboardState setLayoutState:v5];

  v6 = [(UIKeyboardCandidateList *)self->m_candidateList currentCandidate];
  [(TIKeyboardState *)self->m_keyboardState setCurrentCandidate:v6];

  [(TIKeyboardState *)self->m_keyboardState setNeedsCandidateMetadata:1];
  [(TIKeyboardState *)self->m_keyboardState setShortcutConversionEnabled:[(UITextInputTraits *)self->m_traits shortcutConversionType]!= 1];
  [(TIKeyboardState *)self->m_keyboardState setCandidateSelectionPredictionEnabled:[(_UIKeyboardStateManager *)self candidateSelectionPredictionForTraits]];
  v7 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:self->m_traits];
  [(TIKeyboardState *)self->m_keyboardState setTextInputTraits:v7];

  if ([(_UIKeyboardStateManager *)self isPredictionViewControllerVisible]|| [(_UIKeyboardStateManager *)self prewarmsPredictiveCandidates])
  {
    [(TIKeyboardState *)self->m_keyboardState setAutocorrectionListUIDisplayed:1];
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self autocorrectionController];
    -[TIKeyboardState setAutocorrectionListUIDisplayed:](self->m_keyboardState, "setAutocorrectionListUIDisplayed:", [v8 hasActiveObservers]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  -[TIKeyboardState setFloatingKeyboardMode:](self->m_keyboardState, "setFloatingKeyboardMode:", [objc_opt_class() isFloating]);

  v10 = objc_loadWeakRetained(&self->_presentationDelegate);
  -[TIKeyboardState setLandscapeOrientation:](self->m_keyboardState, "setLandscapeOrientation:", ([v10 _keyboardOrientation] - 3) < 2);

  [(TIKeyboardState *)self->m_keyboardState setOmitEmojiCandidates:[(_UIKeyboardStateManager *)self showingEmojiSearch]];
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v11 = [(_UIKeyboardStateManager *)self textInputTraits];
    v12 = [v11 acceptsPayloads];

    m_keyboardState = self->m_keyboardState;
    if (v12)
    {
      v14 = +[UITextInputPayloadController sharedInstance];
      v15 = [v14 supportedPayloadIds];
      [(TIKeyboardState *)m_keyboardState setSupportedPayloadIds:v15];
    }

    else
    {
      [(TIKeyboardState *)self->m_keyboardState setSupportedPayloadIds:0];
    }
  }

  v16 = [(_UIKeyboardStateManager *)self responderForSendCurrentLocation];
  [(TIKeyboardState *)self->m_keyboardState setCanSendCurrentLocation:v16 != 0];

  v17 = objc_loadWeakRetained(&self->_presentationDelegate);
  -[TIKeyboardState setLongPredictionListEnabled:](self->m_keyboardState, "setLongPredictionListEnabled:", [v17 accessibilityUsesExtendedKeyboardPredictionsEnabled]);

  [(TIKeyboardState *)self->m_keyboardState setNeedAutofill:[(_UIKeyboardStateManager *)self needAutofillLogin]];
  [(TIKeyboardState *)self->m_keyboardState setNeedOneTimeCodeAutofill:[(_UIKeyboardStateManager *)self needOneTimeCodeAutofill]];
  if (objc_opt_respondsToSelector())
  {
    [(TIKeyboardState *)self->m_keyboardState setNeedCellularAutofill:[(_UIKeyboardStateManager *)self needCellularAutofill]];
  }

  [(TIKeyboardState *)self->m_keyboardState setAutofillMode:[(_UIKeyboardStateManager *)self needAutofill]];
  [(TIKeyboardState *)self->m_keyboardState setAutofillSubMode:[(_UIKeyboardStateManager *)self autofillSubMode]];
  v18 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];

  if (v18)
  {
    [(TIKeyboardState *)self->m_keyboardState setInlineCompletionEnabled:[(_UIKeyboardStateManager *)self isInlineCompletionEnabled]];
  }

  if (v3)
  {
    v19 = [(_UIKeyboardStateManager *)self updateSecureCandidateRenderTraits];
    [(TIKeyboardState *)self->m_keyboardState setSecureCandidateRenderTraits:v19];
  }

  if (self->m_keyboardDelegateStateNeedsRefresh)
  {
    v20 = +[UIKeyboardInputModeController sharedInputModeController];
    -[TIKeyboardState setIsScreenLocked:](self->m_keyboardState, "setIsScreenLocked:", [v20 deviceStateIsLocked]);

    self->m_keyboardDelegateStateNeedsRefresh = 0;
  }

  v21 = objc_loadWeakRetained(&self->_presentationDelegate);
  -[TIKeyboardState setEmojiPopoverMode:](self->m_keyboardState, "setEmojiPopoverMode:", [v21 isEmojiPopoverPresented]);

  [(TIKeyboardState *)self->m_keyboardState setEmojiSearchMode:[(_UIKeyboardStateManager *)self showingEmojiSearch]];
  [(_UIKeyboardStateManager *)self _updateCanSuggestSupplementalItemsForCurrentSelection];
  v22 = [(_UIKeyboardStateManager *)self imageSuggestionEnabled];
  v23 = self->m_keyboardState;

  [(TIKeyboardState *)v23 setImageSuggestionEnabled:v22];
}

- (id)textContentTypeForCurrentInputDelegate
{
  v3 = [(UITextInputTraits *)self->m_traits textContentType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self autofillController];
    v7 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v5 = [v6 textContentTypeForInputDelegate:v7];
  }

  return v5;
}

- (BOOL)textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact
{
  v3 = [(_UIKeyboardStateManager *)self textInputTraitsNeedAutofill];
  if (v3)
  {
    if ([(_UIKeyboardStateManager *)self textInputTraitsNeedOneTimeCode])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(_UIKeyboardStateManager *)self textInputTraitsNeedContactAutoFill];
    }
  }

  return v3;
}

- (BOOL)textInputTraitsNeedSignup
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 delegateNeedsAutofillMode] == 2;

  return v3;
}

- (BOOL)textInputTraitsNeedOneTimeCode
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 delegateNeedsAutofillMode] == 8;

  return v3;
}

- (BOOL)textInputTraitsNeedContactAutoFill
{
  v3 = [(_UIKeyboardStateManager *)self autofillController];
  if ([v3 delegateNeedsAutofillMode] == 5)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self autofillController];
    if ([v5 delegateNeedsAutofillMode] == 6)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(_UIKeyboardStateManager *)self autofillController];
      v4 = [v6 delegateNeedsAutofillMode] == 7;
    }
  }

  return v4;
}

- (id)_contentsOfUsernameField
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 autofillGroup];
  v4 = [v3 objectForKey:@"username"];

  if ([v4 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v5 = v4;
    v6 = [v5 beginningOfDocument];
    v7 = [v5 endOfDocument];
    v8 = [v5 textRangeFromPosition:v6 toPosition:v7];
    v9 = [v5 textInRange:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)generateAutofillCandidateByAddingTask:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [WeakRetained keyboardLayoutIsInAnotherProcess];

  if ((v6 & 1) == 0)
  {
    v7 = [(_UIKeyboardStateManager *)self inputDelegate];
    v8 = [(_UIKeyboardStateManager *)self suppressOptOutASPCandidateUpdateForDelegate:v7];

    if (!v8)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65___UIKeyboardStateManager_generateAutofillCandidateByAddingTask___block_invoke;
      aBlock[3] = &unk_1E70FD058;
      aBlock[4] = self;
      v9 = _Block_copy(aBlock);
      if (v3)
      {
        if (qword_1ED49CF48 != -1)
        {
          dispatch_once(&qword_1ED49CF48, &__block_literal_global_110);
        }

        v10 = [(_UIKeyboardStateManager *)self taskQueue];
        [v10 addTask:v9 breadcrumb:qword_1ED49CF40];
      }

      else
      {
        if (qword_1ED49CF58 != -1)
        {
          dispatch_once(&qword_1ED49CF58, &__block_literal_global_427);
        }

        v10 = [(_UIKeyboardStateManager *)self taskQueue];
        [v10 performTask:v9 breadcrumb:qword_1ED49CF50];
      }
    }
  }
}

- (void)refreshSecureCandidatesIfNecessary
{
  self->m_keyboardDelegateStateNeedsRefresh = 1;
  if ([(_UIKeyboardStateManager *)self usesCandidateSelection]&& [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet slottedCandidatesCount])
  {

    [(_UIKeyboardStateManager *)self setCandidates:0];
  }
}

- (void)setPendingAutofillIndex:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0 && self->m_cachedAutofillMode == 1)
  {
    self->m_pendingAutofillIndex = a3;
    [(_UIKeyboardStateManager *)self generateAutofillCandidate];
  }
}

- (BOOL)preferFallbackAutofillGroup
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 preferFallbackAutofillGroup];

  return v3;
}

- (int64_t)needAutofillCandidate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 documentTraits];
      v8 = [v7 autofillMode];

      if (v8 != 1)
      {
LABEL_20:

        goto LABEL_21;
      }

      v9 = [v6 documentTraits];
      v10 = [v9 textInputTraits];
      if ([v10 secureTextEntry])
      {
        v11 = [(UITextInputTraits *)self->m_traits isSecureTextEntry];

        if (v11)
        {
          v12 = [(_UIKeyboardStateManager *)self autofillController];
          v13 = [v12 autofillGroup];
          [v13 setObject:v4 forKey:@"password"];

          goto LABEL_18;
        }
      }

      else
      {
      }

      v18 = [v6 documentTraits];
      v19 = [v18 textInputTraits];
      v20 = [v19 textContentType];
      v21 = [v20 isEqual:@"username"];

      if (!v21)
      {
LABEL_19:
        v8 = 1;
        goto LABEL_20;
      }

      v12 = [(_UIKeyboardStateManager *)self autofillController];
      v22 = [v12 autofillGroup];
      [v22 setObject:v4 forKey:@"username"];

LABEL_18:
      goto LABEL_19;
    }

    if (self->m_isAutofilling || [(_UIKeyboardStateManager *)self delegateAlreadyInAutofillGroup])
    {
      if ((self->m_cachedAutofillMode & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v14 = [(_UIKeyboardStateManager *)self autofillController];
        v15 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        self->m_autofillSubMode = [v14 needAutofillCandidate:v4 delegateAsResponder:v15 keyboardState:self->m_keyboardState];
      }

      v16 = [(_UIKeyboardStateManager *)self delegateAlreadyInAutofillGroup];
      v17 = 288;
      if (v16)
      {
        v17 = 296;
      }

      v8 = *(&self->super.isa + v17);
      goto LABEL_20;
    }

    if ((self->m_cachedAutofillMode & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
LABEL_36:
      v42 = [(_UIKeyboardStateManager *)self autofillController];
      v43 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      v8 = [v42 needAutofillCandidate:v4 delegateAsResponder:v43 keyboardState:self->m_keyboardState];

      self->m_autofillSubMode = v8;
      if (v8 == 8)
      {
        if ([(_UIKeyboardStateManager *)self dontPushOneTimeCode])
        {
          v8 = 0;
        }

        else
        {
          v8 = 8;
        }
      }

      v44 = [(_UIKeyboardStateManager *)self autofillController];
      v45 = [v44 autofillGroup];
      [v45 objectForKey:@"password"];

      if ([(_UIKeyboardStateManager *)self delegateAlreadyInAutofillGroup])
      {
        self->m_groupAutofillMode = v8;
      }

      goto LABEL_20;
    }

    v24 = [(_UIKeyboardStateManager *)self autofillController];
    v25 = [v24 autofillGroup];
    v26 = [v25 objectForKey:@"new-password"];

    if (!v26)
    {
      v27 = [(_UIKeyboardStateManager *)self autofillController];
      v28 = [v27 autofillGroup];
      v26 = [v28 objectForKey:@"username"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [v4 superview];
        v30 = [v26 superview];
        v31 = v30;
        if (v29 == v30)
        {
        }

        else
        {
          v32 = [(_UIKeyboardStateManager *)self isMemberOfPossibleAutofillGroup:v4];

          if (!v32)
          {
            goto LABEL_35;
          }
        }

        v33 = [(_UIKeyboardStateManager *)self autofillController];
        v34 = [v33 autofillGroup];
        if (!v34)
        {
          goto LABEL_34;
        }

        v35 = v34;
        v36 = [(_UIKeyboardStateManager *)self autofillController];
        v37 = [(_UIKeyboardStateManager *)self autofillController];
        v38 = [v37 autofillGroup];
        v39 = [v36 containsUsernamePasswordPairsInAutofillGroup:v38];

        if (v39)
        {
          v33 = [(_UIKeyboardStateManager *)self autofillController];
          v40 = [v33 autofillGroup];
          v41 = [(_UIKeyboardStateManager *)self autofillController];
          [v41 setFallbackAutofillGroup:v40];

LABEL_34:
        }
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (BOOL)isMemberOfAutofillGroup:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self autofillController];
  v6 = [v5 autofillGroup];

  v7 = [v6 objectForKey:@"username"];
  v8 = [v6 objectForKey:@"password"];
  v9 = [v6 objectForKey:@"new-password"];

  v12 = v7 == v4 || v8 == v4 || v9 == v4;
  return v12;
}

- (BOOL)isMemberOfPossibleAutofillGroup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIKeyboardStateManager *)self isMemberOfAutofillGroup:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self autofillController];
    v7 = [v6 autofillGroup];
    v8 = [v7 objectForKey:@"UIAutofillPossibleRespondersKey"];

    if (AutoFillUILibraryCore() && !v8)
    {
      v9 = [(_UIKeyboardStateManager *)self autofillController];
      v10 = [v9 autofillGroup];
      v11 = getAFUIAutoFillPossibleRespondersKey();
      v8 = [v10 objectForKey:v11];
    }

    if (v8 && [v8 count] && !-[_UIKeyboardStateManager preferFallbackAutofillGroup](self, "preferFallbackAutofillGroup") || (-[_UIKeyboardStateManager autofillController](self, "autofillController"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fallbackAutofillGroup"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
    {
      v16 = v8;
    }

    else
    {
      v14 = [(_UIKeyboardStateManager *)self autofillController];
      v15 = [v14 fallbackAutofillGroup];
      v16 = [v15 objectForKey:@"UIAutofillPossibleRespondersKey"];

      if (AutoFillUILibraryCore() && !v16)
      {
        v17 = [(_UIKeyboardStateManager *)self autofillController];
        v18 = [v17 fallbackAutofillGroup];
        v19 = getAFUIAutoFillPossibleRespondersKey();
        v16 = [v18 objectForKey:v19];
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v16;
    v5 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v21 = *v25;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v20);
          }

          if (*(*(&v24 + 1) + 8 * i) == v4)
          {
            LOBYTE(v5) = 1;
            goto LABEL_24;
          }
        }

        v5 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

  return v5;
}

- (void)clearAutofillGroup
{
  v3 = [(_UIKeyboardStateManager *)self autofillController];
  [v3 clearAutofillGroup];

  self->m_cachedAutofillMode = 0;
}

- (void)removeASPVisualEffectsIfNecessary:(id)a3
{
  v4 = a3;
  if (self->m_cachedAutofillMode)
  {
    v7 = v4;
    v5 = dyld_program_sdk_at_least();
    v4 = v7;
    if ((v5 & 1) == 0)
    {
      v6 = [(_UIKeyboardStateManager *)self autofillController];
      [v6 clearASPVisualEffectsInTextField:v7];

      v4 = v7;
    }
  }
}

- (void)handleAutofillCredentialSaveIfNeeded:(id)a3
{
  v14 = a3;
  v4 = [(_UIKeyboardStateManager *)self preferFallbackAutofillGroup];
  v5 = [(_UIKeyboardStateManager *)self autofillController];
  v6 = v5;
  if (v4)
  {
    [v5 fallbackAutofillGroup];
  }

  else
  {
    [v5 autofillGroup];
  }
  v7 = ;

  v8 = [(_UIKeyboardStateManager *)self autofillController];
  v9 = [v8 containsUsernamePasswordPairsInAutofillGroup:v7];

  if (v9)
  {
    v10 = [v7 objectForKey:@"UIAutofillASPOptInKey"];
    if (AutoFillUILibraryCore() && !v10)
    {
      v11 = getAFUIAutoFillASPOptInKey();
      v10 = [v7 objectForKey:v11];
    }

    v12 = [v10 BOOLValue];
    v13 = [(_UIKeyboardStateManager *)self autofillController];
    [v13 handleAutofillCredentialSaveIfNeeded:v14 fromASP:v12];
  }

  else
  {
    [(_UIKeyboardStateManager *)self clearAutofillGroup];
  }
}

- (BOOL)suppressOptOutASPCandidateUpdateForDelegate:(id)a3
{
  m_cachedAutofillMode = self->m_cachedAutofillMode;
  v5 = a3;
  v6 = [(_UIKeyboardStateManager *)self autofillController];
  v7 = [v6 autofillGroup];
  v8 = [v7 objectForKey:@"password"];

  v9 = [(_UIKeyboardStateManager *)self autofillController];
  v10 = [v9 autofillGroup];
  v11 = [v10 objectForKey:@"UIAutofillASPOptInKey"];

  if (AutoFillUILibraryCore() && !v11)
  {
    v12 = [(_UIKeyboardStateManager *)self autofillController];
    v13 = [v12 autofillGroup];
    v14 = getAFUIAutoFillASPOptInKey();
    v11 = [v13 objectForKey:v14];
  }

  v15 = (v8 == v5) & ([v11 BOOLValue] ^ 1);
  v16 = (m_cachedAutofillMode & 0xFFFFFFFFFFFFFFFELL) == 2 && v15;

  return v16;
}

- (void)textWillScroll
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained textWillScroll];
}

- (void)textDidScroll
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained textDidScroll];
}

- (void)updatePreferencesWithBlock:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "[_UIKeyboardStateManager updatePreferencesWithBlock:]";
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unsupported use of %s off the main thread", &v7, 0xCu);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &updatePreferencesWithBlock____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "[_UIKeyboardStateManager updatePreferencesWithBlock:]";
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Unsupported use of %s off the main thread", &v7, 0xCu);
      }
    }
  }

  if (v4)
  {
    ++self->m_updatingPreferences;
    v4[2](v4);
    --self->m_updatingPreferences;
  }
}

- (void)updateDefaultsWithResults:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v16 = "[_UIKeyboardStateManager updateDefaultsWithResults:]";
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unsupported use %s off the main thread", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &updateDefaultsWithResults____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[_UIKeyboardStateManager updateDefaultsWithResults:]";
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unsupported use %s off the main thread", buf, 0xCu);
      }
    }
  }

  if (![(_UIKeyboardStateManager *)self updatingPreferences])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    if ([WeakRetained isUsingDictationLayout])
    {
    }

    else
    {
      v6 = objc_loadWeakRetained(&self->_presentationDelegate);
      v7 = [v6 isDictationPopoverPresented];

      if ((v7 & 1) == 0)
      {
        ++self->m_updatingPreferences;
        v8 = [(_UIKeyboardStateManager *)self isInHardwareKeyboardMode];
        v9 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53___UIKeyboardStateManager_updateDefaultsWithResults___block_invoke;
        block[3] = &unk_1E70FD0C8;
        v14 = v8;
        block[4] = self;
        v13 = v4;
        dispatch_async(v9, block);
      }
    }
  }
}

- (BOOL)keyboardIsInPencilTextInputMode
{
  v3 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  if ([v3 _suppressSoftwareKeyboard])
  {
    v4 = [(_UIKeyboardStateManager *)self _textInputSourceForDelegate:v3]== 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_textInputSourceForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _textInputSource];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performReturn
{
  v3 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v5 = [v3 _responderForEditing];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 returnKeyGoesToNextResponder])
  {
    v4 = [v5 _nextKeyResponder];
    if ([v5 _suppressSoftwareKeyboard])
    {
      [v4 _setSuppressSoftwareKeyboard:1];
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v4 set_textInputSource:{objc_msgSend(v5, "_textInputSource")}];
    }

    [v4 becomeFirstResponder];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D9638]);
    [v4 insertText:@"\n"];
    [(_UIKeyboardStateManager *)self performKeyboardOutputAsInputViewControllerOutput:v4 textInputSource:3];
  }
}

- (void)performDelete
{
  v3 = objc_alloc_init(MEMORY[0x1E69D9638]);
  [v3 deleteBackward];
  [(_UIKeyboardStateManager *)self performKeyboardOutputAsInputViewControllerOutput:v3 textInputSource:3];
}

- (void)performOperations:(id)a3 withTextInputSource:(int64_t)a4
{
  m_textInputSource = self->m_textInputSource;
  self->m_textInputSource = a4;
  (*(a3 + 2))(a3, a2);
  self->m_textInputSource = m_textInputSource;
}

- (void)updateTextInputKeyboardSource
{
  v12[2] = *MEMORY[0x1E69E9840];
  m_textInputSource = self->m_textInputSource;
  if (m_textInputSource)
  {
    v4 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    v5 = [v4 lastEventSource];

    if ((m_textInputSource - 4) < 5 || m_textInputSource == 1)
    {
      if (v5 == 3)
      {
        v7 = 15;
      }

      else
      {
        v7 = 5;
      }
    }

    else if (m_textInputSource == 3 && (v5 - 1) < 8)
    {
      v7 = qword_18A678E80[v5 - 1];
    }

    else
    {
      v7 = 5;
    }

    v11[0] = @"inputSource";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:m_textInputSource];
    v11[1] = @"options";
    v12[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v12[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(_UIKeyboardStateManager *)self updateTextInputKeyboardSource:v10];
  }
}

- (void)updateTextInputKeyboardSource:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateTextInputKeyboardSource:v4];
}

- (unint64_t)_updateAutocorrectionPreferenceForTraitsWithCurrentPreference:(BOOL)a3
{
  if (!a3)
  {
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardAutocorrectionRequiredForInputMode(v4);

    if (!v5)
    {
      return 0;
    }
  }

  if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]|| [(_UIKeyboardStateManager *)self keyboardIsKeyPad])
  {
    return 0;
  }

  if ([(_UIKeyboardStateManager *)self showingEmojiSearch])
  {
    return 1;
  }

  v7 = [(UITextInputTraits *)self->m_traits autocorrectionType];
  result = 1;
  if (v7 && v7 != 2)
  {
    if (v7 != 1)
    {
      return 0;
    }

    v8 = UIKeyboardGetCurrentInputMode();
    v9 = UIKeyboardAutocorrectionRequiredForInputMode(v8);

    if ((v9 & 1) == 0)
    {
      if (_os_feature_enabled_impl() && [(UITextInputTraits *)self->m_traits allowsSuggestionsOnlyMode]&& !+[UIKeyboard isSpotlight])
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }

  return result;
}

- (BOOL)smartInsertDeleteIsEnabled
{
  if ([(UITextInputTraits *)self->m_traits smartInsertDeleteType]== 1 || [(UITextInputTraits *)self->m_traits isSecureTextEntry]|| [(_UIKeyboardStateManager *)self disableSmartInsertDelete])
  {
    v3 = 0;
  }

  else
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v3 = [v6 BOOLForPreferenceKey:*MEMORY[0x1E69D9950]];
  }

  return v3 & 1;
}

- (TISmartPunctuationController)smartPunctuationController
{
  v3 = [(TISmartPunctuationController *)self->m_smartPunctuationController smartPunctuationOptions];

  if (!v3)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentInputMode];
    v6 = [v5 primaryLanguage];
    [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v6];
  }

  m_smartPunctuationController = self->m_smartPunctuationController;

  return m_smartPunctuationController;
}

- (BOOL)keyboardsExpandedPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x1E69D96F0]];

  return v4;
}

- (BOOL)automaticMinimizationEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained automaticMinimizationEnabled];

  return v3;
}

- (void)setAutomaticMinimizationEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setAutomaticMinimizationEnabled:v3];
}

- (void)updateInputModeLastChosenPreference
{
  if (!self->m_updatingPreferences)
  {
    self->m_updatingPreferences = 1;
    [(_UIKeyboardStateManager *)self autocapitalizationPreference];
    [(_UIKeyboardStateManager *)self doubleSpacePeriodPreference];
    [(_UIKeyboardStateManager *)self shiftLockPreference];
    self->m_updatingPreferences = 0;
  }
}

- (id)hardwareKeyboardsSeenPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 valueForPreferenceKey:*MEMORY[0x1E69D9848]];

  return v4;
}

- (void)setHardwareKeyboardsSeenPreference:(id)a3
{
  self->m_updatingPreferences = 1;
  v4 = a3;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  [v6 setValue:v4 forPreferenceKey:*MEMORY[0x1E69D9848]];

  self->m_updatingPreferences = 0;
}

- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    goto LABEL_19;
  }

  v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v8 = [v7 handlingRemoteEvent];

  if ((v8 & 1) == 0)
  {
    v9 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v27[0] = @"inputMode";
    v27[1] = @"isUserInitiated";
    v28[0] = v6;
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v28[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v9 forwardKeyboardInputMode:v11];
  }

  v12 = +[UIKeyboardInputModeController sharedInputModeController];
  v13 = [v12 currentInputMode];
  v14 = [v13 identifier];
  v15 = [v14 isEqualToString:@"autofillsignup"];

  if (v15)
  {
LABEL_19:
    if (-[_UIKeyboardStateManager floatingForced](self, "floatingForced") && [v6 hasPrefix:@"emoji"])
    {
      [(_UIKeyboardStateManager *)self updateAssistantView];
    }

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __54___UIKeyboardStateManager_setInputMode_userInitiated___block_invoke;
    v23 = &unk_1E70FD0F0;
    v24 = self;
    v25 = v6;
    v26 = v4;
    v16 = _Block_copy(&v20);
    v17 = [(_UIKeyboardStateManager *)self inputDelegateManager:v20];
    v18 = [v17 insideKeyInputDelegateCall];

    if (v18)
    {
      if (qword_1ED49CF68 != -1)
      {
        dispatch_once(&qword_1ED49CF68, &__block_literal_global_464);
      }

      v19 = [(_UIKeyboardStateManager *)self taskQueue];
      [v19 addTask:v16 breadcrumb:qword_1ED49CF60];
    }

    else
    {
      if (qword_1ED49CF78 != -1)
      {
        dispatch_once(&qword_1ED49CF78, &__block_literal_global_470);
      }

      v19 = [(_UIKeyboardStateManager *)self taskQueue];
      [v19 performSingleTask:v16 breadcrumb:qword_1ED49CF70];
    }
  }
}

- (void)setInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 executionContext:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:a3];
  self->m_didAutomaticallyInsertSpaceBeforeChangingInputMode = self->m_didAutomaticallyInsertSpace;
  self->_skipRecomputeInputMode = [(TIKeyboardState *)self->m_keyboardState emojiSearchMode]^ 1;
  [(_UIKeyboardStateManager *)self setKeyboardInputMode:v11 userInitiated:v7 updateIndicator:v6 executionContext:v10];

  self->_skipRecomputeInputMode = 0;
}

- (void)_setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 force:(BOOL)a5
{
  v8 = a3;
  if (qword_1ED49CF88 != -1)
  {
    dispatch_once(&qword_1ED49CF88, &__block_literal_global_475);
  }

  v9 = [(_UIKeyboardStateManager *)self taskQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_force___block_invoke_3;
  v12[3] = &unk_1E70FD118;
  v12[4] = self;
  v13 = v8;
  v14 = a4;
  v15 = a5;
  v10 = qword_1ED49CF80;
  v11 = v8;
  [v9 performSingleTask:v12 breadcrumb:v10];
}

- (void)postInputViewControllerShouldUpdateNotification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained postInputViewControllerShouldUpdateNotification:v4];
}

- (void)reloadCurrentInputMode
{
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v4 currentInputMode];
  [(_UIKeyboardStateManager *)self _setKeyboardInputMode:v3 userInitiated:0 force:1];
}

- (void)setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 executionContext:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (![v10 isEmojiInputMode] || !self->m_delegateSupportsImagePaste)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  if ([objc_opt_class() isSplit])
  {

LABEL_7:
    [(_UIKeyboardStateManager *)self _setKeyboardInputMode:v10 userInitiated:v8 updateIndicator:v7 force:0 executionContext:v11];
    goto LABEL_8;
  }

  v13 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  v14 = [v13 shouldPrefetchRemoteView];

  if (!v14)
  {
    goto LABEL_7;
  }

  [v11 returnExecutionToParent];
  v15 = UIKeyboardGetCurrentInputMode();
  v16 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95___UIKeyboardStateManager_setKeyboardInputMode_userInitiated_updateIndicator_executionContext___block_invoke;
  v18[3] = &unk_1E70F43C8;
  v19 = v15;
  v20 = self;
  v21 = v10;
  v22 = v8;
  v23 = v7;
  v17 = v15;
  [v16 prefetchRecentsViewControllerWithCompletion:v18];

LABEL_8:
}

- (void)_setKeyboardInputMode:(id)a3 userInitiated:(BOOL)a4 updateIndicator:(BOOL)a5 force:(BOOL)a6 executionContext:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v14 = [v12 identifier];
  v15 = [v14 length];

  if (!v15)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v17 = [WeakRetained _rootInputWindowController];
  v18 = [v17 isRotating];

  if (v18)
  {
    goto LABEL_3;
  }

  v95 = v9;
  v19 = off_1E70EA000;
  v20 = +[UIKeyboardInputModeController sharedInputModeController];
  v21 = [v20 currentInputMode];
  if ([v21 isEqual:v12] && objc_msgSend(v12, "isDisplayed"))
  {
    v22 = v10;
    v23 = objc_loadWeakRetained(&self->_presentationDelegate);
    v24 = [v23 layout];
    if (v24)
    {
      v25 = !v8;
    }

    else
    {
      v91 = objc_loadWeakRetained(&self->_presentationDelegate);
      v25 = (([v91 keyboardLayoutIsInAnotherProcess] & 1) != 0 || objc_msgSend(v12, "isExtensionInputMode")) && !v8;
    }

    v10 = v22;
    v19 = off_1E70EA000;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v26 = +[UIKeyboardInputMode dictationInputMode];
  v27 = v26;
  if (v26 != v12)
  {

    goto LABEL_13;
  }

  v28 = +[UIKeyboardInputMode dictationInputMode];
  v29 = [v28 isCurrentDictationLanguageOnDevice];

  if (!v29)
  {
LABEL_13:
    if (+[UIDictationController isRunning])
    {
      v30 = [(_UIKeyboardStateManager *)self activeDictationLanguage];
      if (v30)
      {
        v31 = [v12 dictationLanguage];
        v32 = [v30 isEqual:v31];

        if ((v32 & 1) == 0)
        {
          [(_UIKeyboardStateManager *)self setSyncingDictationLanguageForInputModeSwitch:1];
          v33 = +[UIDictationController sharedInstance];
          [v33 setReasonType:16];

          v34 = +[UIDictationController activeInstance];
          [v34 cancelDictation];

          if (qword_1ED49CFA8 != -1)
          {
            dispatch_once(&qword_1ED49CFA8, &__block_literal_global_485);
          }

          v35 = [(_UIKeyboardStateManager *)self taskQueue];
          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 3221225472;
          v106[2] = __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_3;
          v106[3] = &unk_1E70FD058;
          v106[4] = self;
          v36 = [v35 scheduleTask:v106 timeInterval:0 repeats:qword_1ED49CFA0 breadcrumb:0.5];
        }
      }
    }

    self->_isSettingExtensionInputMode = [v12 isExtensionInputMode];
    self->_needsUpdateAssistantView = 0;
    [(_UIKeyboardStateManager *)self cleanUpBeforeInputModeSwitch];
    self->_isSettingExtensionInputMode = 0;
    v37 = objc_loadWeakRetained(&self->_presentationDelegate);
    v38 = [v37 _showsScribbleIconsInAssistantView];

    if (v38)
    {
      v39 = [v12 languageWithRegion];
      [UIAssistantBarButtonItemProvider setScribbleLanguageIdentifier:v39];
    }

    v40 = [(__objc2_class *)v19[13] sharedInputModeController];
    [v40 setLastInputModeSwitchTriggeredByASCIIToggle:0];

    self->m_predictionType = 0;
    if ([v12 isEmojiInputMode])
    {
      v41 = objc_loadWeakRetained(&self->_presentationDelegate);
      v42 = [v41 canPresentEmojiPopover];

      if (v42)
      {
        v43 = objc_loadWeakRetained(&self->_presentationDelegate);
        v44 = [v43 isEmojiPopoverPresented];

        if ((v44 & 1) == 0)
        {
          if (+[UIKeyboard usesInputSystemUI])
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_4;
            block[3] = &unk_1E70F3590;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          else
          {
            v92 = objc_loadWeakRetained(&self->_presentationDelegate);
            [v92 presentEmojiPopoverViaTrigger:@"other" completion:0];
          }
        }

        goto LABEL_3;
      }
    }

    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    [v45 postNotificationName:@"UITextInputCurrentInputModeWillChangeNotification" object:0];

    v46 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v47 = [v46 forwardingInputDelegate];

    if (!v47)
    {
      v48 = [MEMORY[0x1E696AD88] defaultCenter];
      [v48 postNotificationName:@"UITextInputWillPersistFindUINotification" object:0];
    }

    v49 = [(__objc2_class *)v19[13] sharedInputModeController];
    v50 = [v49 currentInputMode];

    v51 = [v12 identifier];
    UIKeyboardSetCurrentInputMode(v51);

    if (self->_needsUpdateAssistantView)
    {
      [(_UIKeyboardStateManager *)self updateAssistantView];
    }

    v93 = v10;
    if ([v12 isExtensionInputMode])
    {
      v52 = [v12 primaryLanguage];
      v53 = [v52 lowercaseString];
      v54 = [v53 hasPrefix:@"und"];

      if (v54)
      {
        v55 = [v12 isDefaultRightToLeft];
        [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:@"en"];
      }

      else
      {
        v56 = MEMORY[0x1E695DF58];
        v57 = [v12 primaryLanguage];
        v55 = [v56 characterDirectionForLanguage:v57] == 2;

        v58 = [v12 primaryLanguage];
        [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v58];
      }

      [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
      if (v10)
      {
        v59 = +[UIPeripheralHost sharedInstance];
        [v59 setDocumentInputMode:v50];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [v50 isDefaultRightToLeft];
      }

      else
      {
        v55 = [v12 isDefaultRightToLeft];
        v60 = [v12 primaryLanguage];
        [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v60];

        v61 = +[UIKeyboardInputMode dictationInputMode];
        [v61 setTriggeringTouch:0];

        [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
      }
    }

    v62 = v55;
    m_currentDirection = self->m_currentDirection;
    v94 = m_currentDirection != v55;
    if (m_currentDirection != v55)
    {
      self->m_currentDirection = v55;
    }

    if ([v12 isExtensionInputMode])
    {
      v64 = [(__objc2_class *)v19[13] sharedInputModeController];
      v65 = [v64 currentSystemInputMode];
      v66 = [v65 identifier];
      v67 = UIKeyboardGetKBStarKeyboard(v66, [(UITextInputTraits *)self->m_traits keyboardType]);

      v68 = [v67 subtrees];
      v69 = [v68 firstObject];
      self->m_usesAutoShiftFor3PK = [v69 BOOLForProperty:@"autoshift"];

      [(_UIKeyboardStateManager *)self updateShiftState];
      [(_UIKeyboardStateManager *)self setShouldSkipCandidateSelection:0];

LABEL_49:
      self->m_keyboardDelegateStateNeedsRefresh = 1;
      [(_UIKeyboardStateManager *)self postInputViewControllerShouldUpdateNotification:v12];
      if (v12)
      {
        if (+[UIKeyboard isKeyboardProcess])
        {
          v75 = [v12 identifier];
          v76 = [v75 isEqualToString:@"autofillsignup"];

          if ((v76 & 1) == 0)
          {
            v77 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
            v78 = v77;
            if (v77)
            {
              v79 = [v77 textOperations];
              [v79 setCustomInfoType:0x1EFB7CA70];
              v80 = [v12 identifier];
              [v79 setCustomInfo:v80];

              v81 = [(_UIKeyboardStateManager *)self buildInputSourceState];
              [v79 setInputSourceState:v81];

              v82 = [v12 identifier];
              v83 = [v79 inputSourceState];
              [v83 setInputMode:v82];

              [v78 flushOperations];
            }
          }
        }
      }

      if (self->m_updatingPreferences)
      {
        if (self->m_inputManagerState || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          [(_UIKeyboardStateManager *)self finishSetKeyboardInputMode:v12 previousInputMode:v50 didChangeDirection:m_currentDirection != v62];
          [v13 returnExecutionToParent];
LABEL_64:

          goto LABEL_4;
        }

        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_6;
        v96[3] = &unk_1E70FD168;
        v96[4] = self;
        v97 = v12;
        v98 = v50;
        v99 = v94;
        v84 = [v13 childWithContinuation:v96];
        [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardStateWithExecutionContext:v84];

        v85 = v97;
      }

      else
      {
        if (v93)
        {
          self->m_updatingPreferences = 1;
          v86 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v87 = [v86 preferencesActions];
          v88 = [v12 identifier];
          [v87 setLanguageAwareInputModeLastUsed:v88];

          v89 = +[UIKeyboardInputModeController sharedInputModeController];
          [v89 _inputModeChangedWhileContextTracked];

          self->m_updatingPreferences = 0;
        }

        [(_UIKeyboardStateManager *)self setSuppressUpdateAssistantView:1];
        [(_UIKeyboardStateManager *)self setIsCallingTextChangedDuringInputModeSwitch:1];
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_5;
        v100[3] = &unk_1E70FD140;
        v100[4] = self;
        v101 = v12;
        v102 = v50;
        v103 = v94;
        v104 = v93;
        v90 = [v13 childWithContinuation:v100];
        [(_UIKeyboardStateManager *)self textChanged:self executionContext:v90];

        [(_UIKeyboardStateManager *)self setSuppressUpdateAssistantView:0];
        [(_UIKeyboardStateManager *)self setIsCallingTextChangedDuringInputModeSwitch:0];

        v85 = v101;
      }

      goto LABEL_64;
    }

    v70 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v70 setAnimateUpdateBars:0];

    v71 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v72 = [v71 keyInputDelegate];
    if (v72)
    {

      v73 = v95;
    }

    else
    {
      v74 = [UIApp isFrontBoard];

      v73 = v95;
      if (v74)
      {
LABEL_48:
        self->m_usesAutoShiftFor3PK = 1;
        goto LABEL_49;
      }
    }

    [(_UIKeyboardStateManager *)self reinitializeAfterInputModeSwitch:v73];
    goto LABEL_48;
  }

LABEL_3:
  [v13 returnExecutionToParent];
LABEL_4:
}

- (void)cleanUpBeforeInputModeSwitch
{
  self->_receivedCandidatesInCurrentInputMode = 0;
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];

  if (v4)
  {
    if (-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText") || (-[_UIKeyboardStateManager autocorrectionController](self, "autocorrectionController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 autocorrection], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      [(_UIKeyboardStateManager *)self setSuppressUpdateAssistantView:1];
      [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
      v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v7 unmarkText];

      [(_UIKeyboardStateManager *)self setSuppressUpdateAssistantView:0];
    }

    [(_UIKeyboardStateManager *)self setShiftLocked:0];
  }

  [(_UIKeyboardStateManager *)self clearInput];
  [(_UIKeyboardStateManager *)self removeAutocorrectPromptAndCandidateList];
  self->m_acceptingCandidate = 0;
}

- (void)updateSmartPunctuationOptionsForLocaleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69D96A8];
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  v12 = [v4 smartPunctuationOptionsForLocale:v5];

  [(TISmartPunctuationController *)self->m_smartPunctuationController setSmartPunctuationOptions:v12];
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v6 preferencesActions];
  v8 = [v7 BOOLForPreferenceKey:*MEMORY[0x1E69D9950]];

  v9 = [(TISmartPunctuationController *)self->m_smartPunctuationController autoQuoteType];
  v10 = ((v8 & 1) != 0 || v9 == 1) && [(UITextInputTraits *)self->m_traits smartQuotesType]!= 1;
  [(TISmartPunctuationController *)self->m_smartPunctuationController setSmartQuotesEnabled:v10];
  if (v8)
  {
    v11 = [(UITextInputTraits *)self->m_traits smartDashesType]!= 1;
  }

  else
  {
    v11 = 0;
  }

  [(TISmartPunctuationController *)self->m_smartPunctuationController setSmartDashesEnabled:v11];
}

- (void)reinitializeAfterInputModeSwitch:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained reinitializeAfterInputModeSwitch:v3];
}

- (BOOL)canPresentPressAndHoldPopover:(id)a3
{
  v3 = a3;
  v4 = [v3 _modifiedInput];
  v5 = ([v4 _isDelete] & 1) == 0 && +[UIPressAndHoldPopoverController canPresentPressAndHoldPopoverForEvent:](UIPressAndHoldPopoverController, "canPresentPressAndHoldPopoverForEvent:", v3);

  return v5;
}

- (void)handleAutoFillContactPopoverCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillContactPopoverCommand];
}

- (void)handleAutoFillCreditCardPopoverCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillCreditCardPopoverCommand];
}

- (void)handleAutoFillPasswordPopoverCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillPasswordPopoverCommand];
}

- (void)handleAutoFillContactDetected
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillContactDetected];
}

- (void)handleAutoFillCreditCardDetected
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillCreditCardDetected];
}

- (void)handleAutoFillPasswordDetected
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained handleAutoFillPasswordDetected];
}

- (void)_performTextOperationsForAutoFill:(id)a3
{
  v4 = a3;
  if (+[UIKeyboard inputUIOOP])
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v15 = [v5 inputSystemSourceSession];

    v6 = [v15 textOperations];
    v7 = [v4 textToAssert];
    [v6 setTextToAssert:v7];

    v8 = [v4 keyboardOutput];
    v9 = [v8 insertionText];
    v10 = [v6 keyboardOutput];
    [v10 setInsertionText:v9];

    v11 = [v4 keyboardOutput];

    v12 = [v11 customInfo];
    v13 = [v6 keyboardOutput];
    [v13 setCustomInfo:v12];

    [v15 flushOperations];
  }

  else
  {
    v14 = [v4 textToAssert];
    [(_UIKeyboardStateManager *)self assertTextForRemoteDocument:v14 withSelectionDelta:0 updatingSelection:0, 0];

    v15 = [v4 keyboardOutput];

    [(_UIKeyboardStateManager *)self performKeyboardOutput:v15 checkingDelegate:1];
  }
}

- (BOOL)keyboardInputModeIndicatorControllerShouldPresentIndicator:(id)a3
{
  v4 = a3;
  if (!qword_1ED49CFB0 && qword_1ED49CFB8 != -1)
  {
    dispatch_once(&qword_1ED49CFB8, &__block_literal_global_501);
  }

  if ([(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 textInputDelegate];
    if (v6 && UIKeyboardHasMultipleActiveLinguisticNonExtensionInputModes())
    {
      v7 = qword_1ED49CFB0;
      v8 = UIKeyboardGetCurrentInputMode();
      v9 = [v7 containsObject:v8] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)keyboardInputModeIndicatorControllerPresentIndicator:(id)a3 reason:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setInputModeAssertionWithReason:v5];
}

- (void)keyboardInputModeIndicatorControllerDismissIndicator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained clearInputModeAssertion];

  v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v6 selectionDisplayInteraction];
  [v5 clearInputModeCursorAssertion];
}

- (void)finishSetKeyboardInputMode:(id)a3 previousInputMode:(id)a4 didChangeDirection:(BOOL)a5
{
  v5 = a5;
  v28 = a3;
  v8 = a4;
  if ([v28 isExtensionInputMode])
  {
    [(_UIKeyboardStateManager *)self finishSetExtensionInputMode:v28 didChangeDirection:v5];
  }

  else
  {
    [(_UIKeyboardStateManager *)self finishSetInputMode:v28 didChangeDirection:v5];
  }

  if ([v28 isDisplayed])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [WeakRetained layout];
    if (v10)
    {

LABEL_8:
      v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v13 = [v12 inputWindowRootViewController];
      v14 = [v13 placement];

      if ([v14 showsKeyboard] & 1) != 0 || (objc_msgSend(v14, "isUndocked"))
      {
        v15 = 1;
      }

      else
      {
        if ([v28 showSWLayoutWithHWKeyboard])
        {
          v16 = objc_loadWeakRetained(&self->_presentationDelegate);
          [v16 showKeyboard];
          goto LABEL_18;
        }

        v15 = 0;
      }

      if (!self->m_hardwareKeyboardAttached || (v15 & [(_UIKeyboardStateManager *)self automaticMinimizationEnabled]) != 1 || [(_UIKeyboardStateManager *)self floatingForced]|| [(_UIKeyboardStateManager *)self showingEmojiSearch])
      {
        goto LABEL_19;
      }

      v16 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v16 hideKeyboard];
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    v11 = [v28 isExtensionInputMode];

    if (v11)
    {
      goto LABEL_8;
    }
  }

LABEL_20:
  if ([(_UIKeyboardStateManager *)self textInputTraitsNeedAutofill]&& (UIKeyboardPredictionEnabledForCurrentInputMode() & 1) == 0 && ![(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    [(_UIKeyboardStateManager *)self generateAutofillCandidate];
  }

  self->m_didAutomaticallyInsertSpace = self->m_didAutomaticallyInsertSpaceBeforeChangingInputMode;
  if (self->m_hardwareKeyboardAttached)
  {
    v17 = UIApp;
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    v19 = [v18 hardwareInputMode];
    v20 = [v19 automaticHardwareLayout];
    [v17 setHardwareKeyboardLayoutName:v20];
  }

  v21 = +[UIPeripheralHost sharedInstance];
  v22 = [v21 inputViews];
  v23 = [v22 inputView];
  v24 = [v23 _rootInputWindowController];
  [v24 updateKeyboardDockViewVisibility];

  [(_UIKeyboardStateManager *)self touchUpdateLastUsedInputModeAction];
  if (![(_UIKeyboardStateManager *)self showingEmojiSearch])
  {
    v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v26 = [v25 keyInputDelegate];
    if (v26)
    {
    }

    else
    {
      v27 = [UIApp isFrontBoard];

      if (v27)
      {
        goto LABEL_31;
      }
    }

    [(_UIKeyboardStateManager *)self updateInputAssistantButtonItems];
  }

LABEL_31:
  [_UIKeyboardUsageTracking keyboardSetToInputMode:v28 fromPrevious:v8];
}

- (void)finishSetExtensionInputMode:(id)a3 didChangeDirection:(BOOL)a4
{
  v4 = a4;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = +[UIPeripheralHost sharedInstance];
    v7 = [v6 inputViews];
    [v7 refreshPresentation];
  }

  if (self->m_shouldUpdateCacheOnInputModesChange)
  {
    v8 = +[UIKeyboardCache sharedInstance];
    v9 = UIKeyboardActiveInputModes;
    [v8 updateCacheForInputModes:v9];
  }

  if (v4)
  {

    [(_UIKeyboardStateManager *)self setInitialDirection];
  }
}

- (void)finishSetInputMode:(id)a3 didChangeDirection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_UIKeyboardStateManager *)self updateTextCandidateView];
  self->m_keyboardDelegateStateNeedsRefresh = 1;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = +[UIPeripheralHost sharedInstance];
    v8 = [v7 inputViews];
    [v8 refreshPresentation];
  }

  v9 = [(_UIKeyboardStateManager *)self autocorrectionPreferenceForTraits]!= 0;
  [(TIKeyboardState *)self->m_keyboardState setAutocorrectionEnabled:v9];
  [(_UIKeyboardStateManager *)self setAutocorrectSpellingEnabled:v9];
  v10 = [v6 identifierWithLayouts];
  v11 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarSetBoolean();

  v12 = [v6 identifierWithLayouts];

  v13 = TIStatisticGetKeyForInputMode();
  [(_UIKeyboardStateManager *)self predictionFromPreference];
  TIStatisticScalarSetBoolean();

  if ([(UITextInputTraits *)self->m_traits learnsCorrections])
  {
    m_correctionLearningAllowed = self->m_correctionLearningAllowed;
  }

  else
  {
    m_correctionLearningAllowed = 0;
  }

  [(TIKeyboardState *)self->m_keyboardState setWordLearningEnabled:m_correctionLearningAllowed];
  [(TIKeyboardState *)self->m_keyboardState setInlineCompletionEnabled:[(_UIKeyboardStateManager *)self isInlineCompletionEnabled]];
  if (self->m_shouldUpdateCacheOnInputModesChange)
  {
    v15 = +[UIKeyboardCache sharedInstance];
    v16 = UIKeyboardActiveInputModes;
    [v15 updateCacheForInputModes:v16];
  }

  if (v4)
  {

    [(_UIKeyboardStateManager *)self setInitialDirection];
  }
}

- (void)prepareKeyboardInputModeFromPreferences:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 activeInputModes];
    v11 = [v6 firstObject];

    v4 = v11;
  }

  v7 = MEMORY[0x1E695DF58];
  v12 = v4;
  v8 = [v4 primaryLanguage];
  v9 = [v7 characterDirectionForLanguage:v8] == 2;

  self->m_currentDirection = v9;
  v10 = [v12 identifier];
  UIKeyboardSetCurrentInputMode(v10);

  [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
}

- (void)setKeyboardInputModeFromPreferences:(id)a3
{
  if (a3)
  {

    [_UIKeyboardStateManager setKeyboardInputMode:"setKeyboardInputMode:userInitiated:" userInitiated:?];
  }

  else
  {
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = [v6 activeInputModes];
    v5 = [v4 firstObject];
    [(_UIKeyboardStateManager *)self setKeyboardInputMode:v5 userInitiated:1];
  }
}

- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)a3 preserveIfPossible:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateInputModeIndicatorOnSingleKeyOnly:v5 preserveIfPossible:v4];
}

- (void)setInputModeToNextInPreferredListWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 currentInputMode];

  if (os_variant_has_internal_diagnostics() && (+[UIKeyboardInputMode dictationInputMode](UIKeyboardInputMode, "dictationInputMode"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:v6], v17, v18))
  {
    v19 = +[UIKeyboardInputMode dictationInputMode];
    v7 = [v19 currentInputModeForDictation];
  }

  else
  {
    v7 = 0;
  }

  if ([UIKeyboardActiveUserSelectableInputModes count] <= 1 && -[UITextInputTraits keyboardType](self->m_traits, "keyboardType") == 122)
  {
    v8 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:@"emoji@sw=Emoji"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [WeakRetained layout];
    v11 = [v10 keyplaneContainsEmojiKey];

    v12 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v12 nextInputModeInPreferenceListForTraits:self->m_traits updatePreference:1 skipEmoji:v11];

    v7 = v12;
  }

  v13 = [v8 identifier];
  v14 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v14 setUpdatedInputMode:v13];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __81___UIKeyboardStateManager_setInputModeToNextInPreferredListWithExecutionContext___block_invoke;
  v23 = &unk_1E70FD1B8;
  v24 = self;
  v25 = v6;
  v15 = v6;
  v16 = [v4 childWithContinuation:&v20];

  [(_UIKeyboardStateManager *)self setKeyboardInputMode:v8 userInitiated:1 updateIndicator:1 executionContext:v16, v20, v21, v22, v23, v24];
}

- (void)finishSetInputModeToNextInPreferredListWithExecutionContext:(id)a3 withPreviousInputMode:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(_UIKeyboardStateManager *)self updateInputModeLastChosenPreference];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained showInternationalKeyIntroductionIfNeededWithPreviousInputMode:v6];

  [v8 returnExecutionToParent];
}

- (void)setInputModeToNextASCIICapableInPreferredList
{
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v6 currentInputMode];
  if (([v3 defaultLayoutIsASCIICapable] & 1) == 0)
  {
    v4 = [v6 activeInputModes];
    v5 = [v6 nextInputModeFromList:v4 withFilter:4 withTraits:0];

    v3 = v5;
  }

  if (!v3)
  {
    v3 = +[UIKeyboardInputMode intlInputMode];
  }

  [(_UIKeyboardStateManager *)self setKeyboardInputMode:v3 userInitiated:0];
}

- (BOOL)isRotating
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained isRotating];

  return v3;
}

- (void)setCorrectionLearningAllowed:(BOOL)a3
{
  v3 = a3;
  m_correctionLearningAllowed = self->m_correctionLearningAllowed;
  self->m_correctionLearningAllowed = a3;
  if (![(UITextInputTraits *)self->m_traits isSecureTextEntry])
  {
    m_traits = self->m_traits;
    if (v3)
    {
      v7 = [(UITextInputTraits *)m_traits copy];
      [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];
      [(UITextInputTraits *)v7 setLearnsCorrections:[(UITextInputTraits *)self->m_traits learnsCorrections]];
      v8 = self->m_traits;
      self->m_traits = v7;
    }

    else
    {
      [(UITextInputTraits *)m_traits setLearnsCorrections:0];
    }

    [(TIKeyboardState *)self->m_keyboardState setWordLearningEnabled:[(UITextInputTraits *)self->m_traits learnsCorrections]];
  }

  if (+[UIKeyboard usesInputSystemUI]&& self->m_correctionLearningAllowed != m_correctionLearningAllowed)
  {
    v9 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v9 documentTraitsChanged];
  }
}

- (void)setLayoutRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self activeLayout];
  [v5 setRenderConfig:v4];
}

- (void)addSupplementalLexicon:(id)a3
{
  v8 = a3;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v4 = [(_UIKeyboardStateManager *)self backendController];
    [v4 addUISupplementalLexicon:v8];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 inputSystemClientEnabled];

    if (v6)
    {
      v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v7 didAddSupplementalLexicon:v8];
    }
  }
}

- (void)removeSupplementalLexicon:(id)a3
{
  v8 = a3;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v4 = [(_UIKeyboardStateManager *)self backendController];
    [v4 removeUISupplementalLexicon:v8];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 inputSystemClientEnabled];

    if (v6)
    {
      v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v7 didRemoveSupplementalLexicon:v8];
    }
  }
}

- (id)_obtainSessionIdentifierAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self assertionController];
  v6 = [v5 vendAssertionOfType:42 initialState:1 reason:v4 requiresExplicitInvalidation:0];

  return v6;
}

- (id)documentIdentifierForInputDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 __isKindOfUIResponder] & 1) == 0)
  {
    v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v6 = [(_UIKeyboardStateManager *)self autofillController];
  v7 = [v6 autofillGroup];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __62___UIKeyboardStateManager_documentIdentifierForInputDelegate___block_invoke;
  v31 = &unk_1E70FD1E0;
  v8 = v5;
  v32 = v8;
  v33 = &v34;
  [v7 enumerateKeysAndObjectsUsingBlock:&v28];

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 _rtiSourceSession], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (*(v35 + 24) != 1)
    {
      goto LABEL_29;
    }

    v11 = [(_UIKeyboardStateManager *)self autofillController];
    v12 = [v11 autofillGroup];
    v10 = [v12 objectForKey:@"UIAutofillUUIDKey"];

    if (AutoFillUILibraryCore() && !v10)
    {
      v13 = [(_UIKeyboardStateManager *)self autofillController];
      v14 = [v13 autofillGroup];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v15 = getAFUIAutoFillUUIDKeySymbolLoc_ptr;
      v46 = getAFUIAutoFillUUIDKeySymbolLoc_ptr;
      if (!getAFUIAutoFillUUIDKeySymbolLoc_ptr)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __getAFUIAutoFillUUIDKeySymbolLoc_block_invoke;
        v41 = &unk_1E70F2F20;
        v42 = &v43;
        v16 = AutoFillUILibrary();
        v17 = dlsym(v16, "AFUIAutoFillUUIDKey");
        *(v42[1] + 24) = v17;
        getAFUIAutoFillUUIDKeySymbolLoc_ptr = *(v42[1] + 24);
        v15 = v44[3];
      }

      _Block_object_dispose(&v43, 8);
      if (!v15)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFUIAutoFillUUIDKey(void)"];
        [v26 handleFailureInFunction:v27 file:@"_UIKeyboardStateManager.m" lineNumber:320 description:{@"%s", dlerror(), v28, v29, v30, v31}];

        __break(1u);
        return result;
      }

      v18 = *v15;
      v10 = [v14 objectForKey:v18];
    }

    if (!v10)
    {
LABEL_29:
      if (!+[UIKeyboard usingEndInputSessionCompletion]|| ([(_UIKeyboardStateManager *)self skippedEndInputSessionID], (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (v20 = [(_UIKeyboardStateManager *)self skippedEndInputSession], v19, v20 != v4) || ([(_UIKeyboardStateManager *)self skippedEndInputSessionID], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v21 = v4;
        if (([v21 __isKindOfUIResponder] & 1) == 0)
        {

LABEL_20:
          v10 = [MEMORY[0x1E696AFB0] UUID];
          goto LABEL_21;
        }

        v22 = [v21 textInputView];
        v23 = [v22 keyboardSceneDelegate];
        v24 = [v23 localAuthenticationObserver];

        v10 = [v24 sessionIDForInputDelegate:v21];

        if (!v10)
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_21:

  _Block_object_dispose(&v34, 8);

  return v10;
}

- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)a3 selectionChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained _postInputResponderCapabilitiesChangedNotificationWithOutput:v6 selectionChanged:v4];
}

- (void)postInputResponderCapabilitiesChangedNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained postInputResponderCapabilitiesChangedNotification];
}

- (id)asyncCapableInputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 asyncCapableInputDelegate];

  return v3;
}

- (BOOL)hasAsyncCapableInputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 hasAsyncCapableInputDelegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardStateManager *)self initializationDone])
  {
    [(_UIKeyboardStateManager *)self setDelegate:v4 force:0];
  }
}

- (void)setDidTeardownExistingDelegate:(id)a3
{
  aBlock = a3;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIKeyboardStateManager.m" lineNumber:3218 description:@"didTeardownExistingDelegate callback cannot be set in a non-keyboard process"];
  }

  v5 = aBlock;
  if (self->_didTeardownExistingDelegate != aBlock)
  {
    v6 = _Block_copy(aBlock);
    didTeardownExistingDelegate = self->_didTeardownExistingDelegate;
    self->_didTeardownExistingDelegate = v6;

    v5 = aBlock;
  }
}

- (void)setWillSetupNewDelegate:(id)a3
{
  aBlock = a3;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIKeyboardStateManager.m" lineNumber:3226 description:@"willSetupNewDelegate callback cannot be set in a non-keyboard process"];
  }

  v5 = aBlock;
  if (self->_willSetupNewDelegate != aBlock)
  {
    v6 = _Block_copy(aBlock);
    willSetupNewDelegate = self->_willSetupNewDelegate;
    self->_willSetupNewDelegate = v6;

    v5 = aBlock;
  }
}

- (void)_notifyDidTeardownExistingDelegate:(id)a3 newDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIKeyboard usingEndInputSessionCompletion])
  {
    if (qword_1ED49CFC8 != -1)
    {
      dispatch_once(&qword_1ED49CFC8, &__block_literal_global_531);
    }

    v8 = [(_UIKeyboardStateManager *)self taskQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74___UIKeyboardStateManager__notifyDidTeardownExistingDelegate_newDelegate___block_invoke_3;
    v9[3] = &unk_1E70FD208;
    v9[4] = self;
    v10 = v7;
    v11 = v6;
    [v8 performSingleTask:v9 breadcrumb:qword_1ED49CFC0];
  }
}

- (void)_notifyWillSetupNewDelegate:(id)a3 existingDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIKeyboard usingEndInputSessionCompletion])
  {
    if (qword_1ED49CFD8 != -1)
    {
      dispatch_once(&qword_1ED49CFD8, &__block_literal_global_535);
    }

    v8 = [(_UIKeyboardStateManager *)self taskQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72___UIKeyboardStateManager__notifyWillSetupNewDelegate_existingDelegate___block_invoke_3;
    v9[3] = &unk_1E70FD208;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 performSingleTask:v9 breadcrumb:qword_1ED49CFD0];
  }
}

- (void)setDelegate:(id)a3 force:(BOOL)a4 delayEndInputSession:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v10 = [v9 delegateRespectingForwardingDelegate:0];

  self->_isSettingDelegate = 1;
  self->m_keyboardDelegateStateNeedsRefresh = 1;
  self->m_disableSyncTextChanged = 1;
  self->m_disableAutocapitalization = 0;
  self->m_shouldSuppressSelectionCommands = 0;
  self->m_numberpadPopoverHasBeenShown = 0;
  [(_UIKeyboardStateManager *)self updateHardwareKeyboardExclusivityIdentifier];
  m_hardwareKeyboardAttached = self->m_hardwareKeyboardAttached;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  -[_UIKeyboardStateManager setHardwareKeyboardAttached:](self, "setHardwareKeyboardAttached:", [WeakRetained isHardwareKeyboardAttachedNow]);

  v13 = self->m_hardwareKeyboardAttached;
  [(_UIKeyboardStateManager *)self setInHardwareKeyboardMode:self->m_hardwareKeyboardAttached shouldMoveKeyboard:v8 != 0];
  v14 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v14 resetIsPhysicallyAttachedHardwareKeyboard];

  if (v10 == v8 && !v6 && (+[UIKeyboard usesInputSystemUI]|| v13 == m_hardwareKeyboardAttached))
  {
    [(_UIKeyboardStateManager *)self _reloadInputViewsForSameDelegate:v8 existingDelegate:v10 force:0 delayEndInputSession:v5];
    goto LABEL_26;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v16 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = _delegateShortDescr(v8);
      v18 = v17;
      v19 = "NO";
      if (v6)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      *v28 = 138413058;
      *&v28[4] = v17;
      if (v5)
      {
        v21 = "YES";
      }

      else
      {
        v21 = "NO";
      }

      *&v28[14] = v20;
      *&v28[12] = 2080;
      *&v28[22] = 2080;
      if (v10 == v8)
      {
        v19 = "YES";
      }

      v29 = v21;
      v30 = 2080;
      v31 = v19;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "-setDelegate=%@ force:%s delayEndInputSession:%s (delegateSame=%s)", v28, 0x2Au);
    }

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_7:
  v15 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier:*v28];
LABEL_21:
  [(_UIKeyboardStateManager *)self _teardownExistingDelegate:v10 forSetDelegate:v8 force:v6 delayEndInputSession:v5];
  [(_UIKeyboardStateManager *)self _notifyDidTeardownExistingDelegate:v10 newDelegate:v8];
  [(_UIKeyboardStateManager *)self _setDelegate:v8 existingDelegate:v10 force:v6 delayEndInputSession:v5];
  [(_UIKeyboardStateManager *)self _notifyWillSetupNewDelegate:v8 existingDelegate:v10];
  [(_UIKeyboardStateManager *)self _setupDelegate:v8 delegateSame:v10 == v8 hardwareKeyboardStateChanged:v13 != m_hardwareKeyboardAttached endingInputSessionIdentifier:v15 force:v6 delayEndInputSession:v5];
  v22 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
  v23 = [v22 threadIdentifier];

  if (v23)
  {
    v24 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
    v25 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
    v26 = [v25 threadIdentifier];
    [v24 composeFieldInFocusWithMailOrMsgThreadId:v26];
  }

  v27 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_debug_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEBUG, "done with -setDelegate:force:delayEndInputSession:", v28, 2u);
  }

LABEL_26:
}

- (void)_reloadInputViewsForSameDelegate:(id)a3 existingDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 handlingRemoteEvent], v10, (v11 & 1) == 0))
  {
    [(_UIKeyboardStateManager *)self clearForwardingInputDelegateAndResign:1];
  }

  v12 = [(UITextInputTraits *)self->m_traits keyboardType];
  v13 = [(_UIKeyboardStateManager *)self textInputTraits];
  [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];
  v14 = +[UIKeyboard keyboardBundleIdentifier];
  v15 = [v14 isEqual:@"com.apple.freeform"];

  if (v15)
  {
    [(_UIKeyboardStateManager *)self updateDelegatePasteSupport];
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    -[UITextInputTraits setUseAutomaticEndpointing:](self->m_traits, "setUseAutomaticEndpointing:", [v13 useAutomaticEndpointing]);
  }

  v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v17 = [v16 delegateRespectingForwardingDelegate:0];
  if (v17)
  {
  }

  else
  {
    m_defaultTraits = self->m_defaultTraits;

    if (m_defaultTraits)
    {
      goto LABEL_12;
    }

    [(UITextInputTraits *)self->m_traits setKeyboardType:v12];
    v30 = [MEMORY[0x1E69D96E0] translateToTextInputKeyboardType:v12];
    v16 = [(TIKeyboardState *)self->m_keyboardState textInputTraits];
    [v16 setKeyboardType:v30];
  }

LABEL_12:
  WeakRetained = [(_UIKeyboardStateManager *)self textInputTraits];
  v20 = [WeakRetained updateResultComparedToTraits:v13];

  v21 = off_1E70EA000;
  if (v9 && ![(_UIKeyboardStateManager *)self forCustomInputView])
  {
    v22 = +[UIKeyboard usesInputSystemUI];
    if (v22)
    {
      if (self->m_needsToRecomputeDesirableModes || v20 == 2)
      {
        goto LABEL_39;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v23 = [WeakRetained window];
      if (!v23 || self->m_needsToRecomputeDesirableModes || v20 == 2)
      {

        goto LABEL_39;
      }

      v72 = v23;
    }

    v24 = +[UIKeyboard usesInputSystemUI];
    if (!v24)
    {
      v25 = objc_loadWeakRetained(&self->_presentationDelegate);
      v74 = [v25 layout];
      [v74 frame];
      v27 = v26;
      v73 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v73 frame];
      if (v27 != v28)
      {
        v29 = 1;
        goto LABEL_34;
      }

      v71 = v25;
    }

    v76 = WeakRetained;
    v31 = [(_UIKeyboardStateManager *)self _autofillContext];
    v32 = [v31 objectForKey:@"_automaticPasswordKeyboard"];
    v29 = [v32 BOOLValue];

    if (v24)
    {
      v21 = off_1E70EA000;
      WeakRetained = v76;
      if (v22)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    WeakRetained = v76;
    v25 = v71;
LABEL_34:

    v21 = off_1E70EA000;
    if (v22)
    {
LABEL_36:
      if ((v29 & 1) == 0)
      {
        v33 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v34 = [v33 textInputMode];

        if (!v34)
        {
          goto LABEL_14;
        }

        v77 = [(__objc2_class *)v21[13] sharedInputModeController];
        v35 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v36 = [v35 textInputMode];
        v37 = [v36 primaryLanguage];
        v38 = [v77 currentPublicInputMode];
        v39 = [v38 primaryLanguage];
        v75 = [v37 isEqualToString:v39];

        v21 = off_1E70EA000;
        if (v75)
        {
          goto LABEL_14;
        }
      }

LABEL_39:
      v40 = [(_UIKeyboardStateManager *)self suppressUpdateLayout];
      [(_UIKeyboardStateManager *)self setSuppressUpdateLayout:1];
      [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:1];
      [(_UIKeyboardStateManager *)self setSuppressUpdateLayout:v40];
      if (self->m_shift)
      {
        v41 = objc_loadWeakRetained(&self->_presentationDelegate);
        v42 = [v41 layout];
        if (!v42 || self->m_shiftLocked || [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld])
        {
        }

        else
        {
          v67 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyPlaneChooser];

          if (v67)
          {
            [(_UIKeyboardStateManager *)self clearShiftState];
          }
        }
      }

      v43 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v43 updateLayout];

      v44 = objc_loadWeakRetained(&self->_presentationDelegate);
      v45 = [v44 showInputModeIndicator];

      if (v45)
      {
        [(_UIKeyboardStateManager *)self updateInputModeIndicatorOnSingleKeyOnly:0];
      }

      v46 = [(_UIKeyboardStateManager *)self textInputTraits];
      v47 = [v46 isSecureTextEntry];
      if (v47 == [v13 isSecureTextEntry])
      {
        v48 = [(_UIKeyboardStateManager *)self textInputTraits];
        v49 = [v48 recentInputIdentifier];
        [v13 recentInputIdentifier];
        v51 = v50 = v21;

        v52 = v49 == v51;
        v21 = v50;
        if (v52)
        {
          goto LABEL_50;
        }
      }

      else
      {
      }

      v53 = [(_UIKeyboardStateManager *)self documentIdentifierForInputDelegate:v9];
      [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:v53];

      goto LABEL_50;
    }

LABEL_35:

    goto LABEL_36;
  }

LABEL_14:
  if (v20 == 1)
  {
    [(_UIKeyboardStateManager *)self updateReturnKey:1];
  }

LABEL_50:
  v54 = [(_UIKeyboardStateManager *)self autocorrectionPreferenceForTraits]!= 0;
  [(TIKeyboardState *)self->m_keyboardState setAutocorrectionEnabled:v54];
  [(_UIKeyboardStateManager *)self setAutocorrectSpellingEnabled:v54];
  v55 = [(__objc2_class *)v21[13] sharedInputModeController];
  v56 = [v55 currentInputMode];
  v57 = [v56 primaryLanguage];
  [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v57];

  [(TISmartPunctuationController *)self->m_smartPunctuationController reset];
  [(TIKeyboardState *)self->m_keyboardState setInlineCompletionEnabled:[(_UIKeyboardStateManager *)self isInlineCompletionEnabled]];
  self->m_disableSyncTextChanged = 0;
  [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
  if (self->_remoteTextInputPartner && v20)
  {
    v58 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v58 documentTraitsChanged];
  }

  if (!v8)
  {
    [(_UIKeyboardStateManager *)self needAutofillLogin];
    self->_isSettingDelegate = 0;
    [(_UIKeyboardStateManager *)self _updateDelegateRequiresKeyEventsFromRemoteTextInput];
    goto LABEL_67;
  }

  v59 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
  if (!v59)
  {
    v60 = [(_UIKeyboardStateManager *)self assertionController];
    v61 = [v60 hasAssertionsOfType:42];

    if (v61)
    {
      goto LABEL_58;
    }

    v59 = [(_UIKeyboardStateManager *)self documentIdentifierForInputDelegate:v8];
    [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:v59];
  }

LABEL_58:
  v62 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];

  if (v62)
  {
    v63 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
    v64 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v65 = [v64 _textInputSessionAnalytics];
    [v65 setSessionIdentifier:v63];

LABEL_60:
    goto LABEL_63;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    m_keyboardState = self->m_keyboardState;
    v63 = [(_UIKeyboardStateManager *)self assertionController];
    v69 = [v63 hasAssertionsOfType:42];
    v70 = @"no";
    if (v69)
    {
      v70 = @"has";
    }

    *buf = 138412546;
    v79 = m_keyboardState;
    v80 = 2112;
    v81 = v70;
    _os_log_fault_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "m_keyboardState {%@} documentIdentifier creation failed, %@ sessionIdentifierAssertions", buf, 0x16u);
    goto LABEL_60;
  }

LABEL_63:
  if ([(_UIKeyboardStateManager *)self needAutofillLogin]&& !self->m_isAutofilling)
  {
    [(_UIKeyboardStateManager *)self generateAutofillCandidateByAddingTask:1];
  }

  self->_isSettingDelegate = 0;
  [(_UIKeyboardStateManager *)self _updateDelegateRequiresKeyEventsFromRemoteTextInput];
  v66 = [MEMORY[0x1E696AD88] defaultCenter];
  [v66 postNotificationName:@"UITextInputResponderIsReloadedNotification" object:0 userInfo:0];

LABEL_67:
}

- (void)setCurrentCandidateRequest:(id)a3
{
  v5 = a3;
  if (v5 && self->m_cachedAutofillMode)
  {
    v6 = [(_UIKeyboardStateManager *)self delegateForCandidateRequest];

    if (!v6)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      [(_UIKeyboardStateManager *)self setDelegateForCandidateRequest:v7];
    }

    v8 = MEMORY[0x1E696B098];
    v9 = [(_UIKeyboardStateManager *)self delegate];
    v10 = [v8 valueWithPointer:v9];
    v11 = [(_UIKeyboardStateManager *)self delegateForCandidateRequest];
    [v11 setObject:v10 forKeyedSubscript:v5];
  }

  objc_storeStrong(&self->_currentCandidateRequest, a3);
  smartActionCandidateRequest = self->_smartActionCandidateRequest;
  self->_smartActionCandidateRequest = v5;
}

- (void)_teardownExistingDelegate:(id)a3 forSetDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v110 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _delegateShortDescr(v10);
    v14 = _delegateShortDescr(v11);
    v15 = v14;
    v16 = "NO";
    v104 = 2112;
    *buf = 138413058;
    if (v7)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v103 = v13;
    v105 = v14;
    if (v6)
    {
      v16 = "YES";
    }

    v106 = 2080;
    v107 = v17;
    v108 = 2080;
    v109 = v16;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "-_teardownExistingDelegate:%@ forSetDelegate:%@ force:%s delayEndInputSession:%s", buf, 0x2Au);
  }

  if (![(_UIKeyboardStateManager *)self forCustomInputView]&& ![(_UIKeyboardStateManager *)self suppressUpdateLayout])
  {
    if (v10)
    {
      v18 = v6;
    }

    else
    {
      v18 = 0;
    }

    [UIDictationController keyboardWillChangeFromDelegate:v10 toDelegate:v11 shouldPause:v18];
  }

  v19 = +[UIDictationController activeInstance];
  [v19 setResigningFirstResponder:0];

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v21 = [WeakRetained layout];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = objc_loadWeakRetained(&self->_presentationDelegate);
    v24 = [v23 layout];
    [v24 dismissGestureKeyboardIntroduction];
  }

  if (!v11)
  {
    v25 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v25 dismissContinuousPathIntroductionView];

    [(_UIKeyboardStateManager *)self dismissAutoFillMenu];
    v26 = [(_UIKeyboardStateManager *)self delegateForCandidateRequest];
    [v26 removeAllObjects];
  }

  v27 = +[UIPeripheralHost sharedInstance];
  v28 = [v27 inputViews];
  v29 = [v28 inputViewController];

  v30 = [v29 _compatibilityController];
  [v30 keyboardWillChangeFromDelegate:v10 toDelegate:v11];
  if (v10)
  {
    [(_UIKeyboardStateManager *)self clearForwardingInputDelegateAndResign:1];
    if (v11 != v10)
    {
      v97 = v30;
      v31 = v29;
      v32 = v6;
      [(_UIKeyboardStateManager *)self _insertionPointExitedRangeWithSupplementalCandidate];
      v33 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v33 setCaretBlinks:0];

      v34 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v34 setCaretVisible:0];

      v35 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v35 clearCursorAccessory];

      v36 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v36 dismissEmojiPopoverIfNecessaryWithCompletion:0];

      v37 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v37 dismissPressAndHoldPopover];

      v38 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v38 dismissNumberpadPopover];

      v39 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v39 dismissInputModeIndicator];

      v40 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v40 dismissDictationMenu];

      v41 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v41 dismissDictationTip];

      v42 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v42 dismissAutoFillPopover];

      v43 = v10;
      if ([v43 __isKindOfUIResponder])
      {
        v44 = [v43 textInputView];
        v45 = [v44 keyboardSceneDelegate];
        v46 = [v45 localAuthenticationObserver];

        v47 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
        [v46 inputDelegateWillTeardown:v43 sessionUUID:v47];
      }

      v48 = +[UIDictationController sharedInstance];
      v49 = [v48 dictationTipController];
      [v49 resetShowModelessTipSignal];

      v50 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v50 unsetEmojiPopoverToRestoreAfterRotation];

      v6 = v32;
      v29 = v31;
      v30 = v97;
    }
  }

  v51 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v52 = [v51 _keepInputSession];

  if (!+[UIKeyboard usingEndInputSessionCompletion]&& !((self->_remoteTextInputPartner == 0) | v52 & 1))
  {
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke;
    v101[3] = &unk_1E70FD230;
    v101[4] = self;
    v56 = _Block_copy(v101);
    if (!v10)
    {
      v65 = [(_UIKeyboardStateManager *)self resigningRTISessionIdentifier];

      if (v65)
      {
        v66 = [(_UIKeyboardStateManager *)self resigningRTISessionIdentifier];
        v56[2](v56, v66, v11 == 0);

        [(_UIKeyboardStateManager *)self setResigningRTISessionIdentifier:0];
      }

      goto LABEL_48;
    }

    if (!v11 && v6)
    {
      v61 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
      [(_UIKeyboardStateManager *)self setResigningRTISessionIdentifier:v61];

      v62 = dispatch_time(0, 35000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke_2;
      block[3] = &unk_1E70F37C0;
      block[4] = self;
      v56 = v56;
      v100 = v56;
      dispatch_after(v62, MEMORY[0x1E69E96A0], block);

LABEL_48:
      goto LABEL_49;
    }

    v59 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
    v56[2](v56, v59, v11 == 0);
LABEL_47:

    goto LABEL_48;
  }

  if (+[UIKeyboard usingEndInputSessionCompletion]&& self->m_wasDelegateSetupWithRTIClient)
  {
    v53 = v30;
    v54 = v29;
    v55 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke_3;
    aBlock[3] = &unk_1E70FD230;
    aBlock[4] = self;
    v56 = _Block_copy(aBlock);
    v57 = 0;
    if (v10 && !v11)
    {
      v58 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v57 = [v58 _keepInputSession];
    }

    v59 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
    if (!v10 || (v57 & 1) != 0)
    {
      v29 = v54;
      v30 = v53;
      if (v57)
      {
        v63 = _UIKeyboardInputSessionChangeLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = _delegateShortDescr(v10);
          *buf = 138412546;
          v103 = v64;
          v104 = 2112;
          v105 = v59;
          _os_log_impl(&dword_188A29000, v63, OS_LOG_TYPE_DEFAULT, "Skipping end input session for existingDelegate: %@ (sessionID=%@)", buf, 0x16u);
        }

        [(_UIKeyboardStateManager *)self setSkippedEndInputSession:v10];
        [(_UIKeyboardStateManager *)self setSkippedEndInputSessionID:v59];
      }
    }

    else
    {
      if (v11)
      {
        v60 = 0;
      }

      else
      {
        v60 = !v55;
      }

      v56[2](v56, v59, v60);
      v29 = v54;
      v30 = v53;
    }

    goto LABEL_47;
  }

LABEL_49:
  v67 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];

  if (v67)
  {
    v68 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    [v68 setSessionDelegate:0];
  }

  if (v11 != v10)
  {
    v69 = [(_UIKeyboardStateManager *)self assertionController];
    v70 = [v69 hasAssertionsOfType:42];

    if (v11)
    {
      if (v70)
      {
        goto LABEL_60;
      }

      v71 = [(_UIKeyboardStateManager *)self documentIdentifierForInputDelegate:v11];
      [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:v71];
    }

    else
    {
      if ((v70 & 1) == 0)
      {
        [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:0];
      }

      if (![(UITextInputTraits *)self->m_traits isDevicePasscodeEntry])
      {
        goto LABEL_60;
      }

      v71 = objc_alloc_init(MEMORY[0x1E69D9590]);
      [(TIKeyboardState *)self->m_keyboardState setDocumentState:v71];
    }

LABEL_60:
    v72 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v73 = [v72 _isWritingToolsActive];

    if ((v73 & 1) == 0)
    {
      v74 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
      [v74 clearSecureCandidateHashes];
    }
  }

  v75 = [(_UIKeyboardStateManager *)self taskQueue];
  v76 = [v75 isMainThreadExecutingTask];
  if (v10 && !v76)
  {
    v77 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v78 = [v77 asyncCapableInputDelegate];

    if (v78)
    {
      goto LABEL_67;
    }

    v75 = [(_UIKeyboardStateManager *)self taskQueue];
    [v75 waitUntilAllTasksAreFinished];
  }

LABEL_67:
  v79 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v80 = [v79 _hasPostPinningReloadState];

  if ((v80 & 1) == 0)
  {
    v81 = objc_loadWeakRetained(&self->_presentationDelegate);
    v82 = [v81 layout];
    [v82 acceptRecentInputIfNecessary];

    if ([v11 __isKindOfTypeSelectKeyInput])
    {
      [(_UIKeyboardStateManager *)self changeCount];
    }

    else
    {
      v83 = [v10 __isKindOfTypeSelectKeyInput];
      if ([(_UIKeyboardStateManager *)self changeCount]&& (v83 & 1) == 0)
      {
        [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
        self->m_textInputChangesIgnored = 1;
        v84 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v84 unmarkText];

        self->m_textInputChangesIgnored = 0;
      }
    }

    if (v11 != v10)
    {
      [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:0];
      [(_UIKeyboardStateManager *)self _cancelPendingSupplementalCandidateInsertion];
      if (self->m_shouldClearTextSuggestions)
      {
        [(_UIKeyboardStateManager *)self setSuggestions:0];
      }

      v85 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v85 setAutocorrectionList:0];

      [(_UIKeyboardStateManager *)self clearChangeTimeAndCount];
      [(_UIKeyboardStateManager *)self removeAutocorrectPromptAndCandidateList];
    }
  }

  v86 = [(_UIKeyboardStateManager *)self inputDelegate];
  v87 = [v86 inputDelegate];

  if (v87 == self)
  {
    v88 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v88 setInputDelegate:0];
  }

  v89 = [(_UIKeyboardStateManager *)self asyncInputDelegate];

  if (v89)
  {
    v90 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
    v91 = [v90 asyncSystemInputDelegate];

    if (v91 == self)
    {
      v92 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
      [v92 setAsyncSystemInputDelegate:0];
    }
  }

  v93 = [(_UIKeyboardStateManager *)self webInputDelegate];

  if (v93)
  {
    v94 = [(_UIKeyboardStateManager *)self webInputDelegate];
    v95 = [v94 asyncInputDelegate];

    if (v95 == self)
    {
      v96 = [(_UIKeyboardStateManager *)self webInputDelegate];
      [v96 setAsyncInputDelegate:0];
    }
  }
}

- (void)_setDelegate:(id)a3 existingDelegate:(id)a4 force:(BOOL)a5 delayEndInputSession:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = _delegateShortDescr(v10);
    v16 = _delegateShortDescr(v11);
    v17 = v16;
    v18 = "NO";
    *&v20[12] = 2112;
    *v20 = 138413058;
    if (v7)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    *&v20[4] = v15;
    *&v20[14] = v16;
    *&v20[22] = 2080;
    if (v6)
    {
      v18 = "YES";
    }

    v21 = v19;
    v22 = 2080;
    v23 = v18;
    _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "-_setDelegate:%@ existingDelegate:%@ force:%s delayEndInputSession:%s", v20, 0x2Au);
  }

  self->m_editingTraitsMarkedDirty = 1;
  v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v13 setDelegate:v10];

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateDictationButtonForDelegate:v10];

  if (![(_UIKeyboardStateManager *)self forCustomInputView])
  {
    [(_UIKeyboardStateManager *)self _postInputResponderChangedNotification];
  }

  [(_UIKeyboardStateManager *)self responseContextDidChange:*v20];
}

- (void)_setupDelegate:(id)a3 delegateSame:(BOOL)a4 hardwareKeyboardStateChanged:(BOOL)a5 endingInputSessionIdentifier:(id)a6 force:(BOOL)a7 delayEndInputSession:(BOOL)a8
{
  v8 = a8;
  v199 = a7;
  v10 = a5;
  v11 = a4;
  v221 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v87 = _delegateShortDescr(v13);
    v88 = "NO";
    *buf = 138413570;
    v210 = v87;
    if (v11)
    {
      v89 = "YES";
    }

    else
    {
      v89 = "NO";
    }

    v211 = 2080;
    v212 = v89;
    if (v10)
    {
      v90 = "YES";
    }

    else
    {
      v90 = "NO";
    }

    v213 = 2080;
    if (v199)
    {
      v91 = "YES";
    }

    else
    {
      v91 = "NO";
    }

    v214 = v90;
    v215 = 2112;
    if (v8)
    {
      v88 = "YES";
    }

    v216 = v14;
    v217 = 2080;
    v218 = v91;
    v219 = 2080;
    v220 = v88;
    _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "-_setupDelegate:%@ delegateSame:%s hardwareKeyboardStateChanged:%s endingInputSessionIdentifier:%@ force:%s delayEndInputSession:%s", buf, 0x3Eu);
  }

  v16 = [(_UIKeyboardStateManager *)self inputDelegate];

  if (v16)
  {
    v17 = [(_UIKeyboardStateManager *)self inputDelegate];
    v18 = [v17 inputDelegate];

    if (!v18)
    {
      v19 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v19 setInputDelegate:self];
    }
  }

  v20 = [(_UIKeyboardStateManager *)self asyncInputDelegate];

  if (v20)
  {
    v21 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
    v22 = [v21 asyncSystemInputDelegate];

    if (!v22)
    {
      v23 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
      [v23 setAsyncSystemInputDelegate:self];
    }
  }

  v24 = [(_UIKeyboardStateManager *)self webInputDelegate];

  if (v24)
  {
    v25 = [(_UIKeyboardStateManager *)self webInputDelegate];
    v26 = [v25 asyncInputDelegate];

    if (!v26)
    {
      v27 = [(_UIKeyboardStateManager *)self webInputDelegate];
      [v27 setAsyncInputDelegate:self];
    }
  }

  self->m_textInputChangingCount = 0;
  self->m_textInputChangingDirection = 0;
  *&self->m_textInputChangesIgnored = 0;
  self->m_wasDelegateSetupWithRTIClient = [(_UIKeyboardStateManager *)self isRTIClient];
  [(_UIKeyboardStateManager *)self setMarkedTextFromClient:0];
  [(_UIKeyboardStateManager *)self deactivateLayout];
  [(_UIKeyboardStateManager *)self stopAutoDelete];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v29 = [WeakRetained layout];

  if (v29)
  {
    [(_UIKeyboardStateManager *)self clearShiftState];
  }

  v30 = [(_UIKeyboardStateManager *)self changedDelegate];

  if (v30)
  {
    [(_UIKeyboardStateManager *)self callChangedDelegate];
  }

  [(_UIKeyboardStateManager *)self setChangedDelegate:0];
  [(_UIKeyboardStateManager *)self clearTransientState];
  *&self->m_needsPasteSupportUpdate = 1;
  [(_UIKeyboardStateManager *)self setArrowKeyHistory:0];
  v31 = [(UITextInputTraits *)self->m_traits keyboardType];
  remoteTextInputTraits = self->_remoteTextInputTraits;
  self->_remoteTextInputTraits = 0;

  v33 = [(_UIKeyboardStateManager *)self floatingForced];
  [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];
  if (v33)
  {
    v34 = ![(_UIKeyboardStateManager *)self floatingForced];
  }

  else
  {
    v34 = 0;
  }

  v35 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];

  if (v35)
  {
    v36 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v37 = [(_UIKeyboardStateManager *)self floatingForced];
    v38 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    [v38 setSessionDelegate:v36];
    [v36 applyRemoteDocumentTraitsIfNecessary:v38 force:0];
    [v36 applyRemoteDocumentStateIfNecessary:v38 force:0];
    v34 = 0;
    if (v37)
    {
      v34 = ![(_UIKeyboardStateManager *)self floatingForced];
    }
  }

  v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v40 = [v39 delegateRespectingForwardingDelegate:0];
  if (v40)
  {
    v41 = v40;
    v42 = [(_UIKeyboardStateManager *)self forCustomInputView];

    if (!v42)
    {
      [(_UIKeyboardStateManager *)self setReturnKeyEnabled:1];
    }
  }

  else
  {
  }

  self->m_autocapitalizationPreference = [(_UIKeyboardStateManager *)self autocapitalizationPreference];
  [(_UIKeyboardStateManager *)self updateInputManagerAutocapitalizationType];
  v43 = [(_UIKeyboardStateManager *)self autocorrectionPreferenceForTraits]!= 0;
  [(TIKeyboardState *)self->m_keyboardState setAutocorrectionEnabled:v43];
  [(_UIKeyboardStateManager *)self setAutocorrectSpellingEnabled:v43];
  [(TIKeyboardState *)self->m_keyboardState setInlineCompletionEnabled:[(_UIKeyboardStateManager *)self isInlineCompletionEnabled]];
  v44 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v45 = [v44 delegateRespectingForwardingDelegate:0];
  if (v45)
  {

LABEL_28:
    goto LABEL_30;
  }

  m_defaultTraits = self->m_defaultTraits;

  if (!m_defaultTraits)
  {
    [(UITextInputTraits *)self->m_traits setKeyboardType:v31];
    v86 = [MEMORY[0x1E69D96E0] translateToTextInputKeyboardType:v31];
    v44 = [(TIKeyboardState *)self->m_keyboardState textInputTraits];
    [v44 setKeyboardType:v86];
    goto LABEL_28;
  }

LABEL_30:
  if (!v11)
  {
    v47 = +[UIKeyboardInputModeController sharedInputModeController];
    v48 = [v47 currentInputMode];
    v49 = [v48 primaryLanguage];
    [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v49];

    [(TISmartPunctuationController *)self->m_smartPunctuationController reset];
  }

  if (v13)
  {
    if (!+[UIKeyboard isKeyboardProcess])
    {
      v50 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      v51 = [v50 snapshotting];

      if ((v51 & 1) == 0)
      {
        v52 = [(_UIKeyboardStateManager *)self inputDelegate];
        v53 = [(_UIKeyboardStateManager *)self needAutofillCandidate:v52];
        v54 = [(_UIKeyboardStateManager *)self autofillController];
        [v54 setDelegateNeedsAutofillMode:v53];

        [(TIKeyboardState *)self->m_keyboardState setAutofillMode:[(_UIKeyboardStateManager *)self needAutofill]];
        self->m_cachedAutofillMode = [(TIKeyboardState *)self->m_keyboardState autofillMode];
        [(_UIKeyboardStateManager *)self displayAutoFillPopoverIfAutoFillModeDetected];
      }
    }
  }

  v55 = objc_loadWeakRetained(&self->_presentationDelegate);
  v56 = [v55 canPresentNumberpadPopover];

  if (v56)
  {
    v57 = [(_UIKeyboardStateManager *)self webInputDelegate];

    if (v57)
    {
      v58 = dispatch_time(0, 500000000);
      v59 = MEMORY[0x1E69E96A0];
      v60 = MEMORY[0x1E69E96A0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_after(v58, v59, block);
    }

    else
    {
      v61 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v61 presentNumberpadPopover];
    }
  }

  v202 = v11;
  v62 = v10;
  v200 = v14;
  v63 = [(UITextInputTraits *)self->m_traits isSecureTextEntry];
  v64 = +[UIKeyboardInputModeController sharedInputModeController];
  v65 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v66 = [v65 keyInputDelegate];
  v201 = v64;
  if (v66 && !-[_UIKeyboardStateManager forCustomInputView](self, "forCustomInputView") && ([v64 inputModeContextIdentifier], (v67 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v68 = v67;
    v69 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v70 = [v69 isInOnenessSceneAndRTIEnabled];

    v64 = v201;
    if ((v70 & 1) == 0)
    {
      v71 = [(_UIKeyboardStateManager *)self desirableInputModesWithExtensions:!v63];
      v72 = [v201 currentInputMode];
      v73 = v200;
      if ([v71 containsObject:v72])
      {
        restoresToEmojiInputMode = self->_restoresToEmojiInputMode;

        if (!restoresToEmojiInputMode)
        {
          v75 = [v201 identifiersFromInputModes:v71];
          UIKeyboardSetActiveInputModes(v75);

LABEL_78:
          goto LABEL_79;
        }
      }

      else
      {
      }

      [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:[(UITextInputTraits *)self->m_traits isSecureTextEntry]^ 1];
      goto LABEL_78;
    }
  }

  else
  {
  }

  v73 = v200;
  if (!v202)
  {
    v76 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v77 = [v76 delegateRespectingForwardingDelegate:0];
    if (v77)
    {
      v78 = v77;
      v79 = [(_UIKeyboardStateManager *)self forCustomInputView];

      if (!v79)
      {
        v80 = [v64 currentInputMode];
        v81 = [v80 isEmojiInputMode];

        if (v81 && ![(UITextInputTraits *)self->m_traits acceptsInitialEmojiKeyboard])
        {
          v82 = [v64 currentInputModeInPreference];
          v83 = [(_UIKeyboardStateManager *)self desirableInputModesWithExtensions:!v63];
          if ([v83 containsObject:v82])
          {
            [(_UIKeyboardStateManager *)self setKeyboardInputMode:v82 userInitiated:0];
          }
        }

        v84 = [(_UIKeyboardStateManager *)self suppressUpdateLayout];
        if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          HasMultipleActiveLinguisticNonExtensionInputModes = UIKeyboardHasMultipleActiveLinguisticNonExtensionInputModes();
        }

        else
        {
          HasMultipleActiveLinguisticNonExtensionInputModes = 0;
        }

        [(_UIKeyboardStateManager *)self setSuppressUpdateLayout:1];
        [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:[(UITextInputTraits *)self->m_traits isSecureTextEntry]^ 1 allowNonLinguisticInputModes:[(UITextInputTraits *)self->m_traits acceptsInitialEmojiKeyboard]];
        [(_UIKeyboardStateManager *)self setSuppressUpdateLayout:v84];
        if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && HasMultipleActiveLinguisticNonExtensionInputModes != UIKeyboardHasMultipleActiveLinguisticNonExtensionInputModes())
        {
          [(_UIKeyboardStateManager *)self updateInputAssistantButtonItems];
        }
      }
    }

    else
    {
    }
  }

LABEL_79:
  v92 = objc_loadWeakRetained(&self->_presentationDelegate);
  v93 = [v92 layout];
  [v93 setIgnoringKeyplaneChange:1];

  [(_UIKeyboardStateManager *)self updateShiftState];
  v94 = objc_loadWeakRetained(&self->_presentationDelegate);
  v95 = [v94 layout];
  [v95 setIgnoringKeyplaneChange:0];

  self->m_predictionType = 0;
  if (v34)
  {
    v96 = objc_loadWeakRetained(&self->_presentationDelegate);
    v97 = [objc_opt_class() isFloating];

    if ((v97 & 1) == 0)
    {
      v100 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v100 reloadPlacement];
      goto LABEL_96;
    }
  }

  if ([(_UIKeyboardStateManager *)self isMinimized])
  {
    v98 = objc_loadWeakRetained(&self->_presentationDelegate);
    v99 = [v98 _shouldSuppressSoftwareKeyboard];

    if (v99)
    {
      v100 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v100 setUpdateLayoutOnShowKeyboard:1];
LABEL_96:

      v105 = 0x1E70E9000uLL;
      goto LABEL_97;
    }
  }

  v100 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v101 = [v100 delegateRespectingForwardingDelegate:0];
  if (!v101 && !v199)
  {
    goto LABEL_96;
  }

  v102 = +[UIKeyboardInputModeController sharedInputModeController];
  v103 = [v102 currentInputMode];
  v104 = [v103 isExtensionInputMode];

  v105 = 0x1E70E9000;
  if (v104)
  {
LABEL_97:
    [(_UIKeyboardStateManager *)self forCustomInputView];
LABEL_98:
    [(_UIKeyboardStateManager *)self updateShiftState];
    goto LABEL_99;
  }

  v106 = 0;
  if (self->m_traitsForPreviousDelegate && !v199)
  {
    v107 = [(_UIKeyboardStateManager *)self textInputTraits];
    v106 = [v107 updateResultComparedToTraits:self->m_traitsForPreviousDelegate] != 2;
  }

  if ([(_UIKeyboardStateManager *)self forCustomInputView]|| v106 || v62)
  {
    goto LABEL_98;
  }

  v108 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v108 updateLayout];

  if (self->m_hardwareKeyboardAttached)
  {
    [(_UIKeyboardStateManager *)self callLayoutUpdateAllLocalizedKeys];
  }

  else
  {
    [(_UIKeyboardStateManager *)self callLayoutUpdateLocalizedKeys];
  }

LABEL_99:
  v109 = v202;
  v110 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v111 = [v110 delegateRespectingForwardingDelegate:0];
  if (v111)
  {
    v112 = v111;
LABEL_105:

    goto LABEL_106;
  }

  if (![(TIKeyboardState *)self->m_keyboardState hardwareKeyboardMode]|| ![(_UIKeyboardStateManager *)self automaticMinimizationEnabled]|| [(_UIKeyboardStateManager *)self isMinimized])
  {
    v112 = 0;
    goto LABEL_105;
  }

  v193 = UIKeyboardGetCurrentInputMode();
  v194 = TIInputModeGetNormalizedIdentifier();
  v195 = [@"emoji" isEqualToString:v194];

  if (v195)
  {
    v110 = +[UIKeyboardInputModeController sharedInputModeController];
    v112 = [v110 nextInputModeInPreferenceListForTraits:self->m_traits];
    [(_UIKeyboardStateManager *)self setKeyboardInputMode:v112 userInitiated:0];
    goto LABEL_105;
  }

LABEL_106:
  self->m_delegateRequiresKeyEvents = ([(_UIKeyboardStateManager *)self delegateConformanceType]>> 8) & 1;
  [(_UIKeyboardStateManager *)self _updateDelegateRequiresKeyEventsFromRemoteTextInput];
  v113 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v113 _updateExternalDeviceInputSetting];

  if (!v202)
  {
    v114 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v115 = [v114 delegateRespectingForwardingDelegate:0];
    v116 = v115;
    if (v115 && self->m_hardwareKeyboardAttached)
    {
      v117 = [(TIKeyboardState *)self->m_keyboardState hardwareKeyboardMode];

      if (v117)
      {
        if ([(_UIKeyboardStateManager *)self isCapsLockASCIIToggle])
        {
          [(_UIKeyboardStateManager *)self removeCapsLockDelayOverride];
        }

        else
        {
          [(_UIKeyboardStateManager *)self adjustCapsLockDelayOverride];
        }

        [(_UIKeyboardStateManager *)self setCapsLockIfNeeded];
      }
    }

    else
    {
    }
  }

  v118 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v119 = [v118 delegateRespectingForwardingDelegate:0];

  if (!v119)
  {
    v120 = UIKeyboardGetCurrentInputMode();
    v121 = objc_loadWeakRetained(&self->_presentationDelegate);
    v122 = [objc_opt_class() isSplit];

    if (v122)
    {
      v123 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarSetBoolean();

      v124 = TIStatisticGetKeyForInputMode();
      v125 = objc_loadWeakRetained(&self->_presentationDelegate);
      [objc_opt_class() persistentOffset];
      TIStatisticDistributionPushValue();
    }

    else
    {
      v126 = +[UIPeripheralHost sharedInstance];
      v127 = [v126 isUndocked];

      if (!v127)
      {
LABEL_119:

        goto LABEL_120;
      }

      v124 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarSetBoolean();
    }

    goto LABEL_119;
  }

LABEL_120:
  v128 = [(_UIKeyboardStateManager *)self deferredDidSetDelegateAction];
  v129 = [v128 isValid];

  if ((v129 & 1) == 0)
  {
    v130 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel_didSetDelegate object:0];
    [(_UIKeyboardStateManager *)self setDeferredDidSetDelegateAction:v130];
  }

  self->m_disableSyncTextChanged = 0;
  self->m_ignoreSelectionChange = 0;
  v131 = sharedInputManagerMux();
  v132 = [v131 systemInputManager];
  v133 = [v132 isMemberOfClass:objc_opt_class()];

  if (v13 || (v133 & 1) == 0)
  {
    v134 = [(_UIKeyboardStateManager *)self taskQueue];
    v135 = [v134 isMainThreadExecutingTask];

    if (v135)
    {
      [(_UIKeyboardStateManager *)self setInputManagerFromCurrentInputMode];
      [(_UIKeyboardStateManager *)self updateForChangedSelection];
      if (!v13)
      {
        goto LABEL_134;
      }

      goto LABEL_130;
    }

    if (qword_1ED49CFE8 != -1)
    {
      dispatch_once(&qword_1ED49CFE8, &__block_literal_global_564_0);
    }

    v136 = [(_UIKeyboardStateManager *)self taskQueue];
    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_3;
    v206[3] = &unk_1E70FD1B8;
    v206[4] = self;
    v207 = v13;
    [v136 addTask:v206 breadcrumb:qword_1ED49CFE0];

    if (v13)
    {
LABEL_130:
      v137 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];

      if (!v137)
      {
        v138 = [(_UIKeyboardStateManager *)self assertionController];
        v139 = [v138 hasAssertionsOfType:42];

        if ((v139 & 1) == 0)
        {
          v140 = [(_UIKeyboardStateManager *)self documentIdentifierForInputDelegate:v13];
          [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:v140];
        }
      }

      v141 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
      v142 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v143 = [v142 _textInputSessionAnalytics];
      [v143 setSessionIdentifier:v141];
    }
  }

LABEL_134:
  if ([(_UIKeyboardStateManager *)self isRTIClient])
  {
    if ([*(v105 + 3824) usesInputSystemUIForAutoFillOnly])
    {
      v144 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      v145 = [v144 rtiDocumentTraits];
      v146 = [v145 autofillMode];

      if (v146)
      {
        v147 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
        [v147 assertNeedsAutofillUI];
      }
    }
  }

  if (([*(v105 + 3824) usingEndInputSessionCompletion] & 1) == 0)
  {
    if ([(_UIKeyboardStateManager *)self isRTIClient])
    {
      v148 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v149 = [v148 delegateRespectingForwardingDelegate:0];

      if (v13)
      {
        if (v149)
        {
          if ([(_UIKeyboardStateManager *)self isOutOfProcess])
          {
            v150 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
            v151 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
            [v150 beginAllowingRemoteTextInput:v151];
          }

          v152 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
          v153 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
          [v152 beginInputSessionWithIdentifier:v153];

          m_keyboardWindowSnapshot = self->m_keyboardWindowSnapshot;
          self->m_keyboardWindowSnapshot = 0;
LABEL_176:

          goto LABEL_177;
        }
      }
    }
  }

  if ([*(v105 + 3824) usingEndInputSessionCompletion] && -[_UIKeyboardStateManager isRTIClient](self, "isRTIClient"))
  {
    v155 = [(_UIKeyboardStateManager *)self skippedEndInputSession];
    v156 = [(_UIKeyboardStateManager *)self skippedEndInputSession];
    v157 = v156;
    if (v13 && v155 && v156 != v13)
    {
      v158 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v158, OS_LOG_TYPE_FAULT, "New delegate does not match the delegate for the skipped end input session.", buf, 2u);
      }

      if (os_variant_has_internal_diagnostics())
      {
        v198 = _UIKeyboardExtendedLog();
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v198, OS_LOG_TYPE_DEFAULT, "End the session unceremoniously, detected skippedEndInputSession", buf, 2u);
        }

        v109 = v202;
      }

      v159 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
      v160 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
      [v159 endInputSessionWithIdentifier:v160 shouldResign:1 waitForReply:0];

      v161 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
      v162 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
      [v161 endAllowingRemoteTextInput:v162];

      [(_UIKeyboardStateManager *)self setSkippedEndInputSession:0];
      [(_UIKeyboardStateManager *)self setSkippedEndInputSessionID:0];
      v105 = 0x1E70E9000uLL;
    }

    if (!((v13 == 0) | ([*(v105 + 3824) usesInputSystemUI] ^ 1) & 1) && v155)
    {
      v163 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v163 forwardApplicationOperation:sel_verifyPlacement object:MEMORY[0x1E695E0F8]];

      v164 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v164 documentStateChanged];
    }

    m_keyboardWindowSnapshot = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
    if (!v13 || v157 == v13)
    {
      v168 = v157 != v13 || v13 == 0;
      v73 = v200;
      if (v168)
      {
        goto LABEL_165;
      }

      p_super = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v192 = _delegateShortDescr(v13);
        *buf = 138412290;
        v210 = v192;
        _os_log_impl(&dword_188A29000, p_super, OS_LOG_TYPE_DEFAULT, "Skipping begin session because end session was previously skipped for: %@", buf, 0xCu);
      }
    }

    else
    {
      [(_UIKeyboardStateManager *)self updateDelegatePasteSupport];
      v165 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v165 beginAllowingRemoteTextInput:m_keyboardWindowSnapshot];

      v166 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v166 beginInputSessionWithIdentifier:m_keyboardWindowSnapshot];

      p_super = &self->m_keyboardWindowSnapshot->super.super;
      self->m_keyboardWindowSnapshot = 0;
      v73 = v200;
    }

LABEL_165:
    if (v73)
    {
      v169 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
      v170 = [v169 isEqual:v73];

      if ((v170 & 1) == 0)
      {
        v171 = _UIKeyboardInputSessionChangeLog();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v210 = v73;
          _os_log_debug_impl(&dword_188A29000, v171, OS_LOG_TYPE_DEBUG, "Stop allowing RTI for ending input session with ID: %@", buf, 0xCu);
        }

        v172 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
        [v172 endAllowingRemoteTextInput:v73];
      }
    }

    if (v13)
    {
      if ([(_UIKeyboardStateManager *)self skippedEndInputSession]|| ([(_UIKeyboardStateManager *)self skippedEndInputSessionID], v173 = objc_claimAutoreleasedReturnValue(), v173, v173))
      {
        v174 = _UIKeyboardInputSessionChangeLog();
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
        {
          v196 = [(_UIKeyboardStateManager *)self skippedEndInputSession];
          v197 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
          *buf = 134218242;
          v210 = v196;
          v211 = 2112;
          v212 = v197;
          _os_log_debug_impl(&dword_188A29000, v174, OS_LOG_TYPE_DEBUG, "nilling skippedEndInputSession properties (was %p, sessionID=%@)", buf, 0x16u);
        }

        [(_UIKeyboardStateManager *)self setSkippedEndInputSession:0];
        [(_UIKeyboardStateManager *)self setSkippedEndInputSessionID:0];
      }
    }

    goto LABEL_176;
  }

LABEL_177:
  if (v13 && self->m_cachedAutofillMode)
  {
    if (!self->m_isAutofilling)
    {
      +[_UIKeyboardUsageTracking appAutofillDetectedIncrement];
      [(_UIKeyboardStateManager *)self generateAutofillCandidateByAddingTask:1];
    }
  }

  else if (!self->m_isAutofilling)
  {
    v175 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v176 = [v175 delegateRespectingForwardingDelegate:0];

    if (v176)
    {
      v177 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v178 = v177;
      }

      else
      {
        v178 = 0;
      }

      v179 = v178;
      v180 = [v179 _scroller];
      v181 = [v180 _isAncestorOfFirstResponder];

      if (v181)
      {
        if (qword_1ED49CFF8 != -1)
        {
          dispatch_once(&qword_1ED49CFF8, &__block_literal_global_579);
        }

        v182 = [(_UIKeyboardStateManager *)self taskQueue];
        v205[0] = MEMORY[0x1E69E9820];
        v205[1] = 3221225472;
        v205[2] = __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_3_583;
        v205[3] = &unk_1E70FD058;
        v205[4] = self;
        [v182 addTask:v205 breadcrumb:qword_1ED49CFF0];
      }
    }
  }

  v183 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v184 = [v183 delegateRespectingForwardingDelegate:0];

  if (!v184)
  {
    v185 = +[UIInputSwitcher activeInstance];
    [v185 hideSwitcherIfNeeded];
    v186 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    [v186 releaseRecentlyUsedMediaViewIfNeeded];

    v187 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    [v187 dismissCardIfNeeded];
  }

  +[_UIKeyboardUsageTracking showLowercaseKeyplanePreference:](_UIKeyboardUsageTracking, "showLowercaseKeyplanePreference:", +[UIKeyboardLayout _showSmallDisplayKeyplane]);
  if (v13)
  {
    v188 = [MEMORY[0x1E696AD88] defaultCenter];
    [v188 postNotificationName:@"UITextInputResponderIsReloadedNotification" object:0 userInfo:0];

    if (!v109 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(_UIKeyboardStateManager *)self isMinimized])
    {
      v189 = MEMORY[0x1E69E96A0];
      v190 = MEMORY[0x1E69E96A0];
      v203[0] = MEMORY[0x1E69E9820];
      v203[1] = 3221225472;
      v203[2] = __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_4;
      v203[3] = &unk_1E70F35B8;
      v203[4] = self;
      v204 = v201;
      dispatch_async(v189, v203);
    }
  }

  self->_isSettingDelegate = 0;
  v191 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v191 unsetPolicyDelegateResult];
}

- (void)keyboardSceneDelegate:(id)a3 startedPinningInputViewsOnBehalfOfResponder:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Started pinning input views on behalf of responder: %p", &v6, 0xCu);
  }
}

- (void)keyboardSceneDelegate:(id)a3 stoppedPinningInputViewsOnBehalfOfResponder:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = v5;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "Stopped pinning input views on behalf of responder: %p", &v18, 0xCu);
  }

  if (+[UIKeyboard usingEndInputSessionCompletion]&& [(_UIKeyboardStateManager *)self isRTIClient])
  {
    v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v8 = [v7 keyInputDelegate];

    if ([(_UIKeyboardStateManager *)self skippedEndInputSession])
    {
      v9 = [(_UIKeyboardStateManager *)self skippedEndInputSession]!= v5;
      if (v8)
      {
LABEL_7:
        v10 = [(_UIKeyboardStateManager *)self skippedEndInputSession]== v8;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 1;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
LABEL_10:
    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v11 _keepInputSession];

    if (!v9 && !v10 && (v12 & 1) == 0)
    {
      v13 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Stopped pinning input views on behalf of responder: ending session for skippedEndInputSessionID now.", &v18, 2u);
      }

      v14 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
      v15 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
      [v14 endInputSessionWithIdentifier:v15 shouldResign:1 waitForReply:0];

      v16 = [(_UIKeyboardStateManager *)self remoteTextInputPartnerPrivate];
      v17 = [(_UIKeyboardStateManager *)self skippedEndInputSessionID];
      [v16 endAllowingRemoteTextInput:v17];

      [(_UIKeyboardStateManager *)self setSkippedEndInputSession:0];
      [(_UIKeyboardStateManager *)self setSkippedEndInputSessionID:0];
    }
  }
}

- (void)setRemoteDelegateSupportsImagePaste:(BOOL)a3
{
  if (self->m_remoteDelegateSupportsImagePaste != a3)
  {
    self->m_remoteDelegateSupportsImagePaste = a3;
    [(_UIKeyboardStateManager *)self updateDelegatePasteSupport];
  }
}

- (void)queueDelayedTask:(id)a3
{
  v4 = a3;
  deferredUpdateTask = self->_deferredUpdateTask;
  if (deferredUpdateTask)
  {
    v6 = _Block_copy(deferredUpdateTask);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44___UIKeyboardStateManager_queueDelayedTask___block_invoke;
    v12[3] = &unk_1E70F77D0;
    v13 = v6;
    v14 = v4;
    v7 = v6;
    v8 = [v12 copy];
    v9 = self->_deferredUpdateTask;
    self->_deferredUpdateTask = v8;
  }

  else
  {
    v10 = [v4 copy];
    v11 = self->_deferredUpdateTask;
    self->_deferredUpdateTask = v10;
  }
}

- (void)setAutocorrectSpellingEnabled:(BOOL)a3
{
  v5 = [(_UIKeyboardStateManager *)self checkSpellingPreferenceForTraits];
  UIKeyboardAutocorrectSpellingFlag = v5 || a3;
  if (v5)
  {
    v6 = UIKeyboardGetCurrentInputMode();
    v7 = UIKeyboardCheckSpellingForInputMode(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v8 setContinuousSpellCheckingEnabled:v7];
}

- (BOOL)hasDelegate
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 responder];

  if (v4 && [UIApp isSuspended] && (+[UIPeripheralHost sharedInstance](UIPeripheralHost, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "containerWindow"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isHostedInAnotherProcess"), v6, v5, (v7 & 1) == 0))
  {
    if (![v4 _requiresKeyboardWhenFirstResponder])
    {
      v10 = 0;
      goto LABEL_6;
    }

    v8 = [v4 _keyboardResponder];
    v9 = v8;
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 keyInputDelegate];
  }

  v10 = v9 != 0;

LABEL_6:
  return v10;
}

- (void)_insertSmartText:(id)a3 completionHandler:(id)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v11[0] = 0x1EFB64610;
  v11[1] = 0x1EFB64630;
  v12[0] = MEMORY[0x1E695E118];
  v12[1] = MEMORY[0x1E695E110];
  v11[2] = 0x1EFB64650;
  v12[2] = &unk_1EFE30028;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v10 = objc_alloc_init(MEMORY[0x1E69D9638]);
  [v10 insertText:v8];

  [(_UIKeyboardStateManager *)self performKeyboardOutput:v10 userInfo:v9];
  if (v6)
  {
    v6[2](v6);
  }
}

- (void)textLayoutDidChange:(id)a3 inRange:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!v6)
  {
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
LABEL_7:
    v15 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v15 documentStateChanged];

    goto LABEL_8;
  }

  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v9 = [v8 selectedTextRange];
  v10 = [v7 _range:v9 intersectsRange:v6];

  if (v10)
  {
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
  }

  v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v12 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v13 = [v12 extentRangeForDocumentState];
  v14 = [v11 _range:v13 intersectsRange:v6];

  if (v14)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)textWillChange:(id)a3 inRange:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!v6 || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 selectedTextRange], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "_range:intersectsRange:", v9, v6), v9, v8, v7, v10))
  {
    if (!self->m_textInputChangesIgnored)
    {
      self->m_textInputChangingText = 1;
    }

    [(_UIKeyboardStateManager *)self selectionWillChange:v11];
  }
}

- (void)textDidChange:(id)a3 inRange:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (!v6 || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 selectedTextRange], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "_range:intersectsRange:", v9, v6), v9, v8, v7, v10))
  {
    if (!self->m_textInputChangesIgnored)
    {
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v12 = [v11 _textInputSessionAnalytics];
      [v12 didOther];
    }

    [(_UIKeyboardStateManager *)self selectionDidChange:v13];
  }
}

- (void)textAttributesDidChange:(id)a3 inRange:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!v6 || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardStateManager remoteTextInputPartner](self, "remoteTextInputPartner"), v8 = objc_claimAutoreleasedReturnValue(), [v8 extentRangeForDocumentState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "_range:intersectsRange:", v9, v6), v9, v8, v7, v10))
  {
    v11 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v11 documentStateChanged];
  }
}

- (void)invalidateTextEntryContextForTextInput:(id)a3
{
  v6 = a3;
  v4 = [(_UIKeyboardStateManager *)self webInputDelegate];

  v5 = v6;
  if (v4 == v6)
  {
    if ([v6 hasMarkedText])
    {
      [(_UIKeyboardStateManager *)self layoutHasChanged];
    }

    else
    {
      [(_UIKeyboardStateManager *)self updateForChangedSelection];
    }

    v5 = v6;
  }
}

- (void)textChanged:(id)a3
{
  v5 = a3;
  if (pthread_main_np())
  {
    if (+[UIKeyboard isSpotlight](UIKeyboard, "isSpotlight") && (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 deviceStateIsLocking], v6, v7))
    {
      if (qword_1ED49D010 != -1)
      {
        dispatch_once(&qword_1ED49D010, &__block_literal_global_606);
      }

      v8 = [(_UIKeyboardStateManager *)self taskQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39___UIKeyboardStateManager_textChanged___block_invoke_3;
      v13[3] = &unk_1E70FD1B8;
      v13[4] = self;
      v14 = v5;
      [v8 performTask:v13 breadcrumb:qword_1ED49D008];

      v9 = v14;
    }

    else
    {
      if (qword_1ED49D020 != -1)
      {
        dispatch_once(&qword_1ED49D020, &__block_literal_global_612);
      }

      v10 = [(_UIKeyboardStateManager *)self taskQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __39___UIKeyboardStateManager_textChanged___block_invoke_6;
      v11[3] = &unk_1E70FD1B8;
      v11[4] = self;
      v12 = v5;
      [v10 performSingleTask:v11 breadcrumb:qword_1ED49D018];

      v9 = v12;
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self performSelectorOnMainThread:a2 withObject:v5 waitUntilDone:0];
  }
}

- (void)textChanged:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIKeyboardStateManager *)self initializationDone]|| self->m_disableSyncTextChanged)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  if (([WeakRetained rivenPreference] & 1) == 0)
  {

LABEL_9:
    [(_UIKeyboardStateManager *)self clearChangeTimeAndCount];
    [(_UIKeyboardStateManager *)self clearInput];
    v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v13 = [v12 keyInputDelegate];
    v14 = v13;
    if (v6 && v13)
    {
      v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v16 = [v15 keyInputDelegate];

      if (v6 == self || v16 == v6)
      {
LABEL_17:
        v23 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v24 = [v23 keyInputDelegate];
        if (v24)
        {
          v25 = v24;
          v26 = [(_UIKeyboardStateManager *)self autofillController];
          if ([v26 delegateNeedsAutofillMode])
          {
            m_cachedAutofillMode = self->m_cachedAutofillMode;

            if (!m_cachedAutofillMode)
            {
              self->m_cachedAutofillMode = [(_UIKeyboardStateManager *)self needAutofill];
            }

            goto LABEL_23;
          }
        }

LABEL_23:
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __56___UIKeyboardStateManager_textChanged_executionContext___block_invoke;
        v29[3] = &unk_1E70FD058;
        v29[4] = self;
        v28 = [v7 childWithContinuation:v29];
        [(_UIKeyboardStateManager *)self updateForChangedSelectionWithExecutionContext:v28];

        goto LABEL_4;
      }

      v17 = [(_UIKeyboardStateManager *)self assertionController];
      v18 = [v17 hasAssertionsOfType:42];

      if ((v18 & 1) == 0)
      {
        v19 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v20 = [v19 keyInputDelegate];
        v21 = [(_UIKeyboardStateManager *)self documentIdentifierForInputDelegate:v20];
        [(TIKeyboardState *)self->m_keyboardState setDocumentIdentifier:v21];
      }

      v12 = [(TIKeyboardState *)self->m_keyboardState documentIdentifier];
      v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v22 = [v14 _textInputSessionAnalytics];
      [v22 setSessionIdentifier:v12];
    }

    goto LABEL_17;
  }

  v9 = objc_loadWeakRetained(&self->_presentationDelegate);
  v10 = [v9 _rootInputWindowController];
  v11 = [v10 isSplitting];

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_3:
  [v7 returnExecutionToParent];
LABEL_4:
}

- (void)finishTextChanged
{
  [(_UIKeyboardStateManager *)self updateReturnKey:1];
  [(_UIKeyboardStateManager *)self updateNoContentViews];
  [(_UIKeyboardStateManager *)self setChangedDelegate];
  [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
  v3 = [(_UIKeyboardStateManager *)self textSelectionController];
  [v3 textDidChange];
}

- (void)textSuggestionDidChange:(id)a3
{
  v4 = a3;
  if (qword_1ED49D030 != -1)
  {
    dispatch_once(&qword_1ED49D030, &__block_literal_global_616);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIKeyboardStateManager_textSuggestionDidChange___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED49D028;
  v7 = v4;
  [v5 addTask:v8 breadcrumb:v6];
}

- (void)setDefaultTextInputTraits:(id)a3
{
  v4 = a3;
  m_defaultTraits = self->m_defaultTraits;
  if (m_defaultTraits != v4)
  {
    v13 = v4;
    v6 = [(UITextInputTraits *)m_defaultTraits isEqual:v4];
    v4 = v13;
    if (!v6)
    {
      v7 = [(UITextInputTraits *)v13 copy];
      v8 = self->m_defaultTraits;
      self->m_defaultTraits = v7;

      v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v10 = [v9 delegateRespectingForwardingDelegate:0];
      [(_UIKeyboardStateManager *)self setDelegate:v10 force:1];

      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v12 = [v11 delegateRespectingForwardingDelegate:0];

      v4 = v13;
      if (v13)
      {
        if (!v12)
        {
          [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:1];
          v4 = v13;
        }
      }
    }
  }
}

- (void)setOverrideTextInputTraits:(id)a3
{
  v4 = a3;
  m_overrideTraits = self->m_overrideTraits;
  if (m_overrideTraits != v4)
  {
    v11 = v4;
    v6 = [(UITextInputTraits *)m_overrideTraits isEqual:v4];
    v4 = v11;
    if (!v6)
    {
      if (!v11)
      {
        [(_UIKeyboardStateManager *)self clearForwardingInputDelegateAndResign:1];
        v4 = 0;
      }

      v7 = [(UITextInputTraits *)v4 copy];
      v8 = self->m_overrideTraits;
      self->m_overrideTraits = v7;

      v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v10 = [v9 delegateRespectingForwardingDelegate:0];
      [(_UIKeyboardStateManager *)self setDelegate:v10 force:1];

      v4 = v11;
    }
  }
}

- (void)textInput:(id)a3 setCandidateSuggestions:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2050000000;
        v12 = qword_1ED49D5D0;
        v26 = qword_1ED49D5D0;
        if (!qword_1ED49D5D0)
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __getBEAutoFillTextSuggestionClass_block_invoke;
          v22[3] = &unk_1E70F2F20;
          v22[4] = &v23;
          __getBEAutoFillTextSuggestionClass_block_invoke(v22);
          v12 = v24[3];
        }

        v13 = v12;
        _Block_object_dispose(&v23, 8);
        if (objc_opt_isKindOfClass())
        {
          v14 = [v11 contents];
          v15 = [UIAutoFillTextSuggestion autoFillSuggestionWithContents:v14];
        }

        else
        {
          v15 = [v11 _uikitTextSuggestion];
        }

        [v6 addObject:v15];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v8);
  }

  [(_UIKeyboardStateManager *)self provideCandidateUISuggestions:v6];
}

- (void)setSuggestions:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboard isKeyboardProcess];
  if (!v4 && v5)
  {
    v6 = [(_UIKeyboardStateManager *)self textSuggestions];
    if (v6)
    {
    }

    else
    {
      v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v8 = [v7 hasAutofillCandidates];

      if (v8)
      {
        goto LABEL_9;
      }
    }
  }

  if (qword_1ED49D040 != -1)
  {
    dispatch_once(&qword_1ED49D040, &__block_literal_global_623);
  }

  v9 = [(_UIKeyboardStateManager *)self taskQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42___UIKeyboardStateManager_setSuggestions___block_invoke_3;
  v10[3] = &unk_1E70FD1B8;
  v10[4] = self;
  v11 = v4;
  [v9 addTask:v10 breadcrumb:qword_1ED49D038];

LABEL_9:
}

- (void)_setSuggestions:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v58 = self;
  if ([(_UIKeyboardStateManager *)self isRTIClient])
  {
    v4 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v4 textSuggestionsChanged:v57];

    v5 = [(_UIKeyboardStateManager *)v58 remoteTextInputPartner];
    v6 = [v5 remoteTextInputClientHasActiveSession];

    self = v58;
    if (v57)
    {
      if ((v6 & 1) == 0)
      {
        v7 = [(_UIKeyboardStateManager *)v58 remoteTextInputPartner];
        [v7 addTextSuggestions:v57];

        self = v58;
      }
    }
  }

  v8 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v56 = [v8 textSuggestionList];

  if (v57 && [v57 count])
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v57, "count")}];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v10 = v57;
    v11 = 0;
    v12 = [v10 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v12)
    {
      v13 = *v79;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v79 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v78 + 1) + 8 * i);
          v16 = [v15 _keyboardCandidate];
          [v9 addObject:v16];

          if (!v11)
          {
            if ([v15 canDisplayInline])
            {
              v11 = v15;
            }

            else
            {
              v11 = 0;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v12);
    }

    v54 = [v9 firstObject];
    v17 = [(_UIKeyboardStateManager *)v58 usesCandidateSelection];
    v18 = v58;
    if (v58->m_predictionType != 6)
    {
      if (v17)
      {
        v19 = 2;
      }

      else
      {
        v19 = 4;
      }

      v58->m_predictionType = v19;
      v20 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:v9];
      v21 = [(_UIKeyboardStateManager *)v58 autocorrectionController];
      [v21 setTextSuggestionList:v20];

      v18 = v58;
    }

    if (v11)
    {
      v22 = [(_UIKeyboardStateManager *)v18 inlineTextCompletionController];
      [v22 updateTextCompletionWithExternalSuggestion:v11];

      v18 = v58;
    }

    if ([(_UIKeyboardStateManager *)v18 usesCandidateSelection])
    {
      v23 = [(TIKeyboardState *)v58->m_keyboardState textInputTraits];
      v24 = [v23 mathExpressionCompletionType] != 1;

      v55 = [(_UIKeyboardStateManager *)v58 _hasMarkedText];
      if (v24 && v55 && ![(TIKeyboardCandidateResultSet *)v58->m_candidateResultSet hasCandidates])
      {

        goto LABEL_62;
      }

      v25 = [MEMORY[0x1E695DF70] array];
      v26 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v10, "count") + 1}];
      v27 = [(TIKeyboardState *)v58->m_keyboardState searchStringForMarkedText];
      v28 = [(TIKeyboardCandidateResultSet *)v58->m_candidateResultSet firstCandidate];
      if (v28 != 0 && v55)
      {
        [v25 addObject:v28];
        v29 = [v28 candidate];

        if (v29)
        {
          v30 = [v28 candidate];
          [v26 addObject:v30];
        }
      }

      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = 0;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __43___UIKeyboardStateManager__setSuggestions___block_invoke;
      v66[3] = &unk_1E70FD258;
      v52 = v27;
      v67 = v52;
      v73 = !v55;
      v53 = v28;
      v68 = v53;
      v59 = v25;
      v69 = v59;
      v70 = v9;
      v31 = v26;
      v71 = v31;
      v72 = &v74;
      [v10 enumerateObjectsUsingBlock:v66];
      p_isa = &v58->super.isa;
      if (*(v75 + 24) == 1)
      {
        v33 = v55;
        if (([(TIKeyboardCandidateResultSet *)v58->m_candidateResultSet hasCandidates:v52]& v55) == 1)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v34 = [(TIKeyboardCandidateResultSet *)v58->m_candidateResultSet candidates];
          v35 = [v34 countByEnumeratingWithState:&v62 objects:v82 count:16];
          if (v35)
          {
            v36 = *v63;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v63 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v62 + 1) + 8 * j);
                v39 = [v38 candidate];
                v40 = [v31 containsObject:v39];

                if ((v40 & 1) == 0)
                {
                  [v59 addObject:v38];
                }
              }

              v35 = [v34 countByEnumeratingWithState:&v62 objects:v82 count:16];
            }

            while (v35);
          }

          p_isa = &v58->super.isa;
          v33 = v55;
        }

        if (([p_isa[4] hasCandidates] & v33) == 1)
        {
          v41 = [p_isa[4] copy];
          [v41 setCandidates:v59];
          [v41 setBatchCandidateLocation:0];
        }

        else
        {
          if (!v33)
          {
            [p_isa setCurrentCandidateRequest:0];
          }

          v41 = [MEMORY[0x1E69D95E8] setWithCandidates:v59];
        }

        if (qword_1ED49D050 != -1)
        {
          dispatch_once(&qword_1ED49D050, &__block_literal_global_631_0);
        }

        v48 = [p_isa taskQueue];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __43___UIKeyboardStateManager__setSuggestions___block_invoke_4;
        v60[3] = &unk_1E70FD1B8;
        v60[4] = p_isa;
        v49 = v41;
        v61 = v49;
        [v48 addDeferredTask:v60 breadcrumb:qword_1ED49D048];
      }

      _Block_object_dispose(&v74, 8);
    }

    goto LABEL_59;
  }

  v42 = [(_UIKeyboardStateManager *)v58 autocorrectionController];
  v43 = [v42 textSuggestionList];
  if (v43)
  {

    v44 = v58;
  }

  else
  {
    v44 = v58;
    v45 = [(_UIKeyboardStateManager *)v58 isAutofillPrediction];

    if (!v45)
    {
      goto LABEL_60;
    }
  }

  [(_UIKeyboardStateManager *)v44 isAutofillPrediction];
  v44->m_predictionType = 0;
  v46 = [(_UIKeyboardStateManager *)v44 autocorrectionController];
  [v46 setTextSuggestionList:0];

  v44 = v58;
  [(_UIKeyboardStateManager *)v58 removeInlineTextCompletionPrompt];
  if (![(_UIKeyboardStateManager *)v58 usesCandidateSelection])
  {
    v47 = [(_UIKeyboardStateManager *)v58 autocorrectionController];
    [v47 setNeedsAutocorrection];

LABEL_59:
    v44 = v58;
  }

LABEL_60:
  v50 = [(_UIKeyboardStateManager *)v44 autocorrectionController];
  v51 = [v50 textSuggestionList];

  if ((v56 != 0) == (v51 == 0))
  {
    [(_UIKeyboardStateManager *)v58 updateAssistantView];
  }

LABEL_62:
}

- (void)insertCustomTextSuggestion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = self;
  v5 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v6 = [v5 textSuggestionList];

  v29 = v6;
  [v6 predictions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v10 = *v31;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      v13 = [v12 textSuggestion];
      v14 = [v4 uuid];
      v15 = [v13 uuid];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        v17 = [(_UIKeyboardStateManager *)v28 inputDelegateManager];
        v18 = [v17 insertTextSuggestion:v13];

        if ((v18 & 1) != 0 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || -[_UIKeyboardStateManager insertAutoFillTextSuggestion:](v28, "insertAutoFillTextSuggestion:", v13)) && -[_UIKeyboardStateManager acceptWord:firstDelete:](v28, "acceptWord:firstDelete:", v12, [v12 deleteCount]))
        {
          if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
          {
LABEL_21:

            goto LABEL_22;
          }

          v19 = [(_UIKeyboardStateManager *)v28 inputDelegateManager];
          v20 = [v19 selectedTextRange];
          if (v20)
          {
            v21 = v20;
            v22 = [v4 inputText];

            if (!v22 && +[UIKeyboard usesInputSystemUI])
            {
              v23 = [(_UIKeyboardStateManager *)v28 _textChoicesAssistant];
              v24 = [(_UIKeyboardStateManager *)v28 inputDelegateManager];
              v25 = [v24 selectedTextRange];
              [v23 clearUnderlinesInRange:v25 animated:0];

              [(_UIKeyboardStateManager *)v28 dismissTextChoicePrompt];
            }

            goto LABEL_21;
          }
        }

        else
        {
          v19 = [(_UIKeyboardStateManager *)v28 inputDelegateManager];
          v26 = [v19 textInputDelegate];
          v27 = [v13 inputText];
          [(_UIKeyboardStateManager *)v28 replaceAllTextInResponder:v26 withText:v27];
        }

        goto LABEL_21;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

- (void)insertSticker:(id)a3
{
  v4 = a3;
  if (!+[UIKeyboard isKeyboardProcess]|| ([(_UIKeyboardStateManager *)self inputSystemSourceSession], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(_UIKeyboardStateManager *)self canInsertAdaptiveImageGlyph])
    {
      v10 = _UIStickerCreateAdaptiveImageGlyphFromSticker(v4);
      v11 = _UIKeyboardStickerLog();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Inserting adaptive image glyph", buf, 2u);
        }

        [(_UIKeyboardStateManager *)self insertAdaptiveImageGlyph:v10];
LABEL_19:

LABEL_30:
        [(_UIKeyboardStateManager *)self setPreviousInputString:0];
        goto LABEL_31;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Error: adaptiveImageGlyph is nil", v21, 2u);
      }
    }

    if ([(_UIKeyboardStateManager *)self canInsertEmojiImageTextAttachment])
    {
      v10 = _UIStickerCreateEmojiTextAttachmentFromSticker(v4);
      v13 = _UIKeyboardStickerLog();
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Inserting emoji image text attachment", v20, 2u);
        }

        [(_UIKeyboardStateManager *)self insertEmojiImageTextAttachment:v10];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Error: emojiTextAttachment is nil", v19, 2u);
      }
    }

    if (!v4)
    {
      v15 = _UIKeyboardStickerLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Error: sticker is nil", v18, 2u);
      }
    }

    v16 = _UIKeyboardStickerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Inserting non text attachment", v17, 2u);
    }

    [(_UIKeyboardStateManager *)self _insertStickerAsNonTextAttachment:v4];
    goto LABEL_30;
  }

  v6 = v5;
  v7 = _UIStickerCreateTextInputPayloadFromSticker(v4);
  if (v7)
  {
    v8 = [v6 textOperations];
    [v8 setCustomInfo:v7];

    v9 = [v6 textOperations];
    [v9 setCustomInfoType:0x1EFB7CA10];

    [v6 flushOperations];
  }

LABEL_31:
}

- (void)_insertStickerAsNonTextAttachment:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(_UIKeyboardStateManager *)self canInsertStickerAsTextInputPayload])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [objc_opt_class() keyboardWindow];
    v5 = [v10 screen];

    if (v5)
    {
      [v5 scale];
      v12 = v11;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = [v4 externalURI];
    v14 = [v4 representations];
    v15 = [v4 bakedInRep];
    v16 = [v4 metadata];
    v7 = _UIStickerItemProviderWithMetadata(v13, v14, v15, 1, v16, v12);

    if (!v7)
    {
      v17 = _UIKeyboardStickerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_error_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Error: itemProvider is nil", &v22, 2u);
      }
    }

    v18 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v8 = [v18 delegateRespectingForwardingDelegate:0];

    v19 = _UIKeyboardStickerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = 138412290;
      v23 = v21;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Inserting image. Responder: %@", &v22, 0xCu);
    }

    [v8 _insertItemFromProvider:v7 completionHandler:0];
    goto LABEL_19;
  }

  v5 = _UIStickerCreateTextInputPayloadFromSticker(v4);
  v6 = _UIKeyboardStickerLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Inserting payload", &v22, 2u);
    }

    v7 = +[UITextInputPayloadController sharedInstance];
    v8 = [v7 payloadDelegate];
    [v8 handlePayload:v5 withPayloadId:@"com.apple.messages.stageSticker"];
LABEL_19:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Error: payload is nil", &v22, 2u);
  }

  v5 = 0;
LABEL_20:
}

- (void)handleWebViewCredentialsSaveForWebsiteURL:(id)a3 user:(id)a4 password:(id)a5 passwordIsAutoGenerated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = [(_UIKeyboardStateManager *)self autofillController];
  v13 = [(_UIKeyboardStateManager *)self inputDelegate];
  [v14 handleWebviewCredentialsSaveForResponder:v13 WebsiteURL:v12 user:v11 password:v10 passwordIsAutoGenerated:v6];
}

- (BOOL)isTrackpadMode
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained isTrackpadMode];

  return v3;
}

- (CGRect)subtractKeyboardFrameFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained subtractKeyboardFrameFromRect:v9 inView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)adjustCapsLockDelayOverride
{
  v2 = -1.0;
  if (os_variant_has_internal_diagnostics())
  {
    if (TIGetCapsLockDelayOverrideInSecondsValue_onceToken[0] != -1)
    {
      dispatch_once(TIGetCapsLockDelayOverrideInSecondsValue_onceToken, &__block_literal_global_3776);
    }

    v3 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v4 = [v3 valueForPreferenceKey:@"CapsLockDelayOverrideInSeconds"];

    [v4 floatValue];
    v2 = v5;
  }

  v6 = UIApp;

  [v6 setCapsLockDelayOverride:v2];
}

- (void)clearCapsLockDelayOverrideTimer
{
  v3 = [(_UIKeyboardStateManager *)self updateCapsLockDelayOverrideForNonTyping];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self updateCapsLockDelayOverrideForNonTyping];
    [v4 cancel];

    [(_UIKeyboardStateManager *)self setUpdateCapsLockDelayOverrideForNonTyping:0];
  }
}

- (void)showCursorAccessory
{
  [(_UIInvalidatable *)self->m_hideCursorAccessoriesAssertion _invalidate];
  m_hideCursorAccessoriesAssertion = self->m_hideCursorAccessoriesAssertion;
  self->m_hideCursorAccessoriesAssertion = 0;

  m_showCursorAccessory = self->m_showCursorAccessory;
  self->m_showCursorAccessory = 0;
}

- (void)performKeyboardOutputAsInputViewControllerOutput:(id)a3 textInputSource:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(_UIInputViewControllerOutput);
  [(_UIInputViewControllerOutput *)v7 setSource:a4];
  v8 = [_UIInputViewKeyboardOutput outputWithKeyboardOutput:v6];

  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(_UIInputViewControllerOutput *)v7 setKeyboardOutputs:v9];

  [(_UIKeyboardStateManager *)self _performInputViewControllerOutput:v7];
}

- (BOOL)_shouldRequestInputManagerSyncForKeyboardOutputCallbacks:(id)a3
{
  v4 = a3;
  if ([v4 deletionCount])
  {
    v5 = [v4 insertionText];

    if (v5)
    {
      v6 = [v4 insertionText];
    }

    else
    {
      v6 = &stru_1EFB14550;
    }

    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 callShouldReplaceExtendedRange:objc_msgSend(v4 withText:"deletionCount") includeMarkedText:{v6, 0}];

    if (v9)
    {

      v7 = 0;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [v4 setDeletionCount:0];
      if (v5)
      {
        [v4 setInsertionText:0];

LABEL_15:
        v7 = 1;
        goto LABEL_16;
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = [v4 insertionText];

  if (v10)
  {
    v11 = [v4 insertionText];
    v12 = [(_UIKeyboardStateManager *)self callShouldInsertText:v11];

    if (!v12)
    {
      [v4 setInsertionText:0];
      goto LABEL_15;
    }
  }

LABEL_16:

  return v7;
}

- (void)_updateInputViewControllerOutput:(id)a3 forKeyboardOutput:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (v21 && v6 && ([v6 didBeginOutput] & 1) == 0)
  {
    v7 = [v6 insertionText];

    if (v7)
    {
      v8 = [v6 insertionText];
      v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [v8 rangeOfCharacterFromSet:v9];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v21 setShouldPostReturnKeyNotification:1];
        [(_UIKeyboardStateManager *)self cancelDictationOnSendReturnKeyPressed];
      }
    }

    if ([(_UIKeyboardStateManager *)self _shouldRequestInputManagerSyncForKeyboardOutputCallbacks:v6])
    {
      v11 = 1;
      v12 = v21;
    }

    else
    {
      v13 = [v21 requiresInputManagerSync];
      v12 = v21;
      v11 = v13;
    }

    [v12 setRequiresInputManagerSync:v11];
    if ([v6 positionOffset])
    {
      [v21 setRequiresInputManagerSync:1];
      v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v14 collapseSelectionAndAdjustByOffset:{objc_msgSend(v6, "positionOffset")}];

      if (+[UIKeyboard isKeyboardProcess])
      {
        [v21 setRequiresInputManagerSync:0];
      }

      else
      {
        [v6 setPositionOffset:0];
      }
    }

    v15 = [v6 insertionText];

    if (v15)
    {
      v16 = [v6 insertionText];
      v17 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v18 = [v16 rangeOfCharacterFromSet:v17];

      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(UITextInputTraits *)self->m_traits returnKeyGoesToNextResponder])
        {
          [v21 setShouldAdvanceResponder:1];
          [v21 setShouldPostReturnKeyNotification:0];
          if (v18)
          {
            v19 = [v6 insertionText];
            v20 = [v19 substringToIndex:v18];
            [v6 setInsertionText:v20];
          }

          else
          {
            [v6 setInsertionText:0];
          }
        }
      }
    }

    [v6 setDidBeginOutput:1];
  }
}

- (void)_processInputViewControllerKeyboardOutput:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke;
  v11[3] = &unk_1E70F5B18;
  v12 = v6;
  v13 = self;
  v15 = v8;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(_UIKeyboardStateManager *)self _performKeyboardOutput:v11 respectingForwardingDelegate:0];
}

- (void)_completePerformInputViewControllerOutput:(id)a3 executionContext:(id)a4
{
  v73 = a3;
  v6 = a4;
  if (([v73 requiresInputManagerSync] & 1) == 0 && self->m_didSyncDocumentStateToInputDelegate)
  {
    [v73 setRequiresInputManagerSync:1];
  }

  if ([v73 shouldAdvanceResponder])
  {
    v7 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v8 = [v7 _nextKeyResponder];
    [v8 becomeFirstResponder];
  }

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 currentInputMode];

  if ([v10 isExtensionInputMode])
  {
    v11 = [v73 primaryLanguage];
    if (v11)
    {
      v12 = v11;
      v13 = [v73 primaryLanguage];
      v14 = [v13 lowercaseString];
      v15 = [v14 hasPrefix:@"und"];

      if ((v15 & 1) == 0)
      {
        v16 = [v10 primaryLanguage];
        v17 = [v73 primaryLanguage];
        v18 = [v16 isEqualToString:v17];

        if ((v18 & 1) == 0)
        {
          v19 = [v73 primaryLanguage];
          [v10 setPrimaryLanguage:v19];

          v20 = +[UIKeyboardInputModeController sharedInputModeController];
          [v20 _inputModeChangedWhileContextTracked];

          v21 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v22 = [v21 preferencesActions];
          v23 = [v10 identifier];
          [v22 setLanguageAwareInputModeLastUsed:v23];

          if (self->m_hardwareKeyboardAttached)
          {
            [(_UIKeyboardStateManager *)self updateHardwareKeyboardLayout];
          }
        }

        v24 = MEMORY[0x1E695DF58];
        v25 = [v73 primaryLanguage];
        v26 = [v24 characterDirectionForLanguage:v25] == 2;

        if (self->m_currentDirection != v26)
        {
          self->m_currentDirection = v26;
          [(_UIKeyboardStateManager *)self setInitialDirection];
        }

        v27 = [MEMORY[0x1E696AD88] defaultCenter];
        [v27 postNotificationName:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

        v28 = [MEMORY[0x1E696AD88] defaultCenter];
        [v28 postNotificationName:@"UITextInputDidPersistFindUINotification" object:0];

        +[_UIKeyboardUsageTracking keyboardExtensionPrimaryLanguageChanged];
      }
    }
  }

  v29 = [v10 isExtensionInputMode];
  v30 = v73;
  if (v29)
  {
    v31 = [v73 hasDictation];

    v30 = v73;
    if (v31)
    {
      v32 = [v73 hasDictation];
      [v10 setExtensionInputModeHasDictation:{objc_msgSend(v32, "BOOLValue")}];

      v33 = +[UIPeripheralHost sharedInstance];
      v34 = [v33 inputViews];
      v35 = [v34 inputView];
      v36 = [v35 _rootInputWindowController];
      [v36 updateKeyboardDockViewVisibility];

      v30 = v73;
    }
  }

  if ([v30 shouldPostReturnKeyNotification])
  {
    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 postNotificationName:@"UIKeyboardReturnKeyPressed" object:0];
  }

  v38 = +[UIInputSwitcherView sharedInstance];
  if ([v73 shouldAdvanceInputMode])
  {
    v39 = [v10 identifier];
    v40 = [v39 isEqualToString:@"autofillsignup"];

    if (!v40)
    {
      [(_UIKeyboardStateManager *)self setInputModeToNextInPreferredListWithExecutionContext:v6];
      goto LABEL_58;
    }

    v41 = [(_UIKeyboardStateManager *)self autofillController];
    [v41 didOptOutOfAutofillSignup];

    v42 = [(_UIKeyboardStateManager *)self autofillController];
    [v42 optOutASPInTextField];

    v43 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v44 = [v43 inputSystemSourceSession];

    if (v44)
    {
      v45 = [v44 textOperations];
      [v45 setEditingActionSelector:sel_optOutASPInTextField];
      [v44 flushOperations];
    }

    self->m_usesSystemKeyboardForASP = 1;
    if (+[UIKeyboard usesInputSystemUI])
    {
      v46 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v47 = [v46 remoteInputViewHost];

      v48 = [v47 inputViewSet];
      v49 = [v48 hostedCustomInputView];
      if (v49)
      {
        v50 = v49;
        v51 = [v47 shouldShowDockView];

        if (v51)
        {
          [v47 setInputViewSet:0];
          [v47 updateInputViewsIfNecessary];
        }
      }

      else
      {
      }
    }

    [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:0];
    goto LABEL_49;
  }

  [v73 inputModeListTouchBegan];
  if (v52 != 0.0)
  {
    v53 = +[UIPeripheralHost sharedInstance];
    v54 = [v53 inputViews];
    v44 = [v54 inputView];

    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v56 = [WeakRetained layout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v58 = objc_loadWeakRetained(&self->_presentationDelegate);
      v59 = [v58 layout];
      [v38 setLayout:v59];
    }

    v60 = [v73 inputModeListTouchPhase];
    if (v60 < 2)
    {
      if (([v38 isVisible] & 1) == 0)
      {
        [v73 inputModeListFromLocation];
        [v44 convertPoint:0 toView:?];
        v62 = v61;
        v64 = v63;
        [v73 inputModeListTouchBegan];
        [v38 showAsHUDFromLocation:v44 withInputView:v62 touchBegan:{v64, v65}];
      }

      if ([v38 isVisible])
      {
        [v73 inputModeListUpdatePoint];
        [v44 convertPoint:v38 toView:?];
        [v38 updateSelectionWithPoint:?];
      }
    }

    else if (v60 == 3)
    {
      if ([v38 isVisible])
      {
        [v73 inputModeListUpdatePoint];
        [v44 convertPoint:v38 toView:?];
        [v38 selectItemAtPoint:?];
      }
    }

    else if (v60 == 4)
    {
      [v38 hide];
    }

LABEL_49:
    [v6 returnExecutionToParent];

    goto LABEL_58;
  }

  if ([v73 shouldDismiss])
  {
    [(_UIKeyboardStateManager *)self dismissKeyboard];
  }

  else if ([v73 proceedShouldReturn])
  {
    [(_UIKeyboardStateManager *)self proceedShouldReturnIfNeededForASP];
  }

  else if (([v73 setMarkedText] & 1) != 0 || objc_msgSend(v73, "unmarkText"))
  {
    self->m_textInputChangesIgnored = 1;
    if ([v73 setMarkedText])
    {
      v66 = [v73 markedText];
      v67 = [v73 selectedRange];
      v69 = v68;
      v70 = [v73 markedText];
      v71 = [v73 markedText];
      [(_UIKeyboardStateManager *)self setMarkedText:v66 selectedRange:v67 inputString:v69 lastInputString:v70 searchString:0 candidateOffset:v71 liveConversionSegments:0x7FFFFFFFFFFFFFFFLL highlighSegmentIndex:0, 0x7FFFFFFFFFFFFFFFLL];
    }

    if ([v73 unmarkText])
    {
      v72 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v72 unmarkText];
    }

    self->m_textInputChangesIgnored = 0;
  }

  else if ([v73 requiresInputManagerSync])
  {
    [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
  }

  [v6 returnExecutionToParent];
LABEL_58:
}

- (id)physicalKeyboardEventWithInput:(id)a3 inputFlags:(int)a4
{
  v5 = [UIPhysicalKeyboardEvent _eventWithInput:a3 inputFlags:*&a4];
  [v5 setSource:self->m_textInputSource];

  return v5;
}

- (void)optOutASPInTextField
{
  v3 = [(_UIKeyboardStateManager *)self autofillController];
  [v3 didOptOutOfAutofillSignup];

  v4 = [(_UIKeyboardStateManager *)self autofillController];
  [v4 optOutASPInTextField];
}

- (void)performTextOperationActionSelector:(SEL)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [(_UIKeyboardStateManager *)self arrowKeyHistory];
  [(_UIKeyboardStateManager *)self setArrowKeyHistory:0];
  if (sel_insertNewline_ == a3 || sel_insertNewlineIgnoringFieldEditor_ == a3)
  {
    if ([(_UIKeyboardStateManager *)self performSendAction])
    {
      goto LABEL_90;
    }

    v7 = @"\n";
    goto LABEL_80;
  }

  if (sel_insertLineBreak_ == a3)
  {
    v7 = @"\u2028";
    goto LABEL_80;
  }

  if (sel_performSendAction_ == a3)
  {
    [(_UIKeyboardStateManager *)self performSendAction];
    goto LABEL_90;
  }

  if (sel_performKeyboardActionButtonAction_ == a3)
  {
    [(_UIKeyboardStateManager *)self performKeyboardActionButtonAction];
    goto LABEL_90;
  }

  if (sel_deleteBackward_ == a3)
  {
    if ([(_UIKeyboardStateManager *)self callShouldDeleteWithWordCountForRapidDelete:2 characterCountForRapidDelete:3])
    {
      [(_UIKeyboardStateManager *)self deleteBackwardAndNotify:1];
    }
  }

  else
  {
    if (sel_deleteForward_ != a3)
    {
      if (sel_deleteToBeginningOfLine_ == a3)
      {
        WeakRetained = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [WeakRetained _deleteToStartOfLine];
        goto LABEL_89;
      }

      if (sel_deleteToEndOfParagraph_ == a3)
      {
        WeakRetained = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [WeakRetained _deleteToEndOfParagraph];
        goto LABEL_89;
      }

      if (sel_insertTab_ == a3 || sel_insertTabIgnoringFieldEditor_ == a3)
      {
        v13 = [(_UIKeyboardStateManager *)self textInputTraits];
        if ([v13 isSingleLineDocument])
        {
          v14 = [(_UIKeyboardStateManager *)self handleTabWithShift:0 beforePublicKeyCommands:0];

          if (v14)
          {
            goto LABEL_90;
          }
        }

        else
        {
        }

        v7 = @"\t";
      }

      else
      {
        if (sel_insertBacktab_ == a3)
        {
          goto LABEL_98;
        }

        if (sel_insertSingleQuoteIgnoringSubstitution_ == a3)
        {
          v7 = @"'";
        }

        else
        {
          if (sel_insertDoubleQuoteIgnoringSubstitution_ != a3)
          {
            if (sel_transpose_ == a3)
            {
              WeakRetained = [(_UIKeyboardStateManager *)self inputDelegate];
              [WeakRetained _transpose];
              goto LABEL_89;
            }

            if (sel_selectNextKeyView_ == a3)
            {
              v15 = self;
              v16 = 0;
              goto LABEL_99;
            }

            if (sel_selectPreviousKeyView_ != a3)
            {
              if (sel_deleteWordBackward_ != a3)
              {
                if (sel_moveWordLeft_ == a3)
                {
                  goto LABEL_105;
                }

                if (sel_moveWordRight_ == a3)
                {
                  goto LABEL_107;
                }

                if (sel_moveBackward_ == a3 || sel_moveLeft_ == a3)
                {
                  v22 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                  WeakRetained = v22;
                  v23 = 0;
                }

                else
                {
                  if (sel_moveBackwardAndModifySelection_ != a3 && sel_moveLeftAndModifySelection_ != a3)
                  {
                    if (sel_moveForward_ == a3 || sel_moveRight_ == a3)
                    {
                      v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      WeakRetained = v25;
                      v26 = 0;
                    }

                    else
                    {
                      if (sel_moveForwardAndModifySelection_ != a3 && sel_moveRightAndModifySelection_ != a3)
                      {
                        if (sel_moveWordLeftAndModifySelection_ == a3)
                        {
LABEL_117:
                          v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                          WeakRetained = v17;
                          v18 = 1;
                          goto LABEL_106;
                        }

                        if (sel_moveWordRightAndModifySelection_ == a3)
                        {
LABEL_118:
                          v20 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                          WeakRetained = v20;
                          v21 = 1;
                          goto LABEL_108;
                        }

                        if (sel_moveDown_ == a3)
                        {
                          v27 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                          WeakRetained = v27;
                          v28 = 0;
                        }

                        else
                        {
                          if (sel_moveDownAndModifySelection_ != a3)
                          {
                            if (sel_moveUp_ == a3)
                            {
                              v29 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                              WeakRetained = v29;
                              v30 = 0;
                            }

                            else
                            {
                              if (sel_moveUpAndModifySelection_ != a3)
                              {
                                if (sel_moveWordBackward_ != a3)
                                {
                                  if (sel_moveWordBackwardAndModifySelection_ != a3)
                                  {
                                    if (sel_moveWordForward_ != a3)
                                    {
                                      if (sel_moveWordForwardAndModifySelection_ != a3)
                                      {
                                        if (sel_moveToLeftEndOfLine_ == a3)
                                        {
                                          v31 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                          WeakRetained = v31;
                                          v32 = 0;
                                        }

                                        else
                                        {
                                          if (sel_moveToLeftEndOfLineAndModifySelection_ != a3)
                                          {
                                            if (sel_moveToRightEndOfLine_ == a3)
                                            {
                                              v33 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                              WeakRetained = v33;
                                              v34 = 0;
                                            }

                                            else
                                            {
                                              if (sel_moveToRightEndOfLineAndModifySelection_ != a3)
                                              {
                                                if (sel_moveToBeginningOfParagraph_ == a3)
                                                {
                                                  v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                  WeakRetained = v35;
                                                  v36 = 0;
                                                }

                                                else
                                                {
                                                  if (sel_moveToBeginningOfParagraphAndModifySelection_ != a3)
                                                  {
                                                    if (sel_moveToEndOfParagraph_ == a3)
                                                    {
                                                      v37 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                      WeakRetained = v37;
                                                      v38 = 0;
                                                    }

                                                    else
                                                    {
                                                      if (sel_moveToEndOfParagraphAndModifySelection_ != a3)
                                                      {
                                                        if (sel_moveToBeginningOfDocument_ == a3)
                                                        {
                                                          v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                          WeakRetained = v39;
                                                          v40 = 0;
                                                        }

                                                        else
                                                        {
                                                          if (sel_moveToBeginningOfDocumentAndModifySelection_ != a3)
                                                          {
                                                            if (sel_moveToEndOfDocument_ == a3)
                                                            {
                                                              v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                              WeakRetained = v41;
                                                              v42 = 0;
                                                            }

                                                            else
                                                            {
                                                              if (sel_moveToEndOfDocumentAndModifySelection_ != a3)
                                                              {
                                                                if (sel_cancelOperation_ == a3)
                                                                {
                                                                  WeakRetained = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                  v43 = [WeakRetained targetForAction:sel__cancelOperation_ withSender:0];
                                                                  v24 = v43;
                                                                  if (v43)
                                                                  {
                                                                    [v43 _cancelOperation:0];
                                                                  }

                                                                  else
                                                                  {
                                                                    [WeakRetained _nonDestructivelyResignFirstResponder];
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  if (sel_nonDestructivelyDismissKeyboard_ == a3)
                                                                  {
                                                                    [(_UIKeyboardStateManager *)self nonDestructivelyDismissKeyboard];
                                                                    goto LABEL_90;
                                                                  }

                                                                  if (sel_toggleBoldface_ == a3)
                                                                  {
                                                                    v44 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    if (!v44)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    v45 = v44;
                                                                    v46 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleBoldface_];

                                                                    if (!v46)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    WeakRetained = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    v24 = [WeakRetained _responderForEditing];
                                                                    [v24 toggleBoldface:0];
                                                                  }

                                                                  else if (sel_toggleItalics_ == a3)
                                                                  {
                                                                    v47 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    if (!v47)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    v48 = v47;
                                                                    v49 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleItalics_];

                                                                    if (!v49)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    WeakRetained = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    v24 = [WeakRetained _responderForEditing];
                                                                    [v24 toggleItalics:0];
                                                                  }

                                                                  else if (sel_toggleUnderline_ == a3)
                                                                  {
                                                                    v50 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    if (!v50)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    v51 = v50;
                                                                    v52 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleUnderline_];

                                                                    if (!v52)
                                                                    {
                                                                      goto LABEL_90;
                                                                    }

                                                                    WeakRetained = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                    v24 = [WeakRetained _responderForEditing];
                                                                    [v24 toggleUnderline:0];
                                                                  }

                                                                  else
                                                                  {
                                                                    if (sel_performUndo == a3)
                                                                    {
                                                                      v53 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                      v54 = [v53 _responderForEditing];
                                                                      WeakRetained = [v54 undoManager];

                                                                      if (WeakRetained && [WeakRetained canUndo])
                                                                      {
                                                                        [WeakRetained undo];
                                                                      }

                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_performRedo == a3)
                                                                    {
                                                                      v55 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                      v56 = [v55 _responderForEditing];
                                                                      WeakRetained = [v56 undoManager];

                                                                      if (WeakRetained && [WeakRetained canRedo])
                                                                      {
                                                                        [WeakRetained redo];
                                                                      }

                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_beginUndoGrouping == a3)
                                                                    {
                                                                      v57 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                      v58 = [v57 _responderForEditing];
                                                                      WeakRetained = [v58 undoManager];

                                                                      if (WeakRetained)
                                                                      {
                                                                        [WeakRetained beginUndoGrouping];
                                                                      }

                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_endUndoGrouping == a3)
                                                                    {
                                                                      v59 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                                                      v60 = [v59 _responderForEditing];
                                                                      WeakRetained = [v60 undoManager];

                                                                      if (WeakRetained)
                                                                      {
                                                                        [WeakRetained endUndoGrouping];
                                                                      }

                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_removeSelectedText == a3)
                                                                    {
                                                                      WeakRetained = +[UIDictationController sharedInstance];
                                                                      [WeakRetained removeSelectedText];
                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_handleRemoteKeyboardCameraEvent_selfDestruct == a3)
                                                                    {
                                                                      WeakRetained = +[UIKeyboardCameraSession activeSession];
                                                                      [WeakRetained endActiveSession];
                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_handleStickerEvent_presentCard == a3)
                                                                    {
                                                                      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
                                                                      [WeakRetained handleStickerEvent_presentCard];
                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_lookUpResponderChainForCustomInputView == a3)
                                                                    {
                                                                      [(_UIKeyboardStateManager *)self lookUpResponderChainForCustomInputView];
                                                                      goto LABEL_90;
                                                                    }

                                                                    if (sel_setupForAsyncDelegate == a3)
                                                                    {
                                                                      WeakRetained = +[UIDictationController sharedInstance];
                                                                      [WeakRetained setupForAsyncDelegate];
                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel__presentDictationMenuIfAllowed == a3)
                                                                    {
                                                                      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
                                                                      [WeakRetained _presentDictationMenuIfAllowed];
                                                                      goto LABEL_89;
                                                                    }

                                                                    if (sel_enableTransientSelectionMode == a3)
                                                                    {
                                                                      [(_UIKeyboardStateManager *)self enableTransientSelectionMode];
                                                                      goto LABEL_90;
                                                                    }

                                                                    if (sel_disableTransientSelectionMode == a3)
                                                                    {
                                                                      [(_UIKeyboardStateManager *)self disableTransientSelectionMode];
                                                                      goto LABEL_90;
                                                                    }

                                                                    if (sel_optOutASPInTextField == a3)
                                                                    {
                                                                      [(_UIKeyboardStateManager *)self optOutASPInTextField];
                                                                      goto LABEL_90;
                                                                    }

                                                                    if (sel_setCursorGlowViewMode == a3)
                                                                    {
                                                                      WeakRetained = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                                      v61 = [WeakRetained selectionDisplayInteraction];
                                                                      v24 = v61;
                                                                      v62 = 1;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (sel_setTrailingGlowViewMode != a3)
                                                                      {
                                                                        v8 = _UIKeyboardImplLog();
                                                                        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                                                                        {
                                                                          v63 = NSStringFromSelector(a3);
                                                                          v64 = 138412290;
                                                                          v65 = v63;
                                                                          _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unsupported action selector %@", &v64, 0xCu);
                                                                        }

                                                                        goto LABEL_90;
                                                                      }

                                                                      WeakRetained = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                                      v61 = [WeakRetained selectionDisplayInteraction];
                                                                      v24 = v61;
                                                                      v62 = 2;
                                                                    }

                                                                    [v61 _setGlowViewMode:v62];
                                                                  }
                                                                }

                                                                goto LABEL_113;
                                                              }

                                                              v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                              WeakRetained = v41;
                                                              v42 = 1;
                                                            }

                                                            v19 = [v41 _moveToEndOfDocument:v42 withHistory:v5];
LABEL_112:
                                                            v24 = v19;
                                                            [(_UIKeyboardStateManager *)self setArrowKeyHistory:v19];
LABEL_113:

                                                            goto LABEL_89;
                                                          }

                                                          v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                          WeakRetained = v39;
                                                          v40 = 1;
                                                        }

                                                        v19 = [v39 _moveToStartOfDocument:v40 withHistory:v5];
                                                        goto LABEL_112;
                                                      }

                                                      v37 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                      WeakRetained = v37;
                                                      v38 = 1;
                                                    }

                                                    v19 = [v37 _moveToEndOfParagraph:v38 withHistory:v5];
                                                    goto LABEL_112;
                                                  }

                                                  v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                                  WeakRetained = v35;
                                                  v36 = 1;
                                                }

                                                v19 = [v35 _moveToStartOfParagraph:v36 withHistory:v5];
                                                goto LABEL_112;
                                              }

                                              v33 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                              WeakRetained = v33;
                                              v34 = 1;
                                            }

                                            v19 = [v33 _moveToEndOfLine:v34 withHistory:v5];
                                            goto LABEL_112;
                                          }

                                          v31 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                          WeakRetained = v31;
                                          v32 = 1;
                                        }

                                        v19 = [v31 _moveToStartOfLine:v32 withHistory:v5];
                                        goto LABEL_112;
                                      }

                                      goto LABEL_118;
                                    }

LABEL_107:
                                    v20 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                    WeakRetained = v20;
                                    v21 = 0;
LABEL_108:
                                    v19 = [v20 _moveToEndOfWord:v21 withHistory:v5];
                                    goto LABEL_112;
                                  }

                                  goto LABEL_117;
                                }

LABEL_105:
                                v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                                WeakRetained = v17;
                                v18 = 0;
LABEL_106:
                                v19 = [v17 _moveToStartOfWord:v18 withHistory:v5];
                                goto LABEL_112;
                              }

                              v29 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                              WeakRetained = v29;
                              v30 = 1;
                            }

                            v19 = [v29 _moveUp:v30 withHistory:v5];
                            goto LABEL_112;
                          }

                          v27 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                          WeakRetained = v27;
                          v28 = 1;
                        }

                        v19 = [v27 _moveDown:v28 withHistory:v5];
                        goto LABEL_112;
                      }

                      v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      WeakRetained = v25;
                      v26 = 1;
                    }

                    v19 = [v25 _moveRight:v26 withHistory:v5];
                    goto LABEL_112;
                  }

                  v22 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                  WeakRetained = v22;
                  v23 = 1;
                }

                v19 = [v22 _moveLeft:v23 withHistory:v5];
                goto LABEL_112;
              }

              WeakRetained = [(_UIKeyboardStateManager *)self inputDelegateManager];
              [WeakRetained _deleteByWord];
LABEL_89:

              goto LABEL_90;
            }

LABEL_98:
            v15 = self;
            v16 = 1;
LABEL_99:
            [(_UIKeyboardStateManager *)v15 handleTabWithShift:v16 beforePublicKeyCommands:0];
            goto LABEL_90;
          }

          v7 = @"";
        }
      }

LABEL_80:
      [(_UIKeyboardStateManager *)self insertTextIfShould:v7];
      goto LABEL_90;
    }

    v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v10 = [v9 shouldDeleteForward];

    if (v10)
    {
      [(_UIKeyboardStateManager *)self deleteForwardAndNotify:1];
    }
  }

LABEL_90:
  v12 = [(_UIKeyboardStateManager *)self arrowKeyHistory];

  if (v12)
  {
    [(_UIKeyboardStateManager *)self updateForChangedSelection];
  }
}

- (void)setDocumentState:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (qword_1ED49D058 != -1)
      {
        dispatch_once(&qword_1ED49D058, &__block_literal_global_803);
      }

      v8 = [qword_1ED49D060 dateByAddingTimeInterval:14400.0];
      v9 = [MEMORY[0x1E695DF00] now];
      v10 = [v8 earlierDate:v9];

      if (v10 == v8)
      {
        v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D068) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = 134218242;
          v14 = 1801640960;
          v15 = 2114;
          v16 = @"Nil document state as argument to [UIKeyboardInput setDocumentState:]";
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Exception Code %llx - %{public}@", &v13, 0x16u);
        }

        v12 = getpid();
        __UISimulateCrash(v12);
      }
    }

    v4 = objc_alloc_init(MEMORY[0x1E69D9590]);
  }

  v5 = [(_UIKeyboardStateManager *)self documentState];
  v6 = [v4 isEqual:v5];

  [(TIKeyboardState *)self->m_keyboardState setDocumentState:v4];
  if ((v6 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained documentStateDidChange];
  }

  os_variant_has_internal_diagnostics();
}

- (id)_rtiDocumentStateForAutoFillPopover
{
  if (+[UIKeyboard inputUIOOP])
  {
    v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v4 = [v3 documentState];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C6F38]);
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    v3 = [v5 textInputView];

    v6 = [v3 window];
    [v3 bounds];
    [v3 convertRect:v6 toView:?];
    [v4 setClientFrameInWindow:?];
    [v4 clientFrameInWindow];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v6 screen];
    v16 = [v15 coordinateSpace];
    [v6 convertRect:v16 toCoordinateSpace:{v8, v10, v12, v14}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    if ([v6 _isHostedInAnotherProcess])
    {
      v25 = [v6 windowScene];
      v26 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v25];
      [v26 hostedViewReference];
      v28 = v27;
      v30 = v29;

      v18 = v18 + v28;
      v20 = v20 + v30;
    }

    [v4 setClientFrameInEntitySpace:{v18, v20, v22, v24}];
    v31 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v32 = [v31 selectedTextRange];
    v33 = [v32 start];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v36 = [(_UIKeyboardStateManager *)self inputDelegate];
      v35 = [v36 beginningOfDocument];
    }

    v37 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v37 caretRectForPosition:v35];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = [v3 window];
    [v3 convertRect:v46 toView:{v39, v41, v43, v45}];
    [v4 setCaretRectInWindow:?];

    v47 = [(_UIKeyboardStateManager *)self documentState];
    [v4 setDocumentState:v47];
  }

  return v4;
}

- (void)didClearText
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 forwardingInputDelegate];

  if (!v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    if (v5)
    {
      v7 = v5;
      v6 = [v5 textOperations];
      [v6 setTextToAssert:&stru_1EFB14550];

      [v7 flushOperations];
      v5 = v7;
    }
  }
}

- (BOOL)callShouldInsertText:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 keyInputDelegate];

  LOBYTE(v5) = [(_UIKeyboardStateManager *)self callShouldInsertText:v4 onDelegate:v6];
  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v8 = [v7 keyInputDelegate];
  LOBYTE(v4) = v6 == v8;

  return v4 & v5;
}

- (BOOL)insertTextIfShould:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self callShouldInsertText:v4];
  if (v5)
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v6 insertText:v4];
  }

  return v5;
}

- (BOOL)performSendAction
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained performSendAction];

  return v3;
}

- (void)performKeyboardActionButtonAction
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained performKeyboardActionButtonAction];
}

- (BOOL)usesAutoDeleteWord
{
  if ([(UITextInputTraits *)self->m_traits isSecureTextEntry])
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self inputManagerState];
  v5 = [v4 usesAutoDeleteWord];

  return v5;
}

- (BOOL)shouldRapidDelete
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 legacyInputDelegate];
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(_UIKeyboardStateManager *)self shouldRapidDeleteWithDelegate];

  return v5;
}

- (BOOL)callShouldDeleteWithWordCountForRapidDelete:(int)a3 characterCountForRapidDelete:(int)a4
{
  v5 = *&a3;
  self->m_textInputChangesIgnored = 1;
  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v8 = [v7 legacyInputDelegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    v13 = [(_UIKeyboardStateManager *)self inputDelegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      v31 = 1;
      goto LABEL_20;
    }

    v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v16 = [v15 selectedTextRange];

    if ([v16 isEmpty])
    {
      v17 = [(_UIKeyboardStateManager *)self inputDelegate];
      v18 = [v16 start];
      v19 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v20 = [v19 beginningOfDocument];
      v21 = [v17 comparePosition:v18 toPosition:v20];

      if (v21)
      {
        v22 = [(_UIKeyboardStateManager *)self inputDelegate];
        v23 = [v16 start];
        v24 = [v22 positionFromPosition:v23 offset:-1];

        if (v24)
        {
          v25 = [(_UIKeyboardStateManager *)self inputDelegate];
          v26 = [v16 end];
          v27 = [v25 textRangeFromPosition:v24 toPosition:v26];

          v16 = v25;
        }

        else
        {
          v27 = 0;
        }

        v16 = v27;
      }
    }

    if (!v16)
    {
      v31 = 1;
      goto LABEL_19;
    }

    v28 = [(_UIKeyboardStateManager *)self inputDelegate];
    v31 = [v28 shouldChangeTextInRange:v16 replacementText:&stru_1EFB14550];
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  if (![(_UIKeyboardStateManager *)self shouldRapidDeleteWithDelegate])
  {
    v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v28 = [v16 legacyInputDelegate];
    v29 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v30 = [v29 legacyInputDelegate];
    v31 = [v28 keyboardInputShouldDelete:v30];

    goto LABEL_18;
  }

  v10 = [(_UIKeyboardStateManager *)self usesAutoDeleteWord];
  v11 = [(_UIKeyboardStateManager *)self inputDelegate];
  v12 = v11;
  if (v10)
  {
    [v11 _expandSelectionToStartOfWordsBeforeCaretSelection:v5];
  }

  else
  {
    [v11 _extendCurrentSelection:-a4];
  }

  v32 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v33 = [v32 legacyInputDelegate];
  v34 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v35 = [v34 legacyInputDelegate];
  v31 = [v33 keyboardInputShouldDelete:v35];

  v36 = [(_UIKeyboardStateManager *)self inputDelegate];
  [v36 _setCaretSelectionAtEndOfSelection];

  [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
LABEL_20:
  self->m_textInputChangesIgnored = 0;
  return v31;
}

- (void)callChangedDelegate
{
  v3 = [(_UIKeyboardStateManager *)self changedDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self changedDelegate];
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 legacyInputDelegate];
    [v5 keyboardInputChanged:v7];
  }

  [(_UIKeyboardStateManager *)self setChangedDelegate:0];
}

- (void)setChangedDelegate
{
  v3 = [(_UIKeyboardStateManager *)self changedDelegate];

  if (!v3)
  {
    v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v5 = [v4 keyInputDelegate];
    [(_UIKeyboardStateManager *)self setChangedDelegate:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateObserverState];

  v7 = [(_UIKeyboardStateManager *)self textSelectionController];
  [v7 textDidChange];
}

- (BOOL)shouldAllowRepeatEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _modifiedInput];
  v6 = [v5 _isDelete];

  if ((v6 & 1) != 0 || [(_UIKeyboardStateManager *)self canPresentPressAndHoldPopover:v4])
  {
    goto LABEL_7;
  }

  if (![v4 _hidEvent])
  {
    LOBYTE(v7) = 0;
    goto LABEL_8;
  }

  if (qword_1ED49D078 != -1)
  {
    dispatch_once(&qword_1ED49D078, &__block_literal_global_816);
  }

  if (([v4 _keyCode] - 79) < 4)
  {
LABEL_7:
    LOBYTE(v7) = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = qword_1ED49D070;
    v7 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v4 _modifiedInput];
          v14 = [v13 rangeOfCharacterFromSet:v12];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v7) = 1;
            goto LABEL_20;
          }
        }

        v7 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

LABEL_8:

  return v7;
}

- (id)_targetForResponderCommand:(SEL)a3
{
  v4 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v5 = [v4 _responderForEditing];
  v6 = _UIResponderTargetForAction(v5, a3, 0);

  return v6;
}

- (BOOL)_canHandleResponderCommand:(SEL)a3
{
  v4 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:?];
  LOBYTE(a3) = [v4 canPerformAction:a3 withSender:0];

  return a3;
}

- (BOOL)_canHandleResponderCommandConservatively:(SEL)a3
{
  v5 = [(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents];
  v6 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:a3];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 canPerformAction:a3 withSender:0];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();
  }

  v9 = v8;

  return v9 & 1;
}

- (BOOL)_cancelOperation:(BOOL)a3 testOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  LOBYTE(v4) = [WeakRetained _cancelOperation:v5 testOnly:v4];

  return v4;
}

- (BOOL)isCurrentEditResponderWebKit
{
  if (WebKitFramework)
  {
    v3 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 asyncCapableInputDelegate];
  v7 = v6 != 0;

  return (isKindOfClass | v7) & 1;
}

- (BOOL)handleKeyCommand:(id)a3 repeatOkay:(BOOL *)a4 beforePublicKeyCommands:(BOOL)a5
{
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___UIKeyboardStateManager_handleKeyCommand_repeatOkay_beforePublicKeyCommands___block_invoke;
  v11[3] = &unk_1E70FD2A8;
  v15 = a5;
  v13 = &v16;
  v11[4] = self;
  v9 = v8;
  v12 = v9;
  v14 = a4;
  [(_UIKeyboardStateManager *)self performOperations:v11 withTextInputSource:0];
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (BOOL)shouldShowKeyboardMenu
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];
  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v6 = [v5 _disableAutomaticKeyboardUI] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)inputModeSwitcherVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained inputModeSwitcherVisible];

  return v3;
}

- (void)setInputModeSwitcherVisibleInRemote:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setInputModeSwitcherVisibleInRemote:v3];
}

- (unint64_t)handleKeyCommand:(id)a3 repeatOkay:(BOOL *)a4 options:(unint64_t)a5
{
  v266 = a5;
  v6 = a3;
  v311 = 0;
  v312 = &v311;
  v313 = 0x2020000000;
  v314 = 1;
  v310 = 1;
  v309 = 0;
  v7 = [(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents];
  v8 = [(_UIKeyboardStateManager *)self liveConversionEnabled];
  v9 = v6;
  v10 = [v9 _cloneEvent];

  [v10 _privatize];
  v265 = v9;
  v11 = [v10 _keyCode];
  v12 = [v10 _gsModifierFlags];
  v263 = v12 & 0x220000;
  if ([v10 _isGlobeKey])
  {
    if ([v10 _isKeyDown])
    {
      [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:v10];
      v13 = 1;
    }

    else
    {
      if (self->m_previousGlobeKeyEvent)
      {
        [v10 _hidEvent];
        v14 = BKSHIDEventGetBaseAttributes();
        v13 = ([v14 options] & 0x80) == 0;
      }

      else
      {
        v13 = 1;
      }

      [v10 timestamp];
      v16 = v15;
      [(UIEvent *)self->m_previousGlobeKeyEvent timestamp];
      if (v16 - v17 > 0.9)
      {
        v13 = 1;
      }

      [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:0];
    }
  }

  else
  {
    if ((v12 & 0x4000000) != 0)
    {
      [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:0];
    }

    v13 = 0;
  }

  v18 = [MEMORY[0x1E69D4E18] sharedInstance];
  v305[0] = MEMORY[0x1E69E9820];
  v305[1] = 3221225472;
  v305[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke;
  v305[3] = &unk_1E70FD2D0;
  v307 = (v12 & 0x220000) != 0;
  v308 = (v12 & 0x1010000) != 0;
  v267 = v10;
  v306 = v267;
  [v18 logBlock:v305 domain:?];

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || [UIApp _areKeyboardHUDsEnabled])
  {
    v19 = [v267 _isGlobeKey];
    if (v266 & 1) != 0 || ((v19 ^ 1))
    {
      v20 = ((v13 | !-[_UIKeyboardStateManager shouldShowKeyboardMenu](self, "shouldShowKeyboardMenu")) & 1) == 0 && ([v267 keyEventForwardedFromInputUIHost] & 1) == 0 && -[_UIKeyboardStateManager handleInputSwitcherForKeyEvent:](self, "handleInputSwitcherForKeyEvent:", v265);
    }

    else
    {
      v20 = 1;
    }

    if (-[_UIKeyboardStateManager inputModeSwitcherVisible](self, "inputModeSwitcherVisible") && [v267 _isGlobeKey] && objc_msgSend(v267, "_isKeyDown"))
    {
      v21 = +[UIKeyShortcutHUDService sharedHUDService];
      [v21 preventUnintendedSystemHUDPresentationIfNeeded];
    }

    if (v20)
    {
      if (a4)
      {
        *a4 = 0;
      }

      v22 = 1;
      goto LABEL_711;
    }
  }

  v258 = v266 & 2;
  if (v266)
  {
    v23 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v24 = [v23 keyInputDelegate];

    if (!v24)
    {
      v22 = 0;
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_711;
    }
  }

  else if ((v266 & 2) == 0)
  {
    v262 = [(_UIKeyboardStateManager *)self arrowKeyHistory];
    [(_UIKeyboardStateManager *)self setArrowKeyHistory:0];
    v256 = 0;
    goto LABEL_37;
  }

  v262 = 0;
  v256 = 1;
LABEL_37:
  [(_UIKeyboardStateManager *)self setHandlingKeyCommandFromHardwareKeyboard:1];
  v25 = [(_UIKeyboardStateManager *)self hasEditableMarkedText];
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    v26 = [(_UIKeyboardStateManager *)self inputManagerState];
    v27 = [v26 supportsSetPhraseBoundary] ^ 1;
  }

  else
  {
    v27 = 0;
  }

  if (!self->m_candidateList || [(_UIKeyboardStateManager *)self isPredictionViewControllerVisible])
  {
    v255 = 0;
    v28 = 0;
    v253 = 0;
    v29 = 0;
    goto LABEL_52;
  }

  if ([(UIKeyboardCandidateList *)self->m_candidateList hasCandidates]&& [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasCandidates])
  {
    v30 = [(TIKeyboardState *)self->m_keyboardState inputForMarkedText];
    if ([v30 length])
    {

LABEL_50:
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v33 = [WeakRetained candidateController];
      v255 = [v33 inlineRectIsVertical];

      v29 = [(UIKeyboardCandidateList *)self->m_candidateList isExtendedList];
      v28 = 1;
      goto LABEL_51;
    }

    v31 = [(UIKeyboardCandidateList *)self->m_candidateList currentIndex];

    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }
  }

  v255 = 0;
  v28 = 0;
  v29 = 0;
LABEL_51:
  v253 = 1;
LABEL_52:
  v254 = v28;
  v34 = v12 & 0x5D90000 | v11;
  if (v8)
  {
    v35 = v25;
  }

  else
  {
    v35 = v28;
  }

  v259 = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_2;
  aBlock[3] = &unk_1E70FD2F8;
  aBlock[4] = self;
  v257 = _Block_copy(aBlock);
  v303[0] = MEMORY[0x1E69E9820];
  v303[1] = 3221225472;
  v303[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_3;
  v303[3] = &unk_1E70FD2F8;
  v303[4] = self;
  v261 = _Block_copy(v303);
  v302[0] = MEMORY[0x1E69E9820];
  v302[1] = 3221225472;
  v302[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_4;
  v302[3] = &unk_1E70F3CB0;
  v302[4] = self;
  v36 = _Block_copy(v302);
  v300[0] = MEMORY[0x1E69E9820];
  v300[1] = 3221225472;
  v300[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_5;
  v300[3] = &unk_1E70FD320;
  v300[4] = self;
  v37 = v36;
  v301 = v37;
  v260 = _Block_copy(v300);
  [v267 setKeyCommandCode:v12 & 0x5D90000 | v11];
  [v267 setKeyCommandHandlingBeforePublic:v266 & 1];
  v38 = v266 & v7;
  if (v34 > 524367)
  {
    if (v34 <= 4194385)
    {
      if (v34 <= 1048656)
      {
        if (v34 > 1048649)
        {
          if (v34 <= 1048654)
          {
            if (v34 != 1048650)
            {
              v40 = 1048653;
              goto LABEL_155;
            }

            goto LABEL_157;
          }

          if (v34 == 1048655)
          {
            goto LABEL_151;
          }

          v41 = 1048656;
LABEL_148:
          if (v34 != v41)
          {
            goto LABEL_258;
          }

LABEL_149:
          v309 = 1;
          if (v260[2]())
          {
LABEL_150:
            v39 = [(_UIKeyboardStateManager *)self handleMoveCursorToEndOfLine:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 savedHistory:v262 force:v255 ^ 1 canHandleSelectableInputDelegateCommand:v261 keyEvent:v267];
            goto LABEL_302;
          }

          v76 = objc_loadWeakRetained(&self->_presentationDelegate);
          v77 = [v76 isPressAndHoldPopoverPresented];

          if (v77)
          {
LABEL_251:
            v89 = objc_loadWeakRetained(&self->_presentationDelegate);
            v90 = [v89 pressAndHoldPopoverController];
            v91 = [v90 handleHardwareKeyboardEvent:v267];
            *(v312 + 24) = v91;

            v44 = 1;
            goto LABEL_303;
          }

LABEL_152:
          v39 = [(_UIKeyboardStateManager *)self handleMoveCursorToStartOfLine:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 savedHistory:v262 force:v255 ^ 1 canHandleSelectableInputDelegateCommand:v261 keyEvent:v267];
          goto LABEL_302;
        }

        if (v34 != 524368)
        {
          if (v34 != 524369)
          {
            if (v34 != 524370)
            {
              goto LABEL_258;
            }

LABEL_221:
            v309 = 1;
            if (!v25)
            {
              if (v266)
              {
                goto LABEL_258;
              }

              if (v27)
              {
                goto LABEL_291;
              }

              if (+[UIKeyboard isKeyboardProcess])
              {
                v84 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                v85 = [v84 shouldRespectForwardingInputDelegate];

                if ((v85 & 1) == 0)
                {
                  if ((v266 & 2) != 0)
                  {
                    goto LABEL_649;
                  }

                  goto LABEL_648;
                }
              }

              v86 = v261[2](v261, sel__moveToStartOfParagraph_withHistory_);
              v44 = 0;
              *(v312 + 24) = v86;
              if (v266 & 2) != 0 || ((v86 ^ 1))
              {
                goto LABEL_303;
              }

              v277[0] = MEMORY[0x1E69E9820];
              v277[1] = 3221225472;
              v277[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_10;
              v277[3] = &unk_1E70F5AF0;
              v277[4] = self;
              v279 = (v12 & 0x220000) != 0;
              v278 = v262;
              [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v277];
              v63 = v278;
              goto LABEL_267;
            }

            if ((v255 & 1) == 0)
            {
              goto LABEL_291;
            }

            v44 = 1;
            goto LABEL_261;
          }

LABEL_161:
          v309 = 1;
          if (!v25)
          {
            if (v266)
            {
              goto LABEL_258;
            }

            if (v27)
            {
              goto LABEL_291;
            }

            if (+[UIKeyboard isKeyboardProcess])
            {
              v78 = [(_UIKeyboardStateManager *)self inputDelegateManager];
              v79 = [v78 shouldRespectForwardingInputDelegate];

              if ((v79 & 1) == 0)
              {
                if ((v266 & 2) != 0)
                {
                  goto LABEL_649;
                }

                goto LABEL_648;
              }
            }

            v80 = v261[2](v261, sel__moveToEndOfParagraph_withHistory_);
            v44 = 0;
            *(v312 + 24) = v80;
            if (v266 & 2) != 0 || ((v80 ^ 1))
            {
              goto LABEL_303;
            }

            v283[0] = MEMORY[0x1E69E9820];
            v283[1] = 3221225472;
            v283[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_8;
            v283[3] = &unk_1E70F5AF0;
            v283[4] = self;
            v285 = (v12 & 0x220000) != 0;
            v284 = v262;
            [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v283];
            v63 = v284;
            goto LABEL_267;
          }

          v44 = 0;
          if ((v255 & 1) == 0)
          {
            goto LABEL_303;
          }

LABEL_261:
          v55 = 1;
          goto LABEL_262;
        }

LABEL_210:
        v309 = 1;
        v67 = v260[2]();
        v68 = v67;
        if (!v25)
        {
          if (v266)
          {
            goto LABEL_258;
          }

          if (v27)
          {
            goto LABEL_291;
          }

          if (+[UIKeyboard isKeyboardProcess])
          {
            v94 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v95 = [v94 shouldRespectForwardingInputDelegate];

            if ((v95 & 1) == 0)
            {
              if ((v266 & 2) != 0)
              {
                goto LABEL_649;
              }

              goto LABEL_648;
            }
          }

          v286[0] = MEMORY[0x1E69E9820];
          v286[1] = 3221225472;
          v286[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_7;
          v286[3] = &unk_1E70FD348;
          v290 = v68;
          v289 = &v311;
          v291 = (v266 & 2) >> 1;
          v288 = v261;
          v286[4] = self;
          v292 = (v12 & 0x220000) != 0;
          v287 = v262;
          [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v286];

          v63 = v288;
          goto LABEL_267;
        }

        if (v255)
        {
          v69 = objc_loadWeakRetained(&self->_presentationDelegate);
          v70 = [v69 isPressAndHoldPopoverPresented];

          if (!v70)
          {
            goto LABEL_291;
          }

          goto LABEL_251;
        }

        v44 = v67 ^ 1;
        goto LABEL_261;
      }

      if (v34 > 4194379)
      {
        if (v34 <= 4194383)
        {
          if (v34 != 4194380)
          {
            v42 = 4194383;
LABEL_166:
            if (v34 != v42)
            {
              goto LABEL_258;
            }

            v309 = 1;
            v44 = v260[2]();
            if (!v25)
            {
              if (v266)
              {
                goto LABEL_258;
              }

              if (v27)
              {
                goto LABEL_291;
              }

              if (+[UIKeyboard isKeyboardProcess])
              {
                v92 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                v93 = [v92 shouldRespectForwardingInputDelegate];

                if ((v93 & 1) == 0)
                {
                  if ((v266 & 2) != 0)
                  {
                    goto LABEL_649;
                  }

                  goto LABEL_648;
                }
              }

              v293[0] = MEMORY[0x1E69E9820];
              v293[1] = 3221225472;
              v293[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_6;
              v293[3] = &unk_1E70FD348;
              v297 = v44;
              v296 = &v311;
              v298 = (v266 & 2) >> 1;
              v295 = v261;
              v293[4] = self;
              v299 = (v12 & 0x220000) != 0;
              v294 = v262;
              [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v293];

              v63 = v295;
              goto LABEL_267;
            }

            if (v255)
            {
              v53 = objc_loadWeakRetained(&self->_presentationDelegate);
              v54 = [v53 isPressAndHoldPopoverPresented];

              if (!v54)
              {
                goto LABEL_291;
              }

              goto LABEL_251;
            }

            goto LABEL_261;
          }

LABEL_180:
          v309 = 1;
          if (v259)
          {
            goto LABEL_291;
          }

          if (v266)
          {
            goto LABEL_258;
          }

          if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 shouldRespectForwardingInputDelegate], v56, (v57 & 1) != 0))
          {
            if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]&& ![(UITextInputTraits *)self->m_traits displaySecureTextUsingPlainText])
            {
              v101 = [(_UIKeyboardStateManager *)self inputDelegateManager];
              v102 = [v101 canHandleInputDelegateCommandAction:5];
              *(v312 + 24) = v102;

              v44 = 0;
              if ((v266 & 2) != 0 || (v312[3] & 1) == 0)
              {
                goto LABEL_303;
              }

              v75 = [(_UIKeyboardStateManager *)self inputDelegateManager];
              [v75 _deleteToEndOfLine];
LABEL_290:

              goto LABEL_291;
            }

            v58 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v59 = [v58 canHandleInputDelegateCommandAction:3];
            *(v312 + 24) = v59;

            v44 = 0;
            if ((v266 & 2) != 0 || (v312[3] & 1) == 0)
            {
              goto LABEL_303;
            }

            [(_UIKeyboardStateManager *)self setDisableSmartInsertDelete:1];
            v50 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            [v50 _deleteForwardByWord];
            goto LABEL_189;
          }

          if ((v266 & 2) != 0)
          {
            goto LABEL_649;
          }

LABEL_648:
          [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v267];
          goto LABEL_649;
        }

        if (v34 != 4194384)
        {
          goto LABEL_161;
        }

        goto LABEL_210;
      }

      if (v34 != 1048657)
      {
        if (v34 != 1048658)
        {
          v43 = 4194346;
LABEL_122:
          if (v34 != v43)
          {
            goto LABEL_258;
          }

          v309 = 1;
          if (v259)
          {
            goto LABEL_291;
          }

          if (v266)
          {
            goto LABEL_258;
          }

          if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 shouldRespectForwardingInputDelegate], v46, (v47 & 1) != 0))
          {
            if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]&& ![(UITextInputTraits *)self->m_traits displaySecureTextUsingPlainText])
            {
              v103 = [(_UIKeyboardStateManager *)self inputDelegateManager];
              v104 = [v103 canHandleInputDelegateCommandAction:4];
              *(v312 + 24) = v104;

              v44 = 0;
              if ((v266 & 2) != 0 || (v312[3] & 1) == 0)
              {
                goto LABEL_303;
              }

              goto LABEL_220;
            }

            v48 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v49 = [v48 canHandleInputDelegateCommandAction:2];
            *(v312 + 24) = v49;

            v44 = 0;
            if ((v266 & 2) != 0 || (v312[3] & 1) == 0)
            {
              goto LABEL_303;
            }

            [(_UIKeyboardStateManager *)self setDisableSmartInsertDelete:1];
            v50 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            [v50 _deleteByWord];
LABEL_189:

            [(_UIKeyboardStateManager *)self setDisableSmartInsertDelete:0];
            goto LABEL_291;
          }

          if ((v266 & 2) != 0)
          {
            goto LABEL_649;
          }

          goto LABEL_648;
        }

        goto LABEL_174;
      }

LABEL_177:
      v309 = 1;
      if (v25)
      {
        v44 = 0;
        if ((v255 & 1) == 0)
        {
          goto LABEL_303;
        }

        goto LABEL_179;
      }

      if (v266)
      {
        goto LABEL_258;
      }

      if (v27)
      {
        goto LABEL_291;
      }

      if (+[UIKeyboard isKeyboardProcess])
      {
        v64 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v65 = [v64 shouldRespectForwardingInputDelegate];

        if ((v65 & 1) == 0)
        {
          if ((v266 & 2) != 0)
          {
            goto LABEL_649;
          }

          goto LABEL_648;
        }
      }

      v66 = v261[2](v261, sel__moveToEndOfDocument_withHistory_);
      v44 = 0;
      *(v312 + 24) = v66;
      if (v266 & 2) != 0 || ((v66 ^ 1))
      {
        goto LABEL_303;
      }

      v280[0] = MEMORY[0x1E69E9820];
      v280[1] = 3221225472;
      v280[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_9;
      v280[3] = &unk_1E70F5AF0;
      v280[4] = self;
      v282 = (v12 & 0x220000) != 0;
      v281 = v262;
      [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v280];
      v63 = v281;
LABEL_267:

      goto LABEL_291;
    }

    if (v34 > 16777257)
    {
      if (v34 <= 16777294)
      {
        if (v34 == 16777258)
        {
          goto LABEL_214;
        }

        if (v34 != 16777290)
        {
          v40 = 16777293;
          goto LABEL_155;
        }

LABEL_157:
        v309 = 1;
        v39 = [(_UIKeyboardStateManager *)self handleMoveCursorToStartOfLine:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 savedHistory:v262 force:1 canHandleSelectableInputDelegateCommand:v261 keyEvent:v267];
        goto LABEL_302;
      }

      if (v34 <= 16777296)
      {
        if (v34 == 16777295)
        {
          goto LABEL_151;
        }

        v41 = 16777296;
        goto LABEL_148;
      }

      if (v34 == 16777297)
      {
        goto LABEL_177;
      }

      v52 = 16777298;
    }

    else
    {
      if (v34 <= 8388686)
      {
        if (v34 != 4194386)
        {
          if (v34 != 8388682)
          {
            v40 = 8388685;
            goto LABEL_155;
          }

          goto LABEL_157;
        }

        goto LABEL_221;
      }

      if (v34 <= 8388688)
      {
        if (v34 == 8388687)
        {
          goto LABEL_151;
        }

        v41 = 8388688;
        goto LABEL_148;
      }

      if (v34 == 8388689)
      {
        goto LABEL_177;
      }

      v52 = 8388690;
    }

    if (v34 != v52)
    {
      goto LABEL_258;
    }

LABEL_174:
    v309 = 1;
    if (v25)
    {
      if (!v255)
      {
        goto LABEL_291;
      }

      v44 = 1;
LABEL_179:
      v55 = 4;
LABEL_262:
      [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:v44 granularity:v55];
      goto LABEL_291;
    }

    if (v266)
    {
      goto LABEL_258;
    }

    if (v27)
    {
      goto LABEL_291;
    }

    if (+[UIKeyboard isKeyboardProcess])
    {
      v60 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v61 = [v60 shouldRespectForwardingInputDelegate];

      if ((v61 & 1) == 0)
      {
        if ((v266 & 2) != 0)
        {
          goto LABEL_649;
        }

        goto LABEL_648;
      }
    }

    v62 = v261[2](v261, sel__moveToStartOfDocument_withHistory_);
    v44 = 0;
    *(v312 + 24) = v62;
    if (v266 & 2) != 0 || ((v62 ^ 1))
    {
      goto LABEL_303;
    }

    v274[0] = MEMORY[0x1E69E9820];
    v274[1] = 3221225472;
    v274[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_11;
    v274[3] = &unk_1E70F5AF0;
    v274[4] = self;
    v276 = (v12 & 0x220000) != 0;
    v275 = v262;
    [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v274];
    v63 = v275;
    goto LABEL_267;
  }

  if (v34 > 81)
  {
    if (v34 <= 65614)
    {
      if (v34 > 155)
      {
        if (v34 <= 65609)
        {
          if (v34 == 156)
          {
            *(v312 + 24) = 1;
            [(_UIKeyboardStateManager *)self handleClear];
            goto LABEL_291;
          }

          if (v34 != 65578)
          {
            goto LABEL_258;
          }

LABEL_214:
          v309 = 1;
          if (v259)
          {
            goto LABEL_291;
          }

          if (v266)
          {
            goto LABEL_258;
          }

          if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v71 = objc_claimAutoreleasedReturnValue(), v72 = [v71 shouldRespectForwardingInputDelegate], v71, (v72 & 1) != 0))
          {
            v73 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v74 = [v73 canHandleInputDelegateCommandAction:4];
            *(v312 + 24) = v74;

            v44 = 0;
            if ((v266 & 2) != 0 || (v312[3] & 1) == 0)
            {
              goto LABEL_303;
            }

LABEL_220:
            v75 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            [v75 _deleteToStartOfLine];
            goto LABEL_290;
          }

          if ((v266 & 2) == 0)
          {
            goto LABEL_648;
          }

LABEL_649:
          v44 = 0;
          *(v312 + 24) = 1;
          goto LABEL_303;
        }

        if (v34 != 65610)
        {
          v40 = 65613;
LABEL_155:
          if (v34 == v40)
          {
            v309 = 1;
            v39 = [(_UIKeyboardStateManager *)self handleMoveCursorToEndOfLine:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 savedHistory:v262 force:1 canHandleSelectableInputDelegateCommand:v261 keyEvent:v267];
            goto LABEL_302;
          }

          goto LABEL_258;
        }

        goto LABEL_157;
      }

      switch(v34)
      {
        case 82:
          v309 = 1;
          LOBYTE(v252) = v259 ^ 1;
          v39 = [(_UIKeyboardStateManager *)self handleVerticalArrow:0 shiftDown:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v253 inputDelegateCommandEnabled:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
          goto LABEL_302;
        case 144:
          if (![(_UIKeyboardStateManager *)self shouldShowKeyboardMenu]|| [(UITextInputTraits *)self->m_traits isSecureTextEntry])
          {
            goto LABEL_291;
          }

          if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardInputToUIHost])
          {
LABEL_239:
            v75 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
            v81 = [v75 synchronousForwardKeyCommandsBeforePublicToUIHost:v267];
            *(v312 + 24) = v81;
            goto LABEL_290;
          }

          v98 = +[UIKeyboardInputModeController sharedInputModeController];
          v75 = [v98 inputModeLastUsedForLanguage:@"ja_JP"];

          v99 = [v75 identifier];

          if (!v99)
          {
            goto LABEL_290;
          }

          break;
        case 145:
          if (![(_UIKeyboardStateManager *)self shouldShowKeyboardMenu])
          {
            goto LABEL_291;
          }

          if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardInputToUIHost])
          {
            goto LABEL_239;
          }

          v96 = +[UIKeyboardInputModeController sharedInputModeController];
          v75 = [v96 inputModeLastUsedForLanguage:@"ASCIICapable"];

          v97 = [v75 identifier];

          if (!v97)
          {
            goto LABEL_290;
          }

          break;
        default:
          goto LABEL_258;
      }

      v100 = [v75 identifier];
      [(_UIKeyboardStateManager *)self switchMode:v100 withHUD:0 withDelay:0 fromCapsLock:0];

      goto LABEL_290;
    }

    if (v34 > 65617)
    {
      if (v34 <= 524363)
      {
        if (v34 != 65618)
        {
          v43 = 524330;
          goto LABEL_122;
        }

        goto LABEL_174;
      }

      if (v34 != 524364)
      {
        v42 = 524367;
        goto LABEL_166;
      }

      goto LABEL_180;
    }

    if (v34 != 65615)
    {
      if (v34 != 65616)
      {
        goto LABEL_177;
      }

      goto LABEL_149;
    }

LABEL_151:
    v309 = 1;
    if (!v260[2]())
    {
      goto LABEL_150;
    }

    goto LABEL_152;
  }

  if (v34 <= 75)
  {
    if (v34 <= 46)
    {
      if (v34 <= 44)
      {
        if (v34 == 41)
        {
          v39 = [(_UIKeyboardStateManager *)self _cancelOperation:v266 & 1 testOnly:v258 != 0];
          goto LABEL_302;
        }

        if (v34 == 43)
        {
          v309 = 1;
          v39 = [(_UIKeyboardStateManager *)self handleTabWithShift:v263 != 0 beforePublicKeyCommands:v266 & 1 isMoveAction:0 testOnly:v258 != 0];
LABEL_302:
          v44 = 0;
          *(v312 + 24) = v39;
          goto LABEL_303;
        }

        goto LABEL_258;
      }

      if (v34 != 45)
      {
LABEL_142:
        v309 = 1;
        if (v254 && [(_UIKeyboardStateManager *)self shouldUsePinyinStyleRowNavigation])
        {
          v310 = 2;
          if ((v266 & 2) == 0)
          {
            v51 = v255 ^ 1;
LABEL_202:
            [(UIKeyboardCandidateList *)self->m_candidateList showCandidateInForwardDirection:v51 granularity:1];
          }

LABEL_291:
          v44 = 0;
          goto LABEL_303;
        }

        goto LABEL_258;
      }

      goto LABEL_197;
    }

    if ((v34 - 74) >= 2)
    {
      if (v34 != 47)
      {
        if (v34 != 48)
        {
          goto LABEL_258;
        }

        goto LABEL_142;
      }

LABEL_197:
      v309 = 1;
      if (v254)
      {
        if ([(_UIKeyboardStateManager *)self shouldUsePinyinStyleRowNavigation])
        {
          v310 = 2;
          if (v11 != 45 || (([(UIKeyboardCandidateList *)self->m_candidateList isExtendedList]| v255) & 1) != 0)
          {
            v51 = v255;
            if ((v266 & 2) == 0)
            {
              goto LABEL_202;
            }

            goto LABEL_291;
          }
        }
      }

LABEL_258:
      v44 = 0;
      *(v312 + 24) = 0;
      goto LABEL_303;
    }

    goto LABEL_103;
  }

  if (v34 > 78)
  {
    if (v34 == 79)
    {
      v309 = 1;
      v87 = objc_loadWeakRetained(&self->_presentationDelegate);
      v88 = [v87 isPressAndHoldPopoverPresented];

      if (!v88)
      {
        if (((v29 | v254 ^ 1) & 1) == 0)
        {
          LOBYTE(v29) = [(_UIKeyboardStateManager *)self cursorIsAtEndOfMarkedText];
        }

        LOBYTE(v252) = v29;
        v39 = [(_UIKeyboardStateManager *)self handleHorizontalArrow:1 shiftDown:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v254 shouldNavigateCandidateList:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
        goto LABEL_302;
      }
    }

    else
    {
      if (v34 != 80)
      {
        v309 = 1;
        LOBYTE(v252) = v259 ^ 1;
        v39 = [(_UIKeyboardStateManager *)self handleVerticalArrow:1 shiftDown:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v253 inputDelegateCommandEnabled:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
        goto LABEL_302;
      }

      v309 = 1;
      v82 = objc_loadWeakRetained(&self->_presentationDelegate);
      v83 = [v82 isPressAndHoldPopoverPresented];

      if (!v83)
      {
        if (((v29 | v254 ^ 1) & 1) == 0)
        {
          LOBYTE(v29) = [(_UIKeyboardStateManager *)self cursorIsAtEndOfMarkedText]&& [(UIKeyboardCandidateList *)self->m_candidateList currentIndex]!= 0x7FFFFFFFFFFFFFFFLL && [(UIKeyboardCandidateList *)self->m_candidateList currentIndex]!= 0;
        }

        LOBYTE(v252) = v29;
        v39 = [(_UIKeyboardStateManager *)self handleHorizontalArrow:0 shiftDown:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v254 shouldNavigateCandidateList:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
        goto LABEL_302;
      }
    }

    goto LABEL_251;
  }

  if ((v34 - 77) >= 2)
  {
    if (v34 == 76)
    {
      v309 = 1;
      if (v254)
      {
        goto LABEL_291;
      }

      if (!v38)
      {
        if ((v266 & 2) != 0)
        {
          v39 = [(_UIKeyboardStateManager *)self _canDeleteForward];
        }

        else
        {
          v39 = [(_UIKeyboardStateManager *)self deleteForwardAndNotify:1 producedByDeleteInput:1];
        }

        goto LABEL_302;
      }
    }

    goto LABEL_258;
  }

LABEL_103:
  v44 = 0;
  v45 = ![(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents];
  if ((v266 & 2) != 0)
  {
    LOBYTE(v45) = 0;
  }

  *(v312 + 24) = v45;
LABEL_303:
  if ((v312[3] & 1) != 0 || (v105 = objc_loadWeakRetained(&self->_presentationDelegate), v106 = [v105 isPressAndHoldPopoverPresented], v105, !v106))
  {
    if (v312[3])
    {
      if (v44)
      {
        goto LABEL_316;
      }

LABEL_702:
      if (v310 != 2)
      {
        goto LABEL_705;
      }

      goto LABEL_703;
    }
  }

  else
  {
    v107 = objc_loadWeakRetained(&self->_presentationDelegate);
    v108 = [v107 pressAndHoldPopoverController];
    v109 = [v108 handleHardwareKeyboardEvent:v267];
    *(v312 + 24) = v109;

    if (v312[3])
    {
      goto LABEL_316;
    }

    v44 = 1;
  }

  v110 = objc_loadWeakRetained(&self->_presentationDelegate);
  v111 = [v110 isEmojiPopoverPresented];

  if (v111)
  {
    v112 = objc_loadWeakRetained(&self->_presentationDelegate);
    v113 = [v112 emojiPopoverController];
    v114 = [v113 handleHardwareKeyboardEvent:v267];
    *(v312 + 24) = v114;

    if (v312[3])
    {
      v115 = 3;
      if (v44)
      {
        v115 = 4;
      }

      goto LABEL_317;
    }

LABEL_319:
    v117 = [(_UIKeyboardStateManager *)self handleInputManagerBasedKeybind:v267 testOnly:v258 != 0];
    *(v312 + 24) = v117;
    if (v117)
    {
      v310 = 2;
LABEL_703:
      if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
      {
        goto LABEL_705;
      }

LABEL_704:
      v310 = 0;
      goto LABEL_705;
    }

    v118 = [v267 _commandModifiedInput];
    v119 = v118;
    if (v118)
    {
      v120 = v118;
    }

    else
    {
      v120 = [v267 _modifiedInput];
    }

    v121 = [MEMORY[0x1E69D4E18] sharedInstance];
    v272[0] = MEMORY[0x1E69E9820];
    v272[1] = 3221225472;
    v272[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_12;
    v272[3] = &unk_1E70FD370;
    v122 = v120;
    v273 = v122;
    [v121 logBlock:v272 domain:@"com.apple.keyboard.UIKit"];

    if ([v122 length])
    {
      v123 = [v122 characterAtIndex:0];
    }

    else
    {
      v123 = 0;
    }

    v124 = v123 | v12 & 0x5FB0000;
    v125 = v312;
    *(v312 + 24) = 1;
    if (v124 <= 16777280)
    {
      if (v124 > 65632)
      {
        if (v124 <= 65653)
        {
          if (v124 != 65633)
          {
            v126 = 99;
            goto LABEL_339;
          }

          goto LABEL_350;
        }

        if (v124 != 65654)
        {
          v137 = 120;
          goto LABEL_362;
        }
      }

      else
      {
        if (v124 <= 65621)
        {
          if (v124 != 65601)
          {
            v126 = 67;
LABEL_339:
            v128 = v126 | 0x10000;
LABEL_344:
            if (v124 == v128 && !v38)
            {
              if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v129 = objc_claimAutoreleasedReturnValue(), v130 = [v129 shouldRespectForwardingInputDelegate], v129, (v130 & 1) != 0))
              {
                v131 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                if (v131)
                {
                  v132 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_copy_];
                }

                else
                {
                  v132 = 0;
                }

                *(v312 + 24) = v132;

                if (v266 & 2) == 0 && (v312[3])
                {
                  v184 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                  v185 = [v184 _dataOwnerForCopy];
                  v271[0] = MEMORY[0x1E69E9820];
                  v271[1] = 3221225472;
                  v271[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_13;
                  v271[3] = &unk_1E70F3590;
                  v271[4] = self;
                  [UIPasteboard _performAsDataOwner:v185 block:v271];

                  [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
                  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Copy" trigger:@"HWKeyboard"];
                }

                goto LABEL_374;
              }

              if ((v266 & 2) == 0)
              {
                goto LABEL_638;
              }

LABEL_639:
              *(v312 + 24) = 1;
              goto LABEL_374;
            }

LABEL_373:
            *(v125 + 24) = 0;
            goto LABEL_374;
          }

          goto LABEL_350;
        }

        if (v124 != 65622)
        {
          v137 = 88;
LABEL_362:
          v139 = v137 | 0x10000;
          goto LABEL_366;
        }
      }

LABEL_372:
      v309 = 1;
      if (v38)
      {
        goto LABEL_373;
      }

      if (+[UIKeyboard isKeyboardProcess])
      {
        v153 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v154 = [v153 shouldRespectForwardingInputDelegate];
        v155 = (v266 & 2) != 0 ? 1 : v154;

        if ((v155 & 1) == 0)
        {
          goto LABEL_638;
        }
      }

      v156 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      if (v156)
      {
        v157 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_paste_];
      }

      else
      {
        v157 = 0;
      }

      *(v312 + 24) = v157;

      if (v266 & 2) == 0 && (v312[3])
      {
        v188 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
        v189 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v190 = [v189 _dataOwnerForPaste];
        v270[0] = MEMORY[0x1E69E9820];
        v270[1] = 3221225472;
        v270[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_14;
        v270[3] = &unk_1E70F3590;
        v270[4] = self;
        [UIPasteboard _performAsDataOwner:v190 block:v270];

        [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
        [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Paste" trigger:@"HWKeyboard"];
      }

LABEL_374:
      v144 = v123 | v12 & 0x5D90000u;
      v145 = v312;
      if (v312[3])
      {
        goto LABEL_497;
      }

      if (v144 > 17301589)
      {
        if (v144 > 20971605)
        {
          if (v144 == 20971638)
          {
            goto LABEL_387;
          }

          v146 = 20971606;
        }

        else
        {
          if (v144 == 17301590)
          {
            goto LABEL_387;
          }

          v146 = 17301622;
        }
      }

      else if (v144 > 4259925)
      {
        if (v144 == 4259926)
        {
          goto LABEL_387;
        }

        v146 = 4259958;
      }

      else
      {
        if (v144 == 589910)
        {
          goto LABEL_387;
        }

        v146 = 589942;
      }

      if (v144 != v146)
      {
        v147 = 0;
        *(v312 + 24) = 0;
        goto LABEL_409;
      }

LABEL_387:
      v147 = 0;
      if (v263)
      {
        v309 = 1;
        if (v38)
        {
          *(v312 + 24) = 0;
          goto LABEL_497;
        }

        if (+[UIKeyboard isKeyboardProcess])
        {
          v148 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v149 = [v148 shouldRespectForwardingInputDelegate];
          v150 = (v266 & 2) != 0 ? 1 : v149;

          if ((v150 & 1) == 0)
          {
            [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v267];
            goto LABEL_496;
          }
        }

        v151 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        if (v151)
        {
          v152 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_pasteAndMatchStyle_];
        }

        else
        {
          v152 = 0;
        }

        *(v312 + 24) = v152;

        v145 = v312;
        v147 = *(v312 + 24);
        if (v266 & 2) == 0 && (v312[3])
        {
          v158 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
          v159 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          v160 = [v159 _dataOwnerForPaste];
          v268[0] = MEMORY[0x1E69E9820];
          v268[1] = 3221225472;
          v268[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_16;
          v268[3] = &unk_1E70F3590;
          v268[4] = self;
          [UIPasteboard _performAsDataOwner:v160 block:v268];

          [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
          [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Paste" trigger:@"HWKeyboard"];
          v145 = v312;
          v147 = *(v312 + 24);
        }
      }

LABEL_409:
      if ((v266 | v147))
      {
        v161 = 0;
      }

      else
      {
        v161 = v124;
      }

      if (v161 <= 16777281)
      {
        if (v161 > 65633)
        {
          if (v161 <= 65640)
          {
            if (v161 != 65634)
            {
              v162 = 101;
              goto LABEL_424;
            }

LABEL_434:
            if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v169 = objc_claimAutoreleasedReturnValue(), v170 = [v169 shouldRespectForwardingInputDelegate], v169, (v170 & 1) != 0))
            {
              v171 = [(_UIKeyboardStateManager *)self delegateAsResponder];
              if (v171)
              {
                v172 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleBoldface_];
              }

              else
              {
                v172 = 0;
              }

              *(v312 + 24) = v172;

              v145 = v312;
              if (v266 & 2) == 0 && (v312[3])
              {
                v191 = sel_toggleBoldface_;
                v192 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_toggleBoldface_];
                [v192 toggleBoldface:0];
                goto LABEL_491;
              }

              goto LABEL_497;
            }

            [(_UIKeyboardStateManager *)self performOnInputSourceSessionActionSelector:sel_toggleBoldface_];
            goto LABEL_496;
          }

          if (v161 != 65641)
          {
            v173 = 117;
            goto LABEL_444;
          }
        }

        else
        {
          if (v161 <= 65608)
          {
            if (v161 != 65602)
            {
              v162 = 69;
LABEL_424:
              v164 = v162 | 0x10000;
LABEL_429:
              if (v161 != v164)
              {
                goto LABEL_497;
              }

              if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v165 = objc_claimAutoreleasedReturnValue(), v166 = [v165 shouldRespectForwardingInputDelegate], v165, (v166 & 1) != 0))
              {
                v167 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                if (v167)
                {
                  v168 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_useSelectionForFind_];
                }

                else
                {
                  v168 = 0;
                }

                *(v312 + 24) = v168;

                v145 = v312;
                if (v266 & 2) == 0 && (v312[3])
                {
                  v191 = sel_useSelectionForFind_;
                  v192 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_useSelectionForFind_];
                  [v192 useSelectionForFind:0];
LABEL_491:

                  [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:v191];
                  v145 = v312;
                  goto LABEL_497;
                }

                goto LABEL_497;
              }

              [(_UIKeyboardStateManager *)self performOnInputSourceSessionActionSelector:sel_useSelectionForFind_];
              goto LABEL_496;
            }

            goto LABEL_434;
          }

          if (v161 != 65609)
          {
            v173 = 85;
LABEL_444:
            v175 = v173 | 0x10000;
LABEL_448:
            if (v161 != v175)
            {
              goto LABEL_497;
            }

            if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v176 = objc_claimAutoreleasedReturnValue(), v177 = [v176 shouldRespectForwardingInputDelegate], v176, (v177 & 1) != 0))
            {
              v178 = [(_UIKeyboardStateManager *)self delegateAsResponder];
              if (v178)
              {
                v179 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleUnderline_];
              }

              else
              {
                v179 = 0;
              }

              *(v312 + 24) = v179;

              v145 = v312;
              if (v266 & 2) == 0 && (v312[3])
              {
                v191 = sel_toggleUnderline_;
                v192 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_toggleUnderline_];
                [v192 toggleUnderline:0];
                goto LABEL_491;
              }

LABEL_497:
              v193 = *(v145 + 24);
              *(v145 + 24) = 1;
              if (v144 > 0x800000)
              {
                if (v144 > 16777285)
                {
                  if (v144 <= 17301573)
                  {
                    v194 = v144 - 16777286;
                    goto LABEL_522;
                  }

                  if (v144 > 20971589)
                  {
                    if (v144 == 20971622)
                    {
                      goto LABEL_589;
                    }

                    v207 = 20971590;
                  }

                  else
                  {
                    if (v144 == 17301574)
                    {
                      goto LABEL_589;
                    }

                    v207 = 17301606;
                  }

                  goto LABEL_588;
                }

                if (v144 <= 8388618)
                {
                  if (v144 <= 8388611)
                  {
                    if (v144 != 8388609)
                    {
                      if (v144 != 8388610)
                      {
                        goto LABEL_689;
                      }

                      goto LABEL_597;
                    }

                    goto LABEL_612;
                  }

                  if (v144 == 8388612)
                  {
LABEL_605:
                    v309 = 1;
                    if (v254)
                    {
                      goto LABEL_690;
                    }

                    if (v266)
                    {
                      v218 = 0;
LABEL_611:
                      *(v145 + 24) = v218;
                      goto LABEL_690;
                    }

                    v218 = [(_UIKeyboardStateManager *)self deleteForwardAndNotify:1];
LABEL_610:
                    v145 = v312;
                    goto LABEL_611;
                  }

                  if (v144 != 8388613)
                  {
                    v208 = 8388614;
LABEL_575:
                    if (v144 != v208)
                    {
                      goto LABEL_689;
                    }

                    v309 = 1;
                    LOBYTE(v252) = v254;
                    v218 = [_UIKeyboardStateManager handleHorizontalArrow:"handleHorizontalArrow:shiftDown:beforePublicKeyCommands:testOnly:isVerticalCandidate:hasCandidatesForTypedInput:shouldNavigateCandidateList:canHandleInputDelegateCommand:savedHistory:keyCommandTypeHandled:keyEvent:" shiftDown:v255 ^ 1 beforePublicKeyCommands:v263 != 0 testOnly:v266 & 1 isVerticalCandidate:v258 != 0 hasCandidatesForTypedInput:v252 shouldNavigateCandidateList:v257 canHandleInputDelegateCommand:v262 savedHistory:&v310 keyCommandTypeHandled:v267 keyEvent:?];
                    goto LABEL_610;
                  }

LABEL_619:
                  v309 = 1;
                  if (v259)
                  {
                    goto LABEL_690;
                  }

                  if (v266)
                  {
                    goto LABEL_590;
                  }

                  if (+[UIKeyboard isKeyboardProcess])
                  {
                    v234 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                    v235 = [v234 shouldRespectForwardingInputDelegate];

                    if ((v235 & 1) == 0)
                    {
                      if ((v266 & 2) == 0)
                      {
                        goto LABEL_687;
                      }

                      goto LABEL_688;
                    }
                  }

                  v236 = v257[2](v257, sel__moveToEndOfLine_withHistory_);
                  *(v312 + 24) = v236;
                  if (v266 & 2) != 0 || ((v236 ^ 1))
                  {
                    goto LABEL_690;
                  }

                  self->m_textInputChangesIgnored = 1;
                  v199 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                  v200 = [v199 _moveToEndOfLine:v263 != 0 withHistory:v262];
                  [(_UIKeyboardStateManager *)self setArrowKeyHistory:v200];
                  goto LABEL_626;
                }

                if (v144 <= 8388623)
                {
                  if (v144 != 8388619)
                  {
                    if (v144 != 8388622)
                    {
                      v195 = 8388623;
LABEL_512:
                      if (v144 != v195)
                      {
                        goto LABEL_689;
                      }

                      v309 = 1;
                      if (v259)
                      {
                        goto LABEL_690;
                      }

                      if (v266)
                      {
                        goto LABEL_590;
                      }

                      if (+[UIKeyboard isKeyboardProcess])
                      {
                        v196 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                        v197 = [v196 shouldRespectForwardingInputDelegate];

                        if ((v197 & 1) == 0)
                        {
                          if ((v266 & 2) == 0)
                          {
                            goto LABEL_687;
                          }

                          goto LABEL_688;
                        }
                      }

                      v198 = v257[2](v257, sel__moveLeft_withHistory_);
                      *(v312 + 24) = v198;
                      if (v266 & 2) != 0 || ((v198 ^ 1))
                      {
                        goto LABEL_690;
                      }

                      [(_UIKeyboardStateManager *)self insertTextIfShould:@"\n"];
                      self->m_textInputChangesIgnored = 1;
                      v199 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      v200 = [v199 _moveLeft:0 withHistory:v262];
                      [(_UIKeyboardStateManager *)self setArrowKeyHistory:v200];
LABEL_626:

                      self->m_textInputChangesIgnored = 0;
                      goto LABEL_690;
                    }

LABEL_609:
                    v309 = 1;
                    LOBYTE(v252) = v259 ^ 1;
                    v218 = [(_UIKeyboardStateManager *)self handleVerticalArrow:1 shiftDown:0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v253 inputDelegateCommandEnabled:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
                    goto LABEL_610;
                  }

LABEL_598:
                  v309 = 1;
                  if (v259)
                  {
                    goto LABEL_690;
                  }

                  if (v266)
                  {
                    goto LABEL_590;
                  }

                  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v227 = objc_claimAutoreleasedReturnValue(), v228 = [v227 shouldRespectForwardingInputDelegate], v227, (v228 & 1) != 0))
                  {
                    v229 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                    v230 = [v229 canHandleInputDelegateCommandAction:6];
                    *(v312 + 24) = v230;

                    if (v266 & 2) == 0 && (v312[3])
                    {
                      v204 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      [v204 _deleteToEndOfParagraph];
                      goto LABEL_668;
                    }

                    goto LABEL_690;
                  }

                  if ((v266 & 2) == 0)
                  {
                    goto LABEL_687;
                  }

                  goto LABEL_688;
                }

                if (v144 != 8388624)
                {
                  if (v144 != 8388628)
                  {
                    if (v144 != 8388640)
                    {
                      goto LABEL_689;
                    }

                    goto LABEL_565;
                  }

LABEL_579:
                  v309 = 1;
                  if (v259)
                  {
                    goto LABEL_690;
                  }

                  if (v266)
                  {
                    goto LABEL_590;
                  }

                  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v219 = objc_claimAutoreleasedReturnValue(), v220 = [v219 shouldRespectForwardingInputDelegate], v219, (v220 & 1) != 0))
                  {
                    v221 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                    v222 = [v221 canHandleInputDelegateCommandAction:0];
                    *(v312 + 24) = v222;

                    if (v266 & 2) == 0 && (v312[3])
                    {
                      v204 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      [v204 transposeCharacters];
                      goto LABEL_668;
                    }

                    goto LABEL_690;
                  }

                  if ((v266 & 2) == 0)
                  {
                    goto LABEL_687;
                  }

                  goto LABEL_688;
                }
              }

              else
              {
                if (v144 <= 1048580)
                {
                  if (v144 <= 589893)
                  {
                    v194 = v144 - 65606;
LABEL_522:
                    if (v194 > 0x34)
                    {
                      goto LABEL_689;
                    }

                    if (((1 << v194) & 0x100000001) == 0)
                    {
                      if (((1 << v194) & 0x200000002) == 0)
                      {
                        if (((1 << v194) & 0x10000000100000) != 0)
                        {
                          if (!v38)
                          {
                            if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v201 = objc_claimAutoreleasedReturnValue(), v202 = [v201 shouldRespectForwardingInputDelegate], v201, (v202 & 1) != 0))
                            {
                              v203 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_undoManager];
                              v204 = [v203 undoManager];

                              if (v204)
                              {
                                if (v263)
                                {
                                  v205 = [v204 canRedo];
                                  if (v266 & 2) != 0 || ((v205 ^ 1))
                                  {
                                    goto LABEL_667;
                                  }

                                  [v204 redo];
                                  [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
                                  v206 = UIKBAnalyticsTextEditingOperationRedo;
                                }

                                else
                                {
                                  v242 = [v204 canUndo];
                                  if (v266 & 2) != 0 || ((v242 ^ 1))
                                  {
                                    goto LABEL_667;
                                  }

                                  [v204 undo];
                                  [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
                                  v206 = UIKBAnalyticsTextEditingOperationUndo;
                                }

                                [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v206 trigger:@"HWKeyboard"];
LABEL_667:
                                v243 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                                *(v312 + 24) = v243 != 0;

                                goto LABEL_668;
                              }

                              *(v312 + 24) = 0;
LABEL_668:

                              goto LABEL_690;
                            }

                            if ((v266 & 2) != 0)
                            {
                              goto LABEL_688;
                            }

                            goto LABEL_687;
                          }

LABEL_590:
                          *(v145 + 24) = 0;
                          goto LABEL_690;
                        }

LABEL_689:
                        *(v145 + 24) = v193;
                        goto LABEL_690;
                      }

                      if (v38)
                      {
                        goto LABEL_590;
                      }

                      if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v209 = objc_claimAutoreleasedReturnValue(), v210 = [v209 shouldRespectForwardingInputDelegate], v209, (v210 & 1) != 0))
                      {
                        if (v263)
                        {
                          v211 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                          if (v211)
                          {
                            v212 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_findPrevious_];
                          }

                          else
                          {
                            v212 = 0;
                          }

                          *(v312 + 24) = v212;

                          if (v266 & 2) == 0 && (v312[3])
                          {
                            v237 = sel_findPrevious_;
                            v238 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_findPrevious_];
                            [v238 findPrevious:0];
                            goto LABEL_677;
                          }
                        }

                        else
                        {
                          v240 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                          if (v240)
                          {
                            v241 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_findNext_];
                          }

                          else
                          {
                            v241 = 0;
                          }

                          *(v312 + 24) = v241;

                          if (v266 & 2) == 0 && (v312[3])
                          {
                            v237 = sel_findNext_;
                            v238 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_findNext_];
                            [v238 findNext:0];
                            goto LABEL_677;
                          }
                        }

                        goto LABEL_690;
                      }

                      if ((v266 & 2) == 0)
                      {
                        goto LABEL_687;
                      }

                      goto LABEL_688;
                    }

                    if (v38)
                    {
                      goto LABEL_590;
                    }

                    if (+[UIKeyboard isKeyboardProcess])
                    {
                      v213 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      v214 = [v213 shouldRespectForwardingInputDelegate];

                      if ((v214 & 1) == 0)
                      {
                        if ((v266 & 2) == 0)
                        {
                          goto LABEL_687;
                        }

                        goto LABEL_688;
                      }
                    }

                    if (!v263)
                    {
                      v215 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                      if (v215)
                      {
                        v216 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_find_];
                      }

                      else
                      {
                        v216 = 0;
                      }

                      *(v312 + 24) = v216;

                      if (v266 & 2) == 0 && (v312[3])
                      {
                        v237 = sel_find_;
                        v238 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_find_];
                        [v238 find:0];
                        goto LABEL_677;
                      }

                      goto LABEL_690;
                    }

LABEL_570:
                    v145 = v312;
                    goto LABEL_590;
                  }

                  if (v144 > 0x100000)
                  {
                    if (v144 != 1048577)
                    {
                      if (v144 != 1048578)
                      {
                        if (v144 != 1048580)
                        {
                          goto LABEL_689;
                        }

                        goto LABEL_605;
                      }

LABEL_597:
                      v309 = 1;
                      LOBYTE(v252) = v254;
                      v218 = [(_UIKeyboardStateManager *)self handleHorizontalArrow:v255 shiftDown:v263 != 0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v252 shouldNavigateCandidateList:v257 canHandleInputDelegateCommand:v262 savedHistory:&v310 keyCommandTypeHandled:v267 keyEvent:?];
                      goto LABEL_610;
                    }

LABEL_612:
                    v309 = 1;
                    if (v259)
                    {
                      goto LABEL_690;
                    }

                    if (v266)
                    {
                      goto LABEL_590;
                    }

                    if (+[UIKeyboard isKeyboardProcess])
                    {
                      v231 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                      v232 = [v231 shouldRespectForwardingInputDelegate];

                      if ((v232 & 1) == 0)
                      {
                        if ((v266 & 2) == 0)
                        {
                          goto LABEL_687;
                        }

                        goto LABEL_688;
                      }
                    }

                    v233 = v257[2](v257, sel__moveToStartOfLine_withHistory_);
                    *(v312 + 24) = v233;
                    if (v266 & 2) != 0 || ((v233 ^ 1))
                    {
                      goto LABEL_690;
                    }

                    self->m_textInputChangesIgnored = 1;
                    v199 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                    v200 = [v199 _moveToStartOfLine:v263 != 0 withHistory:v262];
                    [(_UIKeyboardStateManager *)self setArrowKeyHistory:v200];
                    goto LABEL_626;
                  }

                  if (v144 == 589894)
                  {
LABEL_589:
                    if (v38)
                    {
                      goto LABEL_590;
                    }

                    if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v223 = objc_claimAutoreleasedReturnValue(), v224 = [v223 shouldRespectForwardingInputDelegate], v223, (v224 & 1) != 0))
                    {
                      v225 = [(_UIKeyboardStateManager *)self delegateAsResponder];
                      if (v225)
                      {
                        v226 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_findAndReplace_];
                      }

                      else
                      {
                        v226 = 0;
                      }

                      *(v312 + 24) = v226;

                      if (v266 & 2) == 0 && (v312[3])
                      {
                        v237 = sel_findAndReplace_;
                        v238 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_findAndReplace_];
                        [v238 findAndReplace:0];
LABEL_677:

                        [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:v237];
                      }

LABEL_690:
                      if ((v312[3] & 1) == 0)
                      {
                        v244 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@".");
                        v245 = [v244 characterAtIndex:0];
                        if (v144 == (v245 | 0x1000000) || v144 == (v245 | 0x10000))
                        {
                          v246 = [(_UIKeyboardStateManager *)self _cancelOperation:v266 & 1 testOnly:v258 != 0];
                          *(v312 + 24) = v246;
                        }

                        if ((v312[3] & 1) == 0)
                        {
                          v247 = [(_UIKeyboardStateManager *)self handleCandidateListNavigation:v144 hasCandidatesForTypedInput:v254 shiftDown:v263 != 0 keyCommandTypeHandled:&v310 allowRepeat:&v309 beforePublic:v266 & 1 keyEvent:v267];
                          *(v312 + 24) = v247;
                          v248 = (v266 & 5) != 0 || v247;
                          if ((v248 & 1) == 0 && (v12 & 0x1010000) != 0)
                          {
                            v249 = [(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents];
                            *(v312 + 24) = !v249;
                          }
                        }
                      }

                      if ((v312[3] & 1) == 0)
                      {
                        goto LABEL_704;
                      }

                      goto LABEL_702;
                    }

                    if ((v266 & 2) == 0)
                    {
LABEL_687:
                      [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v267];
                    }

LABEL_688:
                    v145 = v312;
                    v193 = 1;
                    goto LABEL_689;
                  }

                  v207 = 589926;
LABEL_588:
                  if (v144 != v207)
                  {
                    goto LABEL_689;
                  }

                  goto LABEL_589;
                }

                if (v144 <= 1048591)
                {
                  if (v144 > 1048586)
                  {
                    if (v144 != 1048587)
                    {
                      if (v144 != 1048590)
                      {
                        v195 = 1048591;
                        goto LABEL_512;
                      }

                      goto LABEL_609;
                    }

                    goto LABEL_598;
                  }

                  if (v144 != 1048581)
                  {
                    v208 = 1048582;
                    goto LABEL_575;
                  }

                  goto LABEL_619;
                }

                if (v144 > 1048607)
                {
                  if (v144 != 1048608)
                  {
                    if (v144 == 4259910)
                    {
                      goto LABEL_589;
                    }

                    v207 = 4259942;
                    goto LABEL_588;
                  }

LABEL_565:
                  if (-[_UIKeyboardStateManager shouldShowKeyboardMenu](self, "shouldShowKeyboardMenu") && ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || [UIApp _areKeyboardHUDsEnabled]))
                  {
                    [v267 setKeyCommandCode:v144];
                    if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
                    {
                      v204 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
                      v217 = [v204 synchronousForwardKeyCommandsBeforePublicToUIHost:v267];
                    }

                    else
                    {
                      v204 = +[UIInputSwitcher sharedInstance];
                      v217 = [v204 handleSwitchCommand:v263 != 0 withHUD:1 withDelay:1];
                    }

                    *(v312 + 24) = v217;
                    goto LABEL_668;
                  }

                  goto LABEL_570;
                }

                if (v144 != 1048592)
                {
                  if (v144 != 1048596)
                  {
                    goto LABEL_689;
                  }

                  goto LABEL_579;
                }
              }

              v309 = 1;
              LOBYTE(v252) = v259 ^ 1;
              v218 = [(_UIKeyboardStateManager *)self handleVerticalArrow:0 shiftDown:0 beforePublicKeyCommands:v266 & 1 testOnly:v258 != 0 isVerticalCandidate:v255 hasCandidatesForTypedInput:v253 inputDelegateCommandEnabled:v252 canHandleInputDelegateCommand:v257 savedHistory:v262 keyCommandTypeHandled:&v310 keyEvent:v267];
              goto LABEL_610;
            }

            [(_UIKeyboardStateManager *)self performOnInputSourceSessionActionSelector:sel_toggleUnderline_];
LABEL_496:
            v145 = v312;
            *(v312 + 24) = 1;
            goto LABEL_497;
          }
        }

LABEL_453:
        if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v180 = objc_claimAutoreleasedReturnValue(), v181 = [v180 shouldRespectForwardingInputDelegate], v180, (v181 & 1) != 0))
        {
          v182 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          if (v182)
          {
            v183 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_toggleItalics_];
          }

          else
          {
            v183 = 0;
          }

          *(v312 + 24) = v183;

          v145 = v312;
          if (v266 & 2) == 0 && (v312[3])
          {
            v191 = sel_toggleItalics_;
            v192 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_toggleItalics_];
            [v192 toggleItalics:0];
            goto LABEL_491;
          }

          goto LABEL_497;
        }

        [(_UIKeyboardStateManager *)self performOnInputSourceSessionActionSelector:sel_toggleItalics_];
        goto LABEL_496;
      }

      if (v161 > 16777313)
      {
        if (v161 <= 16777320)
        {
          if (v161 == 16777314)
          {
            goto LABEL_434;
          }

          v163 = 101;
LABEL_428:
          v164 = v163 | 0x1000000;
          goto LABEL_429;
        }

        if (v161 == 16777321)
        {
          goto LABEL_453;
        }

        v174 = 117;
      }

      else
      {
        if (v161 <= 16777288)
        {
          if (v161 == 16777282)
          {
            goto LABEL_434;
          }

          v163 = 69;
          goto LABEL_428;
        }

        if (v161 == 16777289)
        {
          goto LABEL_453;
        }

        v174 = 85;
      }

      v175 = v174 | 0x1000000;
      goto LABEL_448;
    }

    if (v124 > 16777312)
    {
      if (v124 <= 16777333)
      {
        if (v124 != 16777313)
        {
          v127 = 99;
          goto LABEL_343;
        }

LABEL_350:
        if (v254)
        {
          goto LABEL_374;
        }

        if (v38)
        {
          goto LABEL_373;
        }

        if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v133 = objc_claimAutoreleasedReturnValue(), v134 = [v133 shouldRespectForwardingInputDelegate], v133, (v134 & 1) != 0))
        {
          v135 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          if (v135)
          {
            v136 = [(_UIKeyboardStateManager *)self _canHandleResponderCommandConservatively:sel_selectAll_];
          }

          else
          {
            v136 = 0;
          }

          *(v312 + 24) = v136;

          if (v266 & 2) == 0 && (v312[3])
          {
            v239 = [(_UIKeyboardStateManager *)self _targetForResponderCommand:sel_selectAll_];
            [v239 selectAll:0];

            [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
          }

          goto LABEL_374;
        }

        if ((v266 & 2) != 0)
        {
          goto LABEL_639;
        }

LABEL_638:
        [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v267];
        goto LABEL_639;
      }

      if (v124 == 16777334)
      {
        goto LABEL_372;
      }

      v138 = 120;
    }

    else
    {
      if (v124 <= 16777301)
      {
        if (v124 != 16777281)
        {
          v127 = 67;
LABEL_343:
          v128 = v127 | 0x1000000;
          goto LABEL_344;
        }

        goto LABEL_350;
      }

      if (v124 == 16777302)
      {
        goto LABEL_372;
      }

      v138 = 88;
    }

    v139 = v138 | 0x1000000;
LABEL_366:
    if (v124 != v139 || v38)
    {
      goto LABEL_373;
    }

    if (+[UIKeyboard isKeyboardProcess])
    {
      v140 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v141 = [v140 shouldRespectForwardingInputDelegate];

      if ((v141 & 1) == 0)
      {
        if ((v266 & 2) != 0)
        {
          goto LABEL_639;
        }

        goto LABEL_638;
      }
    }

    v142 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    if (v142)
    {
      v143 = [(_UIKeyboardStateManager *)self _canHandleResponderCommand:sel_cut_];
    }

    else
    {
      v143 = 0;
    }

    *(v312 + 24) = v143;

    if (v266 & 2) == 0 && (v312[3])
    {
      v186 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      v187 = [v186 _dataOwnerForCopy];
      v269[0] = MEMORY[0x1E69E9820];
      v269[1] = 3221225472;
      v269[2] = __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_15;
      v269[3] = &unk_1E70F3590;
      v269[4] = self;
      [UIPasteboard _performAsDataOwner:v187 block:v269];

      [(_UIKeyboardStateManager *)self _signalInvocationOfKeyCommandForAction:?];
      [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Cut" trigger:@"HWKeyboard"];
    }

    goto LABEL_374;
  }

  v116 = *(v312 + 24);
  if ((v44 & v116 & 1) == 0)
  {
    if ((v116 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_702;
  }

LABEL_316:
  v115 = 4;
LABEL_317:
  v310 = v115;
LABEL_705:
  if (a4)
  {
    *a4 = v309;
  }

  [(_UIKeyboardStateManager *)self setHandlingKeyCommandFromHardwareKeyboard:0];
  if ((v256 & 1) == 0)
  {
    v250 = [(_UIKeyboardStateManager *)self arrowKeyHistory];

    if (v250)
    {
      +[UIKBAnalyticsDispatcher incrementAllowCursorMovementCount];
      [(_UIKeyboardStateManager *)self changingContextWithTrigger:@"arrowKey"];
      [(_UIKeyboardStateManager *)self updateForChangedSelection];
      +[UIKBAnalyticsDispatcher decrementAllowCursorMovementCount];
    }
  }

  v22 = v310;

LABEL_711:
  _Block_object_dispose(&v311, 8);

  return v22;
}

- (void)_signalInvocationOfKeyCommandForAction:(uint64_t)a1
{
  if (a1)
  {
    v3 = +[_UIMainMenuManager existingManager];
    if (v3)
    {
      v5 = v3;
      v4 = [(UICommand *)UIKeyCommand _originalCommandForAction:a2];
      [v5 userDidInvokeKeyboardShortcut:v4];

      v3 = v5;
    }
  }
}

- (BOOL)handleInputManagerBasedKeybind:(id)a3 testOnly:(BOOL)a4
{
  v6 = a3;
  if ([(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
  {
    v7 = [(_UIKeyboardStateManager *)self inputManagerState];
    v8 = [v7 keyEventMap];
    v9 = [v6 _modifiedInput];
    v10 = [v6 _unmodifiedInput];
    v11 = [v8 inputEventForInputString:v9 stringWithoutModifiers:v10 modifierFlags:objc_msgSend(v6 keyboardState:{"_gsModifierFlags"), self->m_keyboardState}];

    v12 = v11 != 0;
    if (v11 && !a4)
    {
      if (qword_1ED49D088 != -1)
      {
        dispatch_once(&qword_1ED49D088, &__block_literal_global_885);
      }

      v13 = [(_UIKeyboardStateManager *)self taskQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67___UIKeyboardStateManager_handleInputManagerBasedKeybind_testOnly___block_invoke_3;
      v15[3] = &unk_1E70FD1B8;
      v15[4] = self;
      v16 = v11;
      [v13 performSingleTask:v15 breadcrumb:qword_1ED49D080];

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)handleCandidateListNavigation:(unsigned int)a3 hasCandidatesForTypedInput:(BOOL)a4 shiftDown:(BOOL)a5 keyCommandTypeHandled:(unint64_t *)a6 allowRepeat:(BOOL *)a7 beforePublic:(BOOL)a8 keyEvent:(id)a9
{
  v11 = a5;
  v12 = a4;
  v13 = *&a3;
  v15 = a9;
  if (![(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
  {
    if (v12)
    {
      if (a6)
      {
        *a6 = 2;
      }

      v19 = [(_UIKeyboardStateManager *)self inputManagerState];
      v20 = [v19 keyEventMap];

      if (v20)
      {
        v18 = [v20 candidateNumberKey:v13];
      }

      else
      {
        v18 = u_charDigitValue(v13);
      }

      if (v18 != -1 && v18 <= 9)
      {
        if ([(_UIKeyboardStateManager *)self supportsNumberKeySelection]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          LOBYTE(v18) = [(UIKeyboardCandidateList *)self->m_candidateList handleNumberKey:v18];
        }

        else
        {
          LOBYTE(v18) = 0;
        }

        goto LABEL_40;
      }

      v22 = 0;
      LOBYTE(v18) = 0;
      if (v13 <= 31)
      {
        if (v13 != 10 && v13 != 13)
        {
          goto LABEL_39;
        }
      }

      else if (v13 != 8388618 && v13 != 1048586)
      {
        if (v13 == 32)
        {
          v23 = [(_UIKeyboardStateManager *)self inputManagerState];
          v24 = [v23 keyboardBehaviors];
          v25 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
          v22 = [v24 keyBehaviorsForState:v25];

          v26 = [v22 spaceKeyBehavior];
          if (v26 > 4)
          {
            switch(v26)
            {
              case 5:
                [(_UIKeyboardStateManager *)self performKeyBehaviorConfirmFirstCandidate];
                goto LABEL_60;
              case 7:
                [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
                break;
              case 8:
LABEL_60:
                LOBYTE(v18) = 1;
                goto LABEL_39;
            }
          }

          else
          {
            if ((v26 - 3) < 2)
            {
              if (a7)
              {
                *a7 = 1;
              }

              [(UIKeyboardCandidateList *)self->m_candidateList showCandidateInForwardDirection:v11 ^ 1 granularity:0];
              goto LABEL_60;
            }

            if (v26 == 2)
            {
              [(_UIKeyboardStateManager *)self performKeyBehaviorConfirm];
              goto LABEL_60;
            }
          }

          LOBYTE(v18) = 0;
        }

LABEL_39:

LABEL_40:
        goto LABEL_47;
      }

      LOBYTE(v18) = [(_UIKeyboardStateManager *)self handleReturnKey:v11];
      v22 = 0;
      goto LABEL_39;
    }

    if (![(_UIKeyboardStateManager *)self hasEditableMarkedText])
    {
      goto LABEL_19;
    }

    LOBYTE(v18) = 0;
    v21 = 0;
    if (v13 <= 31)
    {
      if (v13 != 10 && v13 != 13)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v13 == 32)
      {
        v28 = [(_UIKeyboardStateManager *)self inputManagerState];
        v29 = [v28 keyboardBehaviors];
        v30 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
        v21 = [v29 keyBehaviorsForState:v30];

        v31 = [v21 spaceKeyBehavior];
        if ((v31 - 2) < 4 || v31 == 8)
        {
          [(_UIKeyboardStateManager *)self updateCandidateDisplay];
          LODWORD(v18) = 1;
          if (a6)
          {
LABEL_44:
            if (v18)
            {
              *a6 = 2;
              LOBYTE(v18) = 1;
            }
          }
        }

        else
        {
          LOBYTE(v18) = 0;
        }

LABEL_46:

        goto LABEL_47;
      }

      if (v13 != 8388618 && v13 != 1048586)
      {
        goto LABEL_46;
      }
    }

    LODWORD(v18) = [(_UIKeyboardStateManager *)self handleReturnKey:v11];
    v21 = 0;
    if (a6)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v16 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v17 = [v16 synchronousForwardKeyCommandsBeforePublicToUIHost:v15];

  if (!v17)
  {
LABEL_19:
    LOBYTE(v18) = 0;
    goto LABEL_47;
  }

  if (a6)
  {
    *a6 = 2;
  }

  LOBYTE(v18) = 1;
  if (v13 == 32 && a7)
  {
    *a7 = 1;
  }

LABEL_47:

  return v18;
}

- (BOOL)handleReturnKey:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  v6 = [v5 keyboardBehaviors];
  v7 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
  v8 = [v6 keyBehaviorsForState:v7];

  v9 = [v8 returnKeyBehavior];
  v10 = 0;
  if (v9 > 4)
  {
    switch(v9)
    {
      case 5:
        [(_UIKeyboardStateManager *)self performKeyBehaviorConfirmFirstCandidate];
        goto LABEL_11;
      case 9:
        WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
        v13 = [WeakRetained layout];
        v10 = [v13 performReturnAction];

        break;
      case 10:
        [(_UIKeyboardStateManager *)self performKeyBehaviorCommitInline];
        goto LABEL_11;
    }
  }

  else
  {
    if ((v9 - 3) < 2)
    {
      [(UIKeyboardCandidateList *)self->m_candidateList showCandidateInForwardDirection:!v3 granularity:0];
LABEL_11:
      v10 = 1;
      goto LABEL_12;
    }

    if (v9 == 2)
    {
      [(_UIKeyboardStateManager *)self performKeyBehaviorConfirm];
      goto LABEL_11;
    }
  }

LABEL_12:

  return v10;
}

- (void)handleEmojiPopoverKeyCommand
{
  if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
  {
    WeakRetained = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [WeakRetained forwardInputDestinationEventToUIHost:sel_handleEmojiPopoverKeyCommand];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    if ([WeakRetained canPresentOrDismissEmojiPopover])
    {
      v3 = [(_UIKeyboardStateManager *)self hasEditableMarkedText];

      if (v3)
      {
        return;
      }

      v4 = objc_loadWeakRetained(&self->_presentationDelegate);
      v5 = [v4 isEmojiPopoverPresented];

      v6 = objc_loadWeakRetained(&self->_presentationDelegate);
      v7 = v6;
      if (v5)
      {
        WeakRetained = v6;
        v8 = [WeakRetained emojiPopoverController];
        [WeakRetained dismissKeyboardPopover:v8 beforeCleanup:0 completion:0];
      }

      else
      {
        v9 = [v6 isEmojiPopoverVisibleOrDismissing];

        if (v9)
        {
          return;
        }

        WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
        [WeakRetained presentEmojiPopoverViaTrigger:@"keyboardShortcut" completion:0];
      }
    }
  }
}

- (BOOL)currentKeyboardTraitsAllowCandidateBarWhileIgnoringHidePredictionTrait:(BOOL)a3
{
  if ([(_UIKeyboardStateManager *)self keyboardIsKeyPad])
  {
    if (![(_UIKeyboardStateManager *)self canUseCandidateBarAsSupplementToInlineView]&& ![(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasOnlySlottedCandidates])
    {
      m_predictionType = self->m_predictionType;
      if (m_predictionType != 4 && m_predictionType != 2)
      {
        return 0;
      }
    }
  }

  v6 = [(UITextInputTraits *)self->m_traits isSecureTextEntry];
  result = !v6;
  if (!v6 && !a3)
  {
    return ![(UITextInputTraits *)self->m_traits hidePrediction];
  }

  return result;
}

- (BOOL)shouldShowCandidateBar
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained shouldShowCandidateBar];

  return v3;
}

+ (Class)layoutClassForInputMode:(id)a3 keyboardType:(int64_t)a4 screenTraits:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ([v7 isEqualToString:@"intl_HWR"])
  {
    v9 = 0;
  }

  else
  {
    if (UIKeyboardInputModeWithTypeUsesKBStar(v7, v6))
    {
      [objc_opt_class() _subclassForScreenTraits:v8];
    }

    else
    {
      UIKeyboardLayoutClassForInputMode(v7);
    }
    v9 = ;
  }

  return v9;
}

- (double)timestampOfLastTouchesEnded
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained layout];
  [v3 timestampOfLastTouchesEnded];
  v5 = v4;

  return v5;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v12 = [(_UIKeyboardStateManager *)self inputDelegate];
  if (v12 && ![(_UIKeyboardStateManager *)self isRotating])
  {
    v15 = [(_UIKeyboardStateManager *)self textInputTraits];
    v16 = [v15 isSecureTextEntry];

    if (v16 & 1) != 0 || -[_UIKeyboardStateManager usesCandidateSelection](self, "usesCandidateSelection") && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && (WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate), [WeakRetained candidateController], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "activeCandidateViewType"), v15, WeakRetained, (v16 & 2) != 0) && (v18 = objc_loadWeakRetained(&self->_presentationDelegate), objc_msgSend(v18, "candidateController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "barIsExtended"), v15, v18, (v16))
    {
      LOBYTE(v13) = 0;
      return v13;
    }

    v12 = objc_loadWeakRetained(&self->_presentationDelegate);
    v19 = [v12 keyboardLayoutIsInAnotherProcess];
    if (v19)
    {
      goto LABEL_15;
    }

    v15 = objc_loadWeakRetained(&self->_presentationDelegate);
    v20 = [v15 layout];
    if (!v20)
    {
      LOBYTE(v13) = 0;
LABEL_20:

      goto LABEL_4;
    }

    v16 = v20;
    v5 = objc_loadWeakRetained(&self->_presentationDelegate);
    v6 = [v5 layout];
    if ([v6 shouldAllowSelectionGestures:v10 atPoint:v7 toBegin:{x, y}])
    {
LABEL_15:
      v21 = objc_loadWeakRetained(&self->_presentationDelegate);
      v22 = [v21 _rootInputWindowController];
      v13 = [v22 isTransitioningBetweenFloatingStates] ^ 1;

      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    goto LABEL_20;
  }

  LOBYTE(v13) = 0;
LABEL_4:

  return v13;
}

- (void)setTwoFingerTapTimestamp:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  [v4 setTwoFingerTapTimestamp:a3];
}

- (void)updateInputAssistantButtonItems
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateInputAssistantButtonItems];
}

- (unsigned)setMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 candidateOffset:(int64_t)a8 liveConversionSegments:(id)a9 highlighSegmentIndex:(unint64_t)a10
{
  length = a4.length;
  location = a4.location;
  v16 = a3;
  v32 = a5;
  v31 = a6;
  v17 = a7;
  v33 = a9;
  [(_UIKeyboardStateManager *)self setCandidateViewOffset:a8];
  if ([(_UIKeyboardStateManager *)self liveConversionEnabled]|| [(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16];
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v20 = [WeakRetained caretVisible];

    if ((a10 == 0x7FFFFFFFFFFFFFFFLL) != v20)
    {
      v21 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v21 setCaretVisible:a10 == 0x7FFFFFFFFFFFFFFFLL];
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3010000000;
    v41 = "";
    v42 = 0;
    v43 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __156___UIKeyboardStateManager_setMarkedText_selectedRange_inputString_lastInputString_searchString_candidateOffset_liveConversionSegments_highlighSegmentIndex___block_invoke;
    v34[3] = &unk_1E70FD398;
    v22 = v18;
    v36 = &v38;
    v37 = a10;
    v35 = v22;
    [v33 enumerateObjectsUsingBlock:v34];
    [(_UIKeyboardStateManager *)self _configureMarkedTextAttributesForConversion:v22 selectedRange:location highlightRange:length, v39[4], v39[5]];
    v24 = v31;
    v23 = v32;
    v25 = [v22 copy];
    LOBYTE(v30) = 1;
    v26 = [(_UIKeyboardStateManager *)self _setAttributedMarkedText:v25 selectedRange:location inputString:length lastInputString:v32 searchString:v31 compareAttributes:v17, v30];

    _Block_object_dispose(&v38, 8);
  }

  else if (v16)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16];
    [(_UIKeyboardStateManager *)self _configureMarkedTextAttributesForConversion:v29 selectedRange:location highlightRange:length, 0, 0];
    LOBYTE(v30) = 0;
    v24 = v31;
    v23 = v32;
    v26 = [(_UIKeyboardStateManager *)self _setAttributedMarkedText:v29 selectedRange:location inputString:length lastInputString:v32 searchString:v31 compareAttributes:v17, v30];
  }

  else
  {
    v26 = 0;
    v24 = v31;
    v23 = v32;
  }

  [(_UIKeyboardStateManager *)self updateShiftState];
  v27 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v27 updateHostedInlineCandidateView];

  return v26;
}

- (void)_configureMarkedTextAttributesForConversion:(id)a3 selectedRange:(_NSRange)a4 highlightRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v20 = a3;
  v10 = [v20 length];
  v11 = [MEMORY[0x1E695DF70] array];
  if (+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    [v20 beginEditing];
    v12 = *off_1E70ECAD8;
    [v20 addAttribute:*off_1E70ECAD8 value:&unk_1EFE30040 range:{0, v10}];
    if (length)
    {
      [v20 addAttribute:v12 value:&unk_1EFE30028 range:{location, length}];
    }

    [v11 addObject:v12];
    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = [v13 tintColor];

    if (v14)
    {
      v15 = *off_1E70ECAD0;
      [v20 addAttribute:*off_1E70ECAD0 value:v14 range:{0, v10}];
      [v11 addObject:v15];
    }

    v16 = v20;
    if (v7)
    {
      v17 = [v20 length];
      v16 = v20;
      if (v8 + v7 <= v17)
      {
        [v20 addAttribute:@"NSMarkedTextSelectionAttributeName" value:MEMORY[0x1E695E118] range:{v8, v7}];
        [v11 addObject:@"NSMarkedTextSelectionAttributeName"];
        v16 = v20;
      }
    }

    [v16 endEditing];
  }

  else
  {
    v18 = *off_1E70EC8D0;
    v19 = +[UIColor _markedTextBackgroundColor];
    [v20 addAttribute:v18 value:v19 range:{0, v10}];

    [v11 addObject:v18];
  }

  [v20 addAttribute:0x1EFBAA570 value:v11 range:{0, v10}];
}

- (void)setInlineCompletionAsMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 searchString:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = a5;
  v14 = a3;
  [(_UIKeyboardStateManager *)self _noteInlineCompletionAsMarkedText:v14];
  LOBYTE(v13) = 1;
  [(_UIKeyboardStateManager *)self _setAttributedMarkedText:v14 selectedRange:location inputString:length lastInputString:v12 searchString:0 compareAttributes:v11, v13];
}

- (unsigned)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4 inputString:(id)a5 lastInputString:(id)a6 searchString:(id)a7 compareAttributes:(BOOL)a8
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  v19 = [v18 presentingTextCompletionAsMarkedText];

  v67 = v19;
  v68 = v14;
  v65 = v17;
  if ([v19 length])
  {
    v20 = [v14 string];
    v21 = [v19 isEqualToString:v20];

    if (![(_UIKeyboardStateManager *)self usesCandidateSelection]&& v21)
    {
      v22 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self usesCandidateSelection];
  }

  [(TIKeyboardState *)self->m_keyboardState setInputForMarkedText:v15];
  [(TIKeyboardState *)self->m_keyboardState setSearchStringForMarkedText:v17];
  v22 = 1;
LABEL_7:
  v66 = v15;
  v23 = [v68 string];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v26 = v25;

  if (a8)
  {
    v27 = v26;
    if (!v68)
    {
      goto LABEL_22;
    }

    v28 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v29 = [v28 attributedMarkedText];
    v30 = [v29 isEqualToAttributedString:v68];

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v31 = [(_UIKeyboardStateManager *)self _markedText];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &stru_1EFB14550;
    }

    v34 = v33;

    v27 = v26;
    v35 = [(__CFString *)v34 isEqualToString:v26];

    if (!v35)
    {
      goto LABEL_22;
    }
  }

  v36 = v27;
  if (![(__CFString *)v27 length])
  {
    v41 = 0;
    v50 = v65;
    v60 = v66;
LABEL_50:
    v52 = v67;
    v48 = v68;
    goto LABEL_51;
  }

  v37 = [(_UIKeyboardStateManager *)self documentState];
  v38 = [v37 selectedRangeInMarkedText];
  v40 = v39;

  if (location == v38 && length == v40)
  {
    v41 = 0;
LABEL_49:
    v50 = v65;
    v60 = v66;
    v36 = v27;
    goto LABEL_50;
  }

LABEL_22:
  v42 = +[UIKeyboard usesInputSystemUI];
  if (v16)
  {
    if (v42)
    {
      v43 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v44 = [v16 rangeOfCharacterFromSet:v43];

      if (v44 == 0x7FFFFFFFFFFFFFFFLL && ![(_UIKeyboardStateManager *)self callShouldInsertText:v16])
      {
        v41 = 2;
        goto LABEL_49;
      }
    }
  }

  v64 = v16;
  v36 = v27;
  if (v22)
  {
    v45 = [(_UIKeyboardStateManager *)self documentState];
    v46 = [v45 documentStateAfterSettingMarkedText:v27 selectedRange:{location, length}];
    [(_UIKeyboardStateManager *)self setDocumentState:v46];
  }

  self->m_textInputChangesIgnored = 1;
  v47 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v48 = v68;
  [v47 setAttributedMarkedText:v68 selectedRange:{location, length}];

  self->m_textInputChangesIgnored = 0;
  v49 = [(_UIKeyboardStateManager *)self inputForMarkedText];
  if ([v49 length] && !-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText"))
  {
    v57 = [(_UIKeyboardStateManager *)self inputManagerState];
    v58 = [v57 suppressPlaceholderCandidate];

    v16 = v64;
    v50 = v65;
    if ((v58 & 1) == 0)
    {
      if (qword_1ED49D098 != -1)
      {
        dispatch_once(&qword_1ED49D098, &__block_literal_global_902);
      }

      v59 = [(_UIKeyboardStateManager *)self taskQueue];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __125___UIKeyboardStateManager__setAttributedMarkedText_selectedRange_inputString_lastInputString_searchString_compareAttributes___block_invoke_3;
      v70[3] = &unk_1E70FD058;
      v70[4] = self;
      [v59 addTask:v70 breadcrumb:qword_1ED49D090];
    }
  }

  else
  {

    v16 = v64;
    v50 = v65;
  }

  v51 = [(_UIKeyboardStateManager *)self asyncCapableInputDelegate];

  v52 = v67;
  if (!v51 || ![(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
  {
    goto LABEL_42;
  }

  v53 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  if (([v53 delegateRespondsToSelector:sel_requestDocumentContext_completionHandler_] & 1) == 0)
  {

    v16 = v64;
    goto LABEL_42;
  }

  v54 = [(_UIKeyboardStateManager *)self candidateViewOffset];

  v16 = v64;
  if (v54 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_42:
    [(_UIKeyboardStateManager *)self setCharacterRectsForCharacterRange:0];
    goto LABEL_43;
  }

  v55 = objc_alloc_init(UIWKDocumentRequest);
  [(UIWKDocumentRequest *)v55 setFlags:33];
  v56 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __125___UIKeyboardStateManager__setAttributedMarkedText_selectedRange_inputString_lastInputString_searchString_compareAttributes___block_invoke_4;
  v69[3] = &unk_1E70FD3C0;
  v69[4] = self;
  [v56 requestDocumentContext:v55 completionHandler:v69];

  v52 = v67;
LABEL_43:
  if (objc_opt_respondsToSelector())
  {
    m_candidateList = self->m_candidateList;
    v62 = [(_UIKeyboardStateManager *)self inputStringFromPhraseBoundary];
    [(UIKeyboardCandidateList *)m_candidateList setInlineText:v62];

    v52 = v67;
  }

  v60 = v66;
  if ([(UIKeyboardCandidateList *)self->m_candidateList isExtendedList])
  {
    self->m_hasEditedMarkedTextInExtendedView = 1;
  }

  [(_UIKeyboardStateManager *)self setChangedDelegate];
  v41 = 1;
LABEL_51:

  return v41;
}

- (BOOL)supportsSetPhraseBoundary
{
  v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 rtiInputSourceState];
    v7 = [v6 supportsSetPhraseBoundary];
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self inputManagerState];
    v7 = [v5 supportsSetPhraseBoundary];
  }

  return v7;
}

- (BOOL)hasEditableMarkedText
{
  v3 = [(_UIKeyboardStateManager *)self _hasMarkedText];
  if (v3)
  {

    LOBYTE(v3) = [(_UIKeyboardStateManager *)self supportsSetPhraseBoundary];
  }

  return v3;
}

- (BOOL)hasInlineCompletionAsMarkedText
{
  v2 = [(_UIKeyboardStateManager *)self inlineCompletionAsMarkedText];
  v3 = v2 != 0;

  return v3;
}

- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 options:(unint64_t)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [(__CFString *)v11 length];
  v15 = *MEMORY[0x1E695E480];
  v16 = [MEMORY[0x1E695DF58] currentLocale];
  v39.location = 0;
  v39.length = v14;
  v17 = CFStringTokenizerCreate(v15, v11, v39, 0, v16);
  if (v17)
  {
    v18 = v17;
    while (CFStringTokenizerAdvanceToNextToken(v18))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v18);
      v20 = [MEMORY[0x1E696B098] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
      [v13 addObject:v20];
    }

    CFRelease(v18);
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = [v21 currentInputMode];
    v23 = [v22 normalizedIdentifier];

    v24 = 0;
    v25 = 0;
    do
    {
      v25 |= TISmartSelectionOptionFromUISmartSelectionOption((1 << v24++) & a5);
    }

    while (v24 != 64);
    v26 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [v26 lock];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    [v26 unlock];
    v27 = [(_UIKeyboardStateManager *)self inputManager];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __86___UIKeyboardStateManager_smartSelectionForTextInDocument_inRange_options_completion___block_invoke;
    v31[3] = &unk_1E70FD3E8;
    v28 = v26;
    v32 = v28;
    v34 = &v35;
    v29 = v12;
    v33 = v29;
    [v27 smartSelectionForTextInDocument:v11 inRange:location language:length tokenizedRanges:v23 options:v13 completion:{v25, v31}];

    [v28 lock];
    if ((v36[3] & 1) == 0)
    {
      v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      [v28 waitUntilDate:v30];

      if ((v36[3] & 1) == 0)
      {
        (*(v29 + 2))(v29, location, length);
        *(v36 + 24) = 1;
      }
    }

    [v28 unlock];

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    (*(v12 + 2))(v12, location, length);
  }
}

- (id)searchStringForMarkedText
{
  v3 = [(TIKeyboardState *)self->m_keyboardState searchStringForMarkedText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self _markedText];
    v7 = v6;
    v8 = &stru_1EFB14550;
    if (v6)
    {
      v8 = v6;
    }

    v5 = v8;
  }

  return v5;
}

- (id)inputStringFromPhraseBoundary
{
  v3 = [(_UIKeyboardStateManager *)self documentState];
  v4 = [v3 markedText];
  v5 = [v4 copy];

  if ([(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
  {
    v6 = [(_UIKeyboardStateManager *)self documentState];
    v7 = [v6 selectedRangeInMarkedText];

    if (v7)
    {
      if (v7 < [v5 length])
      {
        v8 = [v5 substringToIndex:v7];

        v5 = v8;
      }
    }
  }

  return v5;
}

- (BOOL)cursorIsAtEndOfMarkedText
{
  result = 0;
  if ([(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
  {
    v3 = [(_UIKeyboardStateManager *)self documentState];
    v4 = [v3 selectedRangeInMarkedText];

    v5 = [(_UIKeyboardStateManager *)self documentState];
    v6 = [v5 markedText];
    v7 = [v6 length];

    if (v4 == v7)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)cursorIsAtStartOfInlineCompletionMarkedText
{
  v3 = [(_UIKeyboardStateManager *)self inlineCompletionAsMarkedText];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v5 = [v4 selectedTextRange];

    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 markedTextRange];

    if ([v5 isEmpty])
    {
      v8 = [v5 end];
      v9 = [v7 start];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)syncDocumentStateToInputDelegate
{
  if (qword_1ED49D0A8 != -1)
  {
    dispatch_once(&qword_1ED49D0A8, &__block_literal_global_914);
  }

  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___UIKeyboardStateManager_syncDocumentStateToInputDelegate__block_invoke_3;
  v4[3] = &unk_1E70FD058;
  v4[4] = self;
  [v3 performSingleTask:v4 breadcrumb:qword_1ED49D0A0];
}

- (void)documentStateFromInputDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  if (v5)
  {
    if (!self->m_textInputChangingText && !self->m_textInputUpdatingSelection)
    {
      v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v7 = [v6 forwardingInputDelegate];

      if (!v7)
      {
        v14 = [v5 documentState];
        v15 = [v14 documentState];
LABEL_16:
        v17 = v15;
        v4[2](v4, v15);

        goto LABEL_10;
      }
    }
  }

  v8 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
  if (!v8)
  {
    v9 = [(_UIKeyboardStateManager *)self webInputDelegate];

    if (v9)
    {
      goto LABEL_8;
    }

    v12 = [(_UIKeyboardStateManager *)self asyncWebKitInteractionDelegate];

    if (v12)
    {
      v13 = [(_UIKeyboardStateManager *)self asyncWebKitInteractionDelegate];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __58___UIKeyboardStateManager_documentStateFromInputDelegate___block_invoke_2;
      v47[3] = &unk_1E70FD438;
      v48 = v4;
      [v13 requestAutocorrectionContextWithCompletionHandler:v47];

      v11 = v48;
      goto LABEL_9;
    }

    if ([(UITextInputTraits *)self->m_traits isSecureTextEntry])
    {
      v16 = MEMORY[0x1E69D9590];
      v14 = [(_UIKeyboardStateManager *)self inputDelegate];
      v15 = [v16 documentStateOfSecureTextDocument:v14];
      goto LABEL_16;
    }

    if (v5 || (-[TIKeyboardState textInputTraits](self->m_keyboardState, "textInputTraits"), v18 = objc_claimAutoreleasedReturnValue(), [v18 recentInputIdentifier], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
    {
      v20 = MEMORY[0x1E69D9590];
      v21 = [(_UIKeyboardStateManager *)self inputDelegate];
      v22 = [v20 documentStateOfDocumentWithRecentInputIdentifier:v21];
    }

    else
    {
      v43 = MEMORY[0x1E69D9590];
      v21 = [(_UIKeyboardStateManager *)self inputDelegate];
      v22 = [v43 documentStateOfDocument:v21];
    }

    v23 = v22;

    v24 = +[UIKeyboardInputModeController sharedInputModeController];
    v25 = [v24 currentInputMode];
    v26 = [v25 isExtensionInputMode];

    if (!v26)
    {
LABEL_31:
      v4[2](v4, v23);

      goto LABEL_10;
    }

    if (WebKitFramework)
    {
      v27 = [(_UIKeyboardStateManager *)self inputDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v29 = [v23 contextBeforeInput];
        v30 = [v29 length];

        if (!v30)
        {
          v31 = [v23 documentStateAfterInsertingText:@"\n"];

          v23 = v31;
        }
      }
    }

    v32 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v33 = [v32 selectedTextRange];

    if (v33)
    {
      v34 = [(_UIKeyboardStateManager *)self inputDelegate];
      v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v36 = [v35 beginningOfDocument];
      v37 = [v33 start];
      if ([v34 comparePosition:v36 toPosition:v37] == 1)
      {
      }

      else
      {
        [(_UIKeyboardStateManager *)self inputDelegate];
        v38 = v45 = v35;
        [v33 end];
        v39 = v46 = v34;
        v40 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v41 = [v40 endOfDocument];
        v44 = [v38 comparePosition:v39 toPosition:v41];

        if (v44 != 1)
        {
LABEL_30:

          goto LABEL_31;
        }
      }
    }

    v42 = [objc_alloc(MEMORY[0x1E69D9590]) initWithContextBefore:0 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

    v23 = v42;
    goto LABEL_30;
  }

LABEL_8:
  v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __58___UIKeyboardStateManager_documentStateFromInputDelegate___block_invoke;
  v49[3] = &unk_1E70FD410;
  v50 = v4;
  [v10 requestTextContextForAutocorrectionWithCompletionHandler:v49];

  v11 = v50;
LABEL_9:

LABEL_10:
}

- (void)syncDocumentStateToInputDelegateWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self documentState];
  v6 = [v5 _selectedTextRange];
  v8 = v7;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80___UIKeyboardStateManager_syncDocumentStateToInputDelegateWithExecutionContext___block_invoke;
  v10[3] = &unk_1E70FD488;
  v11 = v4;
  v12 = self;
  v13 = v6;
  v14 = v8;
  v9 = v4;
  [(_UIKeyboardStateManager *)self documentStateFromInputDelegate:v10];
}

- (void)prepareForSelectionChange
{
  if (!self->m_selecting && !self->m_textInputChangesIgnored)
  {
    v3 = [(_UIKeyboardStateManager *)self taskQueue];
    if (([v3 isMainThreadExecutingTask] & 1) == 0)
    {
      v4 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v5 = [v4 requestedAutocorrection];

      if (v5)
      {
        goto LABEL_7;
      }

      v3 = [(_UIKeyboardStateManager *)self taskQueue];
      [v3 waitUntilAllTasksAreFinished];
    }

LABEL_7:
    if (self->m_textInputChangingText)
    {
LABEL_13:
      [(_UIKeyboardStateManager *)self dismissTextChoicePrompt];
      self->m_selecting = 1;
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      [WeakRetained assertCursorForForSelectionChange];

      v9 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
      v10 = [v9 activeSelection];
      v11 = [v10 selectedRange];
      self->m_selectionIsEmpty = [v11 isEmpty];

      return;
    }

    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    if (([v6 insideKeyInputDelegateCall] & 1) == 0 && !-[_UIKeyboardStateManager hasEditableMarkedText](self, "hasEditableMarkedText"))
    {
      v7 = +[UIDictationController activeInstance];
      if (![v7 dictationIsModifyingText])
      {
        v12 = [(_UIKeyboardStateManager *)self utlizeEuclidModelForDictationReplacement];

        if (v12)
        {
          goto LABEL_13;
        }

        if (+[UIKeyboard usesInputSystemUI]&& ([(_UIKeyboardStateManager *)self inlineCompletionAsMarkedText], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
        {
          v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v25 = [v24 selectedTextRange];
          pendingAutocorrectRange = self->_pendingAutocorrectRange;
          self->_pendingAutocorrectRange = v25;

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __52___UIKeyboardStateManager_prepareForSelectionChange__block_invoke;
          v27[3] = &unk_1E70F5AC0;
          v27[4] = self;
          v15 = v27;
          v14 = self;
        }

        else
        {
          if (![(_UIKeyboardStateManager *)self _shouldAcceptAutocorrectionOnSelectionChange])
          {
            if (self->m_userChangedSelection)
            {
              goto LABEL_13;
            }

            v16 = [(_UIKeyboardStateManager *)self inputManagerState];

            if (!v16)
            {
              goto LABEL_13;
            }

            v17 = MEMORY[0x1E69D95F0];
            v18 = [(_UIKeyboardStateManager *)self inputManagerState];
            v19 = [v18 inputString];
            v6 = [v17 candidateWithUnchangedInput:v19];

            v20 = [(_UIKeyboardStateManager *)self inputManagerState];
            LOBYTE(v19) = objc_opt_respondsToSelector();

            if (v19)
            {
              v21 = v6;
              v22 = [(_UIKeyboardStateManager *)self inputManagerState];
              v23 = [v22 valueForKey:@"learningFlagsForLastAcceptedCandidate"];
              [v21 performSelector:sel_setLearningFlags_ withObject:v23];
            }

            [(_UIKeyboardStateManager *)self textAccepted:v6];
            goto LABEL_12;
          }

          v14 = self;
          v15 = 0;
        }

        [(_UIKeyboardStateManager *)v14 acceptAutocorrectionWithCompletionHandler:v15];
        goto LABEL_13;
      }
    }

LABEL_12:

    goto LABEL_13;
  }
}

- (void)selectionWillChange:(id)a3
{
  v4 = a3;
  m_textInputChangingCount = self->m_textInputChangingCount;
  self->m_textInputChangingCount = m_textInputChangingCount + 1;
  if (!m_textInputChangingCount && !self->m_textInputChangesIgnored)
  {
    v16 = v4;
    [(_UIKeyboardStateManager *)self prepareForSelectionChange];
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 forwardingInputDelegate];
    if ([v7 isEditing])
    {
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [v16 interactionAssistant];
        v10 = [v9 view];
        v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v12 = [v11 forwardingInputDelegate];

        if (v10 == v12)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
    }

    if (!+[UIKeyboard usesInputSystemUI])
    {
      goto LABEL_11;
    }

    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = [v13 shouldRespectForwardingInputDelegate];

    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    [(_UIKeyboardStateManager *)self clearForwardingInputDelegateAndResign:1];
LABEL_11:
    v15 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v15 selectionWillChange];

    v4 = v16;
  }
}

- (void)setSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  v6 = [v5 activeSelection];

  [v6 setSelectionWithPoint:{x, y}];
  [v6 commit];
}

- (void)updateForChangedSelection
{
  if (qword_1ED49D0C8 != -1)
  {
    dispatch_once(&qword_1ED49D0C8, &__block_literal_global_935);
  }

  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52___UIKeyboardStateManager_updateForChangedSelection__block_invoke_3;
  v4[3] = &unk_1E70FD058;
  v4[4] = self;
  [v3 performSingleTask:v4 breadcrumb:qword_1ED49D0C0];
}

- (void)updateForChangedSelectionWithExecutionContext:(id)a3
{
  v4 = a3;
  if (![(_UIKeyboardStateManager *)self _hasMarkedText]|| ![(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
  {
    [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:0];
  }

  if ([(_UIKeyboardStateManager *)self hasAdvancedInputDelegate])
  {
    [(_UIKeyboardStateManager *)self clearTransientState];
    if ([(_UIKeyboardStateManager *)self _hasMarkedText])
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      [WeakRetained clearCursorAssertion];

      [(_UIKeyboardStateManager *)self updateCandidateDisplay];
      v6 = &__block_literal_global_941;
    }

    else
    {
      [(_UIKeyboardStateManager *)self clearInput];
      [(_UIKeyboardStateManager *)self setPreviousInputString:0];
      self->m_userChangedSelection = 1;
      self->m_suggestionsShownForCurrentDeletion = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73___UIKeyboardStateManager_updateForChangedSelectionWithExecutionContext___block_invoke_3;
      v9[3] = &unk_1E70FD058;
      v9[4] = self;
      v6 = v9;
    }

    v8 = [v4 childWithContinuation:v6];
    [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegateWithExecutionContext:v8];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69D9590]) initWithContextBefore:0 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [(_UIKeyboardStateManager *)self setDocumentState:v7];

    v8 = [v4 childWithContinuation:&__block_literal_global_939];
    [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardStateWithExecutionContext:v8];
  }
}

- (void)completeUpdateForChangedSelection:(BOOL)a3
{
  v3 = a3;
  [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
  if (v3)
  {
    [(_UIKeyboardStateManager *)self updateReturnKey];
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [WeakRetained hasCursorAssertion];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v7 clearCursorAssertion];
  }

  else
  {
    v7 = [(_UIKeyboardStateManager *)self _activeAssertionController];
    [v7 _updateSubjectWithAssertionState];
  }

  if ([(_UIKeyboardStateManager *)self noContent])
  {
    [(_UIKeyboardStateManager *)self setInitialDirection];
  }

  self->m_doubleSpacePeriodWasAppliedInCurrentContext = 0;
  self->m_suggestionsShownForCurrentDeletion = 0;
  v8 = objc_loadWeakRetained(&self->_presentationDelegate);
  [v8 updateStylingTraitsIfNeeded];

  self->m_didAutomaticallyInsertSpace = 0;
  if (!self->m_textInputChangingText)
  {
    v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v9 changedSelection];
  }

  v10 = [(_UIKeyboardStateManager *)self textSelectionController];
  [v10 selectionDidChange];

  v11 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v11 selectionDidChange];

  v12 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
  [v12 selectionDidChange];

  m_selectionIsEmpty = self->m_selectionIsEmpty;
  v14 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  v15 = [v14 activeSelection];
  v16 = [v15 selectedRange];
  v17 = [v16 isEmpty];

  if (m_selectionIsEmpty != v17)
  {
    self->m_editingTraitsMarkedDirty = 1;
  }
}

- (void)selectionDidChange:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 keyInputDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v9 = [v8 keyInputDelegate];
      [v9 _selectionDidUpdate];
    }
  }

  m_textInputChangingCount = self->m_textInputChangingCount;
  if (m_textInputChangingCount == 1)
  {
    if (!self->m_ignoreSelectionChange || !self->m_textInputChangesIgnored || self->m_textInputChangingText)
    {
      self->m_textInputChangingCount = 0;
      goto LABEL_14;
    }

    if (qword_1ED49D0D8 != -1)
    {
      dispatch_once(&qword_1ED49D0D8, &__block_literal_global_947);
    }

    v11 = [(_UIKeyboardStateManager *)self taskQueue];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __46___UIKeyboardStateManager_selectionDidChange___block_invoke_3;
    v40[3] = &unk_1E70FD058;
    v40[4] = self;
    [v11 addTask:v40 breadcrumb:qword_1ED49D0D0];

    m_textInputChangingCount = self->m_textInputChangingCount;
  }

  if (!m_textInputChangingCount)
  {
    goto LABEL_39;
  }

  v12 = m_textInputChangingCount - 1;
  self->m_textInputChangingCount = v12;
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_14:
  if (self->m_textInputChangesIgnored)
  {
    goto LABEL_39;
  }

  self->m_textInputUpdatingSelection = 1;
  if (self->m_textInputChangingText)
  {
    [(_UIKeyboardStateManager *)self textChanged:v4];
  }

  else if ([(_UIKeyboardStateManager *)self noContent])
  {
    if (qword_1ED49D0E8 != -1)
    {
      dispatch_once(&qword_1ED49D0E8, &__block_literal_global_953);
    }

    v13 = [(_UIKeyboardStateManager *)self taskQueue];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __46___UIKeyboardStateManager_selectionDidChange___block_invoke_6;
    v39[3] = &unk_1E70FD058;
    v39[4] = self;
    [v13 addTask:v39 breadcrumb:qword_1ED49D0E0];
  }

  else
  {
    [(_UIKeyboardStateManager *)self updateForChangedSelection];
  }

  self->m_textInputChangingText = 0;
  self->m_textInputUpdatingSelection = 0;
  v14 = [(_UIKeyboardStateManager *)self inputDelegate];
  v15 = [v14 _textSelectingContainer];
  v16 = [v15 interactionAssistant];

  if (!v16)
  {
    if ([(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
    {
      v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v18 = [v17 markedTextRange];

      if (!v18)
      {
        v19 = [(_UIKeyboardStateManager *)self inputDelegate];
        [v19 _setGestureRecognizers];
      }
    }
  }

  v20 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  if (([v20 inputSystemClientEnabled] & 1) == 0)
  {
    goto LABEL_31;
  }

  v21 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v22 = [v21 isNotifyingDelegateOfRemoteOutputOperation];

  if ((v22 & 1) == 0)
  {
    if (qword_1ED49D0F8 != -1)
    {
      dispatch_once(&qword_1ED49D0F8, &__block_literal_global_959);
    }

    v20 = [(_UIKeyboardStateManager *)self taskQueue];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46___UIKeyboardStateManager_selectionDidChange___block_invoke_9;
    v38[3] = &unk_1E70FD058;
    v38[4] = self;
    [v20 addTask:v38 breadcrumb:qword_1ED49D0F0];
LABEL_31:
  }

  if (!self->_remoteTextInputPartner)
  {
    goto LABEL_39;
  }

  v23 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  if ([v23 isNotifyingDelegateOfRemoteOutputOperation])
  {
    goto LABEL_34;
  }

  v24 = [(_UIKeyboardStateManager *)self inputDelegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v23 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    if (v23)
    {
      v26 = +[UIKeyboard isMajelSupported](UIKeyboard, "isMajelSupported") && +[UIDictationController isRunning];
      v27 = +[UIKeyboardCameraSession activeSession];

      if (!self->m_suppressingDocumentAssertions && !v26 && !v27)
      {
        v28 = [(_UIKeyboardStateManager *)self documentState];
        v29 = [v28 contextBeforeInput];
        v30 = [v29 length];
        v31 = [v28 selectedText];
        v32 = [v31 length];

        if (!+[UIKeyboard isKeyboardProcess])
        {
          v33 = [v28 fullString];
          v34 = [v23 textOperations];
          [v34 setTextToAssert:v33];
        }

        v35 = [v23 textOperations];
        [v35 setSelectionRangeToAssert:{v30, v32}];

        v36 = [(_UIKeyboardStateManager *)self buildInputSourceState];
        v37 = [v23 textOperations];
        [v37 setInputSourceState:v36];

        [v23 flushOperations];
      }
    }

LABEL_34:
  }

LABEL_39:
  [(_UIKeyboardStateManager *)self setArrowKeyHistory:0];
  if (!self->m_textInputChangesIgnored)
  {
    [(_UIKeyboardStateManager *)self postInputResponderCapabilitiesChangedNotification];
  }
}

- (void)updateTextChoicePromptSelection:(id)a3 toRange:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 selectedTextRange];
  if (v7)
  {
    v8 = [v6 start];
    v9 = [v7 start];
    if ([v13 comparePosition:v8 toPosition:v9])
    {
    }

    else
    {
      v10 = [v6 end];
      v11 = [v7 end];
      v12 = [v13 comparePosition:v10 toPosition:v11];

      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  [(_UIKeyboardStateManager *)self selectionWillChange:v13];
  [v13 setSelectedTextRange:v6];
  [(_UIKeyboardStateManager *)self selectionDidChange:v13];
LABEL_6:
}

- (void)deleteHandwritingStrokesAtIndexes:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v5 = [WeakRetained layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_loadWeakRetained(&self->_presentationDelegate);
    v8 = [v7 layout];
    [v8 deleteHandwritingStrokesAtIndexes:v9];
  }
}

- (void)showSelectionCommands
{
  v2 = [(_UIKeyboardStateManager *)self _editMenuAssistant];
  [v2 showSelectionCommands];
}

- (void)acceptingCandidateWithTrigger:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = objc_alloc_init(NSClassFromString(&cfstr_Rtiinputoperat.isa));
    [v5 setActionSelector:sel_acceptingCandidateWithTrigger_];
    v9 = @"candidateAcceptedTrigger";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    [v5 setCustomInfo:v6];
    [v5 setCustomInfoType:0x1EFB7CB30];
    v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v7 performInputOperation:v5];
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self inputManager];
    [v8 acceptingCandidateWithTrigger:v4];
  }
}

- (void)changingContextWithTrigger:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v5 = objc_alloc_init(NSClassFromString(&cfstr_Rtiinputoperat.isa));
    [v5 setActionSelector:sel_changingContextWithTrigger_];
    v9 = @"contextChangeTrigger";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    [v5 setCustomInfo:v6];
    [v5 setCustomInfoType:0x1EFB7CB30];
    v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v7 performInputOperation:v5];
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self inputManager];
    [v8 changingContextWithTrigger:v4];
  }
}

- (void)syncInputManagerToKeyboardState
{
  if (qword_1ED49D108 != -1)
  {
    dispatch_once(&qword_1ED49D108, &__block_literal_global_976);
  }

  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___UIKeyboardStateManager_syncInputManagerToKeyboardState__block_invoke_3;
  v4[3] = &unk_1E70FD058;
  v4[4] = self;
  [v3 performSingleTask:v4 breadcrumb:qword_1ED49D100];
}

- (void)syncInputManagerToKeyboardStateWithExecutionContext:(id)a3
{
  v4 = a3;
  [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  v5 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v5 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v5 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79___UIKeyboardStateManager_syncInputManagerToKeyboardStateWithExecutionContext___block_invoke;
  v20[3] = &unk_1E70FD4D0;
  v6 = v4;
  v21 = v6;
  v22 = self;
  v7 = [v20 copy];
  v8 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if ([v8 oldPathForSnapshot] && !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess"))
  {
    v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v15 = [v14 visualModeManager];
    if ([v15 useVisualModeWindowed])
    {
      v16 = [(_UIKeyboardStateManager *)self shouldAccessInputManagerService];

      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_11:
    [v6 returnExecutionToParent];
    goto LABEL_12;
  }

  v9 = [(_UIKeyboardStateManager *)self shouldAccessInputManagerService];

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = [MEMORY[0x1E69D96B0] sharedInstance];
  v11 = [v10 flush];
  [v5 setStatisticChanges:v11];

  v12 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v12))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.syncToKeyboardState", "", v19, 2u);
  }

  v13 = [(_UIKeyboardStateManager *)self backendController];
  [v13 syncToKeyboardState:v5 completionHandler:v7];

LABEL_12:
  v17 = [v5 inputContextHistory];

  if (v17)
  {
    v18 = [v5 inputContextHistory];
    [v18 assertCheckpointForCoding];
  }
}

- (void)syncKeyboardToConfiguration:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 inputManagerState];
  [(_UIKeyboardStateManager *)self setInputManagerState:v5];

  v6 = [v4 intermediateText];

  if (v6)
  {
    v7 = [v4 intermediateText];
    [(_UIKeyboardStateManager *)self assertIntermediateText:v7];
  }

  if ([v4 assertDefaultKeyPlane] && -[_UIKeyboardStateManager isShifted](self, "isShifted") && !-[_UIKeyboardStateManager isShiftLocked](self, "isShiftLocked"))
  {
    [(_UIKeyboardStateManager *)self setShift:0];
  }

  v8 = [v4 layoutTag];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [WeakRetained layout];
    v11 = [v4 layoutTag];
    [v10 setLayoutTag:v11];
  }

  v12 = [v4 accentKeyString];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_presentationDelegate);
    v14 = [v4 accentKeyString];
    [v13 setLabel:v14 forKey:@"_keyid_accent_"];
  }

  v43 = v4;
  v15 = [v4 contextualDisplayKeys];
  v16 = v15;
  if (v15)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v45)
    {
      v44 = *v51;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(v16);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = v16;
          v20 = [v16 objectForKey:v18];
          v21 = objc_loadWeakRetained(&self->_presentationDelegate);
          v22 = [v21 activeLayout];
          v23 = [v22 currentKeyplane];
          v24 = [v23 keysWithRepresentedString:v18];

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v47;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v47 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v46 + 1) + 8 * j);
                v31 = objc_loadWeakRetained(&self->_presentationDelegate);
                v32 = [v30 name];
                [v31 setLabel:v20 forKey:v32];
              }

              v27 = [v25 countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v27);
          }

          v16 = v19;
        }

        v45 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v45);
    }
  }

  else if (!v12)
  {
    goto LABEL_30;
  }

  v33 = objc_loadWeakRetained(&self->_presentationDelegate);
  v34 = [v33 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v36 = objc_loadWeakRetained(&self->_presentationDelegate);
    v37 = [v36 layout];
    [v37 updateKeyCentroids];
  }

LABEL_30:
  v38 = +[UIKeyboardInputModeController sharedInputModeController];
  v39 = [v38 currentInputMode];

  v40 = [v43 multilingualLanguages];
  [v39 setMultilingualLanguages:v40];

  if ([UIKBMultilingualKeyboardIntroductionView shouldShowIntroductionForInputMode:v39])
  {
    v41 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v41 presentMultilingualKeyboardTip:v39];
LABEL_34:

    goto LABEL_35;
  }

  if ([UIKBMultilingualSettingIntroductionView shouldShowIntroductionForInputMode:v39])
  {
    v41 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v41 presentMultilingualSettingTip:v39];
    goto LABEL_34;
  }

LABEL_35:
  v42 = [v43 trialParameters];
  [UIKBAnalyticsDispatcher setKeyboardTrialParameters:v42];
}

- (void)handleKeyboardInput:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, v6);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "appInput", " enableTelemetry=YES ", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [objc_opt_class() sendPerformanceNotification:@"UIKeyboardPerformanceHandleInputStartNotification"];

  [(_UIKeyboardStateManager *)self cancelCandidateRequests];
  [(_UIKeyboardStateManager *)self refreshKeyboardStateUpdatingSecureCandidateRenderTraits:0];
  v12 = [(_UIKeyboardStateManager *)self touchEventWaitingForKeyInputEvent];
  [v6 setTouchEvent:v12];

  [(_UIKeyboardStateManager *)self setTouchEventWaitingForKeyInputEvent:0];
  v13 = [v6 touchEvent];
  [v13 timestamp];
  v15 = v14;

  v16 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v16 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v16 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v17 = [v6 acceptedCandidate];
  v18 = [v17 slotID];
  v19 = v18 != 0;

  v20 = [v6 acceptedCandidate];
  v21 = 0;
  if (objc_opt_respondsToSelector())
  {
    v22 = [v6 acceptedCandidate];
    v21 = [v22 isHideMyEmailType];
  }

  if (v18 && self->m_cachedAutofillMode == 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (+[UIKeyboard isKeyboardProcess]& v21) == 1 && self->m_cachedAutofillMode == 3;
  }

  if ([v6 isBackspace])
  {
    [(_UIKeyboardStateManager *)self removeTextChoicePromptWithUnderline];
    if ([(_UIKeyboardStateManager *)self usesCandidateSelection]&& [(_UIKeyboardStateManager *)self markedTextFromClient])
    {
      v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v24 deleteBackward];

      [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
      [(_UIKeyboardStateManager *)self setMarkedTextFromClient:0];
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
  }

  location = 0;
  v25 = [v6 acceptedCandidate];
  v26 = [v25 customInfoType];

  if (v26)
  {
    v27 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v28 = [v27 autofillPayloadDelegate];
    objc_storeWeak(&location, v28);
  }

  *buf = 0;
  v47 = buf;
  v48 = 0x2020000000;
  m_textInputSource = self->m_textInputSource;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke;
  v38[3] = &unk_1E70FD570;
  v29 = v6;
  v43[1] = v15;
  v39 = v29;
  v40 = self;
  v44 = v19;
  objc_copyWeak(v43, &location);
  v42 = buf;
  v45 = v23;
  v30 = v7;
  v41 = v30;
  v31 = [v38 copy];
  if (v23)
  {
    objc_initWeak(&from, v30);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_7;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v36, &from);
    v32 = _Block_copy(aBlock);
    [v30 setPendingCompletionBlock:v32];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&from);
  }

  if ([(_UIKeyboardStateManager *)self shouldAccessInputManagerService])
  {
    v33 = _UIKeyboardLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(from) = 0;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "Keyboard sends inputEvent to kbd", &from, 2u);
    }

    v34 = [(_UIKeyboardStateManager *)self backendController];
    [v34 handleKeyboardInput:v29 keyboardState:v16 completionHandler:v31];
  }

  else
  {
    [v30 returnExecutionToParent];
  }

  objc_destroyWeak(v43);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

- (void)updateKeyboardOutput:(id)a3 withInputForSmartPunctuation:(id)a4 keyboardConfiguration:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isPopupVariant])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 isFlick];
  }

  m_smartPunctuationController = self->m_smartPunctuationController;
  v12 = [v21 insertionText];
  v13 = [(_UIKeyboardStateManager *)self documentState];
  v14 = [(TISmartPunctuationController *)m_smartPunctuationController smartPunctuationOutputForInput:v12 isLockedInput:v10 documentState:v13];

  if ([v14 deletionCount])
  {
    v15 = [v9 intermediateText];
    v16 = [v15 displayString];
    v17 = [v16 length];

    if (!v17)
    {
      [v21 setDeletionCount:{objc_msgSend(v14, "deletionCount")}];
    }
  }

  v18 = [v14 insertionText];
  if ([v18 length])
  {
    v19 = [v21 insertionText];
    v20 = [v19 length];

    if (!v20)
    {
      goto LABEL_11;
    }

    v18 = [v14 insertionText];
    [v21 setInsertionText:v18];
  }

LABEL_11:
}

- (void)replaceAllTextInResponder:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[UIKeyboard isModelessActive])
  {
    v8 = +[UIDictationController activeInstance];
    [v8 cancelDictation];
  }

  v9 = [(_UIKeyboardStateManager *)self inputDelegate];

  if (v9 == v6)
  {
    if (!+[UIKeyboard isKeyboardProcess]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setText:&stru_1EFB14550];
    }

    [(_UIKeyboardStateManager *)self callShouldInsertText:v7];
    v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v11 = [v10 hasAsyncCapableInputDelegate];

    if (v11)
    {
      if (qword_1ED49D138 != -1)
      {
        dispatch_once(&qword_1ED49D138, &__block_literal_global_1047);
      }

      v12 = [(_UIKeyboardStateManager *)self taskQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62___UIKeyboardStateManager_replaceAllTextInResponder_withText___block_invoke_3;
      v20[3] = &unk_1E70FD058;
      v20[4] = self;
      [v12 addTask:v20 breadcrumb:qword_1ED49D130];

      v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v14 = [v13 textInputDelegate];

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v16 = [v15 textInputDelegate];
      [v16 selectAll:0];

      v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v18 = [v17 textInputDelegate];
      [v18 insertText:v7];
    }

    else
    {
      v17 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v17 _replaceDocumentWithText:v7];
    }

LABEL_18:
    v19 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v19 restoreKeyboardIfNeeded];

    goto LABEL_19;
  }

  if ([v6 conformsToProtocol:&unk_1EFE8B2D0])
  {
    [(_UIKeyboardStateManager *)self callShouldInsertText:v7 onDelegate:v6];
    [v6 _replaceDocumentWithText:v7];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 setText:v7];
  }

LABEL_19:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isSecureTextEntry])
  {
    [v6 _forceObscureAllText];
  }
}

- (BOOL)dontPushOneTimeCode
{
  v3 = +[UIKeyboard keyboardBundleIdentifier];
  if ([v3 hasPrefix:@"com.apple."])
  {
    v4 = [v3 hasPrefix:@"com.apple.social"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v5 = [(UITextInputTraits *)self->m_traits textContentType];
  v6 = [v5 isEqualToString:@"one-time-code"] ^ 1;

  return v6 & v4;
}

- (BOOL)insertAutoFillTextSuggestion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v22 = v5;
    [v6 _beginPinningInputViewsOnBehalfOfResponder:v5];

    v23 = v4;
    v7 = [v4 contents];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = +[UIKBAutofillController preferredInsertionOrder];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v7 objectForKey:v14];

          if (v15)
          {
            v16 = [(_UIKeyboardStateManager *)self autofillController];
            v17 = [v16 autofillGroup];
            v18 = [v17 objectForKey:v14];

            [v18 becomeFirstResponder];
            +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
            v19 = [v7 objectForKey:v14];
            [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v18 withText:v19];

            v11 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v20 _stopPinningInputViewsOnBehalfOfResponder:v22];

    v4 = v23;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)performKeyboardOutputInfo:(id)a3
{
  v149 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E69D9878];
    v132 = [v4 objectForKey:*MEMORY[0x1E69D9878]];
    if (v132 && (-[_UIKeyboardStateManager textInputTraits](self, "textInputTraits"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 acceptsPayloads], v7, v8))
    {
      v9 = +[UITextInputPayloadController sharedInstance];
      v10 = [v9 payloadDelegate];

      if (v10)
      {
        v11 = [v5 mutableCopy];
        [v11 removeObjectForKey:v6];
        [v10 handlePayload:v11 withPayloadId:v132];
      }
    }

    else
    {
      v12 = [v5 objectForKey:*MEMORY[0x1E69D9890]];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        [(_UIKeyboardStateManager *)self performSendCurrentLocation];
      }
    }

    if (-[_UIKeyboardStateManager dontPushOneTimeCode](self, "dontPushOneTimeCode") || ([v5 objectForKey:@"AutofillOneTimeCodeAvailable"], v14 = objc_claimAutoreleasedReturnValue(), (v129 = v14) == 0))
    {
      v129 = 0;
    }

    else if ([v14 BOOLValue])
    {
      [(_UIKeyboardStateManager *)self refreshKeyboardState];
      [(_UIKeyboardStateManager *)self generateAutofillCandidate];
    }

    v130 = [v5 objectForKey:@"ExternalCredentialData"];
    v15 = v130;
    if (v130)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        UIKeyboardSafariPresentExternalCredentialViewControllerForCredentialData(v130);
LABEL_101:

        goto LABEL_102;
      }
    }

    self->m_isAutofilling = 1;
    v16 = [(_UIKeyboardStateManager *)self autofillController];
    v17 = [v16 autofillGroup];
    v133 = [v17 objectForKey:@"UIAutofillContextKey"];

    if (!v133)
    {
      if (AutoFillUILibraryCore() && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 hasAsyncCapableInputDelegate], v18, v19))
      {
        v20 = [(_UIKeyboardStateManager *)self autofillController];
        v21 = [v20 autofillGroup];
        v144 = 0;
        v145 = &v144;
        v146 = 0x2020000000;
        v22 = getAFUIAutoFillContextKeySymbolLoc_ptr;
        v147 = getAFUIAutoFillContextKeySymbolLoc_ptr;
        if (!getAFUIAutoFillContextKeySymbolLoc_ptr)
        {
          v139 = MEMORY[0x1E69E9820];
          v140 = 3221225472;
          v141 = __getAFUIAutoFillContextKeySymbolLoc_block_invoke;
          v142 = &unk_1E70F2F20;
          v143 = &v144;
          v23 = AutoFillUILibrary();
          v145[3] = dlsym(v23, "AFUIAutoFillContextKey");
          getAFUIAutoFillContextKeySymbolLoc_ptr = *(v143[1] + 24);
          v22 = v145[3];
        }

        _Block_object_dispose(&v144, 8);
        if (!v22)
        {
          v121 = [MEMORY[0x1E696AAA8] currentHandler];
          v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFUIAutoFillContextKey(void)"];
          [v121 handleFailureInFunction:v122 file:@"_UIKeyboardStateManager.m" lineNumber:319 description:{@"%s", dlerror()}];

          __break(1u);
        }

        v133 = [v21 objectForKey:*v22];
      }

      else
      {
        v133 = 0;
      }
    }

    v131 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69D98A0]];
    v24 = *MEMORY[0x1E69D9888];
    v125 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69D9888]];
    if ([v133 count] && v131 | v125)
    {
      v25 = [(_UIKeyboardStateManager *)self inputDelegate];
      v26 = [v133 objectForKey:@"_WebViewURL"];

      if (v25)
      {
        goto LABEL_40;
      }

      v27 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      v28 = v27 != 0;

      if (v28 && v26 != 0)
      {
        v25 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      }

      else
      {
        v25 = 0;
      }

      if (!v25 && v26)
      {
        v29 = [(_UIKeyboardStateManager *)self autofillController];
        v30 = [v29 autofillGroup];
        v31 = [v30 objectForKey:@"UIAutofillPossibleRespondersKey"];

        if (AutoFillUILibraryCore() && !v31)
        {
          v32 = [(_UIKeyboardStateManager *)self autofillController];
          v33 = [v32 autofillGroup];
          v34 = getAFUIAutoFillPossibleRespondersKey();
          v31 = [v33 objectForKey:v34];
        }

        v25 = [v31 firstObject];
        if (objc_opt_respondsToSelector())
        {
          [v25 becomeFirstResponder];
        }
      }

      if (v25)
      {
LABEL_40:
        v35 = [(_UIKeyboardStateManager *)self autofillController];
        v36 = [v35 autofillContextForInputDelegate:v25];

        if ([v36 count] && (objc_msgSend(v133, "isEqualToDictionary:", v36) & 1) != 0)
        {
          v37 = [UITextAutofillSuggestion autofillSuggestionWithUsername:v131 password:v125];
          v38 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v39 = [v38 insertTextSuggestion:v37];

          if (v39)
          {
            v40 = 0;
            v127 = 1;
            goto LABEL_48;
          }
        }

        else
        {
        }
      }

      else
      {
        objc_storeStrong(&self->m_autofillCustomInfo, a3);
      }
    }

    if ([v131 length])
    {
      v41 = [(_UIKeyboardStateManager *)self autofillController];
      v42 = [v41 autofillGroup];
      v43 = [v42 objectForKey:@"username"];

      [v43 becomeFirstResponder];
      +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
      [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v43 withText:v131];

      v127 = 0;
      v40 = 1;
    }

    else
    {
      v127 = 0;
      v40 = 0;
    }

LABEL_48:
    v44 = *MEMORY[0x1E69D9898];
    v45 = [v5 objectForKey:*MEMORY[0x1E69D9898]];

    if (!v45)
    {
      goto LABEL_58;
    }

    v46 = [(_UIKeyboardStateManager *)self autofillController];
    v47 = [v46 autofillGroup];
    v48 = [v47 objectForKey:@"username"];

    v49 = v48 == 0;
    v50 = [(_UIKeyboardStateManager *)self autofillController];
    v51 = [v50 autofillGroup];
    v52 = v51;
    if (v49)
    {
      v54 = [v51 objectForKey:@"email"];

      if (!v54)
      {
        v55 = 0;
LABEL_54:
        [v55 becomeFirstResponder];
        v56 = [v5 objectForKey:v44];
        [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v55 withText:v56];

        v57 = [(_UIKeyboardStateManager *)self autofillController];
        v58 = [v57 autofillGroup];
        v59 = [v58 objectForKey:@"password"];

        if (v59 || (-[_UIKeyboardStateManager autofillController](self, "autofillController"), v60 = objc_claimAutoreleasedReturnValue(), [v60 autofillGroup], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "objectForKey:", @"new-password"), v59 = objc_claimAutoreleasedReturnValue(), v61, v60, v59))
        {
          [v55 resignFirstResponder];
          [v59 becomeFirstResponder];
        }

LABEL_58:
        v62 = *MEMORY[0x1E69D9880];
        v63 = [v5 objectForKey:*MEMORY[0x1E69D9880]];

        if (!v63)
        {
          goto LABEL_75;
        }

        v64 = [(_UIKeyboardStateManager *)self autofillController];
        v65 = [v64 autofillGroup];
        v66 = [v65 objectForKey:@"one-time-code"];

        v67 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        LOBYTE(v65) = [v67 isFirstResponder];

        if ((v65 & 1) == 0)
        {
          v68 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          [v68 becomeFirstResponder];
        }

        v69 = [v5 objectForKey:v62];
        v70 = [(_UIKeyboardStateManager *)self inputDelegate];
        v71 = v70;
        if (v66 == v70)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v66 withText:&stru_1EFB14550];
            v73 = [v69 length];
            if (v73 >= 1)
            {
              v74 = 0;
              v75 = v73 & 0x7FFFFFFF;
              do
              {
                v76 = [v69 substringWithRange:{v74, 1}];
                if ([(_UIKeyboardStateManager *)self callShouldInsertText:v76])
                {
                  v77 = [(_UIKeyboardStateManager *)self inputDelegateManager];
                  [v77 insertText:v76];
                }

                ++v74;
              }

              while (v75 != v74);
            }

            goto LABEL_74;
          }
        }

        else
        {
        }

        if (objc_opt_respondsToSelector())
        {
          [v66 setText:v69];
        }

        else if ([v66 conformsToProtocol:&unk_1EFE8A940])
        {
          [v66 insertText:v69];
        }

LABEL_74:
        v78 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v78 moveSelectionToEndOfWord];

        v79 = [(_UIKeyboardStateManager *)self inputDelegate];
        v80 = [(_UIKeyboardStateManager *)self needAutofillCandidate:v79];
        v81 = [(_UIKeyboardStateManager *)self autofillController];
        [v81 setDelegateNeedsAutofillMode:v80];

LABEL_75:
        if ((v127 & 1) == 0)
        {
          v82 = [v5 objectForKey:v24];
          v83 = v82 == 0;

          if (!v83)
          {
            v84 = [(_UIKeyboardStateManager *)self autofillController];
            v85 = [v84 autofillGroup];
            v86 = [v85 objectForKey:@"password"];

            [v86 becomeFirstResponder];
            +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
            v87 = [v5 objectForKey:v24];
            [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v86 withText:v87];

            v40 = 1;
          }
        }

        v88 = [v5 objectForKey:@"NewPassword"];

        if (v88)
        {
          v89 = [(_UIKeyboardStateManager *)self autofillController];
          v90 = [v89 autofillGroup];
          v91 = [v90 objectForKey:@"new-password"];

          [v91 becomeFirstResponder];
          +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
          v92 = [v5 objectForKey:@"NewPassword"];
          [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v91 withText:v92];

          v40 = 1;
        }

        v93 = [v5 objectForKey:@"AutofillCellularEID"];

        if (v93)
        {
          v94 = [(_UIKeyboardStateManager *)self autofillController];
          v95 = [v94 autofillGroup];
          v96 = [v95 objectForKey:@"esim-eid"];

          [v96 becomeFirstResponder];
          +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
          v97 = [v5 objectForKey:@"AutofillCellularEID"];
          [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v96 withText:v97];

          v40 = 1;
        }

        v98 = [v5 objectForKey:@"AutofillCellularIMEI"];

        if (v98)
        {
          v99 = [(_UIKeyboardStateManager *)self autofillController];
          v100 = [v99 autofillGroup];
          v101 = [v100 objectForKey:@"esim-imei"];

          [v101 becomeFirstResponder];
          +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
          v102 = [v5 objectForKey:@"AutofillCellularIMEI"];
          [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v101 withText:v102];

          v40 = 1;
        }

        v128 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v103 = [(_UIKeyboardStateManager *)self autofillController];
        v126 = [v103 textContentTypeForInputDelegate:v128];

        v104 = [v5 objectForKey:v126];

        if (v104)
        {
          v124 = [UIAutoFillTextSuggestion autoFillSuggestionWithContents:v5];
          v105 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v106 = [v105 insertTextSuggestion:v124];

          if ((v106 & 1) == 0)
          {
            v123 = [(_UIKeyboardStateManager *)self delegateAsResponder];
            v107 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            [v107 _beginPinningInputViewsOnBehalfOfResponder:v123];

            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v108 = +[UIKBAutofillController preferredInsertionOrder];
            v109 = [v108 countByEnumeratingWithState:&v135 objects:v148 count:16];
            if (v109)
            {
              v110 = *v136;
              do
              {
                for (i = 0; i != v109; ++i)
                {
                  if (*v136 != v110)
                  {
                    objc_enumerationMutation(v108);
                  }

                  v112 = *(*(&v135 + 1) + 8 * i);
                  v113 = [v5 objectForKey:v112];

                  if (v113)
                  {
                    v114 = [(_UIKeyboardStateManager *)self autofillController];
                    v115 = [v114 autofillGroup];
                    v116 = [v115 objectForKey:v112];

                    [v116 becomeFirstResponder];
                    +[_UIKeyboardUsageTracking appAutofillDetectedDecrement];
                    v117 = [v5 objectForKey:v112];
                    [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v116 withText:v117];

                    v40 = 1;
                  }
                }

                v109 = [v108 countByEnumeratingWithState:&v135 objects:v148 count:16];
              }

              while (v109);
            }

            v118 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            [v118 _stopPinningInputViewsOnBehalfOfResponder:v123];

            if ((v40 & 1) == 0)
            {
              v119 = [v5 objectForKey:&stru_1EFB14550];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v120 = [(_UIKeyboardStateManager *)self inputDelegate];
                [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v120 withText:v119];
              }
            }
          }
        }

        +[_UIKeyboardUsageTracking appAutofillFilled];
        self->m_isAutofilling = 0;

        v15 = v130;
        goto LABEL_101;
      }

      v50 = [(_UIKeyboardStateManager *)self autofillController];
      v52 = [v50 autofillGroup];
      v53 = [v52 objectForKey:@"email"];
    }

    else
    {
      v53 = [v51 objectForKey:@"username"];
    }

    v55 = v53;

    goto LABEL_54;
  }

LABEL_102:
}

- (void)insertDictationResult:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v5 insertDictationResult:v4];
}

- (void)handleRemoteIndirectGestureWithState:(id)a3
{
  v13 = a3;
  v4 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v5 = [v4 _responderForEditing];
  v6 = [v5 __textInteractionFromAssistant];

  v7 = [v6 interactionWithGestureForName:0x1EFB7FF50];
  if (!v7)
  {
    v7 = [v6 interactionWithGestureForName:0x1EFB7FF70];
    if (!v7)
    {
      customInputDelegateSelectionInteraction = self->_customInputDelegateSelectionInteraction;
      if (!customInputDelegateSelectionInteraction)
      {
        v9 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
        v10 = [v9 textSelectionInteractionForRTIForwarding];
        v11 = self->_customInputDelegateSelectionInteraction;
        self->_customInputDelegateSelectionInteraction = v10;

        customInputDelegateSelectionInteraction = self->_customInputDelegateSelectionInteraction;
      }

      v7 = customInputDelegateSelectionInteraction;
    }
  }

  v12 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UIKeyboardTextSelectionInteraction *)v12 handleRemoteIndirectGestureWithState:v13];
  }
}

- (void)performKeyboardOutput:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 forwardingInputDelegate];
  v6 = v5 == 0;

  [(_UIKeyboardStateManager *)self performKeyboardOutput:v7 forwardToRemoteInputSource:v6];
}

- (void)performKeyboardOutput:(id)a3 forwardToRemoteInputSource:(BOOL)a4
{
  [(_UIKeyboardStateManager *)self performKeyboardOutput:a3 checkingDelegate:0 forwardToRemoteInputSource:a4];
  [(_UIKeyboardStateManager *)self _cancelPendingSupplementalCandidateInsertion];
  v5 = [(_UIKeyboardStateManager *)self lastMatchedSupplementalCandidate];

  if (v5)
  {

    [(_UIKeyboardStateManager *)self generateCandidates];
  }
}

- (BOOL)performKeyboardEvent:(id)a3
{
  v4 = a3;
  if ([v4 keyEventForwardedFromInputUIHost])
  {
    if (qword_1ED49D148 != -1)
    {
      dispatch_once(&qword_1ED49D148, &__block_literal_global_1075);
    }

    v5 = [(_UIKeyboardStateManager *)self taskQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48___UIKeyboardStateManager_performKeyboardEvent___block_invoke_3;
    v12[3] = &unk_1E70FD1B8;
    v12[4] = self;
    v13 = v4;
    [v5 addTask:v12 breadcrumb:qword_1ED49D140];

    v6 = v13;
LABEL_10:

    v7 = 1;
    goto LABEL_11;
  }

  if (![v4 keyCommandHandlingBeforePublic])
  {
    if (qword_1ED49D158 != -1)
    {
      dispatch_once(&qword_1ED49D158, &__block_literal_global_1081);
    }

    v8 = [(_UIKeyboardStateManager *)self taskQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48___UIKeyboardStateManager_performKeyboardEvent___block_invoke_6;
    v10[3] = &unk_1E70FD1B8;
    v10[4] = self;
    v11 = v4;
    [v8 addTask:v10 breadcrumb:qword_1ED49D150];

    v6 = v11;
    goto LABEL_10;
  }

  v7 = [(_UIKeyboardStateManager *)self handleKeyCommandsBeforePublicAsInputUIHost:v4];
LABEL_11:

  return v7;
}

- (void)performKeyboardOutputAsRTIClient:(id)a3
{
  v4 = a3;
  if (qword_1ED49D168 != -1)
  {
    dispatch_once(&qword_1ED49D168, &__block_literal_global_1085);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60___UIKeyboardStateManager_performKeyboardOutputAsRTIClient___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED49D160;
  v7 = v4;
  [v5 addTask:v8 breadcrumb:v6];
}

- (BOOL)performKeyboardOutput:(id)a3 checkingDelegate:(BOOL)a4 forwardToRemoteInputSource:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = 0x1EFB64610;
  v8 = MEMORY[0x1E696AD98];
  v9 = a3;
  v10 = [v8 numberWithBool:v6];
  v14[1] = 0x1EFB64630;
  v15[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  LOBYTE(v11) = [(_UIKeyboardStateManager *)self performKeyboardOutput:v9 userInfo:v12];
  return v11;
}

- (BOOL)performKeyboardOutput:(id)a3 userInfo:(id)a4
{
  v184 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v167 = a4;
  v9 = [v167 objectForKeyedSubscript:0x1EFB64610];
  v162 = [v9 BOOLValue];

  v10 = [v167 objectForKeyedSubscript:0x1EFB64630];
  v168 = [v10 BOOLValue];

  v11 = _UIKeyboardLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v145 = "NO";
    *&buf[4] = "[_UIKeyboardStateManager performKeyboardOutput:userInfo:]";
    if (v162)
    {
      v146 = "YES";
    }

    else
    {
      v146 = "NO";
    }

    *buf = 136315650;
    *&buf[14] = v146;
    *&buf[12] = 2080;
    if (v168)
    {
      v145 = "YES";
    }

    *&buf[22] = 2080;
    v183 = v145;
    _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "%s shouldCheckDelegate=%s, forwardToRemote=%s", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v183) = 0;
  if (+[UIDictationController isRunning](UIDictationController, "isRunning") && (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || !+[UIKeyboard usesInputSystemUI]))
  {
    [(_UIKeyboardStateManager *)self updateIdleDetection:2];
  }

  v12 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v12 willPerformKeyboardOutput:v8];

  if ((v168 & 1) == 0)
  {
    v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v4 = [v12 inputSystemSourceSession];
    if (v4)
    {
      v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v14 = [v5 forwardingInputDelegate];
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_7:
  v13 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];

  if (v168)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_14:
    if (+[UIKeyboard isKeyboardProcess])
    {
      v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v16 = [v15 delegateAdoptsWebTextInputPrivate];

      if (v16)
      {
        [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
      }
    }

    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke;
    v175[3] = &unk_1E70FD598;
    v176 = v8;
    v177 = self;
    v178 = buf;
    [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v175 shouldFlush:0];
    v12 = v176;
    goto LABEL_18;
  }

LABEL_19:
  self->m_didSyncDocumentStateToInputDelegate = 0;
  v17 = [v8 acceptedCandidate];

  if (v17)
  {
    v18 = [v8 acceptedCandidate];
    v19 = [(_UIKeyboardStateManager *)self acceptAutofillExtraCandidateIfNeeded:v18];

    if (!v19)
    {
      if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || ([v8 acceptedCandidate], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isSupplementalItemCandidate"), v20, !v21) || (objc_msgSend(v8, "acceptedCandidate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[_UIKeyboardStateManager _insertSupplementalCandidate:overridingCandidateText:](self, "_insertSupplementalCandidate:overridingCandidateText:", v22, 0), v22, !v23))
      {
        v24 = [v8 acceptedCandidate];
        v25 = [v24 candidate];

        if (v25)
        {
          v26 = +[UIKBAnalyticsDispatcher sharedInstance];
          [v26 setNextCommitTextSource:5];

          [(_UIKeyboardStateManager *)self acceptCandidate:v24];
        }

        else
        {
          v27 = [v24 stickerIdentifier];
          if (v27 && +[UIKeyboard usesInputSystemUI])
          {
            v28 = +[UIKeyboard isKeyboardProcess];

            if (!v28)
            {
              [(_UIKeyboardStateManager *)self applyAutocorrection:v24];
            }
          }

          else
          {
          }
        }
      }
    }
  }

  if (*(*&buf[8] + 24) == 1)
  {
    [(_UIKeyboardStateManager *)self flushKeyboardOutputOnInputSourceSession];
  }

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && [v8 positionOffset])
  {
    v29 = [v8 positionOffset];
    v30 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v30 collapseSelectionAndAdjustByOffset:v29];

    v166 = 0;
  }

  else
  {
    v166 = 1;
  }

  v31 = [v8 textToCommit];

  if (v31)
  {
    v32 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v33 = [v8 deletionCount];
    v34 = [v8 textToCommit];
    LODWORD(v33) = [v32 callShouldReplaceExtendedRange:v33 withText:v34 includeMarkedText:1];

    if (v33)
    {
      v35 = [v8 textToCommit];
      [(_UIKeyboardStateManager *)self unmarkText:v35];
    }

    else
    {
      [(_UIKeyboardStateManager *)self unmarkText:&stru_1EFB14550];
      v166 = 0;
    }
  }

  if ([v8 unmarkIfNecessary] && -[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText"))
  {
    self->m_textInputChangesIgnored = 1;
    v36 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v36 unmarkText];

    self->m_textInputChangesIgnored = 0;
  }

  if ([v8 forwardDeletionCount])
  {
    for (i = 0; i < [v8 forwardDeletionCount]; ++i)
    {
      -[_UIKeyboardStateManager deleteForwardAndNotify:producedByDeleteInput:](self, "deleteForwardAndNotify:producedByDeleteInput:", 0, [v8 producedByDeleteInput]);
    }
  }

  v38 = [v8 insertionTextAfterSelection];

  if (v38)
  {
    self->m_suppressingDocumentAssertions = 1;
    v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v40 = [v8 insertionTextAfterSelection];
    [v39 insertTextAfterSelection:v40];

    self->m_suppressingDocumentAssertions = 0;
  }

  v164 = [v8 performSelector:sel_producedByDeleteInput];
  if ([v8 deletionCount])
  {
    v41 = [v8 insertionText];
    if (v41)
    {
      v42 = [v8 insertionText];
      v43 = [v42 length] == 0;

      if (!v43)
      {
        v44 = +[UIKBAnalyticsDispatcher sharedInstance];
        if (v164)
        {
          [v44 setNextCandidateReplacementSource:10];
        }

        else
        {
          [v44 setNextCandidateReplacementSource:9];
        }
      }
    }
  }

  if ([v8 deletionCount])
  {
    if (v164)
    {
      v45 = v162;
    }

    else
    {
      v45 = 0;
    }

    if (v45 == 1 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 callShouldDeleteBackwardWithCount:{objc_msgSend(v8, "deletionCount")}], v46, !v47))
    {
      v53 = objc_alloc_init(MEMORY[0x1E69C6F48]);
      v54 = objc_alloc_init(MEMORY[0x1E69D95F8]);
      [v53 setKeyboardInput:v54];

      v55 = objc_alloc_init(MEMORY[0x1E69D9638]);
      v56 = [v53 keyboardInput];
      [v56 setOutput:v55];

      [v55 setDeletionCount:0];
      v57 = [v8 insertionText];
      v58 = [v57 length];

      for (j = v58 - 1; (j & 0x80000000) == 0; j -= v62)
      {
        [v55 setDeletionCount:{objc_msgSend(v55, "deletionCount") + 1}];
        v60 = [v8 insertionText];
        [v60 _rangeOfBackwardDeletionClusterAtIndex:j];
        v62 = v61;
      }

      v63 = [MEMORY[0x1E696AD60] string];
      v64 = [(_UIKeyboardStateManager *)self documentState];
      v65 = [v64 contextBeforeInput];

      v66 = [v65 length];
      v67 = [v8 deletionCount];
      v68 = v66 - 1;
      if (v66 - 1 >= 0)
      {
        v69 = v67;
        if (v67 >= 1)
        {
          do
          {
            v70 = [v65 _rangeOfBackwardDeletionClusterAtIndex:v68];
            v72 = v71;
            v73 = [v65 substringWithRange:{v70, v71}];
            [v63 insertString:v73 atIndex:0];

            v68 -= v72;
            if ((v68 & 0x80000000) != 0)
            {
              break;
            }
          }

          while (v69-- > 1);
        }
      }

      [v55 setInsertionText:v63];
      v75 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v75 performInputOperation:v53];

      [v8 setInsertionText:0];
      v166 = 0;
    }

    else
    {
      v48 = [v8 insertionText];

      if (v48)
      {
        v49 = [(_UIKeyboardStateManager *)self asyncCapableInputDelegate];
        v50 = v49 == 0;
      }

      else
      {
        v50 = 0;
      }

      -[_UIKeyboardStateManager deleteBackwardAndNotifyAtEnd:deletionCount:reinsertTextInLoop:](self, "deleteBackwardAndNotifyAtEnd:deletionCount:reinsertTextInLoop:", v48 == 0, [v8 deletionCount], v50);
    }

    v52 = +[UIDictationController activeInstance];
    [v52 markKeyboardDeleteMetricEvent];
  }

  else
  {
    v51 = +[UIDictationController activeInstance];
    [v51 markKeyboardInputMetricEvent];

    v52 = +[UIDictationController activeInstance];
    [v52 markDictationTipInputEvent];
  }

  if (_os_feature_enabled_impl())
  {
    v76 = [v8 acceptedCandidate];
    v77 = [v76 stickerIdentifier];
    if (v77)
    {
      v78 = [v8 acceptedCandidate];
      v79 = [v78 customInfoType] == 4096;

      if (v79)
      {
        v80 = [v8 acceptedCandidate];
        v165 = [v80 stickerIdentifier];

        v181[0] = @"com.apple.stickers.role.still";
        v181[1] = @"com.apple.stickers.role.animated";
        v181[2] = @"com.apple.stickers.role.stillVariant_40";
        v181[3] = @"com.apple.stickers.role.stillVariant_64";
        v181[4] = @"com.apple.stickers.role.stillVariant_96";
        v181[5] = @"com.apple.stickers.role.stillVariant_160";
        v181[6] = @"com.apple.stickers.role.stillVariant_320";
        v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:7];
        v81 = [(_UIKeyboardStateManager *)self backendController];
        [v81 stickerWithIdentifier:v165 stickerRoles:v163 completionHandler:&__block_literal_global_1098];

        v159 = +[_UISignalAnalytics getIASignalGenmojiUsage];
        v161 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
        v179[0] = v161;
        v160 = +[UIKeyboard keyboardBundleIdentifier];
        v180[0] = v160;
        v82 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
        v179[1] = v82;
        v83 = +[_UISignalAnalytics getIAPayloadValueGenmojiUnspecified];
        v180[1] = v83;
        v84 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
        v179[2] = v84;
        v85 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceCandidateBarSuggestion];
        v180[2] = v85;
        v86 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageType];
        v179[3] = v86;
        v87 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypeTap];
        v180[3] = v87;
        v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:4];
        [_UISignalAnalytics sendGenmojiSignal:v159 payload:v88];

        goto LABEL_88;
      }
    }

    else
    {
    }
  }

  v89 = [v8 insertionText];
  if (![v89 length])
  {

    goto LABEL_88;
  }

  v90 = [v8 customInfo];
  v91 = [v90 objectForKey:@"AutofillOneTimeCode"];
  v92 = v91 == 0;

  if (v92)
  {
    v93 = +[UIKeyboardInputModeController sharedInputModeController];
    v94 = [v93 currentInputMode];
    v95 = [v94 identifier];
    v96 = [v95 isEqualToString:@"autofillsignup"];

    if (v96)
    {
      v97 = +[UIKeyboardInputModeController sharedInputModeController];
      v98 = [v97 currentLinguisticInputMode];
      v99 = [v98 isDefaultRightToLeft];

      v100 = [(_UIKeyboardStateManager *)self autofillController];
      v172[0] = MEMORY[0x1E69E9820];
      v172[1] = 3221225472;
      v172[2] = __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_4;
      v172[3] = &unk_1E70FD5E0;
      v172[4] = self;
      v173 = v8;
      v174 = v99;
      [v100 enumeratePasswordFieldsUsingBlock:v172];

      goto LABEL_88;
    }

    if (v162)
    {
      v142 = [v8 insertionText];
      v143 = [(_UIKeyboardStateManager *)self callShouldInsertText:v142];

      if (!v143)
      {
        v166 = 0;
        goto LABEL_88;
      }
    }

    if (_UIIsPrivateMainBundle() && !dyld_program_sdk_at_least())
    {
      v144 = 0;
    }

    else
    {
      v144 = 1;
      self->m_textInputChangesIgnored = 1;
    }

    v147 = [(_UIKeyboardStateManager *)self documentState];
    [v147 _selectedTextRange];
    if (v148)
    {
      v149 = [(_UIKeyboardStateManager *)self documentState];
      v150 = [v149 contextBeforeInput];
      if (!v150)
      {
        v156 = [(_UIKeyboardStateManager *)self documentState];
        v157 = [v156 contextAfterInput];
        v158 = v157 == 0;

        if (v158)
        {
          [(_UIKeyboardStateManager *)self setInitialDirectionIgnoreRangeCheck:1];
        }

        goto LABEL_149;
      }
    }

LABEL_149:
    v151 = [v167 objectForKeyedSubscript:0x1EFB64650];
    v152 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v153 = [v8 insertionText];
    if (v151)
    {
      [v152 insertText:v153 withEnumeratedAnimationStyle:{objc_msgSend(v151, "integerValue")}];
    }

    else
    {
      [v152 insertText:v153];
    }

    if (v164)
    {
      v154 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v154 callShouldDeleteBackwardWithCount:1];
    }

    if (v144)
    {
      self->m_textInputChangesIgnored = 0;
    }

    v155 = _UIKeyboardLog();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
    {
      *v171 = 0;
      _os_log_impl(&dword_188A29000, v155, OS_LOG_TYPE_DEFAULT, "Keyboard inserts text", v171, 2u);
    }
  }

LABEL_88:
  v101 = [v8 shortcutConversion];
  if (v101)
  {
    v102 = +[UIKeyboard usesInputSystemUI];

    if (!v102)
    {
      v103 = [v8 shortcutConversion];
      v104 = [(_UIKeyboardStateManager *)self documentState];
      v105 = [v104 contextBeforeInput];

      if ([v8 deletionCount])
      {
        if (v105)
        {
          v106 = [v103 input];
          v107 = [v105 hasSuffix:v106];

          if ((v107 & 1) == 0)
          {
            v108 = [v8 insertionText];
            v109 = [v103 candidate];
            v110 = [v103 candidateByReplacingWithCandidate:v109 input:v108];

            v103 = v110;
          }
        }
      }

      [(_UIKeyboardStateManager *)self setAutocorrection:v103];
      if ([(_UIKeyboardStateManager *)self hasAutocorrectPrompt])
      {
        v111 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v112 = [v111 asyncCapableInputDelegate];
        v113 = v112 == 0;

        if (!v113)
        {
          [(_UIKeyboardStateManager *)self removeAutocorrectPrompt];
        }

        v114 = [v8 shortcutConversion];
        [(_UIKeyboardStateManager *)self updateAutocorrectPrompt:v114];
      }

      else
      {
        [(_UIKeyboardStateManager *)self touchAutocorrectPromptTimer];
      }
    }
  }

  v115 = [v8 handwritingStrokesToDelete];

  if (v115)
  {
    v116 = [v8 handwritingStrokesToDelete];
    [(_UIKeyboardStateManager *)self deleteHandwritingStrokesAtIndexes:v116];
  }

  v117 = [v8 customInfo];

  if (v117)
  {
    v118 = [v8 customInfo];
    [(_UIKeyboardStateManager *)self performKeyboardOutputInfo:v118];

    if (v168)
    {
      v119 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      if (v119)
      {
        v120 = *(*&buf[8] + 24);

        if ((v120 & 1) == 0)
        {
          v169[0] = MEMORY[0x1E69E9820];
          v169[1] = 3221225472;
          v169[2] = __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_1104;
          v169[3] = &unk_1E70FD608;
          v170 = v8;
          [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v169];
        }
      }
    }
  }

  v121 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v121 didPerformKeyboardOutput:v8];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v122 = [(UITextInputTraits *)self->m_traits textSuggestionDelegate];
    v123 = v122 == 0;

    if (!v123)
    {
      [(_UIKeyboardStateManager *)self delegateSuggestionsForCurrentInput];
    }
  }

  [(_UIKeyboardStateManager *)self _postInputResponderCapabilitiesChangedNotificationWithOutput:v8 selectionChanged:0];
  v124 = [(_UIKeyboardStateManager *)self _acquireWaitingOnPerformAutocorrect];
  v125 = v124;
  if (v124)
  {
    (*(v124 + 16))(v124, 1);
  }

  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    if ([v8 deletionCount])
    {
      [(_UIKeyboardStateManager *)self removeTextChoicePromptWithUnderline];
      v126 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v127 = [v126 selectedTextRange];

      if (v127)
      {
        v128 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
        v129 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v130 = [v129 selectedTextRange];
        v131 = [v130 start];
        [v128 updateUnderlinesIfNeededAfterPosition:v131];
LABEL_118:
      }
    }

    else
    {
      v132 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v133 = [v132 selectedTextRange];

      if (v133)
      {
        v128 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
        v129 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v130 = [v129 selectedTextRange];
        v131 = [v130 start];
        [v128 clearUnderlinesIfNeededBeforePosition:v131];
        goto LABEL_118;
      }
    }
  }

  v134 = [v8 insertionText];
  if ([v134 length] || objc_msgSend(v8, "deletionCount"))
  {
    v135 = +[UIKeyboard isKeyboardProcess];

    if (v135)
    {
      goto LABEL_127;
    }

    v136 = +[UIEventSessionActionAnalytics sharedInstance];
    v134 = v136;
    if (self->m_textInputSource == 4)
    {
      v137 = 6;
    }

    else
    {
      v137 = 5;
    }

    [v136 didTypingWithSource:v137];
  }

LABEL_127:
  v138 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v138 nextCandidateReplacementSource] == 9)
  {

LABEL_130:
    +[UIKBAnalyticsDispatcher didCandidateReplacement];
    goto LABEL_131;
  }

  v139 = +[UIKBAnalyticsDispatcher sharedInstance];
  v140 = [v139 nextCandidateReplacementSource] == 10;

  if (v140)
  {
    goto LABEL_130;
  }

LABEL_131:

  _Block_object_dispose(buf, 8);
  return v166;
}

- (void)generateCandidatesAsynchronously
{
  v3 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet generatedCandidateCount];
  v4 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
  v5 = [v4 count];

  if (v3 > v5)
  {
    v6 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
    -[_UIKeyboardStateManager generateCandidatesAsynchronouslyWithRange:selectedCandidate:](self, "generateCandidatesAsynchronouslyWithRange:selectedCandidate:", [v6 count], 0x7FFFFFFFLL, 0);
  }
}

- (void)generateCandidatesAsynchronouslyWithRange:(_NSRange)a3 selectedCandidate:(id)a4
{
  length = a3.length;
  location = a3.location;
  v32[4] = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [objc_opt_class() sendPerformanceNotification:@"UIKeyboardPerformanceSearchCandidatesStartNotification"];

  [(_UIKeyboardStateManager *)self cancelCandidateRequests];
  if (self->m_shiftNeedsUpdate)
  {
    self->m_shiftNeedsUpdate = 0;
    [(_UIKeyboardStateManager *)self updateShiftState];
  }

  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  v9 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v9 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v9 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v10 = [MEMORY[0x1E69D9580] tokenForKeyboardState:v9];
  [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:v10];
  v31[0] = @"keyboardState";
  v11 = v9;
  if (!v9)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v32[0] = v11;
  v31[1] = @"index";
  v25 = location;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
  v32[1] = v12;
  v31[2] = @"candidateCount";
  v13 = length;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  v32[2] = v14;
  v31[3] = @"selectedCandidate";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
  [(_UIKeyboardStateManager *)self setCurrentCandidateRequestInfo:v16];

  if (!v7)
  {
  }

  if (!v9)
  {
  }

  v17 = arc4random();
  kdebug_trace();
  v18 = kac_get_log();
  v19 = os_signpost_id_make_with_pointer(v18, v17);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "appCandidates", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke;
  v26[3] = &unk_1E70FD658;
  v26[4] = self;
  v27 = v10;
  v28 = v9;
  v29 = v17;
  v21 = v9;
  v22 = v10;
  v23 = [v26 copy];
  v24 = [(_UIKeyboardStateManager *)self backendController];
  [v24 generateCandidatesWithKeyboardState:v21 candidateRange:v25 requestToken:v13 completionHandler:{v22, v23}];
}

- (void)cancelCandidateRequests
{
  [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:0];
  [(_UIKeyboardStateManager *)self setCurrentCandidateRequestInfo:0];
  v3 = [(_UIKeyboardStateManager *)self delayedCandidateRequest];
  [v3 invalidate];

  [(_UIKeyboardStateManager *)self setDelayedCandidateRequest:0];
}

- (BOOL)shouldPrioritizeTextSuggestionsOverCandidateResultSet:(id)a3
{
  v4 = a3;
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (!v6)
  {
    v3 = [v4 committedText];
    if (![v3 length])
    {
      LOBYTE(v7) = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  LOBYTE(v7) = [v4 isDummySet];
  if ((v7 & 1) == 0 && [v4 hasOnlyCompletionCandidates])
  {
    v7 = [v4 hasAutofillCandidates] ^ 1;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (int64_t)preferredCandidateViewTypeForCandidateResultSet:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardState *)self->m_keyboardState inputForMarkedText];
  if (![v5 length] || (objc_msgSend(v4, "hasOnlyCompletionCandidates") & 1) != 0 || (objc_msgSend(v4, "hasOnlySlottedCandidates") & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 hasOnlyProactiveCandidates];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained candidateController];
  v9 = [v8 activeCandidateViewType];

  if (v9 == 4 && (v6 & 1) != 0)
  {
    v10 = 0;
  }

  else if ([(_UIKeyboardStateManager *)self canUseCandidateBarAsSupplementToInlineView])
  {
    v11 = objc_loadWeakRetained(&self->_presentationDelegate);
    v12 = [v11 candidateController];
    v13 = [v12 activeCandidateViewType];

    v14 = 4;
    if (v6)
    {
      v14 = 2;
    }

    if (v13 == 6)
    {
      v10 = v14;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)_rangeForSupplementalItemText:(id)a3
{
  v4 = a3;
  self->m_textInputChangesIgnored = 1;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 selectedTextRange];

  self->m_textInputChangesIgnored = 0;
  if (v6)
  {
    if ([v4 length])
    {
      self->m_textInputChangesIgnored = 1;
      v7 = [v4 length];
      v8 = [v6 end];
      v9 = v8;
      if (v8 && v7)
      {
        v10 = 1;
        while (1)
        {
          v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v12 = [v11 _rangeOfText:v4 endingAtPosition:v9];

          if (v12)
          {
            break;
          }

          v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v14 = [v13 positionFromPosition:v9 offset:1];

          if (v14)
          {
            v9 = v14;
            if (v10++ < v7)
            {
              continue;
            }
          }

          goto LABEL_14;
        }

        self->m_textInputChangesIgnored = 0;
      }

      else
      {
        v14 = v8;
LABEL_14:
        self->m_textInputChangesIgnored = 0;
        v12 = v6;
        v9 = v14;
      }
    }

    else
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_dispatchInsertionPointEnteredText:(id)a3 range:(id)a4 withSupplementalCandidate:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v10 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v11 = [v10 textOperation_insertionPointEnteredText:v23 withSupplementalCandidate:v9];

    v12 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = [v11 customInfoType];
      v15 = [v13 textOperations];
      [v15 setCustomInfoType:v14];

      v16 = [v11 customInfo];
      v17 = [v13 textOperations];
      [v17 setCustomInfo:v16];

      [v13 flushOperations];
    }
  }

  else if (([v8 isEmpty] & 1) == 0)
  {
    v18 = [(_UIKeyboardStateManager *)self inputDelegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      self->m_textInputChangesIgnored = 1;
      v20 = [(_UIKeyboardStateManager *)self inputDelegate];
      v21 = [v9 input];
      v22 = [v9 ui_supplementalItems];
      [v20 _insertionPointEnteredRange:v8 string:v21 supplementalItems:v22];

      self->m_textInputChangesIgnored = 0;
    }
  }
}

- (void)_inputManagerDidGenerateSupplementalCandidates:(id)a3
{
  v21 = a3;
  if (self->m_selecting || self->m_autoDeleteOK || -[_UIKeyboardStateManager continuousPathUnderway](self, "continuousPathUnderway") || ![v21 count] || self->m_autoDeleteUseForce && !-[_UIKeyboardStateManager usesCandidateSelection](self, "usesCandidateSelection") || (v4 = objc_msgSend(v21, "indexOfObjectPassingTest:", &__block_literal_global_1129), v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(_UIKeyboardStateManager *)self _insertionPointExitedRangeWithSupplementalCandidate];
    goto LABEL_9;
  }

  v5 = [v21 objectAtIndexedSubscript:v4];
  v6 = [v5 input];
  v7 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v6];

  v8 = [_UIStringAndPositionPair alloc];
  v9 = [v5 input];
  v10 = [v7 start];
  v11 = [(_UIStringAndPositionPair *)&v8->super.isa initWithString:v9 position:v10];

  v12 = [(_UIKeyboardStateManager *)self lastMatchedSupplementalCandidate];
  if (v12)
  {
  }

  else
  {
    v19 = [v5 inputWithoutSupplementalItemPrefix];
    v20 = [v19 length];

    if (v20)
    {
      if ([v7 isEmpty])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v13 = [(_UIKeyboardStateManager *)self lastMatchedSupplementalCandidate];
  v14 = [(_UIKeyboardStateManager *)self inputDelegate];
  v15 = [(_UIStringAndPositionPair *)v13 isEqualToPair:v11 inputDelegate:v14];

  if (!v15)
  {
    [(_UIKeyboardStateManager *)self _insertionPointExitedRangeWithSupplementalCandidate];
    if ([v7 isEmpty])
    {
      goto LABEL_18;
    }

    v16 = [v5 inputWithoutSupplementalItemPrefix];
    v17 = [v16 length];

    if (!v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    v18 = [v5 input];
    [(_UIKeyboardStateManager *)self _dispatchInsertionPointEnteredText:v18 range:v7 withSupplementalCandidate:v5];

LABEL_18:
    [(_UIKeyboardStateManager *)self setLastMatchedSupplementalCandidate:v11];
  }

LABEL_9:
}

- (void)inputManagerDidGenerateCandidateResultSet:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    v5 = [v4 ui_uniqueSupplementalCandidates];
    [(_UIKeyboardStateManager *)self _inputManagerDidGenerateSupplementalCandidates:v5];
  }

  v6 = [v4 acceptedCandidate];

  if (v6)
  {
    v7 = [v4 acceptedCandidate];
    [(_UIKeyboardStateManager *)self acceptCandidate:v7];

    [(_UIKeyboardStateManager *)self flushKeyboardOutputOnInputSourceSession];
  }

  if (v4)
  {
    if ([(_UIKeyboardStateManager *)self shouldPrioritizeTextSuggestionsOverCandidateResultSet:v4])
    {
      if ([(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasOnlySlottedCandidates])
      {
        goto LABEL_24;
      }

      v8 = [(UIKeyboardAutocorrectionController *)self->m_autocorrectionController textSuggestionList];
      v9 = [v8 predictions];
      v10 = [v9 count];

      if (v10)
      {
        v24 = v4;
        v11 = [MEMORY[0x1E695DF70] array];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = [(UIKeyboardAutocorrectionController *)self->m_autocorrectionController textSuggestionList];
        v13 = [v12 predictions];

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              if ([v18 customInfoType] == 32)
              {
                v19 = [(UIKeyboardAutocorrectionController *)self->m_autocorrectionController textSuggestionList];
                v20 = [v19 predictions];
                v21 = [v20 count];

                if (v21 > 1)
                {
                  continue;
                }
              }

              [v11 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v15);
        }

        v4 = [MEMORY[0x1E69D95E8] setWithCandidates:v11];
      }
    }

    [(_UIKeyboardStateManager *)self updateCandidateDisplayAsyncWithCandidateSet:v4];
  }

  v22 = [(_UIKeyboardStateManager *)self currentCandidateRequestInfo];
  v23 = [v22 objectForKey:@"selectedCandidate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyboardCandidateList *)self->m_candidateList showCandidate:v23];
  }

LABEL_24:
}

- (void)generateAutocorrectionWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = sharedInputManagerMux();
  if (![v5 hasSystemInputManager] || !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && self->m_disableSyncTextChanged || +[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[_UIKeyboardStateManager suppressOptOutASPCandidateUpdateForDelegate:](self, "suppressOptOutASPCandidateUpdateForDelegate:", v6), v6, v7))
  {
    [v4 returnExecutionToParent];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UIKeyboardStateManager_generateAutocorrectionWithExecutionContext___block_invoke;
    v8[3] = &unk_1E70FD6A0;
    v9 = v4;
    v10 = self;
    [(_UIKeyboardStateManager *)self generateAutocorrectionsWithCompletionHandler:v8];
  }
}

- (void)generateAutocorrectionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self shouldAccessInputManagerService];
  if (v4 && !v5)
  {
    v4[2](v4, 0);
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [objc_opt_class() sendPerformanceNotification:@"UIKeyboardPerformanceSearchCandidatesStartNotification"];

  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  v7 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v7 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v7 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v11 = [v4 copy];

  v8 = [MEMORY[0x1E69D9580] tokenForKeyboardState:v7];
  [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:v8];
  v9 = [(_UIKeyboardStateManager *)self backendController];
  v10 = [(_UIKeyboardStateManager *)self autocorrectionController];
  [v9 generateAutocorrectionsWithKeyboardState:v7 candidateRange:0 requestToken:objc_msgSend(v10 completionHandler:{"maximumNumberOfCandidates"), v8, v11}];
}

- (BOOL)shouldAcceptContinuousPathConversion:(id)a3
{
  v3 = a3;
  if ([v3 isContinuousPathConversion])
  {
    v4 = [v3 shouldAccept];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_dispatchInsertionPointExitedRangeWithSupplementalCandidate
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v12 = [v3 textOperation_insertionPointExitedTextWithSupplementalItems];

    v4 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    if (v12 && v4)
    {
      v5 = [v12 customInfoType];
      v6 = [v4 textOperations];
      [v6 setCustomInfoType:v5];

      v7 = [v12 customInfo];
      v8 = [v4 textOperations];
      [v8 setCustomInfo:v7];

      [v4 flushOperations];
    }
  }

  else
  {
    v9 = [(_UIKeyboardStateManager *)self inputDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      self->m_textInputChangesIgnored = 1;
      v11 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v11 _insertionPointExitedRangeWithSupplementalItems];

      self->m_textInputChangesIgnored = 0;
    }
  }
}

- (void)inputManagerDidGenerateAutocorrections:(id)a3 forPredictiveInput:(id)a4 executionContext:(id)a5
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v81 = a4;
  v9 = a5;
  v10 = [v8 ui_allSupplementalCandidates];
  [(_UIKeyboardStateManager *)self _inputManagerDidGenerateSupplementalCandidates:v10];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v11 = [v8 candidates];
    v12 = [v11 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [v8 candidates];
      v15 = [v14 firstObject];

      if (objc_opt_respondsToSelector())
      {
        if (([v15 candidateProperty] & 0x20) != 0)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v80 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v80, OS_LOG_TYPE_FAULT, "The enum for the LongFormReply candidateProperty has changed. Please update to latest TextInputUI and TextInput", buf, 2u);
            }
          }

          else
          {
            v79 = *(__UILogGetCategoryCachedImpl("Assert", &inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext____s_category) + 8);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v79, OS_LOG_TYPE_ERROR, "The enum for the LongFormReply candidateProperty has changed. Please update to latest TextInputUI and TextInput", buf, 2u);
            }
          }
        }

        if (([v15 candidateProperty] & 0x40) != 0)
        {
          v55 = _UIKeyboardSmartReplyLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_DEFAULT, "Received long form reply, accepting immediately", buf, 2u);
          }

          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke;
          v94[3] = &unk_1E70FD1B8;
          v95 = v15;
          v96 = self;
          v56 = v15;
          v57 = [v9 childWithContinuation:v94];
          [(_UIKeyboardStateManager *)self acceptPredictiveInput:v56 appendSeparator:0 executionContext:v57];

LABEL_72:
          goto LABEL_73;
        }
      }
    }
  }

  v16 = [v8 emojiList];
  if (v16)
  {
  }

  else
  {
    v17 = [v8 predictions];

    if (!v17)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_14;
    }
  }

  v18 = [v8 corrections];
  v19 = [v18 autocorrection];
  if (v19 || ([v8 containsAutofillCandidates] & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v8 containsProactiveTriggers] ^ 1;
  }

  v21 = 1;
LABEL_14:
  [v8 updateLabelsWithSmartPunctuation:self->m_smartPunctuationController];
  v22 = [v8 corrections];
  v23 = [v22 autocorrection];
  if (([v23 isContinuousPathConversion] & 1) == 0)
  {

LABEL_18:
    [(_UIKeyboardStateManager *)self setAutocorrectionToAcceptBeforeProgressiveCandidates:0];
    v30 = [v8 corrections];
    v31 = [v30 autocorrection];
    v32 = [(_UIKeyboardStateManager *)self shouldAcceptContinuousPathConversion:v31];

    if (v32)
    {
      v33 = [v8 corrections];
      v34 = [v33 autocorrection];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_4;
      v89[3] = &unk_1E70FD1B8;
      v90 = v8;
      v91 = self;
      v35 = [v9 childWithContinuation:v89];
      [(_UIKeyboardStateManager *)self acceptPredictiveInput:v34 executionContext:v35];

      v29 = v90;
      goto LABEL_20;
    }

    v36 = [v8 proactiveSuggestionsEmpty];
    if (v20 && ([v81 isContinuousPathConversion] & 1) == 0 && !-[_UIKeyboardStateManager _shouldLoadPredictionsBasedOnCurrentTraits](self, "_shouldLoadPredictionsBasedOnCurrentTraits") && -[_UIKeyboardStateManager autocorrectionPreferenceForTraits](self, "autocorrectionPreferenceForTraits") == 2)
    {
      v37 = self;
      v38 = 0;
LABEL_36:
      [(_UIKeyboardStateManager *)v37 setAutocorrectionList:v38];
LABEL_54:
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v62 = [v8 candidates];
      v63 = [v62 countByEnumeratingWithState:&v83 objects:v100 count:16];
      if (v63)
      {
        v64 = *v84;
        while (2)
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v84 != v64)
            {
              objc_enumerationMutation(v62);
            }

            if ([*(*(&v83 + 1) + 8 * i) slotID])
            {
              v63 = 1;
              goto LABEL_64;
            }
          }

          v63 = [v62 countByEnumeratingWithState:&v83 objects:v100 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }

LABEL_64:

      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v67 = objc_opt_class();
      v98 = @"UIKeyboardPerformanceSearchFoundProactiveResults";
      v68 = [MEMORY[0x1E696AD98] numberWithBool:v63];
      v99 = v68;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      [v67 sendPerformanceNotification:@"UIKeyboardPerformanceSearchCandidatesEndNotification" userInfo:v69];

      v70 = [(_UIKeyboardStateManager *)self autocorrectionController];
      if ([v70 hasAutocorrection])
      {
        v71 = [(_UIKeyboardStateManager *)self autocorrectionController];
        v56 = [v71 autocorrection];
      }

      else
      {
        v56 = 0;
      }

      if ([(_UIKeyboardStateManager *)self hasAutocorrectPrompt])
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_6;
        v82[3] = &unk_1E70FD058;
        v82[4] = self;
        v72 = [v9 childWithContinuation:v82];
        [(_UIKeyboardStateManager *)self updateAutocorrectPrompt:v56 executionContext:v72];
      }

      else
      {
        [(_UIKeyboardStateManager *)self touchAutocorrectPromptTimer];
        v73 = [v8 candidates];
        -[_UIKeyboardStateManager _conditionallyNotifyPredictionsAreAvailableForCandidates:containingProactiveTriggers:](self, "_conditionallyNotifyPredictionsAreAvailableForCandidates:containingProactiveTriggers:", v73, [v8 containsProactiveTriggers]);

        v74 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];

        if (v74)
        {
          v75 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
          [v75 updateTextCompletionPromptExecutionContext:v9];
        }

        else
        {
          [v9 returnExecutionToParent];
        }
      }

      goto LABEL_72;
    }

    if ((v21 & 1) != 0 || ([v8 corrections], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "autocorrection"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isContinuousPathConversion"), v40, v39, v41))
    {
      if (![v8 containsProactiveTriggers])
      {
        v37 = self;
        v38 = v8;
        goto LABEL_36;
      }

      v42 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [(_UIKeyboardStateManager *)self setAutocorrectionList:v8];
      v43 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v43 setAutocorrectionList:v8];

      v44 = [v42 systemInputAssistantViewController];
      if ([v44 isInputAssistantItemEmpty])
      {
        v45 = [v42 systemInputAssistantViewController];
        v46 = [v45 view];
        v47 = [v46 window];
        v48 = [v47 _isRemoteKeyboardWindow];

        if ((v48 & 1) == 0)
        {
          v49 = [v42 containerRootController];
          v50 = [v49 isTransitioning];

          if (v50)
          {
            v51 = [v42 containerRootController];
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_5;
            v87[3] = &unk_1E70F3590;
            v88 = v42;
            [v51 addPendingActivity:v87];
          }

          else
          {
            [v42 forceReloadInputViews];
          }

          goto LABEL_53;
        }
      }

      else
      {
      }

      [(_UIKeyboardStateManager *)self updateAssistantView];
LABEL_53:

      goto LABEL_54;
    }

    v52 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v42 = v52;
    if (!v36)
    {
      [v52 setAutocorrectionList:v8];
      goto LABEL_53;
    }

    if ([v52 hasAutocorrection])
    {
      v53 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v54 = [v53 autocorrection];
      if (v54)
      {

LABEL_52:
        goto LABEL_53;
      }

      v59 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v60 = [v59 autocorrectionList];
      v61 = [v60 emojiList];
      if (v61)
      {

        goto LABEL_52;
      }

      v76 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v77 = [v76 autocorrectionList];
      v78 = [v77 predictions];

      if (v78)
      {
        goto LABEL_54;
      }
    }

    else
    {
    }

    v58 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v58 clearAutocorrectionAndNotifyObservers:1];

    [(_UIKeyboardStateManager *)self updateAssistantView];
    goto LABEL_54;
  }

  v24 = [(_UIKeyboardStateManager *)self autocorrectionToAcceptBeforeProgressiveCandidates];
  v25 = [v24 input];
  v26 = [v25 length];

  if (!v26)
  {
    goto LABEL_18;
  }

  [(_UIKeyboardStateManager *)self acceptingCandidateWithTrigger:*MEMORY[0x1E69D9718]];
  v27 = [(_UIKeyboardStateManager *)self autocorrectionToAcceptBeforeProgressiveCandidates];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_3;
  v92[3] = &unk_1E70FD1B8;
  v92[4] = self;
  v93 = v8;
  v28 = [v9 childWithContinuation:v92];
  [(_UIKeyboardStateManager *)self acceptPredictiveInput:v27 executionContext:v28];

  v29 = v93;
LABEL_20:

LABEL_73:
}

- (BOOL)_insertSupplementalCandidate:(id)a3 overridingCandidateText:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80___UIKeyboardStateManager__insertSupplementalCandidate_overridingCandidateText___block_invoke;
  aBlock[3] = &unk_1E70FD6C8;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [v6 ui_supplementalItems];
  v10 = [v9 objectAtIndexedSubscript:0];

  if (v7)
  {
    v11 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v7];
  }

  else
  {
    v12 = [v6 input];
    v11 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v12];
  }

  v13 = ([v11 isEmpty] & 1) == 0 && (v8[2](v8, v10, v6, v11) & 1) != 0;

  return v13;
}

- (void)_willReplaceText:(id)a3 withSupplementalCandidate:(id)a4
{
  v12 = a3;
  v5 = [(_UIKeyboardStateManager *)self _hasMarkedText];
  v6 = v12;
  if (!v5)
  {
    v7 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v12];
    if (v7)
    {
      self->m_textInputChangesIgnored = 1;
      v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v9 = [v7 end];
      [v8 _setSelectionToPosition:v9];

      [(_UIKeyboardStateManager *)self updateForChangedSelection];
      [v12 rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(v12, "length")}];
      if (v10)
      {
        v11 = v10;
        do
        {
          --v11;
          [(_UIKeyboardStateManager *)self deleteBackwardAndNotify:0];
        }

        while (v11);
      }

      self->m_textInputChangesIgnored = 0;
    }

    v6 = v12;
  }
}

- (void)_didReplaceText:(id)a3 withSupplementalCandidate:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 input];
  if ([v7 length])
  {
    v8 = [v6 input];
    v9 = [v8 characterAtIndex:0];
    v10 = v9 == [v6 supplementalItemPrefix];
  }

  else
  {
    v10 = 0;
  }

  if ([v6 supplementalItemPrefix] && !v10)
  {
    v11 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v12];
    if (v11)
    {
      self->m_textInputChangesIgnored = 0;
    }
  }
}

- (void)_acceptAutofillCandidateRequiringAuthentication:(id)a3 payloadDelegate:(id)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _UIKeyboardImplLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Accepting autofill candidate requiring authentication", buf, 2u);
  }

  v12 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v12 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v12 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  objc_initWeak(buf, v9);
  v13 = [(_UIKeyboardStateManager *)self inputManager];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __108___UIKeyboardStateManager__acceptAutofillCandidateRequiringAuthentication_payloadDelegate_executionContext___block_invoke;
  v17 = &unk_1E70FD718;
  v18 = self;
  objc_copyWeak(&v19, buf);
  [v13 handleAcceptedCandidate:v8 keyboardState:v12 completionHandler:&v14];

  [v10 returnExecutionToParent];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)handleAcceptedCandidate:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && (v8 = [v6 slotID], v9 = objc_msgSend(v6, "customInfoType"), v8) && self->m_cachedAutofillMode == 1 && v9 && (-[_UIKeyboardStateManager remoteTextInputPartner](self, "remoteTextInputPartner"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "autofillPayloadDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    [(_UIKeyboardStateManager *)self _acceptAutofillCandidateRequiringAuthentication:v6 payloadDelegate:v11 executionContext:v7];
  }

  else
  {
    v11 = [(TIKeyboardState *)self->m_keyboardState copy];
    [v11 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
    [v11 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke;
    v15[3] = &unk_1E70FD740;
    v16 = v7;
    v12 = v6;
    v17 = v12;
    v18 = self;
    v13 = [v15 copy];
    v14 = [(_UIKeyboardStateManager *)self backendController];
    [v14 handleAcceptedCandidate:v12 keyboardState:v11 completionHandler:v13];
  }
}

- (void)generateReplacementsForString:(id)a3 candidatesHandler:(id)a4 executionContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __92___UIKeyboardStateManager_generateReplacementsForString_candidatesHandler_executionContext___block_invoke;
  v19 = &unk_1E70FD790;
  v20 = v9;
  v21 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a3;
  v13 = [&v16 copy];
  v14 = [(_UIKeyboardStateManager *)self inputManager:v16];
  v15 = [(TIKeyboardState *)self->m_keyboardState keyLayout];
  [v14 generateReplacementsForString:v12 keyLayout:v15 continuation:v13];
}

- (void)skipHitTestForTouchEvent:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(_UIKeyboardStateManager *)self skipHitTestForTouchEvents:v6, v7, v8];
  }
}

- (void)skipHitTestForTouchEvents:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    if ([v6 indexOfObjectPassingTest:&__block_literal_global_1170] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_UIKeyboardStateManager *)self refreshKeyboardStateUpdatingSecureCandidateRenderTraits:0];
    }

    v4 = [(TIKeyboardState *)self->m_keyboardState copy];
    [v4 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
    [v4 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
    v5 = [(_UIKeyboardStateManager *)self backendController];
    [v5 skipHitTestForTouchEvents:v6 keyboardState:v4];
  }
}

- (void)skipHitTestForTouchEvent:(id)a3 delayed:(BOOL)a4
{
  if (a4)
  {
    [(_UIKeyboardStateManager *)self setTouchEventWaitingForKeyInputEvent:a3];
  }

  else
  {
    [(_UIKeyboardStateManager *)self skipHitTestForTouchEvent:a3];
  }
}

- (void)performHitTestForTouchEvent:(id)a3 executionContextPassingNSNumber:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(_UIKeyboardStateManager *)self performHitTestForTouchEvents:v9 executionContextPassingNSNumber:v7, v10, v11];
}

- (void)performHitTestForTouchEvents:(id)a3 executionContextPassingNSNumber:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (![(_UIKeyboardStateManager *)self shouldAccessInputManagerService])
  {
    [v6 returnExecutionToParent];
  }

  [(_UIKeyboardStateManager *)self refreshKeyboardStateUpdatingSecureCandidateRenderTraits:0];
  v8 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v8 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v8 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88___UIKeyboardStateManager_performHitTestForTouchEvents_executionContextPassingNSNumber___block_invoke;
  v12[3] = &unk_1E70F5DB8;
  v13 = v6;
  v9 = v6;
  v10 = [v12 copy];
  v11 = [(_UIKeyboardStateManager *)self backendController];
  [v11 performHitTestForTouchEvents:v7 keyboardState:v8 completionHandler:v10];
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4 executionContext:(id)a5
{
  v5 = *&a4;
  v6 = a3;
  v8 = a5;
  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  v9 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v9 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v9 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __95___UIKeyboardStateManager_adjustPhraseBoundaryInForwardDirection_granularity_executionContext___block_invoke;
  v16 = &unk_1E70FD4D0;
  v17 = v8;
  v18 = self;
  v10 = v8;
  v11 = [&v13 copy];
  v12 = [(_UIKeyboardStateManager *)self inputManager:v13];
  [v12 adjustPhraseBoundaryInForwardDirection:v6 granularity:v5 keyboardState:v9 completionHandler:v11];
}

- (void)removeAllDynamicDictionaries
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C4C0];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55___UIKeyboardStateManager_removeAllDynamicDictionaries__block_invoke;
  aBlock[3] = &unk_1E70FD7F8;
  v8 = v2;
  v4 = v2;
  v5 = _Block_copy(aBlock);
  v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
  [v6 removeAllDynamicDictionariesWithCompletionHandler:v5];
}

- (void)releaseInputManager
{
  m_inputManagerState = self->m_inputManagerState;
  self->m_inputManagerState = 0;

  [(_UIKeyboardImplProxy *)self->m_implProxy setDelegate:0];
  v4 = sharedInputManagerMux();
  [v4 releaseConnectedClients];
  [(_UISmartReplyFeedbackManager *)self->_smartReplyFeedbackManager resetWithDebug:@"releaseInputManager"];
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5 fromCapsLock:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v9 = a3;
  [(_UIKeyboardStateManager *)self showCursorAccessory];
  v10 = +[UIInputSwitcher sharedInstance];
  LOBYTE(v6) = [v10 switchMode:v9 withHUD:v7 withDelay:v7 fromCapsLock:v6];

  return v6;
}

- (BOOL)shouldSwitchInputMode:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self autofillController];
  v6 = [v5 delegateNeedsAutofillMode];

  v7 = [(UITextInputTraits *)self->m_traits keyboardType];
  v8 = v7 == 1;
  v9 = +[UIKeyboard keyboardBundleIdentifier];
  if ([v9 isEqualToString:@"com.apple.purplebuddy"])
  {
    v10 = [UITextInputTraits keyboardTypeRequiresASCIICapable:[(UITextInputTraits *)self->m_traits keyboardType]];
    v8 = v7 == 1 || v10;
  }

  v11 = [v4 isDesiredForTraits:self->m_traits withExtended:0];
  LOBYTE(v12) = v11 ^ 1;
  if ((v11 & 1) == 0 && !v8)
  {
    v12 = (v6 < 5) & (0x16u >> v6) | [(UITextInputTraits *)self->m_traits isCarPlayIdiom];
  }

  return v12;
}

- (id)desirableInputModesWithExtensions:(BOOL)a3
{
  v3 = a3;
  v56[1] = *MEMORY[0x1E69E9840];
  if ([(UITextInputTraits *)self->m_traits keyboardType]== 124)
  {
    v5 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:@"emoji@sw=Emoji"];
    v56[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  }

  else
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]|| [(UITextInputTraits *)self->m_traits keyboardType]== 7 || [(UITextInputTraits *)self->m_traits keyboardType]== 3)
    {
      v8 = [(UITextInputTraits *)self->m_traits copy];
      [v8 setKeyboardType:1];
    }

    else
    {
      v8 = 0;
    }

    if ([(UITextInputTraits *)self->m_traits loadKeyboardsForSiriLanguage])
    {
      [v7 loadSuggestedInputModesForSiriLanguage];
    }

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [MEMORY[0x1E695DF70] array];
    self->m_needsToRecomputeDesirableModes = 0;
    if (v3)
    {
      v11 = [(UITextInputTraits *)self->m_traits textContentType];
      v12 = [v11 isEqualToString:@"cc-number"];
    }

    else
    {
      v12 = 1;
    }

    v40 = v7;
    v13 = [v7 activeInputModes];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __61___UIKeyboardStateManager_desirableInputModesWithExtensions___block_invoke;
    v49[3] = &unk_1E70FD820;
    v53 = v12;
    v49[4] = self;
    v14 = v8;
    v50 = v14;
    v15 = v9;
    v51 = v15;
    v16 = v10;
    v52 = v16;
    [v13 enumerateObjectsUsingBlock:v49];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v18)
    {
      v19 = v18;
      v38 = v16;
      v20 = *v46;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v22 identifier];
          v24 = [v23 hasPrefix:@"emoji"];

          if (v24 & 1) == 0 && ([v22 isDesiredForTraits:self->m_traits])
          {
            v39 = 1;
            goto LABEL_23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v39 = 0;
LABEL_23:
      v16 = v38;
    }

    else
    {
      v39 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v42;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v41 + 1) + 8 * j);
          v32 = [v31 isDesiredForTraits:v14];
          if (([v17 containsObject:v31] & 1) == 0)
          {
            [v17 addObject:v31];
          }

          v28 |= v32;
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    if ((v39 & ((v14 == 0) | v28) & 1) == 0)
    {
      v33 = +[UIKeyboardInputMode intlInputMode];
      [v17 addObject:v33];
    }

    v5 = v40;
    if ([(_UIKeyboardStateManager *)self shouldLoadAutofillSignUpInputViewController])
    {
      v34 = +[UIKeyboardInputMode autofillSignupInputMode];
      [v17 addObject:v34];
    }

    v35 = [(UITextInputTraits *)self->m_traits keyboardType];
    if (v35 <= 0xB && ((1 << v35) & 0x930) != 0 || v35 == 127)
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v6 = [objc_opt_class() uniqueNumberPadInputModesFromInputModes:v17 forKeyboardType:{-[UITextInputTraits keyboardType](self->m_traits, "keyboardType")}];
    }

    else
    {
      v6 = v17;
    }
  }

  return v6;
}

- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextInputTraits *)self->m_traits acceptsInitialEmojiKeyboard];

  [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:v3 allowNonLinguisticInputModes:v5];
}

- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3 allowNonLinguisticInputModes:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v102 = *MEMORY[0x1E69E9840];
  if (![(_UIKeyboardStateManager *)self skipRecomputeInputMode])
  {
    v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v8 = [v7 handlingRemoteEvent];

    if ((v8 & 1) == 0)
    {
      v9 = +[UIKeyboardInputModeController sharedInputModeController];
      v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v11 = [v10 isInOnenessSceneAndRTIEnabled];

      if (v11)
      {
        [v9 setInputModeByMacOSInputSource];
LABEL_79:

        return;
      }

      v12 = [(_UIKeyboardStateManager *)self delegateAsResponder];
      v13 = [v12 _additionalTextInputLocales];
      [v9 setAdditionalTextInputLocales:v13];

      v84 = [(_UIKeyboardStateManager *)self desirableInputModesWithExtensions:v5];
      v14 = [v9 identifiersFromInputModes:?];
      v15 = UIKeyboardActiveInputModes;
      v16 = [v15 isEqualToArray:v14];

      UIKeyboardSetActiveInputModes(v14);
      if ((v16 & 1) == 0)
      {
        v17 = [MEMORY[0x1E696AD88] defaultCenter];
        [v17 postNotificationName:@"UIKeyboardActiveInputModesDidChange" object:0 userInfo:0];
      }

      v18 = +[UIKeyboardInputModeController sharedInputModeController];
      v19 = [v18 lastInputModeSwitchTriggeredByASCIIToggle];

      if (v19)
      {
        [v9 currentInputModeInPreference];
      }

      else
      {
        [v9 currentInputMode];
      }
      v20 = ;
      v21 = +[UIKeyboardInputMode dictationInputMode];
      v22 = [v20 isEqual:v21];

      if (v22)
      {
        v23 = +[UIKeyboardInputMode dictationInputMode];
        v24 = [v23 currentInputModeForDictation];

        v20 = v24;
      }

      v25 = v20;
      v26 = [v9 inputModeContextIdentifier];

      v27 = v25;
      if (!v26)
      {
        if (!v4 || self->_suppressUpdateInputMode)
        {
          v27 = v25;
          if (self->_suppressUpdateInputMode)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v42 = [v25 normalizedIdentifier];
          IsNonLinguistic = UIKeyboardInputModeIsNonLinguistic(v42);

          v27 = v25;
          if (IsNonLinguistic)
          {
            goto LABEL_13;
          }
        }

        v27 = v25;
        if (!+[UIKeyboard isKeyboardProcess])
        {
          v52 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          v53 = [v9 textInputModeForResponder:v52];
          v27 = [v9 lastUsedInputModeForTextInputMode:v53];
        }

        if (!v27)
        {
          v27 = [v9 currentInputModeInPreference];
        }
      }

LABEL_13:
      if ([(_UIKeyboardStateManager *)self shouldLoadAutofillSignUpInputViewController])
      {
        v28 = +[UIKeyboardInputMode autofillSignupInputMode];
        [(_UIKeyboardStateManager *)self setKeyboardInputMode:v28 userInitiated:0];

        v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v30 = [v29 remoteHostInputViewSet:0];

        v31 = v84;
LABEL_78:

        goto LABEL_79;
      }

      v83 = v14;
      if ((self->m_cachedAutofillMode - 1) > 2)
      {
        if (!self->_restoresToEmojiInputMode)
        {
          v31 = v84;
LABEL_55:
          if (([v27 isEqual:v25] & 1) != 0 || objc_msgSend(v31, "indexOfObject:", v27) == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (([v25 isDisplayed] & 1) == 0)
            {
              [(_UIKeyboardStateManager *)self postInputViewControllerShouldUpdateNotification:v25];
            }
          }

          else
          {
            if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (-[_UIKeyboardStateManager remoteTextInputPartner](self, "remoteTextInputPartner"), v59 = objc_claimAutoreleasedReturnValue(), v98[0] = @"inputMode", v98[1] = @"isUserInitiated", v99[0] = v27, v99[1] = MEMORY[0x1E695E110], [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:2], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "forwardInputDestinationEventToUIHost:params:", sel_setKeyboardInputMode_userInitiated_, v60), v60, v59, objc_msgSend(v9, "currentInputMode"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "identifier"), v62 = objc_claimAutoreleasedReturnValue(), LODWORD(v60) = objc_msgSend(v62, "isEqualToString:", @"autofillsignup"), v62, v61, v60))
            {
              [(_UIKeyboardStateManager *)self setKeyboardInputMode:v27 userInitiated:0];
            }

            v63 = v27;

            v25 = v63;
          }

          v64 = [v31 indexOfObject:v25];
          if (v64 == 0x7FFFFFFFFFFFFFFFLL || ([v31 objectAtIndex:v64], v65 = objc_claimAutoreleasedReturnValue(), v66 = -[_UIKeyboardStateManager shouldSwitchInputMode:](self, "shouldSwitchInputMode:", v65), v65, v66))
          {
            v82 = v25;
            v67 = +[UIKeyboardInputModeController sharedInputModeController];
            v68 = [v9 currentInputMode];
            v69 = [v67 fallbackCurrentInputModeForFilteredInputMode:v68 fromInputModes:v31];

            v70 = [MEMORY[0x1E695DF70] array];
            v71 = v70;
            if (v69)
            {
              [v70 addObject:v69];
            }

            v72 = v31;
            [v71 addObjectsFromArray:v31];
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v73 = v71;
            v74 = [v73 countByEnumeratingWithState:&v85 objects:v97 count:16];
            if (v74)
            {
              v75 = v74;
              v76 = *v86;
              while (2)
              {
                for (i = 0; i != v75; ++i)
                {
                  if (*v86 != v76)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v78 = *(*(&v85 + 1) + 8 * i);
                  if ([v78 isDesiredForTraits:self->m_traits withExtended:0])
                  {
                    v79 = [v9 currentInputMode];
                    [(_UIKeyboardStateManager *)self setKeyboardInputMode:v78 userInitiated:0];
                    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
                    [WeakRetained setShowInputModeIndicator:1];

                    goto LABEL_77;
                  }
                }

                v75 = [v73 countByEnumeratingWithState:&v85 objects:v97 count:16];
                if (v75)
                {
                  continue;
                }

                break;
              }
            }

LABEL_77:

            v25 = v82;
            v14 = v83;
            v31 = v72;
          }

          goto LABEL_78;
        }

        v44 = v14;
        self->_restoresToEmojiInputMode = 0;
        if (([v25 isEmojiInputMode] & 1) == 0)
        {
          v45 = +[UIKeyboardInputModeController sharedInputModeController];
          [v45 setInputModeThatInvokeEmoji:v25];
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v46 = v84;
        v47 = [v46 countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v90;
          while (2)
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v90 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v89 + 1) + 8 * j);
              if ([v51 isEmojiInputMode])
              {
                v58 = v51;

                v27 = v58;
                goto LABEL_53;
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v89 objects:v100 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

LABEL_53:
        v14 = v44;
        v31 = v46;
      }

      else
      {
        v32 = [v27 identifier];
        v33 = [v32 hasPrefix:@"emoji"];

        if (v33)
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v34 = v84;
          v35 = [v34 countByEnumeratingWithState:&v93 objects:v101 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v94;
            v81 = v25;
            while (2)
            {
              v38 = 0;
              v39 = v27;
              do
              {
                if (*v94 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v27 = *(*(&v93 + 1) + 8 * v38);

                v40 = [v27 identifier];
                v41 = [v40 hasPrefix:@"emoji"];

                if (!v41)
                {
                  v25 = v81;
                  goto LABEL_49;
                }

                ++v38;
                v39 = v27;
              }

              while (v36 != v38);
              v36 = [v34 countByEnumeratingWithState:&v93 objects:v101 count:16];
              v25 = v81;
              if (v36)
              {
                continue;
              }

              break;
            }
          }

          v27 = 0;
LABEL_49:

          v14 = v83;
        }

        v31 = v84;
        v54 = [v27 identifier];
        v55 = [v54 hasPrefix:@"emoji"];

        if (!v55)
        {
          goto LABEL_55;
        }

        v56 = +[UIKeyboardInputMode intlInputMode];

        v57 = [v84 arrayByAddingObject:v56];

        v46 = [v9 identifiersFromInputModes:v57];
        UIKeyboardSetActiveInputModes(v46);
        v27 = v56;
        v31 = v57;
      }

      goto LABEL_55;
    }
  }
}

- (void)setRestoresToEmojiInputMode
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_setRestoresToEmojiInputMode];
  }

  else
  {
    self->_restoresToEmojiInputMode = 1;
  }
}

- (void)_startSmartReplyWritingToolWithPrompt:(id)a3 entryPoint:(id)a4 inputContextHistory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_8;
  }

  v11 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  if ([(_UIKeyboardStateManager *)self shouldPreventLongFormSmartRepliesFromStarting])
  {
    v12 = _UIKeyboardSmartReplyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Not starting SmartReplies because WritingTools is already in use", v16, 2u);
    }

    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_8:
    v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v15 = [v11 textInputDelegate];
    [v15 _startWritingToolsWithTool:@"WTUIRequestedToolSmartReply" prompt:v8 entryPoint:v9 inputContextHistory:v10 sender:self];

    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E695DF90] dictionary];
  [v12 setObject:v8 forKeyedSubscript:@"prompt"];
  [v12 setObject:v9 forKeyedSubscript:@"entryPoint"];
  [v12 setObject:v10 forKeyedSubscript:@"inputContextHistory"];
  v13 = [v11 textOperations];
  [v13 setCustomInfo:v12];

  v14 = [v11 textOperations];
  [v14 setCustomInfoType:0x1EFB7CB90];

  [v11 flushOperations];
LABEL_7:

LABEL_9:
}

- (void)writingToolsDidEnd
{
  v2 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
  [v2 reportWritingToolsPanelDismissed];
}

- (void)startSmartReplyWritingToolWithParams:(id)a3
{
  v4 = a3;
  v7 = [v4 objectForKeyedSubscript:@"prompt"];
  v5 = [v4 objectForKeyedSubscript:@"entryPoint"];
  v6 = [v4 objectForKeyedSubscript:@"inputContextHistory"];

  [(_UIKeyboardStateManager *)self _startSmartReplyWritingToolWithPrompt:v7 entryPoint:v5 inputContextHistory:v6];
}

- (BOOL)canPasteImage
{
  if (self->m_needsPasteSupportUpdate)
  {
    v3 = [(_UIKeyboardStateManager *)self uncachedDelegateSupportsImagePaste];
    self->m_delegateSupportsImagePaste = v3;
    self->m_needsPasteSupportUpdate = 0;
  }

  else
  {
    return self->m_delegateSupportsImagePaste;
  }

  return v3;
}

- (void)setRemoteDelegateSupportsAdaptiveImageGlyph:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 delegateRespectingForwardingDelegate:0];

  if (objc_opt_respondsToSelector())
  {
    [v5 setSupportsAdaptiveImageGlyph:v3];
  }
}

- (BOOL)canInsertEmojiImageTextAttachment
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 delegateRespectingForwardingDelegate:0];

  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 supportsEmojiImageTextAttachments];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)supportsGenmojiCreation
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v4 = [v3 documentTraits];

    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 supportsGenmojiCreation];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    if (qword_1ED49D1F8 != -1)
    {
      dispatch_once(&qword_1ED49D1F8, &__block_literal_global_1244);
    }

    v5 = byte_1ED49CF3C ^ 1;
  }

  return v5 & 1;
}

- (BOOL)isSelectionAtSentenceAutoshiftBoundary:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];

  if (v5 && v3)
  {
    v6 = [(_UIKeyboardStateManager *)self inputManagerState];
    v7 = [v6 nextInputWouldStartSentence];

    return v7;
  }

  else
  {
    v9 = [(_UIKeyboardStateManager *)self inputDelegate];
    v10 = [v9 _characterInRelationToRangedSelection:0xFFFFFFFFLL];

    v11 = (v10 & 0xFFFFFF7F) == 32;
    if ((v10 & 0xFFFFFF7F) != 0x20)
    {
      goto LABEL_22;
    }

    v12 = 4294967294;
    v13 = -1;
    do
    {
      ++v13;
      v14 = [(_UIKeyboardStateManager *)self inputDelegate];
      v10 = [v14 _characterInRelationToRangedSelection:v12];

      v12 = (v12 - 1);
    }

    while ((v10 & 0xFFFFFF7F) == 0x20 && v13 < 2);
    if (v13 > 1)
    {
      return 1;
    }

LABEL_22:
    if (v10 > 0x3F)
    {
      return v10 == 161 || v10 == 191;
    }

    if (((1 << v10) & 0x8000400200000000) == 0)
    {
      v11 = 1;
      if (((1 << v10) & 0x401) == 0)
      {
        return v10 == 161 || v10 == 191;
      }
    }

    return v11;
  }
}

- (BOOL)nextInputWouldStartSentence
{
  v3 = [(_UIKeyboardStateManager *)self inputManagerState];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self inputManagerState];
  v5 = [v4 nextInputWouldStartSentence];

  return v5;
}

- (void)setShift:(BOOL)a3 autoshift:(BOOL)a4
{
  if ((!a4 || [(_UIKeyboardStateManager *)self callLayoutUsesAutoShift]) && !self->m_settingShift)
  {
    self->m_settingShift = 1;
    self->m_shift = a3;
    self->m_autoshift = a4;
    if (!a3)
    {
      self->m_shiftLocked = 0;
    }

    [(_UIKeyboardStateManager *)self setShiftNeedsUpdate];
    self->m_settingShift = 0;

    [(_UIKeyboardStateManager *)self _forwardNeededShiftStatesToDestination];
  }
}

- (void)setShiftLocked:(BOOL)a3
{
  if (self->m_shiftLockedEnabled)
  {
    self->m_shiftLocked = a3;
    if (a3)
    {
      [(_UIKeyboardStateManager *)self setShift:1 autoshift:0];
    }

    else
    {
      [(_UIKeyboardStateManager *)self _forwardNeededShiftStatesToDestination];
    }
  }
}

- (void)setShiftLockedForced:(BOOL)a3
{
  self->m_shiftLocked = a3;
  if (a3)
  {
    [(_UIKeyboardStateManager *)self setShift:1 autoshift:0];
  }
}

- (void)setShiftStatesNeededInDestination:(BOOL)a3 autoShifted:(BOOL)a4 shiftLocked:(BOOL)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v10 = [WeakRetained keyboardLayoutIsInAnotherProcess];

  if (v10)
  {
    self->m_shift = a3;
    self->m_autoshift = a4;
    self->m_shiftLocked = a5;
  }
}

- (void)updateShiftStateAfterAsyncSelectionChange
{
  if ([(UITextInputTraits *)self->m_traits autocapitalizationType]== 1 && ![(_UIKeyboardStateManager *)self isShiftLocked])
  {

    [(_UIKeyboardStateManager *)self clearShiftState];
  }
}

- (BOOL)isCapsLockASCIIToggle
{
  if (![(_UIKeyboardStateManager *)self isCapsLockSwitchEnabled])
  {
    return 0;
  }

  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 inputModeForASCIIToggleWithTraits:self->m_traits];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isCapsLockSwitchEnabled
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 valueForPreferenceKey:*MEMORY[0x1E69D9758]];

  if (!v5)
  {
    if (self->m_didUpdateCapsLockLanguageSwitchSetting)
    {
LABEL_10:
      m_shouldEnableCapsLockLanguageSwitchByDefault = self->m_shouldEnableCapsLockLanguageSwitchByDefault;
      goto LABEL_11;
    }

    v7 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFE2B5C0];
    v8 = MEMORY[0x1E695DF58];
    v9 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v10 = [v8 localeWithLocaleIdentifier:v9];
    v11 = [v10 languageCode];

    if ([v7 containsObject:v11])
    {
      HasLanguageSwitchLabel = 1;
    }

    else
    {
      if (self->m_shouldEnableCapsLockLanguageSwitchByDefault)
      {
LABEL_9:
        self->m_didUpdateCapsLockLanguageSwitchSetting = 1;

        goto LABEL_10;
      }

      HasLanguageSwitchLabel = BKSHIDServicesCapsLockKeyHasLanguageSwitchLabel();
    }

    self->m_shouldEnableCapsLockLanguageSwitchByDefault = HasLanguageSwitchLabel;
    goto LABEL_9;
  }

  m_shouldEnableCapsLockLanguageSwitchByDefault = [v5 BOOLValue];
LABEL_11:

  return m_shouldEnableCapsLockLanguageSwitchByDefault & 1;
}

- (void)forceShiftUpdateIfKeyboardStateChanged
{
  v3 = [(_UIKeyboardStateManager *)self changedDelegate];

  if (v3)
  {
    [(_UIKeyboardStateManager *)self updateShiftState];
    self->m_shiftNeedsUpdate = 0;
  }
}

- (void)setShouldSkipCandidateSelection:(BOOL)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v6 = [(UITextInputTraits *)self->m_traits isSecureTextEntry]| a3;
  if (v4 && v6 && ([(TIKeyboardState *)self->m_keyboardState shouldSkipCandidateSelection]& 1) == 0 && [(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    v7 = [(_UIKeyboardStateManager *)self updatedKeyBehaviors];
    v8 = [v7 returnKeyBehavior];

    if (v8 == 10)
    {
      v9 = [(_UIKeyboardStateManager *)self acceptInlineCandidateWithSpace:0];
    }

    else
    {
      [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
    }
  }

  m_keyboardState = self->m_keyboardState;

  [(TIKeyboardState *)m_keyboardState setShouldSkipCandidateSelection:v6];
}

- (void)setInputManagerState:(id)a3
{
  v5 = a3;
  m_inputManagerState = self->m_inputManagerState;
  if (m_inputManagerState == v5)
  {
    goto LABEL_14;
  }

  p_m_inputManagerState = &self->m_inputManagerState;
  v17 = v5;
  v8 = [(TIKeyboardInputManagerState *)m_inputManagerState usesContinuousPath];
  v9 = [(TIKeyboardInputManagerState *)self->m_inputManagerState supportsSetPhraseBoundary];
  v10 = [(TIKeyboardInputManagerState *)v17 supportsSetPhraseBoundary];
  objc_storeStrong(&self->m_inputManagerState, a3);
  if ([(TIKeyboardState *)self->m_keyboardState longPredictionListEnabled])
  {
    if (self->m_usesCandidateSelection)
    {
      goto LABEL_9;
    }

    self->m_usesCandidateSelection = 1;
  }

  else
  {
    if (!*p_m_inputManagerState)
    {
      goto LABEL_9;
    }

    m_usesCandidateSelection = self->m_usesCandidateSelection;
    if (m_usesCandidateSelection == [*p_m_inputManagerState usesCandidateSelection])
    {
      goto LABEL_9;
    }

    self->m_usesCandidateSelection = [(TIKeyboardInputManagerState *)self->m_inputManagerState usesCandidateSelection];
  }

  [(_UIKeyboardStateManager *)self updateShowCandidateBar];
LABEL_9:
  v12 = v9 ^ v10;
  [(TISmartPunctuationController *)self->m_smartPunctuationController setAutoQuoteType:[(TIKeyboardInputManagerState *)self->m_inputManagerState autoquoteType]];
  v13 = +[UIKeyboardInputModeController sharedInputModeController];
  v14 = [v13 currentInputMode];
  v15 = [v14 primaryLanguage];
  [(_UIKeyboardStateManager *)self updateSmartPunctuationOptionsForLocaleIdentifier:v15];

  if ((v8 & 1) == 0 && [*p_m_inputManagerState usesContinuousPath])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained presentContinuousPathIntroductionView];
  }

  v5 = v17;
  if (v12)
  {
    [(_UIKeyboardStateManager *)self notifyInputSourceStateChangeIfNeeded];
    v5 = v17;
  }

LABEL_14:
}

- (void)updateShowCandidateBar
{
  v3 = [(_UIKeyboardStateManager *)self shouldShowCandidateBar];

  [(_UIKeyboardStateManager *)self setShowsCandidateBar:v3];
}

- (void)setUsesCandidateSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardStateManager *)self usesCandidateSelection];
  v6 = !v3;
  [(TIKeyboardState *)self->m_keyboardState setSuppressingCandidateSelection:v6];
  if (!v6)
  {
    v7 = [(_UIKeyboardStateManager *)self inputManagerState];
    v8 = [v7 usesCandidateSelection];

    if (!v5 && (v8 & 1) != 0)
    {

      [(_UIKeyboardStateManager *)self clearInput];
    }
  }
}

- (BOOL)suppliesCompletions
{
  m_candidateList = self->m_candidateList;
  if (m_candidateList && [(UIKeyboardCandidateList *)m_candidateList isFloatingList]&& ![(_UIKeyboardStateManager *)self canUseCandidateBarAsSupplementToInlineView])
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self textInputTraits];
  v5 = [v4 isSingleLineDocument];

  v6 = [(_UIKeyboardStateManager *)self inputManagerState];
  v7 = v6;
  if (v5)
  {
    if ([v6 suppressCompletionsForFieldEditor])
    {
      v8 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasOnlySlottedCandidates];
LABEL_10:
      v9 = v8;
      goto LABEL_11;
    }
  }

  else if (([v6 suppliesCompletions] & 1) == 0)
  {
    v8 = [(_UIKeyboardStateManager *)self shouldShowLongPredictionList];
    goto LABEL_10;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)supportsNumberKeySelection
{
  v2 = [(_UIKeyboardStateManager *)self inputManagerState];
  v3 = [v2 supportsNumberKeySelection];

  return v3;
}

- (BOOL)shouldUsePinyinStyleRowNavigation
{
  v2 = [(_UIKeyboardStateManager *)self inputManagerState];
  v3 = [v2 usesPunctuationKeysForRowNavigation];

  return v3;
}

- (void)handleDeleteAsRepeat:(BOOL)a3 executionContext:(id)a4
{
  v4 = a3;
  v8 = a4;
  if (![(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents]|| +[UIKeyboard isKeyboardProcess]&& [(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    if (v4 && self->m_repeatDeleteWord)
    {
      v6 = 512;
    }

    else if ([(_UIKeyboardStateManager *)self shouldUseAdaptiveDelete])
    {
      v6 = 512;
    }

    else
    {
      v6 = 0;
    }

    [(_UIKeyboardStateManager *)self deleteFromInputWithFlags:v6 executionContext:v8];
  }

  else
  {
    v7 = [(_UIKeyboardStateManager *)self physicalKeyboardEventWithInput:@"\x7F" inputFlags:v4];
    [(_UIKeyboardStateManager *)self _handleKeyEvent:v7 executionContext:v8];
  }
}

- (void)handleDeleteWithExecutionContext:(id)a3
{
  v12 = a3;
  v4 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  v5 = [v4 canUndoAcceptedTextCompletion];

  if (v5)
  {
    [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
    [(_UIKeyboardStateManager *)self setDeleteWordLastDelete:-*MEMORY[0x1E695E460]];
    [(_UIKeyboardStateManager *)self setDeletedString:0];
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained playDeleteKeyFeedbackIfNecessaryRepeat:0 rapid:0 deleteCount:1];

    v7 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    v8 = [v12 childWithContinuation:&__block_literal_global_1273];
    [v7 undoAcceptedTextCompletionExecutionContext:v8];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(_UIKeyboardStateManager *)self deleteWordLastDelete];
    if (Current - v10 <= 1.0)
    {
      [(_UIKeyboardStateManager *)self startDelayDeleteTimer];
      [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
      [v12 returnExecutionToParent];
    }

    else
    {
      [(_UIKeyboardStateManager *)self setDeleteWordLastDelete:-*MEMORY[0x1E695E460]];
      [(_UIKeyboardStateManager *)self setDeletedString:0];
      v11 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v11 playDeleteKeyFeedbackIfNecessaryRepeat:0 rapid:0 deleteCount:1];

      [(_UIKeyboardStateManager *)self handleDeleteAsRepeat:0 executionContext:v12];
    }
  }
}

- (void)completeDelete
{
  v3 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v4 = [v3 isSmartReplyCandidates];

  if ((v4 & 1) == 0)
  {
    [(_UIKeyboardStateManager *)self generateCandidates];
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
  }

  [(_UIKeyboardStateManager *)self updateReturnKey];

  [(_UIKeyboardStateManager *)self updateNoContentViews];
}

- (BOOL)shouldUseAdaptiveDelete
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v4 = [v3 documentState];
    v5 = [v4 documentState];
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self documentState];
  }

  v6 = [v5 contextBeforeInput];
  v7 = [v6 _lastGrapheme];
  v8 = [v7 containsString:@"\n"];

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = +[UIDictationController sharedInstance];
    v9 = [v10 languageSupportsAdaptiveDelete];

    if (v9)
    {
      v11 = +[UIDictationController sharedInstance];
      v12 = [v11 startRangeOfCurrentHypothesis];
      v13 = [v5 contextBeforeInput];
      v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v15 = [v13 stringByTrimmingCharactersInSet:v14];
      v16 = [v15 length];

      if (v12 >= v16)
      {
        v23 = +[UIDictationController sharedInstance];
        [v23 setStartRangeOfCurrentHypothesis:{0x7FFFFFFFFFFFFFFFLL, 0}];
        LOBYTE(v9) = 0;
      }

      else
      {
        v17 = +[UIDictationUtilities trackingPunctuations];
        v18 = [v5 contextBeforeInput];
        v19 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v20 = [v18 stringByTrimmingCharactersInSet:v19];
        v21 = [v20 _lastGrapheme];
        v22 = [v17 containsObject:v21];

        v23 = +[UIDictationController sharedInstance];
        v9 = [v23 shouldDeleteWordOnBackspaceTap] & (v22 ^ 1);
      }
    }
  }

  return v9;
}

- (void)handleDeleteWordWithExecutionContext:(id)a3
{
  v8 = a3;
  [(_UIKeyboardStateManager *)self clearDelayDeleteTimer];
  v4 = [(_UIKeyboardStateManager *)self deletedString];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [(_UIKeyboardStateManager *)self deletedString];
    [v5 insertText:v6];

    [(_UIKeyboardStateManager *)self setDeletedString:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained playDeleteKeyFeedbackRepeat:0 rapid:0 deleteCount:1];
  }

  [(_UIKeyboardStateManager *)self deleteFromInputWithFlags:512 executionContext:v8];
}

- (void)handleDelete
{
  v4 = [(_UIKeyboardStateManager *)self taskQueue];
  v5 = [v4 isMainThreadExecutingTask];

  if (v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIKeyboardStateManager.m" lineNumber:11526 description:{@"Received %s while performing another keyboard action.", "-[_UIKeyboardStateManager handleDelete]"}];
  }

  if (qword_1ED49D208 != -1)
  {
    dispatch_once(&qword_1ED49D208, &__block_literal_global_1279);
  }

  v6 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___UIKeyboardStateManager_handleDelete__block_invoke_3;
  v8[3] = &unk_1E70FD058;
  v8[4] = self;
  [v6 addTask:v8 breadcrumb:qword_1ED49D200];
}

- (void)handleClearWithInsertBeforeAdvance:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v5 replaceRange:0 oldText:0 withText:v4 forReplaceAction:2];
}

- (void)handleClear
{
  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4 = [v3 isMainThreadExecutingTask];

  if ((v4 & 1) == 0)
  {
    v5 = [(_UIKeyboardStateManager *)self taskQueue];
    [v5 waitUntilAllTasksAreFinished];
  }

  if (qword_1ED49D218 != -1)
  {
    dispatch_once(&qword_1ED49D218, &__block_literal_global_1283);
  }

  v6 = [(_UIKeyboardStateManager *)self taskQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___UIKeyboardStateManager_handleClear__block_invoke_3;
  v7[3] = &unk_1E70FD058;
  v7[4] = self;
  [v6 addTask:v7 breadcrumb:qword_1ED49D210];
}

- (void)handleClearWithExecutionContext:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v6 _clearButtonClicked:0];
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v6 replaceRange:0 oldText:0 withText:&stru_1EFB14550 forReplaceAction:2];
  }

  [v7 returnExecutionToParent];
}

- (BOOL)handleMoveCursorToStartOfLine:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 testOnly:(BOOL)a5 savedHistory:(id)a6 force:(BOOL)a7 canHandleSelectableInputDelegateCommand:(id)a8 keyEvent:(id)a9
{
  v10 = a7;
  v12 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v18 = [(_UIKeyboardStateManager *)self hasEditableMarkedText];
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    [(_UIKeyboardStateManager *)self inputManagerState];
    v32 = self;
    v19 = v12;
    v20 = v10;
    v21 = v16;
    v22 = v17;
    v23 = v15;
    v24 = a5;
    v26 = v25 = a3;
    v27 = [v26 supportsSetPhraseBoundary] ^ 1;

    a3 = v25;
    a5 = v24;
    v15 = v23;
    v17 = v22;
    v16 = v21;
    v10 = v20;
    v12 = v19;
    self = v32;
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v10)
    {
      LOBYTE(v28) = 1;
      [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:1 granularity:4];
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v28) = 1;
    goto LABEL_16;
  }

  v27 = 0;
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v12 | v27))
  {
    LOBYTE(v28) = !v12;
    goto LABEL_16;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v29 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v30 = [v29 shouldRespectForwardingInputDelegate];

    if ((v30 & 1) == 0)
    {
      if (!a5)
      {
        [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v17];
      }

      goto LABEL_15;
    }
  }

  v28 = v16[2](v16, sel__moveToStartOfLine_withHistory_);
  if (v28 && !a5)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __158___UIKeyboardStateManager_handleMoveCursorToStartOfLine_beforePublicKeyCommands_testOnly_savedHistory_force_canHandleSelectableInputDelegateCommand_keyEvent___block_invoke;
    v33[3] = &unk_1E70F5AF0;
    v33[4] = self;
    v35 = a3;
    v34 = v15;
    [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v33];
  }

LABEL_16:

  return v28;
}

- (BOOL)handleMoveCursorToEndOfLine:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 testOnly:(BOOL)a5 savedHistory:(id)a6 force:(BOOL)a7 canHandleSelectableInputDelegateCommand:(id)a8 keyEvent:(id)a9
{
  v10 = a7;
  v12 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v18 = [(_UIKeyboardStateManager *)self hasEditableMarkedText];
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    [(_UIKeyboardStateManager *)self inputManagerState];
    v32 = self;
    v19 = v12;
    v20 = v10;
    v21 = v16;
    v22 = v17;
    v23 = v15;
    v24 = a5;
    v26 = v25 = a3;
    v27 = [v26 supportsSetPhraseBoundary] ^ 1;

    a3 = v25;
    a5 = v24;
    v15 = v23;
    v17 = v22;
    v16 = v21;
    v10 = v20;
    v12 = v19;
    self = v32;
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v10)
    {
      [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:0 granularity:4];
    }

    goto LABEL_8;
  }

  v27 = 0;
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v12 | v27))
  {
    LOBYTE(v28) = !v12;
    goto LABEL_9;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v30 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v31 = [v30 shouldRespectForwardingInputDelegate];

    if ((v31 & 1) == 0)
    {
      if (!a5)
      {
        [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v17];
      }

LABEL_8:
      LOBYTE(v28) = 1;
      goto LABEL_9;
    }
  }

  v28 = v16[2](v16, sel__moveToEndOfLine_withHistory_);
  if (v28 && !a5)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __156___UIKeyboardStateManager_handleMoveCursorToEndOfLine_beforePublicKeyCommands_testOnly_savedHistory_force_canHandleSelectableInputDelegateCommand_keyEvent___block_invoke;
    v33[3] = &unk_1E70F5AF0;
    v33[4] = self;
    v35 = a3;
    v34 = v15;
    [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v33];
  }

LABEL_9:

  return v28;
}

- (void)forwardKeyboardEventBackToDestination:(id)a3
{
  v4 = a3;
  v7 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v5 = [v7 textOperations];
  [v4 setKeyEventForwardedFromInputUIHost:1];
  [v5 setCustomInfoType:0x1EFB7C9B0];
  [v5 setCustomInfo:v4];

  v6 = [(_UIKeyboardStateManager *)self buildInputSourceState];
  [v5 setInputSourceState:v6];

  [v7 flushOperations];
}

- (BOOL)handleHorizontalArrow:(BOOL)a3 shiftDown:(BOOL)a4 beforePublicKeyCommands:(BOOL)a5 testOnly:(BOOL)a6 isVerticalCandidate:(BOOL)a7 hasCandidatesForTypedInput:(BOOL)a8 shouldNavigateCandidateList:(BOOL)a9 canHandleInputDelegateCommand:(id)a10 savedHistory:(id)a11 keyCommandTypeHandled:(unint64_t *)a12 keyEvent:(id)a13
{
  v13 = a8;
  v14 = a7;
  LODWORD(v48) = a4;
  HIDWORD(v48) = a6;
  v15 = a5;
  v16 = a3;
  v18 = a10;
  v19 = a11;
  v20 = a13;
  v21 = [(_UIKeyboardStateManager *)self liveConversionEnabled];
  if (v15)
  {
    if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
    {
      [v20 setKeyCommandHandlingBeforePublic:1];
      v22 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      LOBYTE(v23) = [v22 synchronousForwardKeyCommandsBeforePublicToUIHost:v20];

LABEL_30:
      v25 = v18;
      goto LABEL_31;
    }

    if (![(_UIKeyboardStateManager *)self hasEditableMarkedText])
    {
      LOBYTE(v23) = 0;
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  if ([(_UIKeyboardStateManager *)self hasEditableMarkedText])
  {
LABEL_12:
    if (v14)
    {
      if (a12)
      {
        *a12 = 2;
      }

      if ((v48 & 0x100000000) == 0)
      {
        [(UIKeyboardCandidateList *)self->m_candidateList showCandidateInForwardDirection:v16 ^ 1u granularity:0];
      }

      goto LABEL_29;
    }

    if (v21)
    {
      if (a12)
      {
        *a12 = 2;
      }

      if ((v48 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

      v26 = v16 ^ 1u;
      v27 = v48;
      v28 = self;
      goto LABEL_28;
    }

    if (v48)
    {
      v26 = v16 ^ 1u;
      v28 = self;
      v27 = 0;
LABEL_28:
      [(_UIKeyboardStateManager *)v28 movePhraseBoundaryToDirection:v26 granularity:v27, v48];
LABEL_29:
      LOBYTE(v23) = 1;
      goto LABEL_30;
    }

    v25 = v18;
    if (a9)
    {
      if ((v48 & 0x100000000) == 0)
      {
        m_candidateList = self->m_candidateList;
        v32 = +[UIKeyboardInputModeController sharedInputModeController];
        v33 = [v32 currentInputMode];
        v34 = [v33 normalizedIdentifier];
        [(UIKeyboardCandidateList *)m_candidateList showCandidateInForwardDirection:UIKeyboardInputModeIsDefaultRightToLeft(v34) ^ v16 granularity:0];
      }
    }

    else
    {
      if (!v16)
      {
        LOBYTE(v23) = 1;
        [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:1 granularity:1];
        goto LABEL_31;
      }

      [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:0 granularity:0];
    }

LABEL_55:
    LOBYTE(v23) = 1;
    goto LABEL_31;
  }

  if (v13)
  {
    if (a12)
    {
      *a12 = 2;
    }

    if ((v48 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

    v24 = self->m_candidateList;
    v25 = v18;
    if (v14)
    {
      [(UIKeyboardCandidateList *)v24 showCandidateInForwardDirection:v16 ^ 1u granularity:0];
      goto LABEL_55;
    }

    v35 = +[UIKeyboardInputModeController sharedInputModeController];
    v36 = [v35 currentInputMode];
    v37 = [v36 normalizedIdentifier];
    [(UIKeyboardCandidateList *)v24 showCandidateInForwardDirection:UIKeyboardInputModeIsDefaultRightToLeft(v37) ^ v16 granularity:0];

LABEL_42:
    goto LABEL_55;
  }

  v25 = v18;
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    v29 = [(_UIKeyboardStateManager *)self inputManagerState];
    if ([v29 supportsSetPhraseBoundary])
    {
    }

    else
    {
      v38 = [(_UIKeyboardStateManager *)self inlineCompletionAsMarkedText];

      if (!v38)
      {
        goto LABEL_55;
      }
    }
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v40 = [v39 shouldRespectForwardingInputDelegate];

    if ((v40 & 1) == 0)
    {
      if ((v50 & 1) == 0)
      {
        [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v20];
      }

      goto LABEL_55;
    }
  }

  v41 = +[UIKeyboardInputModeController sharedInputModeController];
  v42 = [v41 currentInputMode];
  v43 = [v42 normalizedIdentifier];
  IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(v43);

  if (IsDefaultRightToLeft != v16 && [(_UIKeyboardStateManager *)self cursorIsAtStartOfInlineCompletionMarkedText])
  {
    v35 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v35 acceptTextCompletionWithInteraction:4 wordTerminator:0];
    goto LABEL_42;
  }

  v45 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  [v45 removeTextCompletionPrompt];

  v46 = v18[2];
  if (v16)
  {
    v23 = v46(v18, sel__moveRight_withHistory_);
    if (v23 && (v50 & 1) == 0)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __241___UIKeyboardStateManager_handleHorizontalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_shouldNavigateCandidateList_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke;
      v54[3] = &unk_1E70F5AF0;
      v54[4] = self;
      v56 = v49;
      v55 = v19;
      [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v54];
      v47 = v55;
LABEL_50:
    }
  }

  else
  {
    v23 = v46(v18, sel__moveLeft_withHistory_);
    if (v23 && (v50 & 1) == 0)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __241___UIKeyboardStateManager_handleHorizontalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_shouldNavigateCandidateList_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke_2;
      v51[3] = &unk_1E70F5AF0;
      v51[4] = self;
      v53 = v49;
      v52 = v19;
      [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v51];
      v47 = v52;
      goto LABEL_50;
    }
  }

LABEL_31:

  return v23;
}

- (BOOL)handleKeyCommandsBeforePublicAsInputUIHost:(id)a3
{
  v4 = a3;
  [v4 _gsModifierFlags];
  [(_UIKeyboardStateManager *)self liveConversionEnabled];
  if (!self->m_candidateList || [(_UIKeyboardStateManager *)self isPredictionViewControllerVisible]|| ![(UIKeyboardCandidateList *)self->m_candidateList hasCandidates]|| ![(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasCandidates])
  {
    goto LABEL_9;
  }

  v5 = [(TIKeyboardState *)self->m_keyboardState inputForMarkedText];
  if ([v5 length])
  {
  }

  else
  {
    v6 = [(UIKeyboardCandidateList *)self->m_candidateList currentIndex];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained candidateController];
  [v8 inlineRectIsVertical];

LABEL_9:
  [(_UIKeyboardStateManager *)self hasEditableMarkedText];
  if ([(_UIKeyboardStateManager *)self handleInputSwitcherForKeyEvent:v4])
  {
    v9 = 1;
  }

  else
  {
    v11 = 0;
    v9 = [(_UIKeyboardStateManager *)self handleKeyCommand:v4 repeatOkay:&v11 options:1]!= 0;
  }

  return v9;
}

- (BOOL)handleInputSwitcherForKeyEvent:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
  {
    v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v6 = [v5 synchronousForwardKeyCommandsBeforePublicToUIHost:v4];

    goto LABEL_17;
  }

  v7 = [v4 _gsModifierFlags];
  if (!+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_14;
  }

  if (![v4 _isGlobeKey])
  {
    if ((v7 & 0x4000000) != 0)
    {
      [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:0];
    }

    goto LABEL_14;
  }

  if ([v4 _isKeyDown])
  {
    [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:v4];
    goto LABEL_16;
  }

  if (self->m_previousGlobeKeyEvent)
  {
    [v4 _hidEvent];
    v8 = BKSHIDEventGetBaseAttributes();
    v9 = ([v8 options] & 0x80) == 0;
  }

  else
  {
    v9 = 1;
  }

  [v4 timestamp];
  v11 = v10;
  [(UIEvent *)self->m_previousGlobeKeyEvent timestamp];
  v13 = v12;
  [(_UIKeyboardStateManager *)self setPreviousGlobeKeyEvent:0];
  v6 = 0;
  if (!v9 && v11 - v13 <= 0.9)
  {
LABEL_14:
    [(_UIKeyboardStateManager *)self showCursorAccessory];
    v14 = +[UIInputSwitcher sharedInstance];
    v15 = [v14 handleSwitchingKeyEvent:v4];

    if (v15)
    {
      [(_UIKeyboardStateManager *)self setCapsLockIfNeeded];
      v6 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v6 = 0;
  }

LABEL_17:

  return v6;
}

- (BOOL)handleVerticalArrow:(BOOL)a3 shiftDown:(BOOL)a4 beforePublicKeyCommands:(BOOL)a5 testOnly:(BOOL)a6 isVerticalCandidate:(BOOL)a7 hasCandidatesForTypedInput:(BOOL)a8 inputDelegateCommandEnabled:(BOOL)a9 canHandleInputDelegateCommand:(id)a10 savedHistory:(id)a11 keyCommandTypeHandled:(unint64_t *)a12 keyEvent:(id)a13
{
  v13 = a8;
  v14 = a7;
  v17 = a4;
  v35 = a3;
  v19 = a10;
  v20 = a11;
  v21 = a13;
  v22 = [(_UIKeyboardStateManager *)self liveConversionEnabled];
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    if (!a6 && [(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
    {
      v23 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      LOBYTE(v24) = [v23 synchronousForwardKeyCommandsBeforePublicToUIHost:v21];

      goto LABEL_32;
    }

    if (v14)
    {
      v27 = [(_UIKeyboardStateManager *)self inputManagerState];
      v28 = [v27 supportsSetPhraseBoundary];

      if (v28)
      {
        if (a6)
        {
LABEL_31:
          LOBYTE(v24) = 1;
          goto LABEL_32;
        }

        v29 = v22 & v17;
        v30 = !v35;
        v31 = self;
LABEL_28:
        [(_UIKeyboardStateManager *)v31 movePhraseBoundaryToDirection:v30 granularity:v29];
        goto LABEL_31;
      }
    }

    if (!v13)
    {
      if (!v22)
      {
        goto LABEL_31;
      }

      v32 = [(_UIKeyboardStateManager *)self inputManagerState];
      v33 = [v32 supportsSetPhraseBoundary];

      if (!v33)
      {
        goto LABEL_31;
      }

      if (a12)
      {
        *a12 = 2;
      }

      if (a6)
      {
        goto LABEL_31;
      }

      v30 = !v35;
      v31 = self;
      v29 = 4;
      goto LABEL_28;
    }

    if (a12)
    {
      *a12 = 2;
    }

    LOBYTE(v24) = 1;
    if ([(UIKeyboardCandidateList *)self->m_candidateList hasCandidates]&& !a6)
    {
      [(UIKeyboardCandidateList *)self->m_candidateList showCandidateInForwardDirection:v35 granularity:!v22];
    }
  }

  else
  {
    LOBYTE(v24) = !a9;
    if (a9 && !a5)
    {
      if (+[UIKeyboard isKeyboardProcess])
      {
        v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v26 = [v25 shouldRespectForwardingInputDelegate];

        if ((v26 & 1) == 0)
        {
          if (!a6)
          {
            [(_UIKeyboardStateManager *)self forwardKeyboardEventBackToDestination:v21];
          }

          goto LABEL_31;
        }
      }

      v24 = v19[2](v19, sel__moveDown_withHistory_);
      if (v24 && !a6)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __239___UIKeyboardStateManager_handleVerticalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_inputDelegateCommandEnabled_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke;
        v36[3] = &unk_1E70F67F8;
        v38 = v35;
        v36[4] = self;
        v39 = v17;
        v37 = v20;
        [(_UIKeyboardStateManager *)self performBlockWithTextInputChangesIgnoredForNonMacOS:v36];
      }
    }
  }

LABEL_32:

  return v24;
}

- (BOOL)inputUIHandleTabWithShift:(BOOL)a3 testOnly:(BOOL)a4
{
  v5 = a3;
  v7 = [(_UIKeyboardStateManager *)self candidateList];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(_UIKeyboardStateManager *)self candidateList];
    v9 = [v8 handleTabKeyWithShift:v5];

    if (v9)
    {
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ([(_UIKeyboardStateManager *)self hasEditableMarkedText])
  {
    v11 = [(_UIKeyboardStateManager *)self inputManagerState];
    v12 = [v11 keyboardBehaviors];
    v13 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
    v14 = [v12 keyBehaviorsForState:v13];

    v15 = [v14 tabKeyBehavior] - 5;
    v10 = v15 > 0xFFFFFFFFFFFFFFFDLL;
    if (v15 >= 0xFFFFFFFFFFFFFFFELL && !a4)
    {
      v16 = [(_UIKeyboardStateManager *)self candidateList];

      if (v16)
      {
        v17 = [(_UIKeyboardStateManager *)self candidateList];
        [v17 showCandidateInForwardDirection:v5 ^ 1 granularity:0];
      }

      else if ([(_UIKeyboardStateManager *)self liveConversionEnabled])
      {
        [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:v5 granularity:4];
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  v18 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
  v19 = [v18 hasPrompt];

  if (v19)
  {
    v20 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    v10 = 1;
    [v20 acceptTextCompletionWithInteraction:1 wordTerminator:0];
  }

  return v10;
}

- (void)becomeFirstResponderAndMakeVisible:(BOOL)a3
{
  v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v11 = v5;
  if (a3)
  {
    [v5 _previousKeyResponder];
  }

  else
  {
    [v5 _nextKeyResponder];
  }
  v6 = ;
  if (v6)
  {
    v7 = [(_UIKeyboardStateManager *)self delegate];

    if (v6 != v7)
    {
      v8 = [(_UIKeyboardStateManager *)self textInputTraits];
      m_traitsForPreviousDelegate = self->m_traitsForPreviousDelegate;
      self->m_traitsForPreviousDelegate = v8;

      [v6 _becomeFirstResponderAndMakeVisible];
      v10 = self->m_traitsForPreviousDelegate;
      self->m_traitsForPreviousDelegate = 0;
    }
  }
}

- (BOOL)handleTabWithShift:(BOOL)a3 beforePublicKeyCommands:(BOOL)a4 isMoveAction:(BOOL)a5 testOnly:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost]&& v8)
  {
    v11 = objc_alloc_init(UIPhysicalKeyboardEvent);
    [(UIPhysicalKeyboardEvent *)v11 setKeyCommandCode:43];
    [(UIPhysicalKeyboardEvent *)v11 setShiftDown:v9];
    v12 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v13 = [v12 synchronousForwardKeyCommandsBeforePublicToUIHost:v11];
  }

  else
  {
    v13 = [(_UIKeyboardStateManager *)self inputUIHandleTabWithShift:v9 testOnly:v6];
  }

  v14 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  if (!v14)
  {
    if ([UIApp _isSpringBoard])
    {
      v14 = 0;
    }

    else
    {
      v14 = +[UIWindow _applicationKeyWindow];
    }
  }

  v15 = [v14 _responderWindow];
  v16 = 0;
  if (dyld_program_sdk_at_least() && v15)
  {
    v17 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v15];
    v18 = [v17 focusSystem];
    v16 = v18 != 0;
  }

  if (((v13 | v16) & 1) != 0 || v8)
  {
    goto LABEL_35;
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    if (v9)
    {
      v20 = [v14 _previousKeyResponder];
    }

    else
    {
      if (!a5)
      {
        v23 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        if (v23)
        {
          v24 = v23;
          v25 = [(_UIKeyboardStateManager *)self textInputTraits];
          v26 = [v25 isSingleLineDocument];

          if (!v26)
          {
            v21 = 0;
            goto LABEL_33;
          }
        }
      }

      v20 = [v14 _nextKeyResponder];
    }

    v21 = v20;
    if (v20)
    {
      v27 = [(_UIKeyboardStateManager *)self delegate];

      LOBYTE(v13) = v21 != v27;
      if (v21 == v27 || v6)
      {
        goto LABEL_34;
      }

      v28 = [(_UIKeyboardStateManager *)self textInputTraits];
      m_traitsForPreviousDelegate = self->m_traitsForPreviousDelegate;
      self->m_traitsForPreviousDelegate = v28;

      [v21 _becomeFirstResponderAndMakeVisible];
      v22 = self->m_traitsForPreviousDelegate;
      self->m_traitsForPreviousDelegate = 0;
      LOBYTE(v13) = 1;
      goto LABEL_31;
    }

LABEL_33:
    LOBYTE(v13) = 0;
    goto LABEL_34;
  }

  if (v9)
  {
    v19 = [(_UIKeyboardStateManager *)self hasPreviousKeyResponder];
  }

  else
  {
    v19 = [(_UIKeyboardStateManager *)self hasNextKeyResponder];
  }

  LOBYTE(v13) = v19;
  if (v19 && !v6)
  {
    v21 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    [v21 forwardKeyboardOperation:sel_becomeFirstResponderAndMakeVisible_ object:v22];
LABEL_31:

LABEL_34:
  }

LABEL_35:

  return v13;
}

- (void)handleStringInput:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 executionContext:(id)a6
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  if ([v16 length])
  {
    if ([v16 characterAtIndex:0] == 46 && objc_msgSend(v16, "length") >= 2 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "_characterBeforeCaretSelection"), v12, v13 == 46))
    {
      v14 = [v16 substringFromIndex:1];

      v15 = v14;
    }

    else
    {
      v15 = v16;
    }

    v16 = v15;
    [(_UIKeyboardStateManager *)self addInputString:v15 withFlags:a4 withInputManagerHint:v10 executionContext:v11];
  }

  else
  {
    [v11 returnExecutionToParent];
  }
}

- (BOOL)acceptInputString:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  if (v5)
  {
    v6 = [(_UIKeyboardStateManager *)self inputManagerState];
    v7 = [v6 acceptInputString:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setPreviousInputString:(id)a3
{
  v4 = [a3 copy];
  m_previousInputString = self->m_previousInputString;
  self->m_previousInputString = v4;
}

- (void)setPreviousGlobeKeyEvent:(id)a3
{
  v4 = [a3 _cloneEvent];
  m_previousGlobeKeyEvent = self->m_previousGlobeKeyEvent;
  self->m_previousGlobeKeyEvent = v4;
}

- (void)updateKeyboardStateForReplacingText:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_UIKeyboardStateManager *)self documentState];
  v8 = [v9 documentStateAfterReplacingText:v7 withText:v6];

  [(_UIKeyboardStateManager *)self setDocumentState:v8];
}

- (void)updateKeyboardStateForInsertion:(id)a3
{
  v6 = a3;
  if (!-[_UIKeyboardStateManager showingEmojiSearch](self, "showingEmojiSearch") || ([v6 _containsEmojiOnly] & 1) == 0)
  {
    v4 = [(_UIKeyboardStateManager *)self documentState];
    v5 = [v4 documentStateAfterInsertingText:v6];
    [(_UIKeyboardStateManager *)self setDocumentState:v5];
  }

  [(_UIKeyboardStateManager *)self clearInputForMarkedText];
}

- (void)moveCursorByAmount:(int64_t)a3
{
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v4 _moveCurrentSelection:a3];
}

- (void)deleteBackwardAndNotifyAtEnd:(BOOL)a3 deletionCount:(unint64_t)a4 reinsertTextInLoop:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = +[UIDictationLandingView activeInstance];
  v10 = [v9 hasActivePlaceholder];

  if (v10)
  {
    v11 = +[UIDictationLandingView activeInstance];
    [v11 stopLanding];

    v14 = +[UIDictationController activeInstance];
    [v14 cancelDictation];
  }

  else
  {
    if (+[UIDictationController isRunning](UIDictationController, "isRunning") && !+[UIDictationController isRunningInTypeAndTalkMode](UIDictationController, "isRunningInTypeAndTalkMode") && !+[UIDictationController supportsInlineDelete])
    {
      v12 = +[UIDictationController activeInstance];
      [v12 cancelDictation];
    }

    [(_UIKeyboardStateManager *)self removeTextChoicePromptWithUnderline];
    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = v13;
    if (a4 < 2)
    {
      [v13 _deleteBackwardAndNotify:v7 reinsertText:v5];
    }

    else
    {
      [v13 _deleteBackwardWhileOverridingContextAndNotifyAtEnd:v7 deletionCount:a4 reinsertTextInLoop:v5];
    }
  }
}

- (unint64_t)textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 _textLengthToDeleteBeforeSelectedRangeForSmartDelete];

  return v3;
}

- (void)updateKeyboardStateForDeletion
{
  v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v9 = v3;
  if (v3)
  {
    v4 = [v3 documentState];
    v5 = [v4 documentState];
    v6 = [v5 contextBeforeInput];
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self documentState];
    v6 = [v4 contextBeforeInput];
  }

  if ([v6 length] && !objc_msgSend(v6, "_isNewlineOrReturn"))
  {
    v7 = [(_UIKeyboardStateManager *)self documentState];
    v8 = [v7 documentStateAfterDeletingBackward];
    [(_UIKeyboardStateManager *)self setDocumentState:v8];
  }

  else
  {
    [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
  }

  [(_UIKeyboardStateManager *)self clearInputForMarkedText];
}

- (BOOL)_canDeleteForward
{
  if (![(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents])
  {
    return 1;
  }

  v3 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v4 = [v3 _responderForEditing];
  if ([v4 canPerformAction:sel__deleteForwardAndNotify_ withSender:0])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v5 = [v6 canHandleInputDelegateCommandAction:1];
  }

  return v5;
}

- (BOOL)deleteForwardAndNotify:(BOOL)a3 producedByDeleteInput:(BOOL)a4
{
  v5 = a3;
  v7 = [(_UIKeyboardStateManager *)self _canDeleteForward];
  if (v7)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      self->m_suppressingDocumentAssertions = 1;
      v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v9 = [v8 _deleteForwardAndNotify:v5];

      self->m_suppressingDocumentAssertions = 0;
      if (v9)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __72___UIKeyboardStateManager_deleteForwardAndNotify_producedByDeleteInput___block_invoke;
        v13[3] = &__block_descriptor_33_e26_v16__0__TIKeyboardOutput_8l;
        v14 = a4;
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v13];
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v11 = [v10 _deleteForwardAndNotify:v5];

      LOBYTE(v7) = v11;
    }
  }

  return v7;
}

- (BOOL)isCallingInputDelegate
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v3 = [v2 insideKeyInputDelegateCall];

  return v3;
}

- (BOOL)_handleKeyInputMethodCommandForEvent:(id)a3 canHandleAppKeyCommand:(BOOL)a4
{
  v6 = a3;
  v7 = [(_UIKeyboardStateManager *)self _handleKeyCommandCommon:v6 options:2];
  if (v7 == 2)
  {
    [(_UIKeyboardStateManager *)self _handleKeyCommandCommon:v6 options:0];
    v8 = 1;
    self->m_webEventWasHandledByInputManager = 1;
    goto LABEL_21;
  }

  if (v7 != 1 && (v7 || !a4))
  {
    v9 = [v6 _modifiedInput];
    if (!-[_UIKeyboardStateManager _shouldEmitString:forKeyEvent:](self, "_shouldEmitString:forKeyEvent:", v9, v6) || !-[_UIKeyboardStateManager _isValidKeyInput:](self, "_isValidKeyInput:", v9) || !-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText") && (([v9 _isNewlineOrReturn] & 1) != 0 || (objc_msgSend(v9, "_isDelete") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"\t") & 1) != 0))
    {
      goto LABEL_19;
    }

    v10 = [(_UIKeyboardStateManager *)self shouldAllowRepeatEvent:v6];
    if (![v6 _isARepeat] || v10)
    {
      if (![(_UIKeyboardStateManager *)self usesCandidateSelection]|| ([(TIKeyboardState *)self->m_keyboardState longPredictionListEnabled]& 1) != 0)
      {
LABEL_19:
        v8 = 0;
        goto LABEL_20;
      }

      if (qword_1ED49D228 != -1)
      {
        dispatch_once(&qword_1ED49D228, &__block_literal_global_1300);
      }

      v12 = [(_UIKeyboardStateManager *)self taskQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87___UIKeyboardStateManager__handleKeyInputMethodCommandForEvent_canHandleAppKeyCommand___block_invoke_3;
      v13[3] = &unk_1E70FD208;
      v13[4] = self;
      v14 = v9;
      v15 = v6;
      [v12 addTask:v13 breadcrumb:qword_1ED49D220];
    }

    v8 = 1;
    self->m_webEventWasHandledByInputManager = 1;
LABEL_20:

    goto LABEL_21;
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (BOOL)handleKeyInputMethodCommandForCurrentEvent
{
  if (self->m_webEventIsKeyDown)
  {
    v3 = [(_UIKeyboardStateManager *)self eventForCurrentWebEvent];
    if (v3)
    {
      v4 = [UIApp _hasKeyboardShortcutForKeyboardEvent:v3];
      if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
      {
        v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
        self->m_webEventWasHandledByInputManager = [v5 synchronousForwardKeyInputMethodCommandEventToUIHost:v3 canHandleAppKeyCommand:v4];

        m_webEventWasHandledByInputManager = self->m_webEventWasHandledByInputManager;
      }

      else
      {
        m_webEventWasHandledByInputManager = [(_UIKeyboardStateManager *)self _handleKeyInputMethodCommandForEvent:v3 canHandleAppKeyCommand:v4];
        self->m_webEventWasHandledByInputManager = m_webEventWasHandledByInputManager;
      }
    }

    else
    {
      m_webEventWasHandledByInputManager = 0;
    }
  }

  else
  {
    return 0;
  }

  return m_webEventWasHandledByInputManager;
}

- (BOOL)handleKeyTextCommandForCurrentEvent
{
  if (self->m_webEventWasHandledAsKeyCommand || self->m_webEventWasHandledByInputManager)
  {
    return 0;
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self eventForCurrentWebEvent];
    if ([v4 _isKeyDown])
    {
      v5 = [UIApp _currentKeyboardShortcutInvocationForKeyboardEvent:v4];
      v6 = [v5 keyboardShortcutLeaf];

      if ([v6 _wantsPriorityOverSystemBehavior:1])
      {
        m_webEventWasHandledAsKeyCommand = 0;
      }

      else
      {
        self->m_inHandleKeyTextCommandForCurrentEvent = 1;
        if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
        {
          v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
          self->m_webEventWasHandledAsKeyCommand = [v7 synchronousForwardKeyCommandsToUIHost:v4];

          m_webEventWasHandledAsKeyCommand = self->m_webEventWasHandledAsKeyCommand;
        }

        else
        {
          m_webEventWasHandledAsKeyCommand = [(_UIKeyboardStateManager *)self _handleKeyCommand:v4];
          self->m_webEventWasHandledAsKeyCommand = m_webEventWasHandledAsKeyCommand;
        }

        self->m_inHandleKeyTextCommandForCurrentEvent = 0;
      }
    }

    else
    {
      m_webEventWasHandledAsKeyCommand = 0;
    }
  }

  return m_webEventWasHandledAsKeyCommand;
}

- (BOOL)handleKeyAppCommandForCurrentEvent
{
  if (self->m_webEventWasHandledAsKeyCommand || self->m_webEventWasHandledByInputManager)
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self eventForCurrentWebEvent];
  if ([v4 _isKeyDown])
  {
    if (self->m_inHandleKeyAppCommandForCurrentEvent || self->m_inHandleKeyTextCommandForCurrentEvent)
    {
      v3 = 1;
    }

    else
    {
      v6 = [UIApp _currentKeyboardShortcutInvocationForKeyboardEvent:v4];
      v7 = [v6 keyboardShortcutLeaf];
      v8 = v7;
      if (v7 && ([v7 _wantsPriorityOverSystemBehavior:1] & 1) == 0 && (objc_msgSend(v6, "originatingResponder"), v9 = objc_claimAutoreleasedReturnValue(), IsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder = _UIMenuLeafIsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder(v8, 0, v9), v9, (IsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder & 1) != 0))
      {
        v3 = 0;
      }

      else
      {
        self->m_inHandleKeyAppCommandForCurrentEvent = 1;
        v3 = [UIApp _handleKeyboardShortcutForKeyboardEvent:v4 allowsRepeat:0];
        self->m_webEventWasHandledAsKeyCommand = v3;
        self->m_inHandleKeyAppCommandForCurrentEvent = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addInputString:(id)a3 fromVariantKey:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(_UIKeyboardStateManager *)self addInputString:a3 withFlags:v4];
}

- (id)inputEventForInputString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69D95F8]);
  if (![(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
  {
    if ([(_UIKeyboardStateManager *)self callLayoutIgnoresShiftState])
    {
      goto LABEL_13;
    }

    [v5 setUppercase:self->m_shift];
    m_autoshift = self->m_autoshift;
    goto LABEL_12;
  }

  if (self->m_autoshift)
  {
    [v5 setAutoshifted:1];
    v6 = MEMORY[0x1E695DF58];
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 currentInputMode];
    v9 = [v8 languageWithRegion];
    v10 = [v6 localeWithLocaleIdentifier:v9];
    v11 = [v4 uppercaseStringWithLocale:v10];

    v4 = v11;
  }

  if (v4)
  {
    v12 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    v13 = [v4 rangeOfCharacterFromSet:v12];

    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  [v5 setUppercase:v14];
  if ([v5 isAutoshifted] && (objc_msgSend(v5, "isUppercase") & 1) == 0)
  {
    m_autoshift = 0;
LABEL_12:
    [v5 setAutoshifted:m_autoshift];
  }

LABEL_13:
  [v5 setString:v4];

  return v5;
}

- (void)updateDoubleSpacePeriodStateForCharacter:(unsigned int)a3
{
  if (self->m_doubleSpacePeriodWasAppliedInCurrentContext)
  {
    if (TICharEstablishesContextForDoubleSpacePeriod())
    {
      self->m_doubleSpacePeriodWasAppliedInCurrentContext = 0;
    }
  }
}

- (void)updateDoubleSpacePeriodStateForString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->m_doubleSpacePeriodWasAppliedInCurrentContext)
  {
    v9 = v4;
    v6 = [v4 length];
    v5 = v9;
    if (v6)
    {
      v7 = [v9 characterAtIndex:0];
      if ([v9 length] == 2 && (v7 & 0xFC00) == 0xD800)
      {
        v8 = [v9 characterAtIndex:1];
        if ((v8 & 0xFC00) == 0xDC00)
        {
          v7 = (v8 + (v7 << 10) - 56613888);
        }

        else
        {
          v7 = v7;
        }
      }

      [(_UIKeyboardStateManager *)self updateDoubleSpacePeriodStateForCharacter:v7];
      v5 = v9;
    }
  }
}

- (BOOL)willDoubleSpacePeriodForInputString:(id)a3 afterSpace:(BOOL)a4 elapsedTime:(double)a5
{
  v6 = a4;
  v8 = a3;
  if (!self->m_doubleSpacePeriodPreference)
  {
    goto LABEL_10;
  }

  v9 = 0;
  if ([(UITextInputTraits *)self->m_traits isSecureTextEntry]|| !v6)
  {
    goto LABEL_11;
  }

  if (![v8 _isPlainSpace] || (-[_UIKeyboardStateManager inputManagerState](self, "inputManagerState"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "nextInputWouldStartSentence"), v10, (v11 & 1) != 0) || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "_characterInRelationToCaretSelection:", 4294967294), v12, !TICharEstablishesContextForDoubleSpacePeriod()))
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 0;
  if (a5 <= 1.2 && !self->m_doubleSpacePeriodWasAppliedInCurrentContext)
  {
    v9 = 1;
    self->m_doubleSpacePeriodWasAppliedInCurrentContext = 1;
  }

LABEL_11:

  return v9;
}

- (BOOL)shouldDeleteAutospaceBeforeTerminator:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@" "])
  {
    goto LABEL_3;
  }

  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  v6 = [v5 shouldDeleteAutospaceBeforeTerminator:v4];

  if (v6)
  {
    goto LABEL_3;
  }

  v9 = [(_UIKeyboardStateManager *)self textInputTraits];
  if ([v9 keyboardType] != 7)
  {

LABEL_9:
    v7 = 0;
    goto LABEL_4;
  }

  v10 = [v4 isEqualToString:@"@"];

  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 1;
LABEL_4:

  return v7;
}

- (id)handleDeleteAutospaceForInputString:(id)a3 afterSpace:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists])
  {
    if (!v4)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

LABEL_6:
    if (self->m_didAutomaticallyInsertSpace && [(_UIKeyboardStateManager *)self shouldDeleteAutospaceBeforeTerminator:v6])
    {
      self->m_didAutomaticallyInsertSpace = 0;
      v7 = v6;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  if ([(_UIKeyboardStateManager *)self shouldShowLongPredictionList]&& v4)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v7;
}

- (id)handleReplacement:(id)a3 forSpaceAndInput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v7, "length") - 1}];
  v10 = [v7 substringWithRange:{v8, v9}];
  [v6 setString:v10];

  v11 = [v7 substringToIndex:v8];

  if (([v11 isEqualToString:@" "] & 1) == 0)
  {
    v12 = [v6 acceptedCandidate];

    if (!v12)
    {
      v13 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v11 forInput:@" "];
      [v6 setAcceptedCandidate:v13];

      if ([v11 length])
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __62___UIKeyboardStateManager_handleReplacement_forSpaceAndInput___block_invoke_2;
        v17[3] = &unk_1E70FD608;
        v14 = v6;
        v18 = v14;
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v17];
        v15 = [v14 acceptedCandidate];
        [(_UIKeyboardStateManager *)self applyAutocorrection:v15];
      }

      else
      {
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:&__block_literal_global_1307];
        [(_UIKeyboardStateManager *)self deleteBackwardAndNotify:0];
      }
    }
  }

  return v6;
}

- (BOOL)shouldAcceptCandidate:(id)a3 beforeInputString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 candidate];
  if ([v8 length] || objc_msgSend(v6, "slotID"))
  {
  }

  else
  {
    v20 = [v6 customInfoType];

    if (!v20)
    {
      goto LABEL_5;
    }
  }

  v9 = [(_UIKeyboardStateManager *)self inputManagerState];
  v10 = [v9 shouldSuppressAutocorrectionWithTerminator:v7];

  if (v10)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_12;
  }

  if (([v6 isForShortcutConversion] & 1) == 0 && objc_msgSend(v7, "length") && (objc_msgSend(v6, "input"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [v6 candidate];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 input];
      v17 = [v16 stringByAppendingString:v7];
      v18 = [v6 candidate];
      v11 = [v18 rangeOfString:v17 options:9] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_12:

  return v11;
}

- (void)removeSpaceAfterEmojiForInputString:(id)a3
{
  if (self->m_didAutomaticallyInsertSpace && [a3 _containsEmoji])
  {
    v4 = [(_UIKeyboardStateManager *)self documentState];
    v9 = [v4 contextBeforeInput];

    if ([v9 length] >= 2)
    {
      v5 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 1}];
      if ([v5 _isPlainSpace])
      {
        v6 = [v9 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v9, "length") - 2}];
        v8 = [v9 substringWithRange:{v6, v7}];

        if ([v8 _containsEmoji])
        {
          [(_UIKeyboardStateManager *)self deleteBackwardAndNotify:0];
        }
      }

      else
      {
        v8 = v5;
      }
    }
  }
}

- (void)_scheduleInputAdditionOrDeletion:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardStateManager *)self taskQueue];
  if ([v4 isMainThreadExecutingTask])
  {

LABEL_4:
    [(_UIKeyboardStateManager *)self setExternalTask:v7];
    goto LABEL_8;
  }

  v5 = [(_UIKeyboardStateManager *)self delegateRequiresKeyEvents];

  if (v5)
  {
    goto LABEL_4;
  }

  if (qword_1ED49D238 != -1)
  {
    dispatch_once(&qword_1ED49D238, &__block_literal_global_1309);
  }

  v6 = [(_UIKeyboardStateManager *)self taskQueue];
  [v6 addTask:v7 breadcrumb:qword_1ED49D230];

LABEL_8:
}

- (void)addInputString:(id)a3 withFlags:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___UIKeyboardStateManager_addInputString_withFlags___block_invoke;
  v8[3] = &unk_1E70FD8B0;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(_UIKeyboardStateManager *)self _scheduleInputAdditionOrDeletion:v8];
}

- (void)addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint___block_invoke;
  v12[3] = &unk_1E70FD8D8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [(_UIKeyboardStateManager *)self _scheduleInputAdditionOrDeletion:v12];
}

- (void)_addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 withInputSource:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  if (qword_1ED49D248 != -1)
  {
    dispatch_once(&qword_1ED49D248, &__block_literal_global_1313);
  }

  v12 = [(_UIKeyboardStateManager *)self taskQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90___UIKeyboardStateManager__addInputString_withFlags_withInputManagerHint_withInputSource___block_invoke_3;
  v16[3] = &unk_1E70FD900;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = a4;
  v20 = a6;
  v13 = qword_1ED49D240;
  v14 = v11;
  v15 = v10;
  [v12 addTask:v16 breadcrumb:v13];
}

+ (BOOL)_isInputEligibleForSpaceAutodelete:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  if (![(__CFString *)v4 isEqualToString:@" "])
  {
    v18 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v5 = [v3 acceptedCandidate];

  if (v5)
  {
    v6 = [v3 acceptedCandidate];
    v7 = [v6 input];
    v8 = [v7 lowercaseString];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v4 = v10;

    v11 = [v3 acceptedCandidate];
    v12 = [v11 candidate];
    v13 = [v12 lowercaseString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1EFB14550;
    }

    v16 = v15;

    if ([(__CFString *)v4 length]&& ![(__CFString *)v16 hasPrefix:v4])
    {
      v18 = 0;
    }

    else
    {
      v17 = [(__CFString *)v4 length];
      v18 = v17 < [(__CFString *)v16 length];
    }

    goto LABEL_16;
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (void)addInputString:(id)a3 withFlags:(unint64_t)a4 withInputManagerHint:(id)a5 withInputSource:(int64_t)a6 executionContext:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = _UIKeyboardLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Keyboard adds a string", buf, 2u);
  }

  if ([(_UIKeyboardStateManager *)self isCurrentEditResponderWebKit]&& [(_UIKeyboardStateManager *)self shouldApplyKeyboardInputToUIHost])
  {
    v16 = [(_UIKeyboardStateManager *)self eventForCurrentWebEvent];
    v17 = objc_alloc_init(NSClassFromString(&cfstr_Rtiinputoperat.isa));
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:v12 forKey:@"string"];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v18 setObject:v19 forKey:@"flags"];

    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = &stru_1EFB14550;
    }

    [v18 setObject:v20 forKey:@"inputManagerHint"];
    [v18 setObject:@"_addInputString:withFlags:withInputManagerHint:withInputSource:" forKey:@"selector"];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "source")}];
    [v18 setObject:v21 forKey:@"source"];

    v22 = [v18 copy];
    [v17 setCustomInfo:v22];

    [v17 setCustomInfoType:0x1EFB7CA50];
    v23 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v23 performInputOperation:v17];

    [v14 returnExecutionToParent];
    goto LABEL_17;
  }

  v24 = +[UIKeyboardInputModeController sharedInputModeController];
  v25 = +[UIKeyboardInputModeController sharedInputModeController];
  v26 = [v25 currentInputMode];
  [v24 updateLastUsedInputMode:v26];

  [(_UIKeyboardStateManager *)self setDeleteWordLastDelete:-*MEMORY[0x1E695E460]];
  if (![(_UIKeyboardStateManager *)self _isValidKeyInput:v12])
  {
    goto LABEL_16;
  }

  [(_UIKeyboardStateManager *)self removeSpaceAfterEmojiForInputString:v12];
  if ((a4 & 0x80) != 0)
  {
    if ([(_UIKeyboardStateManager *)self callShouldInsertText:v12])
    {
      v32 = objc_alloc_init(MEMORY[0x1E69D9638]);
      [v32 setInsertionText:v12];
      [(_UIKeyboardStateManager *)self performKeyboardOutput:v32];
      [(_UIKeyboardStateManager *)self updateReturnKey];
      [(_UIKeyboardStateManager *)self updateNoContentViews];
    }

    goto LABEL_16;
  }

  if (![(_UIKeyboardStateManager *)self acceptInputString:v12])
  {
LABEL_16:
    [v14 returnExecutionToParent];
    goto LABEL_17;
  }

  v27 = [(_UIKeyboardStateManager *)self inputEventForInputString:v12];
  [v27 setPopupVariant:(a4 >> 1) & 1];
  [v27 setMultitap:(a4 >> 2) & 1];
  [v27 setFlick:(a4 >> 6) & 1];
  [v27 setGesture:(a4 >> 8) & 1];
  [v27 setInputManagerHint:v13];
  v28 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v28 setNextCandidateReplacementSource:1];

  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke;
  v39 = &unk_1E70F6B40;
  v40 = self;
  v41 = v12;
  v42 = v14;
  v29 = v27;
  v43 = v29;
  v30 = _Block_copy(&v36);
  v31 = v30;
  if (a6)
  {
    [(_UIKeyboardStateManager *)self performOperations:v30 withTextInputSource:a6, v36, v37, v38, v39, v40, v41, v42];
  }

  else
  {
    (*(v30 + 2))(v30);
  }

  v33 = [(_UIKeyboardStateManager *)self inputDelegateManager:v36];
  v34 = [v33 hasText];

  if ((v34 & 1) == 0)
  {
    m_cachedAutofillMode = self->m_cachedAutofillMode;
    if (m_cachedAutofillMode == 2)
    {
      +[_UIKeyboardUsageTracking signupPasswordFromKeyboardIncrement];
    }

    else if (m_cachedAutofillMode == 1)
    {
      +[_UIKeyboardUsageTracking loginPasswordFromKeyboardIncrement];
    }
  }

LABEL_17:
}

- (void)addInputEvent:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 string];
  m_changeTime = self->m_changeTime;
  [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
  v11 = [(_UIKeyboardStateManager *)self inputManagerState];
  v12 = [v11 stringEndsWord:v9];

  if ([v9 isEqualToString:@"'"])
  {
    v13 = [(_UIKeyboardStateManager *)self autocorrectionController];
    if ([v13 hasAutocorrection])
    {
      v14 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v15 = [v14 autocorrection];
      v16 = [v15 isForShortcutConversion];

      v12 |= v16;
    }
  }

  if ([v7 isSynthesizedByAcceptingCandidate])
  {
    v17 = [v7 string];
    v18 = [v17 length] == 0;

    v12 |= v18;
  }

  v19 = [(NSString *)self->m_previousInputString _isPlainSpace];
  [(_UIKeyboardStateManager *)self setPreviousInputString:v9];
  self->m_acceptingCandidate = 0;
  [(_UIKeyboardStateManager *)self clearTransientState];
  if ((v12 & 1) == 0 || [(UITextInputTraits *)self->m_traits contentsIsSingleValue]|| ![(_UIKeyboardStateManager *)self hasAdvancedInputDelegate])
  {
    if (![(_UIKeyboardStateManager *)self callShouldInsertText:v9])
    {
      [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
      [(_UIKeyboardStateManager *)self updateReturnKey];
      [(_UIKeyboardStateManager *)self updateNoContentViews];
      [(_UIKeyboardStateManager *)self clearInputForMarkedText];
      [v8 returnExecutionToParent];
      goto LABEL_22;
    }

    if ([(TIKeyboardInputManagerState *)self->m_inputManagerState shouldExtendPriorWord])
    {
      v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v26 = [v25 selectedTextRange];
      v27 = [v26 _isRanged];

      if (v27)
      {
        [(_UIKeyboardStateManager *)self willReplaceTextInRangedSelectionWithKeyboardInput];
      }
    }

    v28 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v28 clearAutocorrection];

    v29 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v30 = [v29 keyInputDelegate];

    [(_UIKeyboardStateManager *)self updateTextInputKeyboardSource];
    v31 = [(_UIKeyboardStateManager *)self handleDeleteAutospaceForInputString:v9 afterSpace:v19];
    if ([v31 length])
    {
      v32 = [(_UIKeyboardStateManager *)self handleReplacement:v31 forSpaceAndInput:v7];

      v7 = v32;
    }

    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __58___UIKeyboardStateManager_addInputEvent_executionContext___block_invoke_2;
    v39 = &unk_1E70FD1B8;
    v40 = self;
    v41 = v9;
    v33 = [v8 childWithContinuation:&v36];
    [(_UIKeyboardStateManager *)self handleKeyboardInput:v7 executionContext:v33, v36, v37, v38, v39, v40];

    goto LABEL_20;
  }

  v20 = self->m_changeTime - m_changeTime;
  v21 = [(_UIKeyboardStateManager *)self inputManagerState];
  v22 = [v21 inputString];
  v23 = [(_UIKeyboardStateManager *)self inputManagerState];
  +[UITextChecker setString:isExemptFromChecker:](UITextChecker, "setString:isExemptFromChecker:", v22, [v23 inputStringIsExemptFromChecker]);

  if ([(_UIKeyboardStateManager *)self usesCandidateSelection]&& ![(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
  {
    if (self->m_candidateList && (-[TIKeyboardCandidateResultSet candidates](self->m_candidateResultSet, "candidates"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 count], v34, v35))
    {
      v30 = [(_UIKeyboardStateManager *)self acceptCurrentCandidateForInput:v7];
      [(_UIKeyboardStateManager *)self setPreviousInputString:v9];
    }

    else
    {
      v30 = 0;
    }

    [(_UIKeyboardStateManager *)self addWordTerminator:v7 afterSpace:v19 afterAcceptingCandidate:v30 elapsedTime:v8 executionContext:v20];
LABEL_20:

    goto LABEL_22;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __58___UIKeyboardStateManager_addInputEvent_executionContext___block_invoke;
  v42[3] = &unk_1E70FD928;
  v45 = a2;
  v42[4] = self;
  v43 = v9;
  v7 = v7;
  v44 = v7;
  v47 = v19;
  v46 = v20;
  v24 = [v8 childWithContinuation:v42];
  [(_UIKeyboardStateManager *)self acceptAutocorrectionForWordTerminator:v7 executionContextPassingTIKeyboardCandidate:v24];

LABEL_22:
}

- (id)acceptAutocorrectionForWordTerminator:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__36;
  v16 = __Block_byref_object_dispose__36;
  v17 = 0;
  if (qword_1ED49D258 != -1)
  {
    dispatch_once(&qword_1ED49D258, &__block_literal_global_1341);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator___block_invoke_3;
  v9[3] = &unk_1E70FD978;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performSingleTask:v9 breadcrumb:qword_1ED49D250];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)acceptAutocorrectionForWordTerminator:(id)a3 executionContextPassingTIKeyboardCandidate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!+[UIKeyboard doesSpacebarAcceptInlineTextCompletion](UIKeyboard, "doesSpacebarAcceptInlineTextCompletion") || ((-[_UIKeyboardStateManager inlineTextCompletionController](self, "inlineTextCompletionController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 currentlyAcceptingInlineCompletionByDirectTap], v9, !v10) ? (v11 = 0) : (v11 = 2), -[_UIKeyboardStateManager inlineTextCompletionController](self, "inlineTextCompletionController"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "string"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "acceptTextCompletionWithInteraction:wordTerminator:outputHandledByCaller:", v11, v13, 1), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v15 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v14 = [v15 autocorrection];

    if (v14)
    {
      v16 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
      [v16 removeTextCompletionPrompt];
    }
  }

  v17 = [v7 string];
  v18 = [(_UIKeyboardStateManager *)self shouldAcceptCandidate:v14 beforeInputString:v17];

  if (v18 && (-[_UIKeyboardStateManager autocorrectionPreferenceForTraits](self, "autocorrectionPreferenceForTraits") != 2 || ([v7 isSynthesizedByAcceptingCandidate] & 1) != 0 || objc_msgSend(v14, "isForShortcutConversion")))
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __108___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator_executionContextPassingTIKeyboardCandidate___block_invoke;
    v24 = &unk_1E70FD8D8;
    v28 = a2;
    v25 = self;
    v19 = v14;
    v26 = v19;
    v27 = v7;
    v20 = [v8 childWithContinuation:&v21];
    [(_UIKeyboardStateManager *)self acceptAutocorrection:v19 executionContextPassingTIKeyboardCandidate:v20, v21, v22, v23, v24, v25];
  }

  else
  {
    [(_UIKeyboardStateManager *)self didAcceptAutocorrection:0 inputCandidate:v14 wordTerminator:v7];
    [(_UIKeyboardStateManager *)self setAutocorrection:0];
    [v8 returnExecutionToParent];
  }
}

- (id)inputWordForTerminatorAtSelection
{
  v3 = [(_UIKeyboardStateManager *)self documentState];

  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self documentState];
    v3 = [v4 selectedText];

    if (!v3)
    {
      v5 = [(_UIKeyboardStateManager *)self documentState];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60___UIKeyboardStateManager_inputWordForTerminatorAtSelection__block_invoke;
      v7[3] = &unk_1E70FD9A0;
      v7[4] = self;
      v3 = [v5 inputStemWithTerminatorPredicate:v7];

      if (![v3 length])
      {

        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)didAcceptAutocorrection:(id)a3 inputCandidate:(id)a4 wordTerminator:(id)a5 learningFlagsMask:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(_UIKeyboardStateManager *)self inputWordForTerminatorAtSelection];
  if (v13)
  {
    v14 = UIKeyboardGetCurrentInputMode();
    v15 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v14);

    v16 = TIStatisticGetKeyForInputMode();
    TIStatisticScalarIncrement();

    if ([v10 isContinuousPathConversion])
    {
      ++self->m_numCPwords;
    }

    if ([(_UIKeyboardStateManager *)self autocorrectionPreferenceForTraits]== 1)
    {
      v17 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists])
    {
      v18 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    if (self->m_layoutAllowsCP && [v13 length] >= 2 && self->m_numCPwords && (objc_msgSend(v10, "isContinuousPathConversion") & 1) == 0 && (objc_msgSend(v10, "isEmojiCandidate") & 1) == 0 && (objc_msgSend(v10, "isPunctuationKeyCandidate") & 1) == 0 && (objc_msgSend(v10, "isCompletionCandidate") & 1) == 0)
    {
      v19 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }
  }

  if ([(UITextInputTraits *)self->m_traits isSingleLineDocument])
  {
    v20 = [v12 string];
    v21 = [v20 isEqualToString:@"\n"];
  }

  else
  {
    v21 = 0;
  }

  if (v10)
  {
    if ((v12 == 0) | v21 & 1 && [(_UIKeyboardStateManager *)self nextCharacterIsWordCharacter])
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 wordSeparator], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        m_inputManagerState = v10;
      }

      else
      {
        m_inputManagerState = self->m_inputManagerState;
      }

      v36 = [(TIKeyboardInputManagerState *)m_inputManagerState wordSeparator];
      v37 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v38 = v37;
      if (v36)
      {
        v39 = v36;
      }

      else
      {
        v39 = @" ";
      }

      [v37 insertText:v39 updateInputSource:0];
    }

    v40 = self;
    v41 = v10;
LABEL_44:
    [(_UIKeyboardStateManager *)v40 syncInputManagerToAcceptedAutocorrection:v41 forInput:v12];
    goto LABEL_45;
  }

  if ((v12 == 0) | v21 & 1 && [(_UIKeyboardStateManager *)self nextCharacterIsWordCharacter])
  {
    v24 = [(_UIKeyboardStateManager *)self inputDelegate];
    v25 = [v24 _wordContainingCaretSelection];

    if (v21)
    {
      v26 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v26 moveSelectionToEndOfWord];
    }

    v13 = v25;
  }

  if ([v13 length])
  {
    v27 = [v12 acceptedCandidate];
    v28 = [v27 slotID];

    if (!v28)
    {
      if (v11)
      {
        v46 = 0;
        v47 = &v46;
        v48 = 0x2050000000;
        v29 = getTUITypedStringCandidateClass_softClass;
        v49 = getTUITypedStringCandidateClass_softClass;
        if (!getTUITypedStringCandidateClass_softClass)
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __getTUITypedStringCandidateClass_block_invoke;
          v45[3] = &unk_1E70F2F20;
          v45[4] = &v46;
          __getTUITypedStringCandidateClass_block_invoke(v45);
          v29 = v47[3];
        }

        v30 = v29;
        _Block_object_dispose(&v46, 8);
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_alloc(MEMORY[0x1E69D95F0]);
          v32 = [v11 candidate];
          v33 = [v11 input];
          v34 = [v11 rawInput];
          v35 = [v31 initWithCandidate:v32 forInput:v33 rawInput:v34];

          v11 = v35;
        }
      }

      else
      {
        v11 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:v13];
      }

      if (objc_opt_respondsToSelector())
      {
        v42 = MEMORY[0x1E696AD98];
        v43 = v11;
        v44 = [v42 numberWithUnsignedInt:a6];
        [v43 performSelector:sel_setLearningFlags_ withObject:v44];
      }

      v40 = self;
      v41 = v11;
      goto LABEL_44;
    }
  }

LABEL_45:
}

- (void)syncInputManagerToAcceptedAutocorrection:(id)a3 forInput:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (![(UITextInputTraits *)self->m_traits isSecureTextEntry])
  {
    if (v6)
    {
      [v6 setAcceptedCandidate:v7];
    }

    else
    {
      [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
      [(_UIKeyboardStateManager *)self textAccepted:v7];
    }
  }
}

- (void)setDocumentStateForAutocorrection:(id)a3
{
  v23 = a3;
  v4 = [v23 candidate];
  v5 = [(_UIKeyboardStateManager *)self documentState];
  v6 = [v23 input];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v23 input];
    v9 = [v5 documentStateAfterReplacingText:v8 withText:v4];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69D9590]);
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v12 = [v5 contextBeforeInput];
      v13 = [WeakRetained _normalizedStringForRangeComparison:v12];
      v14 = [v5 markedText];
      v15 = [v5 selectedText];
      v16 = [v5 contextAfterInput];
      v17 = [v5 selectedRangeInMarkedText];
      v19 = [v10 initWithContextBefore:v13 markedText:v14 selectedText:v15 contextAfter:v16 selectedRangeInMarkedText:{v17, v18}];

      v20 = [v23 input];
      v9 = [v19 documentStateAfterReplacingText:v20 withText:v4];

      if (!v9)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v9 = [v5 documentStateAfterInsertingText:v4];
    if (!v9)
    {
LABEL_4:
      v21 = MEMORY[0x1E69D9590];
      v9 = [(_UIKeyboardStateManager *)self inputDelegate];
      v22 = [v21 documentStateOfDocument:v9];
      [(_UIKeyboardStateManager *)self setDocumentState:v22];

      goto LABEL_7;
    }
  }

  [(_UIKeyboardStateManager *)self setDocumentState:v9];
LABEL_7:
}

- (void)insertedEmojiFromPopover:(id)a3 selectionMethod:(id)a4
{
  v6 = a3;
  [UIKBAnalyticsDispatcher emojiInsertedByMethod:a4 inputType:@"Popover"];
  v7 = [v6 emojiString];

  v8 = [(_UIKeyboardStateManager *)self inputEventForInputString:v7];

  [v8 setPopupVariant:1];
  [(_UIKeyboardStateManager *)self handleEmojiInput:v8 keyboardState:self->m_keyboardState];
}

- (void)insertedAccentVariantFromPopover:(id)a3
{
  v4 = a3;
  if (qword_1ED49D268 != -1)
  {
    dispatch_once(&qword_1ED49D268, &__block_literal_global_1353);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___UIKeyboardStateManager_insertedAccentVariantFromPopover___block_invoke_3;
  v12[3] = &unk_1E70FD058;
  v12[4] = self;
  [v5 performSingleTask:v12 breadcrumb:qword_1ED49D260];

  if (qword_1ED49D278 != -1)
  {
    dispatch_once(&qword_1ED49D278, &__block_literal_global_1359);
  }

  v6 = [(_UIKeyboardStateManager *)self taskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___UIKeyboardStateManager_insertedAccentVariantFromPopover___block_invoke_6;
  v9[3] = &unk_1E70FD1B8;
  v10 = v4;
  v11 = self;
  v7 = qword_1ED49D270;
  v8 = v4;
  [v6 performSingleTask:v9 breadcrumb:v7];
}

- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateIdleDetection:0];

  if (+[UIDictationController isRunning])
  {
    v8 = +[UIDictationController sharedInstance];
    v9 = [v8 dictationTipController];
    [v9 signalDictationInsertionTip:v12];
  }

  v10 = @"Search";
  if (!v6 || ![v6 length])
  {
    v11 = @"SearchFavorites";

    v10 = v11;
  }

  [(_UIKeyboardStateManager *)self emojiSearchWillInsertEmoji:v12 forSearchQuery:v6 selectionMethod:@"Touch" inputType:v10];
}

- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4 selectionMethod:(id)a5 inputType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(_UIKeyboardStateManager *)self refreshKeyboardState];
  v19 = [(TIKeyboardState *)self->m_keyboardState copy];
  [v19 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
  [v19 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
  v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v15 = [v14 delegateRespectingForwardingDelegate:0];

  if ([v15 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v16 = [MEMORY[0x1E69D9590] documentStateOfDocument:v15];
    [v19 setDocumentState:v16];
  }

  v17 = [(_UIKeyboardStateManager *)self inputEventForInputString:v13];
  v18 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v13 forInput:v12];

  [v17 setAcceptedCandidate:v18];
  [v17 setSynthesizedByAcceptingCandidate:1];
  [(_UIKeyboardStateManager *)self acceptingCandidateWithTrigger:*MEMORY[0x1E69D9720]];
  [(_UIKeyboardStateManager *)self handleEmojiInput:v17 keyboardState:v19];
  [UIKBAnalyticsDispatcher emojiInsertedByMethod:v11 inputType:v10];
}

- (void)handleEmojiInput:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIKeyboardStateManager *)self shouldAccessInputManagerService])
  {
    if (qword_1ED49D288 != -1)
    {
      dispatch_once(&qword_1ED49D288, &__block_literal_global_1365);
    }

    v8 = [(_UIKeyboardStateManager *)self taskQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke_3;
    v9[3] = &unk_1E70FD208;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 addTask:v9 breadcrumb:qword_1ED49D280];
  }
}

- (BOOL)currentInputModeRequiresLTRMathExpression
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 primaryLanguage];
  v5 = [v4 isEqual:@"he-IL"];

  return v5;
}

- (void)acceptAutocorrection:(id)a3 executionContextPassingTIKeyboardCandidate:(id)a4
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || ![v6 isSupplementalItemCandidate] || !-[_UIKeyboardStateManager _insertSupplementalCandidate:overridingCandidateText:](self, "_insertSupplementalCandidate:overridingCandidateText:", v6, 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v9 = [WeakRetained autocorrectPrompt];

    if (v9)
    {
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v11 = *MEMORY[0x1E695F050];
      v13 = *(MEMORY[0x1E695F050] + 8);
      v15 = *(MEMORY[0x1E695F050] + 16);
      v17 = *(MEMORY[0x1E695F050] + 24);
    }

    v18 = v6;
    m_smartPunctuationController = self->m_smartPunctuationController;
    v20 = [v18 candidate];
    v21 = [(TISmartPunctuationController *)m_smartPunctuationController smartPunctuationResultsForString:v20];

    v22 = v18;
    if ([v21 count])
    {
      v78 = v9;
      v74 = v7;
      v75 = v6;
      v23 = [v18 candidate];
      v24 = [v23 mutableCopy];

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v76 = v21;
      v25 = v21;
      v26 = [v25 countByEnumeratingWithState:&v102 objects:v106 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v103;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v103 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v102 + 1) + 8 * i);
            v31 = [v30 range];
            v33 = v32;
            v34 = [v30 replacementString];
            [v24 replaceCharactersInRange:v31 withString:{v33, v34}];
          }

          v27 = [v25 countByEnumeratingWithState:&v102 objects:v106 count:16];
        }

        while (v27);
      }

      v22 = [v18 candidateByReplacingWithCandidate:v24];

      v7 = v74;
      v6 = v75;
      v21 = v76;
      v9 = v78;
    }

    if ([(_UIKeyboardStateManager *)self shouldApplyAcceptedAutocorrection:v18])
    {
      v35 = off_1E70EA000;
      if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled]&& [(_UIKeyboardStateManager *)self shouldUnderlineCandidate:v22])
      {
        v36 = [(_UIKeyboardStateManager *)self autocorrectionController];
        v37 = [v36 storedListForCandidate:v22];

        v38 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
        [v38 addList:v37 forCandidate:v22];

        v39 = [v22 candidate];
        [UITextChecker setString:v39 isExemptFromChecker:1];

        v35 = off_1E70EA000;
      }

      v40 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v41 = [v40 forwardingInputDelegate];

      if (!v41)
      {
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke;
        v100[3] = &unk_1E70FD608;
        v101 = v22;
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v100];
      }

      if ([(_UIKeyboardStateManager *)self hasAsyncCapableInputDelegate])
      {
        self->m_textInputChangesIgnored = 1;
        if ([v18 isContinuousPathConversion])
        {
          v42 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v43 = [v42 selectedTextRange];
          v44 = [v43 isEmpty];

          if ((v44 & 1) == 0)
          {
            v77 = v21;
            v79 = v9;
            v45 = v7;
            v46 = [v18 input];
            v47 = [v22 candidate];
            v48 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v49 = [(_UIKeyboardStateManager *)self inputDelegateManager];
            v50 = [v49 selectedTextRange];
            v51 = [v48 textInRange:v50];

            if (([v51 hasPrefix:@" "] & 1) != 0 || !objc_msgSend(v47, "hasPrefix:", @" "))
            {
              v7 = v45;
              v9 = v79;
            }

            else
            {
              v7 = v45;
              v9 = v79;
              if ([v47 length] >= 2)
              {
                v52 = [v47 substringFromIndex:1];

                v47 = v52;
              }
            }

            v21 = v77;
            v60 = [v22 candidateByReplacingWithCandidate:v47 input:v51];

            v22 = v60;
          }

          v35 = off_1E70EA000;
        }

        if ([(__objc2_class *)v35[359] isTextAccelerationUIEnabled])
        {
          v61 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v62 = [v22 candidate];
          [v22 input];
          v64 = v63 = v9;
          v65 = [(_UIKeyboardStateManager *)self shouldUnderlineCandidate:v22];
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_2;
          v93[3] = &unk_1E70FDA18;
          v93[4] = self;
          v22 = v22;
          v94 = v22;
          v95 = v7;
          v96 = v11;
          v97 = v13;
          v98 = v15;
          v99 = v17;
          [v61 applyAutocorrection:v62 toString:v64 shouldUnderline:v65 withCompletionHandler:v93];

          v9 = v63;
        }

        else
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_6;
          aBlock[3] = &unk_1E70FDA18;
          aBlock[4] = self;
          v22 = v22;
          v87 = v22;
          v88 = v7;
          v89 = v11;
          v90 = v13;
          v91 = v15;
          v92 = v17;
          v66 = _Block_copy(aBlock);
          v67 = [(_UIKeyboardStateManager *)self webInputDelegate];

          v68 = v9;
          if (v67)
          {
            v69 = [(_UIKeyboardStateManager *)self webInputDelegate];
            v70 = [v22 input];
            v71 = [v22 candidate];
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_10;
            v84[3] = &unk_1E70FDA40;
            v72 = &v85;
            v85 = v66;
            [v69 replaceText:v70 withText:v71 options:0 completionHandler:v84];
          }

          else
          {
            v73 = [(_UIKeyboardStateManager *)self asyncInputDelegate];

            if (v73)
            {
              v69 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
              v70 = [v22 input];
              v71 = [v22 candidate];
              v82[0] = MEMORY[0x1E69E9820];
              v82[1] = 3221225472;
              v82[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_11;
              v82[3] = &unk_1E70FDA40;
              v72 = &v83;
              v83 = v66;
              [v69 replaceText:v70 withText:v71 options:0 withCompletionHandler:v82];
            }

            else
            {
              v69 = [(_UIKeyboardStateManager *)self asyncWebKitInteractionDelegate];
              v70 = [v22 candidate];
              v71 = [v22 input];
              v80[0] = MEMORY[0x1E69E9820];
              v80[1] = 3221225472;
              v80[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_12;
              v80[3] = &unk_1E70FDA68;
              v72 = &v81;
              v81 = v66;
              [v69 applyAutocorrection:v70 toString:v71 withCompletionHandler:v80];
            }
          }

          v9 = v68;
        }

        goto LABEL_37;
      }

      [(_UIKeyboardStateManager *)self deleteWordLastDelete];
      v56 = -*MEMORY[0x1E695E460];
      if (v57 > v56)
      {
        v58 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v58 insertText:@" " updateInputSource:0];

        [(_UIKeyboardStateManager *)self setDeleteWordLastDelete:v56];
      }

      if ([(_UIKeyboardStateManager *)self applyAutocorrection:v22])
      {
        [(_UIKeyboardStateManager *)self underlineCandidate:v22];
        v59 = [v18 candidate];
        [(_UIKeyboardStateManager *)self animateAutocorrectionToText:v59 fromRect:v11, v13, v15, v17];

        [(_UIKeyboardStateManager *)self didApplyAutocorrection:v18 autocorrectPromptFrame:v11, v13, v15, v17];
        [v7 returnExecutionToParentWithInfo:v22];
LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
      v53 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v54 = [v53 selectedTextRange];
      v55 = [v54 isEmpty];

      if ((v55 & 1) == 0)
      {
        [(_UIKeyboardStateManager *)self collapseSelection];
      }
    }

    [v7 returnExecutionToParent];
    goto LABEL_37;
  }

  [v7 returnExecutionToParent];
LABEL_38:
}

- (BOOL)shouldApplyAcceptedAutocorrection:(id)a3
{
  v5 = a3;
  v6 = (objc_opt_respondsToSelector() & 1) == 0 || ([v5 candidateProperty] & 4) == 0;
  v7 = (objc_opt_respondsToSelector() & 1) == 0 || [v5 performSelector:sel_shouldHintAtAlternativeInput] == 0;
  v8 = [v5 candidate];
  if (!v8)
  {
    v3 = [v5 input];
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v9 = [v5 candidate];
  v10 = [v5 input];
  if ([v9 isEqualToString:v10])
  {
    v11 = ([v5 isSupplementalItemCandidate] ^ 1) & (v6 && v7);

    if (v8)
    {

      if (v11)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (v11)
      {
LABEL_23:
        v13 = 0;
        goto LABEL_26;
      }
    }
  }

  else
  {

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v3;
    }
  }

  if ([v5 slotID] || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v13 = 1;
  }

  else
  {
    v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v16 = [v15 selectedTextRange];
    if ([v16 isEmpty])
    {
      v17 = [v5 input];
      v18 = [v17 length];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v20 = [v5 candidate];
    v13 = [v19 callShouldReplaceExtendedRange:v18 withText:v20 includeMarkedText:0];
  }

LABEL_26:

  return v13;
}

- (void)didApplyAutocorrection:(id)a3 autocorrectPromptFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v9 = [v19 input];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69D9638]);
    [v11 setAcceptedCandidate:v19];
    v12 = [v19 candidate];
    [v11 insertText:v12];

    [(_UIKeyboardStateManager *)self _postInputResponderCapabilitiesChangedNotificationWithOutput:v11 selectionChanged:0];
  }

  [(_UIKeyboardStateManager *)self setChangedDelegate];
  if ([(_UIKeyboardStateManager *)self isAutoFillMode])
  {
    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = [v13 privateInputDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v17 = [v16 privateInputDelegate];
      v18 = [v19 candidate];
      [v17 acceptedAutoFillWord:v18];
    }
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [(_UIKeyboardStateManager *)self trackUsageForAcceptedAutocorrection:v19 promptWasShowing:!CGRectIsNull(v21)];
}

- (void)addWordTerminator:(id)a3 afterSpace:(BOOL)a4 afterAcceptingCandidate:(id)a5 elapsedTime:(double)a6 executionContext:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [v12 string];
  if (![(_UIKeyboardStateManager *)self callShouldInsertText:v15])
  {
    v16 = [v12 acceptedCandidate];
    if ([v16 isAutofillCandidate])
    {
    }

    else
    {
      v17 = [v12 acceptedCandidate];
      v18 = [v17 isSlottedCandidate];

      if (!v18)
      {
        self->m_textInputChangingText = 1;
        [(_UIKeyboardStateManager *)self updateForChangedSelection];
        self->m_textInputChangingText = 0;
        [v14 returnExecutionToParent];
        goto LABEL_17;
      }
    }
  }

  [(_UIKeyboardStateManager *)self clearInputWithCandidatesCleared:0];
  v19 = [(_UIKeyboardStateManager *)self handleDeleteAutospaceForInputString:v15 afterSpace:v10];
  if (!v19)
  {
    if ([(_UIKeyboardStateManager *)self willDoubleSpacePeriodForInputString:v15 afterSpace:v10 elapsedTime:a6])
    {
      v20 = [(_UIKeyboardStateManager *)self inputManagerState];
      v21 = [v20 replacementForDoubleSpace];
      v22 = [v21 copy];
      v23 = v22;
      v24 = @". ";
      if (v22)
      {
        v24 = v22;
      }

      v19 = v24;

      if ([(_UIKeyboardStateManager *)self _hasMarkedText])
      {
        self->m_textInputChangesIgnored = 1;
        v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v25 unmarkText];

        self->m_textInputChangesIgnored = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  if ([(__CFString *)v19 length])
  {
    v26 = [(_UIKeyboardStateManager *)self handleReplacement:v19 forSpaceAndInput:v12];

    v12 = v26;
  }

  if (v12)
  {
    v27 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v27 clearAutocorrection];

    [UITextChecker noteWordTerminator:v12 replacement:v19];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __109___UIKeyboardStateManager_addWordTerminator_afterSpace_afterAcceptingCandidate_elapsedTime_executionContext___block_invoke;
    v29[3] = &unk_1E70FD208;
    v29[4] = self;
    v30 = v13;
    v31 = v15;
    v28 = [v14 childWithContinuation:v29];
    [(_UIKeyboardStateManager *)self handleKeyboardInput:v12 executionContext:v28];
  }

LABEL_17:
}

- (void)completeAddInputString:(id)a3 generateCandidates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
  if (v4)
  {
    [(_UIKeyboardStateManager *)self generateCandidates];
  }

  if ([v6 isEqualToString:@"\n"] && !-[UITextInputTraits isSingleLineDocument](self->m_traits, "isSingleLineDocument"))
  {
    [(_UIKeyboardStateManager *)self setInitialDirection];
  }

  [(_UIKeyboardStateManager *)self updateCandidateDisplay];
  [(_UIKeyboardStateManager *)self updateReturnKey];
  [(_UIKeyboardStateManager *)self updateNoContentViews];
  [(_UIKeyboardStateManager *)self setChangedDelegate];
  [(_UIKeyboardStateManager *)self updateDoubleSpacePeriodStateForString:v6];
  self->m_suggestionsShownForCurrentDeletion = 0;
  self->m_didAutomaticallyInsertSpace = 0;
  [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
}

- (void)updateDocumentViewsAfterKeyboardOutput:(id)a3
{
  v12 = a3;
  v4 = [v12 insertionText];
  if ([v4 _isNewlineOrReturn])
  {
    v5 = [(UITextInputTraits *)self->m_traits isSingleLineDocument];

    if (!v5)
    {
      [(_UIKeyboardStateManager *)self setInitialDirection];
    }
  }

  else
  {
  }

  [(_UIKeyboardStateManager *)self updateNoContentViews];
  [(_UIKeyboardStateManager *)self setChangedDelegate];
  v6 = [v12 insertionText];

  if (v6)
  {
    v7 = [v12 insertionText];
    v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v9 = [v7 rangeOfCharacterFromSet:v8];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(UITextInputTraits *)self->m_traits returnKeyGoesToNextResponder])
      {
        v10 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v11 = [v10 _nextKeyResponder];
        [v11 becomeFirstResponder];
      }

      else
      {
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 postNotificationName:@"UIKeyboardReturnKeyPressed" object:0];
      }
    }
  }

  self->m_textInputChangingCount = 0;
  *&self->m_textInputChangesIgnored = 0;
  self->m_textInputChangingDirection = 0;
}

- (void)didChangePhraseBoundary
{
  if ([(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
  {
    [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
    if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || !+[UIKeyboard usesInputSystemUI])
    {
      [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:0];
      [(_UIKeyboardStateManager *)self generateCandidates];

      [(_UIKeyboardStateManager *)self updateCandidateDisplay];
    }
  }
}

- (unint64_t)phraseBoundary
{
  if (![(_UIKeyboardStateManager *)self supportsSetPhraseBoundary])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(_UIKeyboardStateManager *)self documentState];

  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(_UIKeyboardStateManager *)self documentState];
  v5 = [v4 markedText];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  v7 = [(_UIKeyboardStateManager *)self documentState];
  v8 = [v7 selectedRangeInMarkedText];

  return v8;
}

- (void)adjustSegmentSize:(int64_t)a3
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v8 = [v7 markedTextRange];
  v9 = [v6 textInRange:v8];
  v10 = [v9 length];

  if (v10 >= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v10;
  }

  if (v10 <= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 1)
  {
    v13 = a3 >> 63;
    do
    {
      [(_UIKeyboardStateManager *)self movePhraseBoundaryToDirection:v13 granularity:1];
      --v12;
    }

    while (v12);
  }
}

- (void)movePhraseBoundaryToDirection:(int64_t)a3 granularity:(int64_t)a4
{
  if ([(_UIKeyboardStateManager *)self hasEditableMarkedText]&& [(_UIKeyboardStateManager *)self phraseBoundary]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1ED49D2C8 != -1)
    {
      dispatch_once(&qword_1ED49D2C8, &__block_literal_global_1395);
    }

    v7 = [(_UIKeyboardStateManager *)self taskQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69___UIKeyboardStateManager_movePhraseBoundaryToDirection_granularity___block_invoke_3;
    v8[3] = &unk_1E70FDA90;
    v8[4] = self;
    v8[5] = a3;
    v8[6] = a4;
    [v7 performTask:v8 breadcrumb:qword_1ED49D2C0];
  }
}

- (void)updateLayoutAndSetShift
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateLayout];

  [(_UIKeyboardStateManager *)self setShift:1];
}

- (void)deleteOnceFromInputWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  v6 = [v5 inputIndex];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(_UIKeyboardStateManager *)self inputManagerState];
  v8 = [v7 shadowTyping];

  if ([v8 length] < v6)
  {

LABEL_5:
    v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v10 _characterBeforeCaretSelection];

    goto LABEL_6;
  }

  v9 = [v8 characterAtIndex:v6 - 1];

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = objc_alloc_init(MEMORY[0x1E69D95F8]);
  [v11 setBackspace:1];
  [v11 setShiftDown:{-[_UIKeyboardStateManager isShiftKeyBeingHeld](self, "isShiftKeyBeingHeld")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67___UIKeyboardStateManager_deleteOnceFromInputWithExecutionContext___block_invoke;
  v13[3] = &unk_1E70FDAB8;
  v13[4] = self;
  v14 = v9;
  v12 = [v4 childWithContinuation:v13];

  [(_UIKeyboardStateManager *)self handleKeyboardInput:v11 executionContext:v12];
}

- (BOOL)nextCharacterIsWordCharacter
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = [v3 _characterAfterCaretSelection];

  m_inputManagerState = self->m_inputManagerState;
  if (m_inputManagerState)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] _stringWithUnichar:v4];
    v8 = [(TIKeyboardInputManagerState *)m_inputManagerState stringEndsWord:v7]^ 1;
  }

  return v8;
}

- (void)collapseSelection
{
  v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v2 collapseSelectionAndAdjustByOffset:0];
}

- (void)scheduleReplacementsAfterDeletionToEndOfWord
{
  if ([(_UIKeyboardStateManager *)self supportsScheduleReplacementsAfterDeletionToEndOfWord])
  {
    v3 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
    v4 = 9;
    if (v3)
    {
      v4 = 41;
    }

    if (self->m_suggestionsShownForCurrentDeletion)
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    self->m_suggestionsShownForCurrentDeletion = 1;
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 hasAsyncCapableInputDelegate];

    if (v7)
    {
      v8 = v5 | 0x10;
    }

    else
    {
      v8 = v5;
    }

    [(_UIKeyboardStateManager *)self scheduleReplacementsWithOptions:v8];
  }
}

- (void)completeDeleteOnceFromInputWithCharacterBefore:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x1E696AEC0] _stringWithUnichar:?];
  [(_UIKeyboardStateManager *)self setDeletedString:v5];

  if (![(_UIKeyboardStateManager *)self usesCandidateSelection]|| [(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 hasAsyncCapableInputDelegate];

    v8 = [(_UIKeyboardStateManager *)self inputManagerState];
    v9 = [(_UIKeyboardStateManager *)self deletedString];
    v10 = [v8 stringEndsWord:v9];
    if (!v10 || (v7 & 1) != 0)
    {

      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v12 = [v11 selectionIsEndOfWord];

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    [(_UIKeyboardStateManager *)self clearInput];
    [(_UIKeyboardStateManager *)self scheduleReplacementsAfterDeletionToEndOfWord];
    [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
    goto LABEL_14;
  }

  if (!self->m_candidateList)
  {
    goto LABEL_14;
  }

  v13 = [(_UIKeyboardStateManager *)self _markedText];
  if (![v13 length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v15 = [WeakRetained candidateController];
    v16 = [v15 barIsExtended];

    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = objc_loadWeakRetained(&self->_presentationDelegate);
    v17 = [v13 candidateController];
    [v17 collapse];
  }

LABEL_14:
  v18 = [(_UIKeyboardStateManager *)self autocorrectionController];
  if ([v18 hasProactiveCandidates])
  {
    v19 = [(_UIKeyboardStateManager *)self documentState];
    v20 = [v19 contextBeforeInput];

    if (v3 && !v20)
    {
      v21 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v21 clearAutocorrectionAndNotifyObservers:1];

      [(_UIKeyboardStateManager *)self updateAssistantView];
    }
  }

  else
  {
  }

  [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
  [(_UIKeyboardStateManager *)self updateDoubleSpacePeriodStateForCharacter:v3];
  self->m_didAutomaticallyInsertSpace = 0;
}

- (void)_deleteFromInputWithFlags:(unint64_t)a3
{
  if (qword_1ED49D2D8 != -1)
  {
    dispatch_once(&qword_1ED49D2D8, &__block_literal_global_1399);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UIKeyboardStateManager__deleteFromInputWithFlags___block_invoke_3;
  v6[3] = &unk_1E70FDAE0;
  v6[4] = self;
  v6[5] = a3;
  [v5 addTask:v6 breadcrumb:qword_1ED49D2D0];
}

- (void)deleteFromInputWithFlags:(unint64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(_UIKeyboardStateManager *)self isCurrentEditResponderWebKit]&& [(_UIKeyboardStateManager *)self shouldApplyKeyboardInputToUIHost])
  {
    v5 = objc_alloc_init(NSClassFromString(&cfstr_Rtiinputoperat.isa));
    v10[0] = @"flags";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10[1] = @"selector";
    v11[0] = v6;
    v11[1] = @"_deleteFromInputWithFlags:";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v5 setCustomInfo:v7];

    [v5 setCustomInfoType:0x1EFB7CA50];
    v8 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v8 performInputOperation:v5];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52___UIKeyboardStateManager_deleteFromInputWithFlags___block_invoke;
    v9[3] = &unk_1E70FDAE0;
    v9[4] = self;
    v9[5] = a3;
    [(_UIKeyboardStateManager *)self _scheduleInputAdditionOrDeletion:v9];
  }
}

- (void)undoWithKeyboardInput:(id)a3
{
  v4 = a3;
  if (qword_1ED49D2E8 != -1)
  {
    dispatch_once(&qword_1ED49D2E8, &__block_literal_global_1406);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___UIKeyboardStateManager_undoWithKeyboardInput___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED49D2E0;
  v7 = v4;
  [v5 addTask:v8 breadcrumb:v6];
}

- (void)performAutoDeleteNumberOfTimes:(unint64_t)a3 deleteOneWord:(BOOL)a4 forwardToInputSource:(BOOL)a5 deleteCount:(int64_t *)a6
{
  v58 = a6;
  v63 = a5;
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v60 = v70;
    v61 = v67;
    v62 = v72;
    while (1)
    {
      v9 = [(_UIKeyboardStateManager *)self inputSystemSourceSession:v58];
      v10 = [v9 textOperations];
      v11 = [v10 keyboardOutput];
      [v11 setProducedByDeleteInput:1];

      v80 = 0;
      v81 = &v80;
      v82 = 0x2020000000;
      v83 = 0;
      if (!a4 && (a3 == 1 || ![(_UIKeyboardStateManager *)self usesAutoDeleteWord]))
      {
        goto LABEL_19;
      }

      v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v13 = [v12 asyncCapableInputDelegate];

      if (!v13)
      {
        break;
      }

      v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v14 _deleteByWord];

      v15 = 1;
LABEL_20:
      v34 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v27 = 0;
      self->m_autoDeleteShiftCharacter = [v34 _characterBeforeCaretSelection];
      v37 = 1;
      v36 = 1;
LABEL_21:

      if (!-[_UIKeyboardStateManager shouldShowLongPredictionList](self, "shouldShowLongPredictionList") && -[_UIKeyboardStateManager usesCandidateSelection](self, "usesCandidateSelection") && (-[_UIKeyboardStateManager inputManagerState](self, "inputManagerState"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 inputCount], v38, v39))
      {
        if (v37)
        {
          v40 = [MEMORY[0x1E696AEC0] _stringWithUnichar:self->m_autoDeleteShiftCharacter];
        }

        else
        {
          v46 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v40 = [v46 textInRange:v27];
        }

        v47 = [v40 length];
        if (v47 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = v47;
        }

        v49 = [(_UIKeyboardStateManager *)self inputManagerState];
        v50 = [v49 inputCount];

        if (v48 < v50)
        {
          LODWORD(v50) = v48;
        }

        if (v63)
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v70[0] = __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_3;
          v70[1] = &unk_1E70FDB58;
          v70[2] = &v80;
          [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v69];
        }

        if (v50 >= 1)
        {
          do
          {
            if (qword_1ED49D2F8 != -1)
            {
              dispatch_once(&qword_1ED49D2F8, &__block_literal_global_1411);
            }

            v51 = [(_UIKeyboardStateManager *)self taskQueue];
            v68[0] = MEMORY[0x1E69E9820];
            v68[1] = 3221225472;
            v68[2] = __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_6;
            v68[3] = &unk_1E70FD058;
            v68[4] = self;
            [v51 performSingleTask:v68 breadcrumb:qword_1ED49D2F0];

            LODWORD(v50) = v50 - 1;
          }

          while (v50);
        }
      }

      else
      {
        if ((v37 & 1) == 0)
        {
          self->m_textInputChangesIgnored = 1;
          v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          [v41 setSelectedTextRange:v27];

          [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
          self->m_textInputChangesIgnored = 0;
        }

        if (v63)
        {
          v42 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v43 = [v42 hasAsyncCapableInputDelegate];

          v44 = &__block_literal_global_1415;
          if (((v37 | v43) & 1) == 0)
          {
            v45 = [(_UIKeyboardStateManager *)self textLengthToDeleteBeforeSelectedRangeForSmartDelete];
            *(v81 + 6) += v45;
            v44 = v66;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v67[0] = __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_7;
            v67[1] = &unk_1E70FDB58;
            v67[2] = &v80;
          }

          [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v44];
        }

        if ((v15 & 1) == 0)
        {
          [(_UIKeyboardStateManager *)self deleteBackward];
        }

        [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
        if (+[UIKeyboard isKeyboardProcess])
        {
          [(_UIKeyboardStateManager *)self changingContextWithTrigger:@"rapidDeletion"];
          [(_UIKeyboardStateManager *)self removeAutocorrectPromptAndCandidateList];
        }
      }

      v8 += v36;
      _Block_object_dispose(&v80, 8);

      if (++v7 == a3)
      {
        goto LABEL_52;
      }
    }

    v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v17 = [v16 selectedTextRange];

    v18 = [v17 start];
    v19 = [v17 end];
    [v18 isEqual:v19];

    v20 = [v17 start];
    if (v20)
    {
      v21 = [(_UIKeyboardStateManager *)self inputDelegate];
      v22 = [v17 start];
      v23 = [v21 _positionAtStartOfWords:1 beforePosition:v22];

      if (v23)
      {
        v24 = [v17 end];
        if (v24)
        {
          v25 = [(_UIKeyboardStateManager *)self inputDelegate];
          v26 = [v17 end];
          v27 = [v25 textRangeFromPosition:v23 toPosition:v26];
        }

        else
        {
          v27 = 0;
        }

LABEL_17:
        self->m_autoDeleteShiftCharacter = 0;
        v28 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
        v29 = [v28 documentState];
        v30 = [v29 documentState];
        v31 = [v30 contextBeforeInput];

        v76 = 0;
        v77 = &v76;
        v78 = 0x2020000000;
        v79 = 0;
        v32 = [v31 length];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v72[0] = __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke;
        v72[1] = &unk_1E70FDB30;
        v74 = &v80;
        v75 = &v76;
        v33 = v31;
        v73 = v33;
        [v33 enumerateSubstringsInRange:0 options:v32 usingBlock:{258, v71}];
        *(v81 + 6) += *(v77 + 6);

        _Block_object_dispose(&v76, 8);
        if (v27)
        {
          v34 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v35 = [v34 textInRange:v27];
          v36 = [v35 length];

          v37 = 0;
          v15 = 0;
          goto LABEL_21;
        }

LABEL_19:
        v15 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v23 = 0;
    }

    v27 = 0;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_52:
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v52 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v53 = [v52 selectedTextRange];

    if (v53)
    {
      v54 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
      v55 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v56 = [v55 selectedTextRange];
      v57 = [v56 start];
      [v54 updateUnderlinesIfNeededAfterPosition:v57];
    }
  }

  if (v59)
  {
    *v59 = v8;
  }
}

- (void)deleteFromInputWithFlags:(unint64_t)a3 executionContext:(id)a4
{
  v6 = a4;
  [(_UIKeyboardStateManager *)self setPreviousInputString:0];
  if ((a3 & 0x80) != 0)
  {
    [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
    if (![(_UIKeyboardStateManager *)self callShouldDeleteWithWordCountForRapidDelete:2 characterCountForRapidDelete:3])
    {
LABEL_25:
      [v6 returnExecutionToParent];
      goto LABEL_26;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69D9638]);
    [v9 setDeletionCount:1];
    [v9 setProducedByDeleteInput:1];
    [(_UIKeyboardStateManager *)self performKeyboardOutput:v9];
    [(_UIKeyboardStateManager *)self updateReturnKey];
    [(_UIKeyboardStateManager *)self updateNoContentViews];
LABEL_24:

    goto LABEL_25;
  }

  if ((a3 & 0x400) == 0 && ![(_UIKeyboardStateManager *)self callShouldDeleteWithWordCountForRapidDelete:2 characterCountForRapidDelete:3])
  {
    [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
    self->m_needsOneShotGenerateCandidatesAfterStoppingAutoDelete = 1;
    if (qword_1ED49D308 != -1)
    {
      dispatch_once(&qword_1ED49D308, &__block_literal_global_1420);
    }

    v9 = [(_UIKeyboardStateManager *)self taskQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_3;
    v18[3] = &unk_1E70FD058;
    v18[4] = self;
    [v9 addTask:v18 breadcrumb:qword_1ED49D300];
    goto LABEL_24;
  }

  [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
  [(_UIKeyboardStateManager *)self clearTransientState];
  if ((a3 & 0x200) != 0 || self->m_autoDeleteOK)
  {
    if ((a3 & 0x200) != 0 || self->m_autoDeleteCount < 0x14)
    {
      v11 = 0;
      v10 = 1;
    }

    else
    {
      if ([(_UIKeyboardStateManager *)self usesAutoDeleteWord])
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      [(_UIKeyboardStateManager *)self setLastDeletionCountForFastDelete:v10];
      v11 = 1;
    }

    v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v13 = [v12 forwardingInputDelegate];
    v14 = v13 == 0;

    v17 = 0;
    [(_UIKeyboardStateManager *)self performAutoDeleteNumberOfTimes:v10 deleteOneWord:(a3 >> 9) & 1 forwardToInputSource:v14 deleteCount:&v17];
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained playDeleteKeyFeedbackIfNecessaryRepeat:1 rapid:v11 deleteCount:v17];

    self->m_doubleSpacePeriodWasAppliedInCurrentContext = 0;
    self->m_didAutomaticallyInsertSpace = 0;
    [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
    [(_UIKeyboardStateManager *)self completeDeleteFromInput];
    goto LABEL_25;
  }

  if ([(_UIKeyboardStateManager *)self userSelectedCurrentCandidate])
  {
    [(UIKeyboardCandidateList *)self->m_candidateList showCandidateAtIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:0];
  }

  if (self->m_acceptingCandidate)
  {
    v7 = [(_UIKeyboardStateManager *)self inputManager];
    [v7 lastAcceptedCandidateCorrected];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_8;
  v16[3] = &unk_1E70FD058;
  v16[4] = self;
  v8 = [v6 childWithContinuation:v16];

  [(_UIKeyboardStateManager *)self deleteOnceFromInputWithExecutionContext:v8];
  v6 = v8;
LABEL_26:
}

- (void)completeDeleteFromInput
{
  v3 = [(_UIKeyboardStateManager *)self documentState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___UIKeyboardStateManager_completeDeleteFromInput__block_invoke;
  v6[3] = &unk_1E70FD9A0;
  v6[4] = self;
  v4 = [v3 inputStringWithTerminatorPredicate:v6];

  if (![v4 length])
  {
    [(_UIKeyboardStateManager *)self setInitialDirection];
    v5 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
    [v5 clearSecureCandidateHashes];
  }

  [(_UIKeyboardStateManager *)self setChangedDelegate];
}

- (void)willReplaceTextInRangedSelectionWithKeyboardInput
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v11 = [v3 selectedTextRange];

  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 selectionIsWord];

  if (v5)
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v8 = [v7 selectedTextRange];
    v9 = [v6 textInRange:v8];

    if ([v9 length])
    {
      v10 = [(_UIKeyboardStateManager *)self inputManager];
      [v10 setOriginalInput:v9];
    }
  }

  [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
  if (([v11 isEmpty] & 1) == 0)
  {
    [(_UIKeyboardStateManager *)self removeTextChoiceUnderlinesInRange:v11];
  }
}

- (id)_acquireWaitingOnPerformAutocorrect
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_waitingOnPerformAutocorrect);
  waitingOnPerformAutocorrect = v2->_waitingOnPerformAutocorrect;
  v2->_waitingOnPerformAutocorrect = 0;

  v5 = _Block_copy(v3);
  objc_sync_exit(v2);

  return v5;
}

- (void)_setWaitingOnPerformAutocorrect:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  waitingOnPerformAutocorrect = v4->_waitingOnPerformAutocorrect;
  v4->_waitingOnPerformAutocorrect = v5;

  objc_sync_exit(v4);
}

- (BOOL)_shouldAcceptAutocorrectionOnSelectionChange
{
  if (self->m_skipAcceptAutocorrection)
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 delegateRespectingForwardingDelegate:0];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 _shouldAcceptAutocorrection])
  {
    v2 = 0;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self autocorrectionController];
    if ([v6 requestedAutocorrection])
    {
      v2 = [(_UIKeyboardStateManager *)self _hasMarkedText];
    }

    else
    {
      v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v8 = [v7 autocorrection];
      if (v8)
      {
        v2 = 1;
      }

      else
      {
        v2 = [(_UIKeyboardStateManager *)self _hasMarkedText];
      }
    }
  }

  return v2;
}

- (void)acceptInlineCompletionWithCompletionHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[_UIKeyboardStateManager acceptInlineCompletionWithCompletionHandler:]";
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s Initiating accept inline completion", buf, 0xCu);
  }

  [(_UIKeyboardStateManager *)self beginAcceptingInlineCompletionByDirectTap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIKeyboardStateManager_acceptInlineCompletionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E70FE248;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:v7];
}

- (void)beginAcceptingInlineCompletionByDirectTap
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_beginAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    v3 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v3 setCurrentlyAcceptingInlineCompletionByDirectTap:1];
  }
}

- (void)endAcceptingInlineCompletionByDirectTap
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_endAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    v3 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v3 setCurrentlyAcceptingInlineCompletionByDirectTap:0];
  }
}

- (void)acceptAutocorrectionWithCompletionHandler:(id)a3 requestedByRemoteInputDestination:(BOOL)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v8 = _UIKeyboardLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[_UIKeyboardStateManager acceptAutocorrectionWithCompletionHandler:requestedByRemoteInputDestination:]";
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s Forwarding to keyboard UI host", buf, 0xCu);
    }

    v9 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke;
    v21[3] = &unk_1E70FDB80;
    v10 = v7;
    v21[4] = self;
    v22 = v10;
    v23 = &v25;
    v24 = a2;
    [v9 forwardSelectorToUIHost:sel_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination_ completionHandler:v21];

    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v11 bundleIdentifier];
      v13 = [v12 hasPrefix:@"com.apple."];

      if ((v13 & 1) == 0 && *(v26 + 24) == 1)
      {
        v14 = *MEMORY[0x1E695D918];
        do
        {
          v15 = [MEMORY[0x1E695DFD0] currentRunLoop];
          v16 = [MEMORY[0x1E695DF00] distantFuture];
          [v15 runMode:v14 beforeDate:v16];
        }

        while ((v26[3] & 1) != 0);
      }
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke_3;
    aBlock[3] = &unk_1E70FD0C8;
    aBlock[4] = self;
    v20 = a4;
    v19 = v7;
    v17 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v17[2](v17);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v17);
    }
  }
}

- (void)_local_acceptAutocorrection
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 privateInputDelegate];

  if (!v4 || [v4 isEditing])
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 hasAsyncCapableInputDelegate];

    if (v6 && (-[_UIKeyboardStateManager taskQueue](self, "taskQueue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isMainThreadExecutingTask], v7, (v8 & 1) == 0))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __54___UIKeyboardStateManager__local_acceptAutocorrection__block_invoke;
      aBlock[3] = &unk_1E70FD058;
      aBlock[4] = self;
      v12 = _Block_copy(aBlock);
      if (qword_1ED49D328 != -1)
      {
        dispatch_once(&qword_1ED49D328, &__block_literal_global_1441);
      }

      v13 = [(_UIKeyboardStateManager *)self taskQueue];
      [v13 addTask:v12 breadcrumb:qword_1ED49D320];
    }

    else if (-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText") && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 keyInputDelegate], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      self->m_textInputChangesIgnored = 1;
      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v11 unmarkText];

      self->m_textInputChangesIgnored = 0;
    }

    else
    {
      [(_UIKeyboardStateManager *)self clearInput];
    }
  }
}

- (void)_acceptAutocorrection
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 privateInputDelegate];

  if (!v5 || [v5 isEditing])
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 hasAsyncCapableInputDelegate];

    if (v7)
    {
      v8 = [(_UIKeyboardStateManager *)self taskQueue];
      v9 = [v8 isMainThreadExecutingTask];

      if ((v9 & 1) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __48___UIKeyboardStateManager__acceptAutocorrection__block_invoke;
        aBlock[3] = &unk_1E70FD058;
        aBlock[4] = self;
        v14 = _Block_copy(aBlock);
        if (qword_1ED49D338 != -1)
        {
          dispatch_once(&qword_1ED49D338, &__block_literal_global_1445);
        }

        v27 = [(_UIKeyboardStateManager *)self taskQueue];
        [v27 addTask:v14 breadcrumb:qword_1ED49D330];

        goto LABEL_37;
      }
    }

    v10 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v11 = [v10 requestedAutocorrection];

    if (v11)
    {
      v12 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v35 = "[_UIKeyboardStateManager _acceptAutocorrection]";
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Detected and avoided autocorrect deadlock in %s", buf, 0xCu);
      }
    }

    else
    {
      v13 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v14 = [v13 autocorrection];

      if (v14)
      {
        v15 = 0;
        goto LABEL_13;
      }
    }

    v13 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    if (([v13 currentlyAcceptingInlineCompletionByDirectTap] & 1) == 0)
    {

      v14 = 0;
      goto LABEL_20;
    }

    v14 = 0;
    v15 = 1;
LABEL_13:
    v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v2 = [v16 keyInputDelegate];

    if (v15)
    {
    }

    if (v2)
    {
      [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
      v17 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
      v18 = [v17 currentlyAcceptingInlineCompletionByDirectTap];

      if (v18)
      {
        v19 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
        [v19 acceptTextCompletionWithInteraction:2 wordTerminator:0];
LABEL_18:

        goto LABEL_35;
      }

      v28 = [(_UIKeyboardStateManager *)self acceptAutocorrectionForWordTerminator:0];
LABEL_35:
      if (![(_UIKeyboardStateManager *)self usesCandidateSelection])
      {
        [(_UIKeyboardStateManager *)self clearInput];
      }

LABEL_37:

      goto LABEL_38;
    }

LABEL_20:
    if (![(_UIKeyboardStateManager *)self currentKeyboardTraitsAllowCandidateBarWhileIgnoringHidePredictionTrait:1]|| ![(_UIKeyboardStateManager *)self usesCandidateSelection]|| [(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
    {
      goto LABEL_35;
    }

    v19 = [(_UIKeyboardStateManager *)self inputManagerState];
    v20 = [v19 inputCount];
    if (!v20)
    {
      v2 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
      if (![v2 count])
      {

        goto LABEL_18;
      }
    }

    v21 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v22 = [v21 keyInputDelegate];

    if (!v20)
    {
    }

    if (!v22)
    {
      goto LABEL_35;
    }

    [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
    self->m_shouldSkipCandidateGeneration = 1;
    v23 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v23 setNextCommitTextSource:1];

    v24 = [(_UIKeyboardStateManager *)self inputManagerState];
    if ([v24 acceptAutocorrectionCommitsInline])
    {
      v25 = [(TIKeyboardState *)self->m_keyboardState userSelectedCurrentCandidate];

      if ((v25 & 1) == 0)
      {
        v26 = [(_UIKeyboardStateManager *)self acceptInlineCandidateWithSpace:0];
LABEL_41:
        v30 = [(_UIKeyboardStateManager *)self inputManagerState];
        v31 = [v30 inputCount];

        if (v31)
        {
          [(_UIKeyboardStateManager *)self cancelCandidateRequests];
          v32 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
        }

        self->m_shouldSkipCandidateGeneration = 0;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v29 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
    goto LABEL_41;
  }

LABEL_38:
}

- (void)acceptAutocorrection
{
  if (+[UIKeyboard usesInputSystemUI]&& ([(_UIKeyboardStateManager *)self remoteTextInputPartner], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 800000000);
    v5 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke;
    block[3] = &unk_1E70F5A28;
    objc_copyWeak(&v16, &location);
    dispatch_after(v4, v5, block);

    if (qword_1ED49D358 != -1)
    {
      dispatch_once(&qword_1ED49D358, &__block_literal_global_1456);
    }

    v6 = [(_UIKeyboardStateManager *)self taskQueue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_6;
    v12 = &unk_1E70FDBD0;
    objc_copyWeak(&v14, &location);
    v13 = self;
    [v6 performSingleTask:&v9 breadcrumb:qword_1ED49D350];

    objc_destroyWeak(&v14);
    v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner:v9];
    v8 = [v7 pendingOutputOperation];
    [(_UIKeyboardStateManager *)self performKeyboardOutput:v8 checkingDelegate:1 forwardToRemoteInputSource:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {

    [(_UIKeyboardStateManager *)self _acceptAutocorrection];
  }
}

- (void)removeAutocorrection
{
  [(_UIKeyboardStateManager *)self removeAutocorrectPrompt];

  [(_UIKeyboardStateManager *)self setAutocorrection:0];
}

- (void)insertTextSuggestionCandidate:(id)a3
{
  v21 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v5 = [WeakRetained candidateController];
  [v5 clearCurrentCandidate];

  if (+[UIKeyboard isKeyboardProcess]&& ([(_UIKeyboardStateManager *)self inputSystemSourceSession], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    if ([v21 customInfoType] == 0x10000)
    {
      v8 = [v7 textOperations];
      [v8 setCustomInfoType:0x1EFB7CBB0];

      v9 = [v21 textSuggestion];
      v10 = [v9 action];

      v11 = NSStringFromSelector(v10);
      v12 = [v7 textOperations];
      [v12 setCustomInfo:v11];
    }

    else
    {
      v19 = [v21 textSuggestion];
      v20 = [v7 textOperations];
      [v20 setCustomInfo:v19];

      v11 = [v7 textOperations];
      [v11 setCustomInfoType:0x1EFB7C950];
    }

    [v7 flushOperations];
  }

  else
  {
    v7 = [v21 textSuggestion];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 performActionWihSender:self];
    }

    else
    {
      v13 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v13 setTextSuggestionList:0];

      v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v15 = [v14 insertTextSuggestion:v7];

      if ((v15 & 1) == 0)
      {
        if (objc_opt_class(), (objc_opt_isKindOfClass()) && !-[_UIKeyboardStateManager insertAutoFillTextSuggestion:](self, "insertAutoFillTextSuggestion:", v7) || !-[_UIKeyboardStateManager acceptWord:firstDelete:](self, "acceptWord:firstDelete:", v21, [v21 deleteCount]))
        {
          v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v17 = [v16 textInputDelegate];
          v18 = [v7 inputText];
          [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v17 withText:v18];
        }
      }
    }

    self->m_predictionType = 0;
  }
}

- (id)emojiCandidate:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v3 candidate];
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 currentInputMode];
  v8 = [v7 primaryLanguage];
  v9 = [v4 typingNameForEmoji:v5 language:v8];

  v10 = [v3 candidate];
  v11 = [v3 input];
  LODWORD(v6) = [v10 isEqualToString:v11];

  if (v6)
  {
    v12 = MEMORY[0x1E69D95F0];
    v13 = [v3 input];
    [v12 candidateWithCandidate:v9 forInput:v13];
    v3 = v14 = v3;
  }

  else
  {
    v13 = [v3 input];
    if ([v13 _containsEmoji])
    {
      v15 = +[UIKeyboardEmojiPreferences sharedInstance];
      v16 = +[UIKeyboardInputModeController sharedInputModeController];
      v17 = [v16 currentInputMode];
      v18 = [v17 primaryLanguage];
      v19 = [v15 typingNameForEmoji:v13 language:v18];

      v13 = v19;
    }

    v14 = +[UIKeyboardEmojiPreferences sharedInstance];
    v20 = [v3 candidate];
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = [v21 currentInputMode];
    v23 = [v22 primaryLanguage];
    [v14 emojiPredicted:v20 typingName:v13 language:v23];
  }

  return v3;
}

- (void)_acceptSupplementalCandidate:(id)a3 completion:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke;
  v27 = &unk_1E70FDC20;
  v28 = self;
  v8 = v7;
  v29 = v8;
  v9 = _Block_copy(&v24);
  v10 = [v6 ui_supplementalItems];
  v11 = [v6 input];
  v12 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v11];

  v13 = [_UIStringAndPositionPair alloc];
  v14 = [v6 input];
  v15 = [v12 start];
  v16 = [(_UIStringAndPositionPair *)&v13->super.isa initWithString:v14 position:v15];

  v17 = [(_UIKeyboardStateManager *)self pendingSupplementalCandidateToInsert];
  v18 = [(_UIKeyboardStateManager *)self inputDelegate];
  v19 = [(_UIStringAndPositionPair *)v17 isEqualToPair:v16 inputDelegate:v18];

  if (!v19)
  {
    [(_UIKeyboardStateManager *)self setPendingSupplementalCandidateToInsert:v16];
    if ([v10 count] == 1 || (v9[2](v9, v10, v6, v12) & 1) == 0)
    {
      [(_UIKeyboardStateManager *)self setPendingSupplementalCandidateToInsert:0];
      v20 = MEMORY[0x1E696AD98];
      v21 = [v10 objectAtIndexedSubscript:0];
      v22 = [v20 numberWithUnsignedLongLong:{objc_msgSend(v21[1], "identifier")}];
      v30[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      [v6 setSupplementalItemIdentifiers:v23];

      (*(v8 + 2))(v8, v6);
    }
  }
}

- (void)handleInsertSmartCandidate:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 privateInputDelegate];

  if (NSClassFromString(&cfstr_Tuismartaction.isa) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v4;
    v8 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
    v9 = [v7 title];
    v10 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
    [v8 userSelectedPollAction:v9 withInputContextHistory:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v7 options];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54___UIKeyboardStateManager_handleInsertSmartCandidate___block_invoke;
    v17[3] = &unk_1E70FDC48;
    v13 = v11;
    v18 = v13;
    [v12 enumerateObjectsUsingBlock:v17];

    v14 = [UISmartActionPollSuggestion alloc];
    v15 = [v7 title];
    v16 = [(UISmartActionPollSuggestion *)v14 initWithTitle:v15 options:v13];

    if (objc_opt_respondsToSelector())
    {
      [v6 performSelector:sel_insertInputSuggestion_ withObject:v16];
    }
  }
}

- (void)acceptPredictiveInput:(id)a3 appendSeparator:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v8 willAcceptPredictiveInput:v7];

    [(_UIKeyboardStateManager *)self acceptingCandidateWithTrigger:*MEMORY[0x1E69D9720]];
    m_cachedAutofillMode = self->m_cachedAutofillMode;
    if (m_cachedAutofillMode == 2)
    {
      +[_UIKeyboardUsageTracking signupPasswordFromAutofillIncrement];
    }

    else if (m_cachedAutofillMode == 1)
    {
      +[_UIKeyboardUsageTracking loginPasswordFromAutofillIncrement];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_UIKeyboardStateManager *)self insertTextSuggestionCandidate:v7];
LABEL_35:

      return;
    }

    if (([v7 candidateProperty] & 0x80) != 0)
    {
      [(_UIKeyboardStateManager *)self handleInsertSmartCandidate:v7];
      goto LABEL_35;
    }

    if (!_os_feature_enabled_impl() || ([v7 candidateProperty] & 0x10) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 candidateProperty] & 0x10) == 0 || (-[_UIKeyboardStateManager backendController](self, "backendController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) == 0))
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_5;
        aBlock[3] = &unk_1E70FDCE8;
        objc_copyWeak(&v39, &location);
        v40 = a4;
        v17 = _Block_copy(aBlock);
        if ([v7 isSupplementalItemCandidate])
        {
          [(_UIKeyboardStateManager *)self _acceptSupplementalCandidate:v7 completion:v17];
        }

        else
        {
          v18 = [v7 candidate];
          v19 = [v18 _containsEmoji];

          if (v19)
          {
            v20 = [(_UIKeyboardStateManager *)self emojiCandidate:v7];

            v7 = v20;
          }

          v17[2](v17, v7);
        }

        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
        goto LABEL_35;
      }

      [UIKeyboardImpl sendPerformanceNotification:@"UIKeyboardPerformanceSearchCandidatesStartNotification"];
      [(_UIKeyboardStateManager *)self refreshKeyboardState];
      v12 = [(TIKeyboardState *)self->m_keyboardState copy];
      v13 = [MEMORY[0x1E69D9580] tokenForKeyboardState:v12];
      [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:v13];
      objc_initWeak(&location, self);
      if (qword_1ED49D378 != -1)
      {
        dispatch_once(&qword_1ED49D378, &__block_literal_global_1491);
      }

      v14 = [(_UIKeyboardStateManager *)self taskQueue];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_3;
      v41[3] = &unk_1E70FDC98;
      objc_copyWeak(&v45, &location);
      v7 = v7;
      v42 = v7;
      v15 = v12;
      v43 = v15;
      v16 = v13;
      v44 = v16;
      [v14 addTask:v41 breadcrumb:qword_1ED49D370];

      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);

      goto LABEL_34;
    }

    v21 = +[UIKeyboardImpl activeInstance];
    v22 = [v21 textInputTraits];
    v15 = [v22 inputContextHistory];

    if ([_UISmartReplyFeedbackManager candidateIsSmartReply:v7])
    {
      v23 = [v7 label];
      v24 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
      v25 = [v24 threadIdentifier];
      v26 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
      [_UISmartReplyFeedbackManager userSelectedSmartReply:v23 isLongForm:1 withMailOrMsgThreadId:v25 withConversationType:2 withSmartReplyFeedbackManagerInstance:v26];
    }

    v27 = [MEMORY[0x1E696AAE8] mainBundle];
    v28 = [v27 bundleIdentifier];
    if ([v28 isEqualToString:@"com.apple.mobilemail"])
    {
    }

    else
    {
      v29 = +[UIKeyboard isKeyboardProcess];

      if (!v29)
      {
        if (!_os_feature_enabled_impl())
        {
LABEL_32:
          v32 = [MEMORY[0x1E696AAE8] mainBundle];
          v33 = [v32 bundleIdentifier];
          v34 = [(_UIKeyboardStateManager *)self shouldClearConversationContextForClient:v33];

          if (v34)
          {
            [(_UIKeyboardStateManager *)self conversationContext:0 didChange:0];
          }

LABEL_34:

          goto LABEL_35;
        }

        v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v30 = [v35 textInputDelegate];

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_31:

          goto LABEL_32;
        }

        v36 = [UISmartReplySuggestion alloc];
        v37 = [v7 candidate];
        v31 = [(UISmartReplySuggestion *)v36 initWithSmartReply:v37];

        [v30 performSelector:sel_insertInputSuggestion_ withObject:v31];
LABEL_30:

        goto LABEL_31;
      }
    }

    v30 = [v7 candidate];
    v31 = [v15 tiInputContextHistory];
    [(_UIKeyboardStateManager *)self _startSmartReplyWritingToolWithPrompt:0 entryPoint:v30 inputContextHistory:v31];
    goto LABEL_30;
  }
}

- (BOOL)shouldClearConversationContextForClient:(id)a3
{
  v4 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = ![(_UIKeyboardStateManager *)self shouldPreventLongFormSmartRepliesFromStarting];
  }

  else if ([v4 isEqualToString:@"com.apple.mobilemail"])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    LOBYTE(v5) = _os_feature_enabled_impl();
  }

  return v5;
}

- (BOOL)shouldPreventLongFormSmartRepliesFromStarting
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    return 0;
  }

  v3 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v4 = [v3 documentTraits];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:0x1EFB53450];
  v7 = [v6 BOOLValue];

  v8 = v7 ^ 1;
  return v8;
}

- (void)rejectAutocorrection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (qword_1ED49D398 != -1)
    {
      dispatch_once(&qword_1ED49D398, &__block_literal_global_1500);
    }

    v5 = [(_UIKeyboardStateManager *)self taskQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48___UIKeyboardStateManager_rejectAutocorrection___block_invoke_3;
    v6[3] = &unk_1E70FD1B8;
    v6[4] = self;
    v7 = v4;
    [v5 addTask:v6 breadcrumb:qword_1ED49D390];
  }
}

- (BOOL)insertsSpaceAfterPredictiveInput
{
  v2 = [(_UIKeyboardStateManager *)self inputManagerState];
  v3 = [v2 insertsSpaceAfterPredictiveInput];

  return v3;
}

- (void)textAccepted:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 candidateProperty] & 4) != 0)
  {
    v6 = MEMORY[0x1E69D95F0];
    v7 = [v4 candidate];
    v8 = [v4 input];
    v5 = [v6 candidateWithCandidate:v7 forInput:v8 property:{objc_msgSend(v4, "candidateProperty")}];
  }

  else
  {
    v5 = v4;
  }

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 currentInputMode];

  if (qword_1ED49D3A8 != -1)
  {
    dispatch_once(&qword_1ED49D3A8, &__block_literal_global_1504);
  }

  v11 = [(_UIKeyboardStateManager *)self taskQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40___UIKeyboardStateManager_textAccepted___block_invoke_3;
  v15[3] = &unk_1E70FD208;
  v16 = v10;
  v17 = self;
  v18 = v5;
  v12 = qword_1ED49D3A0;
  v13 = v5;
  v14 = v10;
  [v11 addTask:v15 breadcrumb:v12];
}

- (void)textAccepted:(id)a3 executionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIKeyboardStateManager *)self inputManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___UIKeyboardStateManager_textAccepted_executionContext___block_invoke;
  v10[3] = &unk_1E70FD4D0;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [v8 textAccepted:v7 completionHandler:v10];
}

- (BOOL)acceptAutofillExtraCandidateIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 customInfoType];
  if ((v5 & 0x20) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [MEMORY[0x1E69D95D8] keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra];
    }

    else
    {
      v6 = 0;
    }

    if (+[UIKeyboard isKeyboardProcess])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64___UIKeyboardStateManager_acceptAutofillExtraCandidateIfNeeded___block_invoke;
      v12[3] = &unk_1E70FD608;
      v13 = v4;
      [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v12];
    }

    else
    {
      v7 = [v4 input];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = 4;
      }

      else
      {
        v9 = 1;
      }

      UIKeyboardSafariPresentCredentialPickerForType(v9);
      +[_UIKeyboardUsageTracking appAutofillExtraKeyTapped];
    }
  }

  return (v5 >> 5) & 1;
}

- (void)acceptPredictiveInput:(id)a3 appendSeparator:(BOOL)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(_UIKeyboardStateManager *)self acceptAutofillExtraCandidateIfNeeded:v8])
  {
    goto LABEL_5;
  }

  if (([v8 customInfoType] & 0x8000) == 0)
  {
    v10 = [v8 handler];

    if (v10)
    {
      v11 = [v8 handler];
      v11[2]();

LABEL_5:
      [v9 returnExecutionToParent];
      goto LABEL_9;
    }

    if (_os_feature_enabled_impl() && (objc_opt_respondsToSelector() & 1) != 0 && [v8 isHideMyEmailType])
    {
      [(_UIKeyboardStateManager *)self proceedShouldReturnIfNeededForASP];
    }

    if (a4)
    {
      if (-[_UIKeyboardStateManager insertsSpaceAfterPredictiveInput](self, "insertsSpaceAfterPredictiveInput") || ([v8 isContinuousPathConversion] & 1) == 0)
      {
        [(_UIKeyboardStateManager *)self shouldForwardInsertSpaceAfterAcceptingPredictiveInput:v8];
        goto LABEL_22;
      }

      v17 = [v8 shouldAccept];
      v18 = [(_UIKeyboardStateManager *)self shouldForwardInsertSpaceAfterAcceptingPredictiveInput:v8];
      if ((v17 & 1) == 0)
      {
LABEL_22:
        v23 = &unk_1ED473000;
        v24 = +[UIKBAnalyticsDispatcher sharedInstance];
        v25 = [v24 nextCandidateReplacementSource];

        if (v25 == 7)
        {
          if ([v8 isToucanInlineCompletionCandidate])
          {
            goto LABEL_27;
          }

          v26 = 4;
        }

        else
        {
          v26 = 5;
        }

        v27 = +[UIKBAnalyticsDispatcher sharedInstance];
        [v27 setNextCandidateReplacementSource:v26];

LABEL_27:
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v8 wordSeparator], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
        {
          v29 = [v8 wordSeparator];
        }

        else
        {
          v30 = [(_UIKeyboardStateManager *)self inputManagerState];
          v29 = [v30 wordSeparator];
        }

        v31 = [v8 isAutofillCandidate];
        if ([(_UIKeyboardStateManager *)self textInputTraitsNeedContactAutoFill])
        {
          v32 = [(_UIKeyboardStateManager *)self autocorrectionController];
          v33 = [v32 autocorrectionList];
          v34 = [v33 containsProactiveTriggers];
        }

        else
        {
          v34 = 0;
        }

        if ([v8 isSlottedCandidate])
        {
          v35 = [(UITextInputTraits *)self->m_traits textContentType];
          if (v35)
          {
            v36 = [(UITextInputTraits *)self->m_traits textContentType];
            v37 = [v36 isEqualToString:&stru_1EFB14550] ^ 1;
          }

          else
          {
            LOBYTE(v37) = 0;
          }
        }

        else
        {
          LOBYTE(v37) = 0;
        }

        if (v29)
        {
          v38 = [v8 candidate];
          v39 = [v38 hasSuffix:v29];
        }

        else
        {
          v39 = 1;
        }

        v40 = [(_UIKeyboardStateManager *)self inputDelegate];
        if (v40)
        {
          v41 = v40;
          v56 = v29;
          v42 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          [v42 selectedTextRange];
          v43 = v31;
          v45 = v44 = v34;
          v57 = v43;
          v46 = v43 | ~[v45 isEmpty] | v44 | v37 | v39;

          if (v46)
          {

            v29 = &stru_1EFB14550;
            v23 = &unk_1ED473000;
            v31 = v57;
          }

          else
          {
            v23 = &unk_1ED473000;
            v31 = v43;
            v29 = v56;
          }
        }

        v47 = [(_UIKeyboardStateManager *)self inputEventForInputString:v29];
        [v47 setAcceptedCandidate:v8];
        [v47 setSynthesizedByAcceptingCandidate:1];
        if (v31)
        {
          v48 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:0];
          v49 = [(_UIKeyboardStateManager *)self autocorrectionController];
          [v49 setAutocorrectionList:v48];
        }

        else
        {
          v48 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v8 alternateCorrections:0];
          v49 = [MEMORY[0x1E69D9570] listWithCorrections:v48 predictions:0];
          v50 = [(_UIKeyboardStateManager *)self autocorrectionController];
          [v50 setAutocorrectionList:v49];
        }

        [(_UIKeyboardStateManager *)self setPreviousInputString:0];
        self->m_doubleSpacePeriodWasAppliedInCurrentContext = 0;
        v51 = [v8 candidate];
        [(_UIKeyboardStateManager *)self removeSpaceAfterEmojiForInputString:v51];

        v52 = [v8 candidate];
        v53 = [v52 _containsEmojiOnly];

        if (v53)
        {
          [v23 + 3632 emojiInsertedByMethod:@"Touch" inputType:@"PredictionBar"];
        }

        self->m_didAutomaticallyInsertSpace = 0;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke;
        v61[3] = &unk_1E70FD208;
        v61[4] = self;
        v62 = v29;
        v63 = v8;
        v54 = v29;
        v55 = [v9 childWithContinuation:v61];
        [(_UIKeyboardStateManager *)self addInputEvent:v47 executionContext:v55];

        goto LABEL_9;
      }
    }

    else
    {
      v18 = [(_UIKeyboardStateManager *)self shouldForwardInsertSpaceAfterAcceptingPredictiveInput:v8];
    }

    v19 = v18;
    v20 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v20 setNextCandidateReplacementSource:2];

    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke_2;
    v58[3] = &unk_1E70FD0F0;
    v58[4] = self;
    v21 = v8;
    v59 = v21;
    v60 = v19;
    v22 = [v9 childWithContinuation:v58];
    [(_UIKeyboardStateManager *)self acceptAutocorrection:v21 executionContextPassingTIKeyboardCandidate:v22];

    goto LABEL_9;
  }

  v12 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v13 = [v12 _responderForEditing];

  if (objc_opt_respondsToSelector())
  {
    v14 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v15 = [v14 autocorrectionList];

    self->m_skipAcceptAutocorrection = 1;
    [v13 performSelector:sel__showTextFormattingAnimationOptions_ withObject:0];
    self->m_skipAcceptAutocorrection = 0;
    v16 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v16 setAutocorrectionList:v15];
  }

  [v9 returnExecutionToParent];

LABEL_9:
}

- (void)acceptCandidate:(id)a3 forInput:(id)a4
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(_UIKeyboardStateManager *)self committingCandidate])
  {
    v8 = 1;
    [(_UIKeyboardStateManager *)self setCommittingCandidate:1];
    [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
    m_candidateResultSet = self->m_candidateResultSet;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (m_candidateResultSet)
    {
      v11 = [(TIKeyboardCandidateResultSet *)m_candidateResultSet candidates];
      v12 = [v11 indexOfObject:v6];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIKeyboardCandidateList *)self->m_candidateList candidateAcceptedAtIndex:v12];
        v8 = 0;
        v10 = v12;
      }
    }

    if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      if ([(_UIKeyboardStateManager *)self shouldUnderlineCandidate:v6])
      {
        v13 = [(_UIKeyboardStateManager *)self autocorrectionController];
        v14 = [v13 storedListForCandidate:v6];

        v15 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
        [v15 addList:v14 forCandidate:v6];

        v16 = [v6 candidate];
        [UITextChecker setString:v16 isExemptFromChecker:1];
LABEL_8:

        goto LABEL_12;
      }

      if (+[UIKeyboard usesInputSystemUI])
      {
        if (([v6 isAutocorrection] & 1) == 0)
        {
          v17 = [v6 candidate];
          v18 = [v6 input];
          v19 = [v17 isEqualToString:v18];

          if ((v19 & 1) == 0)
          {
            v72 = [v6 input];
            v14 = [(_UIKeyboardStateManager *)self _rangeForAutocorrectionText:v72];

            v73 = [v6 candidate];
            v74 = [v73 length];
            v75 = [v6 input];
            v76 = v74 - [v75 length];

            v16 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
            v77 = [v14 start];
            [v16 adjustRangesAfterPosition:v77 byOffset:v76];

            goto LABEL_8;
          }
        }
      }
    }

LABEL_12:
    if (v6)
    {
      v20 = [(UIKeyboardCandidateList *)self->m_candidateList currentCandidate];
      v21 = [objc_opt_class() type];

      if (v21 != 3)
      {
        v22 = UIKeyboardGetCurrentInputMode();
        v23 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v22);
        v24 = [(UIKeyboardCandidateList *)self->m_candidateList statisticsIdentifier];
        v25 = TIStatisticGetKeyForCandidateAccepted();
        TIStatisticScalarIncrement();

        if (v8)
        {
          v26 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __52___UIKeyboardStateManager_acceptCandidate_forInput___block_invoke;
          v87[3] = &unk_1E70FDD38;
          v88 = v6;
          v10 = [v26 indexOfObjectPassingTest:v87];
        }

        if (self->m_hasEditedMarkedTextInExtendedView)
        {
          v27 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        v28 = TIStatisticGetKeyForCandidateAccepted();
        v29 = [v6 candidate];
        [v29 length];
        TIStatisticDistributionPushValue();

        if ([v6 isExtensionCandidate])
        {
          v30 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isCompletionCandidate])
        {
          v31 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isInlineCompletionCandidate])
        {
          v32 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isForShortcutConversion])
        {
          v33 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isEmojiCandidate])
        {
          v34 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isStickerCandidate])
        {
          v35 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isFacemarkCandidate])
        {
          v36 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isOTAWordListCandidate])
        {
          v37 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isRegionalCandidate])
        {
          v38 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if (([v6 isCompletionCandidate] & 1) == 0 && !v10)
        {
          v39 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isFullwidthCandidate])
        {
          v40 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isPunctuationKeyCandidate])
        {
          v41 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if ([v6 isPunctuationCompletionCandidate])
        {
          v42 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();
        }

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticDistributionPushValue();

          if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIKeyboardCandidateList *)self->m_candidateList rowForCandidateAtIndex:v10]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = TIStatisticGetKeyForCandidateAccepted();
            TIStatisticDistributionPushValue();
          }

          v82 = v7;
          if ((objc_opt_respondsToSelector() & 1) != 0 && [(UIKeyboardCandidateList *)self->m_candidateList viewOffsetForCandidateAtIndex:v10]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = TIStatisticGetKeyForCandidateAccepted();
            TIStatisticDistributionPushValue();
          }

          v78 = v24;
          v79 = v23;
          v80 = v22;
          v81 = v8;
          v46 = [v6 isOTAWordListCandidate];
          v47 = [v6 isRegionalCandidate];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v48 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
          v49 = [v48 countByEnumeratingWithState:&v83 objects:v89 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = 0;
            v52 = *v84;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v84 != v52)
                {
                  objc_enumerationMutation(v48);
                }

                v54 = *(*(&v83 + 1) + 8 * i);
                if (v46)
                {
                  v46 = 1;
                  if (v47)
                  {
                    goto LABEL_59;
                  }
                }

                else
                {
                  v46 = [*(*(&v83 + 1) + 8 * i) isOTAWordListCandidate];
                  if (v47)
                  {
LABEL_59:
                    v47 = 1;
                    goto LABEL_62;
                  }
                }

                v47 = [v54 isRegionalCandidate];
LABEL_62:
                if (v51 == 9)
                {
                  goto LABEL_65;
                }

                ++v51;
              }

              v50 = [v48 countByEnumeratingWithState:&v83 objects:v89 count:16];
            }

            while (v50);
          }

LABEL_65:

          v24 = v78;
          v23 = v79;
          if (v46)
          {
            v55 = TIStatisticGetKeyForCandidateAccepted();
            TIStatisticScalarIncrement();
          }

          v7 = v82;
          v8 = v81;
          v22 = v80;
          if (v47)
          {
            v56 = TIStatisticGetKeyForCandidateAccepted();
            TIStatisticScalarIncrement();
          }
        }
      }

      v57 = [v6 copy];

      self->m_acceptingCandidate = 1;
      if (!v8 || ([v57 candidate], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "length"), v58, v59))
      {
        v60 = [v57 candidate];
        [(_UIKeyboardStateManager *)self setPreviousInputString:v60];
      }

      if ([_UISmartReplyFeedbackManager candidateIsSmartReply:v57])
      {
        v61 = [v57 label];
        v62 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
        v63 = [v62 threadIdentifier];
        v64 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
        [_UISmartReplyFeedbackManager userSelectedSmartReply:v61 isLongForm:0 withMailOrMsgThreadId:v63 withConversationType:1 withSmartReplyFeedbackManagerInstance:v64];
      }

      v65 = [(_UIKeyboardStateManager *)self inputManagerState];
      if ([v65 commitsAcceptedCandidate])
      {

LABEL_79:
        WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
        [WeakRetained setSuppressUpdateCandidateView:1];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_UIKeyboardStateManager *)self insertTextSuggestionCandidate:v57];
        }

        else if (([v57 candidateProperty] & 0x80) != 0)
        {
          [(_UIKeyboardStateManager *)self handleInsertSmartCandidate:v57];
        }

        else
        {
          -[_UIKeyboardStateManager acceptWord:firstDelete:forInput:](self, "acceptWord:firstDelete:forInput:", v57, [v57 deleteCount], v7);
        }

        v69 = objc_loadWeakRetained(&self->_presentationDelegate);
        [v69 setSuppressUpdateCandidateView:0];

        v70 = [v57 candidate];
        [UIKBAnalyticsDispatcher didCommitText:v70];

LABEL_88:
        if ([(UIKeyboardCandidateList *)self->m_candidateList isFloatingList]&& ([(UIKeyboardCandidateList *)self->m_candidateList isExtendedList]& 1) != 0)
        {
          v71 = 0;
        }

        else if (([(UIKeyboardCandidateList *)self->m_candidateList isFloatingList]& 1) != 0)
        {
          v71 = 1;
        }

        else
        {
          v71 = [(UIKeyboardCandidateList *)self->m_candidateList isExtendedList]^ 1;
        }

        [(_UIKeyboardStateManager *)self clearInputWithCandidatesCleared:v71];
        goto LABEL_95;
      }

      v66 = objc_loadWeakRetained(&self->_presentationDelegate);
      v67 = [v66 keyboardLayoutIsInAnotherProcess];

      if (v67)
      {
        goto LABEL_79;
      }

      if (([v57 candidateProperty] & 0x80) != 0)
      {
        [(_UIKeyboardStateManager *)self handleInsertSmartCandidate:v57];
      }

      else
      {
        [(TIKeyboardState *)self->m_keyboardState setUserSelectedCurrentCandidate:0];
        self->m_doubleSpacePeriodWasAppliedInCurrentContext = 0;
        if ([objc_opt_class() type] != 3)
        {
          [(_UIKeyboardStateManager *)self handleDeletionForCandidate:v57];
          goto LABEL_88;
        }
      }
    }

    else
    {
      v57 = 0;
    }

LABEL_95:
    [(_UIKeyboardStateManager *)self setCommittingCandidate:0];
    v6 = v57;
  }
}

- (void)handleDeletionForCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 deleteCount];
  v6 = [v4 candidate];

  if (v5)
  {
    v7 = [(_UIKeyboardStateManager *)self inputDelegate];

    if (v7)
    {
      v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v9 = [v8 callShouldReplaceExtendedRange:v5 withText:v6 includeMarkedText:{-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText")}];

      if (v9)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __54___UIKeyboardStateManager_handleDeletionForCandidate___block_invoke;
        v10[3] = &__block_descriptor_40_e26_v16__0__TIKeyboardOutput_8l;
        v10[4] = v5;
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v10];
        [(_UIKeyboardStateManager *)self deleteBackwardAndNotifyAtEnd:0 deletionCount:v5 reinsertTextInLoop:0];
        [(_UIKeyboardStateManager *)self setChangedDelegate];
      }
    }
  }
}

- (void)acceptHandwritingCandidate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  v5 = [v4 isHandwritingPlane];

  if (v5)
  {
    v6 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
  }
}

- (id)acceptCurrentCandidateForInput:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardCandidateList *)self->m_candidateList currentCandidate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet defaultCandidate];
  }

  v8 = v7;

  if (_os_feature_enabled_impl() && ([v8 candidateProperty] & 0x10) != 0)
  {
    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [v12 textInputTraits];
    v10 = [v13 inputContextHistory];

    if ([_UISmartReplyFeedbackManager candidateIsSmartReply:v8])
    {
      v14 = [v8 label];
      v15 = [(TIKeyboardState *)self->m_keyboardState inputContextHistory];
      v16 = [v15 threadIdentifier];
      v17 = [(_UIKeyboardStateManager *)self smartReplyFeedbackManager];
      [_UISmartReplyFeedbackManager userSelectedSmartReply:v14 isLongForm:1 withMailOrMsgThreadId:v16 withConversationType:2 withSmartReplyFeedbackManagerInstance:v17];
    }

    v18 = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [v18 bundleIdentifier];
    if ([v19 isEqualToString:@"com.apple.mobilemail"])
    {
    }

    else
    {
      v20 = +[UIKeyboard isKeyboardProcess];

      if (!v20)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_20;
        }

        v25 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v21 = [v25 privateInputDelegate];

        if (objc_opt_respondsToSelector())
        {
          v26 = [UISmartReplySuggestion alloc];
          v27 = [v8 candidate];
          v28 = [(UISmartReplySuggestion *)v26 initWithSmartReply:v27];

          [v21 performSelector:sel_insertInputSuggestion_ withObject:v28];
        }

        [(_UIKeyboardStateManager *)self conversationContext:0 didChange:0];
LABEL_19:

LABEL_20:
        v23 = v8;
        goto LABEL_21;
      }
    }

    v21 = [v8 candidate];
    v22 = [v10 tiInputContextHistory];
    [(_UIKeyboardStateManager *)self _startSmartReplyWritingToolWithPrompt:0 entryPoint:v21 inputContextHistory:v22];

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UIKeyboardStateManager *)self insertTextSuggestionCandidate:v8];
    v9 = v8;
    goto LABEL_22;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UIKeyboardStateManager_acceptCurrentCandidateForInput___block_invoke;
  aBlock[3] = &unk_1E70FDD80;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  if (![v8 isSupplementalItemCandidate])
  {
    if (([v8 customInfoType] & 0x20) != 0)
    {
      [(_UIKeyboardStateManager *)self acceptAutofillExtraCandidateIfNeeded:v8];
    }

    (v10)[2](v10, v8, v4);
    goto LABEL_20;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58___UIKeyboardStateManager_acceptCurrentCandidateForInput___block_invoke_5;
  v29[3] = &unk_1E70FDDA8;
  v31 = v10;
  v30 = v4;
  [(_UIKeyboardStateManager *)self _acceptSupplementalCandidate:v8 completion:v29];
  v11 = v8;

LABEL_21:
LABEL_22:

  return v8;
}

- (id)acceptInlineCandidateForInput:(id)a3 withSpace:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet defaultCandidate];
  v8 = v7;
  if (v4 && v7)
  {
    v9 = [v7 candidate];
    v10 = [v9 stringByAppendingString:@" "];

    v11 = [v8 candidateByReplacingWithCandidate:v10];

    v8 = v11;
  }

  if (qword_1ED49D3D8 != -1)
  {
    dispatch_once(&qword_1ED49D3D8, &__block_literal_global_1536);
  }

  v12 = [(_UIKeyboardStateManager *)self taskQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67___UIKeyboardStateManager_acceptInlineCandidateForInput_withSpace___block_invoke_3;
  v17[3] = &unk_1E70FD208;
  v17[4] = self;
  v13 = v8;
  v18 = v13;
  v19 = v6;
  v14 = qword_1ED49D3D0;
  v15 = v6;
  [v12 performSingleTask:v17 breadcrumb:v14];

  return v13;
}

- (void)acceptCandidate:(id)a3 forInput:(id)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(_UIKeyboardStateManager *)self acceptCandidate:v8 forInput:a4];
  [(_UIKeyboardStateManager *)self flushKeyboardOutputOnInputSourceSession];
  if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists])
  {
    [v9 returnExecutionToParent];
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __69___UIKeyboardStateManager_acceptCandidate_forInput_executionContext___block_invoke;
    v15 = &unk_1E70FD1B8;
    v16 = self;
    v10 = v8;
    v17 = v10;
    v11 = [v9 childWithContinuation:&v12];

    [(_UIKeyboardStateManager *)self handleAcceptedCandidate:v10 executionContext:v11, v12, v13, v14, v15, v16];
  }
}

- (void)acceptFirstCandidate
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DFB0] null];

        if (v8 != v9)
        {
          if ([v8 isSupplementalItemCandidate])
          {
            v10 = 0;
          }

          else
          {
            v10 = v8;
          }

          if ([v8 supplementalItemPrefix])
          {
            v11 = [v8 supplementalItemIdentifiers];
            v12 = [v11 count];

            if (v12 == 1)
            {
              v13 = v8;

              v10 = v13;
            }
          }

          if (-[_UIKeyboardStateManager liveConversionEnabled](self, "liveConversionEnabled") && ([v8 isInlineCandidate] & 1) == 0)
          {
          }

          else if (v10)
          {

            goto LABEL_21;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v10 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet defaultCandidate];
  if (v10)
  {
LABEL_21:
    if (qword_1ED49D3E8 != -1)
    {
      dispatch_once(&qword_1ED49D3E8, &__block_literal_global_1540);
    }

    v14 = [(_UIKeyboardStateManager *)self taskQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47___UIKeyboardStateManager_acceptFirstCandidate__block_invoke_3;
    v17[3] = &unk_1E70FD1B8;
    v17[4] = self;
    v18 = v10;
    v15 = qword_1ED49D3E0;
    v16 = v10;
    [v14 performTask:v17 breadcrumb:v15];
  }
}

- (void)acceptCurrentCandidateIfSelected
{
  if ([(_UIKeyboardStateManager *)self userSelectedCurrentCandidate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v4 = [WeakRetained geometryIsChanging];

    if ((v4 & 1) == 0)
    {
      if (qword_1ED49D3F8 != -1)
      {
        dispatch_once(&qword_1ED49D3F8, &__block_literal_global_1544);
      }

      v5 = [(_UIKeyboardStateManager *)self taskQueue];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __59___UIKeyboardStateManager_acceptCurrentCandidateIfSelected__block_invoke_3;
      v6[3] = &unk_1E70FD058;
      v6[4] = self;
      [v5 performSingleTask:v6 breadcrumb:qword_1ED49D3F0];
    }
  }
}

- (void)acceptCurrentCandidateIfSelectedWithExecutionContext:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardStateManager *)self userSelectedCurrentCandidate])
  {
    v5 = [(UIKeyboardCandidateList *)self->m_candidateList currentCandidate];
    [(_UIKeyboardStateManager *)self acceptCandidate:v5];
    [(_UIKeyboardStateManager *)self flushKeyboardOutputOnInputSourceSession];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __80___UIKeyboardStateManager_acceptCurrentCandidateIfSelectedWithExecutionContext___block_invoke;
    v11 = &unk_1E70FD1B8;
    v12 = self;
    v13 = v5;
    v6 = v5;
    v7 = [v4 childWithContinuation:&v8];
    [(_UIKeyboardStateManager *)self handleAcceptedCandidate:v6 executionContext:v7, v8, v9, v10, v11, v12];
  }

  else
  {
    [v4 returnExecutionToParent];
  }
}

- (void)completeAcceptCandidate:(id)a3
{
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  v6 = [v5 inputCount];

  if (v6)
  {
    [(_UIKeyboardStateManager *)self completeAddInputString:0];
    if (!a3)
    {
      return;
    }
  }

  else if (!self->m_shouldSkipCandidateGeneration && (v7 = [(_UIKeyboardStateManager *)self suppliesCompletions], a3) && v7)
  {
    [(_UIKeyboardStateManager *)self generateCandidatesWithOptions:2];
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
    [(_UIKeyboardStateManager *)self updateReturnKey];
  }

  else
  {
    [(_UIKeyboardStateManager *)self updateReturnKey];
    if (!a3)
    {
      return;
    }
  }

  [(_UIKeyboardStateManager *)self _postInputResponderCapabilitiesChangedNotificationWithOutput:0 selectionChanged:0];
}

- (void)candidateListAcceptCandidate:(id)a3
{
  v4 = *MEMORY[0x1E69D9720];
  v5 = a3;
  [(_UIKeyboardStateManager *)self acceptingCandidateWithTrigger:v4];
  +[UIKBAnalyticsDispatcher didCandidateBarAction];
  v6 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v6 setNextCommitTextSource:2];

  m_candidateList = self->m_candidateList;
  if (m_candidateList == v5)
  {
    v8 = [(UIKeyboardCandidateList *)m_candidateList currentCandidate];
    v9 = [objc_opt_class() type];

    if (v9 != 3)
    {
      [(_UIKeyboardStateManager *)self trackUsageForCandidateAcceptedAction:*MEMORY[0x1E69D99F0]];
    }

    if ([(_UIKeyboardStateManager *)self usesCandidateSelection]&& ![(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
    {
      v11 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
    }

    else
    {
      if (qword_1ED49D408 != -1)
      {
        dispatch_once(&qword_1ED49D408, &__block_literal_global_1548);
      }

      v10 = [(_UIKeyboardStateManager *)self taskQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56___UIKeyboardStateManager_candidateListAcceptCandidate___block_invoke_3;
      v12[3] = &unk_1E70FD058;
      v12[4] = self;
      [v10 performTask:v12 breadcrumb:qword_1ED49D400];
    }
  }
}

- (void)candidateListSelectionDidChange:(id)a3
{
  v12 = a3;
  v4 = [(UIKeyboardCandidateList *)v12 currentIndex];
  if (v4 != [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet initialSelectedIndex])
  {
    v5 = [(UIKeyboardCandidateList *)v12 currentCandidate];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIKeyboardCandidateList *)v12 currentCandidate];
      v8 = [objc_opt_class() type];

      if (v8 != 3)
      {
        [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:1];
      }
    }
  }

  if (![(_UIKeyboardStateManager *)self committingCandidate]&& self->m_candidateList == v12 && ![(_UIKeyboardStateManager *)self usesAutocorrectionLists])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [WeakRetained layout];
    v11 = [v10 hasActiveContinuousPathInput];

    if ((v11 & 1) == 0)
    {
      [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
      [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
    }
  }
}

- (void)clearInputWithCandidatesCleared:(BOOL)a3
{
  v3 = a3;
  [(_UIKeyboardStateManager *)self clearInputForMarkedText];
  if (v3)
  {
    if (!self->m_disableClearingTextSuggestions)
    {
      if (self->m_textInputUpdatingSelection)
      {
        v5 = ![(_UIKeyboardStateManager *)self noContent];
      }

      else
      {
        LOBYTE(v5) = 1;
      }

      if ((v5 & self->m_shouldClearTextSuggestions) != 0)
      {
        v14 = [(_UIKeyboardStateManager *)self autocorrectionController];
        [v14 clearAutofillAndTextSuggestions];
      }
    }

    if ([(_UIKeyboardStateManager *)self noContent])
    {
      [(_UIKeyboardStateManager *)self removeTextChoiceUnderlines];
      [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
    }

    [(_UIKeyboardStateManager *)self setAutocorrection:0];
    [(_UIKeyboardStateManager *)self setCandidates:0];
    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
    if (self->_isSettingExtensionInputMode)
    {
      self->_needsUpdateAssistantView = 1;
    }

    else
    {
      [(_UIKeyboardStateManager *)self updateAssistantView];
    }

    [(_UISmartReplyFeedbackManager *)self->_smartReplyFeedbackManager resetOnKeyboardCandidatesCleared];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v7 = [WeakRetained candidateController];
    [v7 clearCurrentCandidate];

    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 selectedTextRange];

    if (v9)
    {
      v10 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v12 = [v11 selectedTextRange];
      v13 = [v12 start];
      [v10 clearUnderlinesIfNeededBeforePosition:v13];
    }
  }

  v15 = objc_loadWeakRetained(&self->_presentationDelegate);
  v16 = [v15 layout];
  [v16 didClearInput];

  if (!self->m_hasInputOnAcceptCandidate)
  {
    v18 = objc_loadWeakRetained(&self->_presentationDelegate);
    v17 = [v18 layout];
    [v17 restoreDefaultsForAllKeys];
  }
}

- (void)removeRecentInput:(id)a3 completionHandler:(id)a4
{
  v16 = a4;
  v6 = MEMORY[0x1E69D9690];
  m_keyboardState = self->m_keyboardState;
  v8 = a3;
  v9 = [(TIKeyboardState *)m_keyboardState textInputTraits];
  v10 = [v9 recentInputIdentifier];
  [v6 removeInput:v8 forSystemIdentifier:v10];

  v11 = MEMORY[0x1E69D9690];
  v12 = [(TIKeyboardState *)self->m_keyboardState textInputTraits];
  v13 = [v12 recentInputIdentifier];
  v14 = [v11 recentInputForIdentifier:v13];

  v15 = [UILexicon _lexiconWithTILexicon:v14];
  if (v16)
  {
    v16[2](v16, v15);
  }
}

- (void)acceptRecentInput:(id)a3
{
  v4 = a3;
  if (qword_1ED49D418 != -1)
  {
    dispatch_once(&qword_1ED49D418, &__block_literal_global_1554);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45___UIKeyboardStateManager_acceptRecentInput___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED49D410;
  v7 = v4;
  [v5 performTask:v8 breadcrumb:v6];
}

- (void)addInputObject:(id)a3
{
  v5 = a3;
  v6 = [(_UIKeyboardStateManager *)self taskQueue];
  v7 = [v6 isMainThreadExecutingTask];

  if (v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIKeyboardStateManager.m" lineNumber:15317 description:{@"Received %s while performing another keyboard action.", "-[_UIKeyboardStateManager addInputObject:]"}];
  }

  if (qword_1ED49D428 != -1)
  {
    dispatch_once(&qword_1ED49D428, &__block_literal_global_1558);
  }

  v8 = [(_UIKeyboardStateManager *)self taskQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42___UIKeyboardStateManager_addInputObject___block_invoke_3;
  v12[3] = &unk_1E70FD1B8;
  v12[4] = self;
  v13 = v5;
  v9 = qword_1ED49D420;
  v10 = v5;
  [v8 addTask:v12 breadcrumb:v9];
}

- (void)addInputObject:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
  {
    [(TIKeyboardState *)self->m_keyboardState setHardwareKeyboardMode:0];
    [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
    [(_UIKeyboardStateManager *)self removeCandidateList];
    if (qword_1ED49D438 != -1)
    {
      dispatch_once(&qword_1ED49D438, &__block_literal_global_1562);
    }

    v8 = [(_UIKeyboardStateManager *)self taskQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59___UIKeyboardStateManager_addInputObject_executionContext___block_invoke_3;
    v16[3] = &unk_1E70FD058;
    v16[4] = self;
    [v8 addTask:v16 breadcrumb:qword_1ED49D430];
  }

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 currentInputMode];
  [v9 updateLastUsedInputMode:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___UIKeyboardStateManager_addInputObject_executionContext___block_invoke_4;
  v14[3] = &unk_1E70FD1B8;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  v13 = [v7 childWithContinuation:v14];

  [(_UIKeyboardStateManager *)self acceptCurrentCandidateIfSelectedWithExecutionContext:v13];
}

- (void)completeAcceptCandidateBeforeAddingInputObject:(id)a3 executionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
  [(_UIKeyboardStateManager *)self setPreviousInputString:&stru_1EFB14550];
  self->m_acceptingCandidate = 0;
  [(_UIKeyboardStateManager *)self clearTransientState];
  v8 = objc_alloc_init(MEMORY[0x1E69D95F8]);
  [v8 setObject:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91___UIKeyboardStateManager_completeAcceptCandidateBeforeAddingInputObject_executionContext___block_invoke;
  v10[3] = &unk_1E70FD058;
  v10[4] = self;
  v9 = [v6 childWithContinuation:v10];

  [(_UIKeyboardStateManager *)self handleKeyboardInput:v8 executionContext:v9];
}

- (void)clearDelegate
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = [v3 inputDelegate];

  if (v4 == self)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v5 setInputDelegate:0];
  }

  v6 = [(_UIKeyboardStateManager *)self asyncInputDelegate];

  if (v6)
  {
    v7 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
    v8 = [v7 asyncSystemInputDelegate];

    if (v8 == self)
    {
      v9 = [(_UIKeyboardStateManager *)self asyncInputDelegate];
      [v9 setAsyncSystemInputDelegate:0];
    }
  }

  v10 = [(_UIKeyboardStateManager *)self webInputDelegate];

  if (v10)
  {
    v11 = [(_UIKeyboardStateManager *)self webInputDelegate];
    v12 = [v11 asyncInputDelegate];

    if (v12 == self)
    {
      v13 = [(_UIKeyboardStateManager *)self webInputDelegate];
      [v13 setAsyncInputDelegate:0];
    }
  }

  v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v14 clearDelegate];
}

- (void)clearRemoteTextInputPartner
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    [(UIKBRTIPartner *)self->_remoteTextInputPartner invalidate];
    [(UIKBRTIPartner *)self->_remoteTextInputPartner setPartnerDelegate:0];
    remoteTextInputPartner = self->_remoteTextInputPartner;
    self->_remoteTextInputPartner = 0;
  }
}

- (void)deferReplaceTextActionToSystem:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIKeyboardStateManager.m" lineNumber:15425 description:@"Expected argument to be of class UITextReplacement"];
  }

  [(_UIKeyboardStateManager *)self replaceText:v6];
}

- (void)replaceText:(id)a3
{
  v40 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 hasAsyncCapableInputDelegate];

  v6 = [(_UIKeyboardStateManager *)self inputDelegate];
  v7 = v6;
  if (!v6 || v5)
  {
  }

  else
  {
    v8 = [v40 originalText];
    v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v10 = [v40 range];
    v11 = [v9 textInRange:v10];
    v12 = [v8 isEqual:v11];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  v13 = [(_UIKeyboardStateManager *)self inputDelegate];
  [(_UIKeyboardStateManager *)self textWillChange:v13];

  v14 = [v40 range];
  v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v15 setSelectedTextRange:v14];

  [UITextChecker noteTextReplacement:v40];
  v16 = [v40 replacementText];
  if (!+[UIDictationController supportsSiriDictationVoiceCommandsAdjacentEdits](UIDictationController, "supportsSiriDictationVoiceCommandsAdjacentEdits") && [v40 isDictationCommandReplacement] && -[_UIKeyboardStateManager isSelectionAtSentenceAutoshiftBoundary:](self, "isSelectionAtSentenceAutoshiftBoundary:", 0))
  {
    v17 = [UIDictationUtilities capitalizeFirstWord:v16];

    v16 = v17;
  }

  v18 = MEMORY[0x1E69D95F0];
  v19 = [v40 originalText];
  v20 = [v18 candidateWithCandidate:v16 forInput:v19];

  v21 = [v20 candidate];
  v22 = [v21 _containsEmojiOnly];

  if (v22)
  {
    v23 = [(_UIKeyboardStateManager *)self emojiCandidate:v20];

    v20 = v23;
  }

  v24 = 1;
  self->m_replacingWord = 1;
  [(_UIKeyboardStateManager *)self acceptWord:v20 firstDelete:0];
  [(_UIKeyboardStateManager *)self flushKeyboardOutputOnInputSourceSession];
  self->m_replacingWord = 0;
  self->m_suppressingDocumentAssertions = 1;
  v25 = [(_UIKeyboardStateManager *)self inputDelegate];
  [(_UIKeyboardStateManager *)self textDidChange:v25];

  self->m_suppressingDocumentAssertions = 0;
  v26 = [v16 lowercaseString];
  v27 = [v40 originalText];
  v28 = [v27 lowercaseString];
  v29 = [v26 isEqualToString:v28];

  if ((v29 & 1) == 0)
  {
    v30 = [v40 replacementText];
    v31 = latinRatio(v30);

    v32 = [v40 originalText];
    v33 = latinRatio(v32);

    if (v31 <= v33)
    {
      if (v33 <= v31)
      {
        v24 = 0;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = 2;
    }
  }

  v34 = +[UIKBAnalyticsDispatcher sharedInstance];
  v35 = [v34 nextCandidateReplacementSource];

  if (v35 == 8)
  {
    v36 = [v40 originalText];
    [UIKBAnalyticsDispatcher didCandidateReplacementWithRemovedText:v36 insertedText:v16];
    goto LABEL_22;
  }

  if (!v35)
  {
    v36 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v37 = [v36 _textInputSessionAnalytics];
    [v37 didReplaceWithCandidate:v24];

LABEL_22:
  }

  if ([v40 usageTrackingMask])
  {
    v38 = UIKeyboardGetCurrentInputMode();
    v39 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v38);

    [v40 usageTrackingMask];
    TIStatisticScalarIncrementAutocorrectionKey();
  }

LABEL_26:
}

- (void)scheduleReplacementsWithOptions:(unint64_t)a3
{
  v5 = [(_UIKeyboardStateManager *)self inputDelegate];
  v11 = [v5 interactionAssistant];

  v6 = v11;
  if (v11)
  {
    [v11 scheduleReplacementsWithOptions:a3];
  }

  else
  {
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
    v8 = [(_UIKeyboardStateManager *)self inputDelegate];
    v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v10 = [v9 selectedTextRange];
    [v7 showAutocorrectReplacementChoicesIfNeeded:v8 forRange:v10];
  }

  v6 = v11;
LABEL_6:
}

- (BOOL)acceptWord:(id)a3 firstDelete:(unint64_t)a4 forInput:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = [v9 candidate];
  v11 = [v10 length];
  v12 = [v9 input];
  v13 = [(_UIKeyboardStateManager *)self inputManagerState];
  v14 = [v13 inputString];

  if (!v12)
  {
    v12 = v14;
  }

  LODWORD(v15) = [v12 length];
  v16 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v17 = [v16 forwardingInputDelegate];

  if (!v10)
  {
    goto LABEL_57;
  }

  v55 = v14;
  v18 = v8;
  if (+[UIKeyboard usesInputSystemUI]&& [(_UIKeyboardStateManager *)self isRTIClient])
  {
    v19 = ![(_UIKeyboardStateManager *)self performingRemoteTextOperations];
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
    LOBYTE(v19) = [v20 count] == 0;

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (!(v19 & 1 | ![(_UIKeyboardStateManager *)self usesCandidateSelection]))
  {
    v27 = [(_UIKeyboardStateManager *)self inputDelegate];

    if (!v27 || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 callShouldReplaceExtendedRange:a4 withText:v10 includeMarkedText:{-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText")}], v28, v29))
    {
      v8 = v18;
      if (!v17)
      {
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __59___UIKeyboardStateManager_acceptWord_firstDelete_forInput___block_invoke;
        v60[3] = &unk_1E70FDDD0;
        v61 = v9;
        v62 = v10;
        [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v60 shouldFlush:0];
      }

      v30 = a4;
      if (a4 > v15)
      {
        if (v15)
        {
          self->m_textInputChangesIgnored = 1;
          v31 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          [v31 unmarkText];

          self->m_textInputChangesIgnored = 0;
          v30 = a4 - v15;
          v8 = v18;
        }

        [(_UIKeyboardStateManager *)self deleteBackwardAndNotifyAtEnd:0 deletionCount:v30 reinsertTextInLoop:0];
      }

      self->m_textInputChangesIgnored = 1;
      v32 = [v9 isSupplementalItemCandidate];
      if (v32)
      {
        [(_UIKeyboardStateManager *)self _willReplaceText:v10 withSupplementalCandidate:v9];
      }

      if (self->m_replacingWord || ([v12 isEqualToString:@" "] & 1) == 0 && (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || !_AXSExtendedKeyboardPredictionsEnabled()))
      {
        v33 = [(_UIKeyboardStateManager *)self documentState];
        v34 = [v33 documentStateAfterSettingMarkedText:v10 selectedRange:{objc_msgSend(v10, "length"), 0}];
        [(_UIKeyboardStateManager *)self setDocumentState:v34];

        v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v35 _setMarkedText:v10 selectedRange:{objc_msgSend(v10, "length"), 0}];

        v36 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v36 unmarkText];
      }

      else
      {
        [(_UIKeyboardStateManager *)self applyAutocorrection:v9];
      }

      if (!+[UIKeyboard isKeyboardProcess]&& ((v32 ^ 1) & 1) == 0)
      {
        [(_UIKeyboardStateManager *)self _didReplaceText:v10 withSupplementalCandidate:v9];
        [(_UIKeyboardStateManager *)self _insertSupplementalCandidate:v9 overridingCandidateText:v10];
      }

      self->m_textInputChangesIgnored = 0;
      [(_UIKeyboardStateManager *)self removeAutocorrectPromptAndCandidateList];
      goto LABEL_50;
    }

LABEL_33:
    v37 = 0;
    v8 = v18;
    goto LABEL_51;
  }

LABEL_10:
  if (v15 && ([v10 isEqualToString:v12] & 1) != 0)
  {
    goto LABEL_33;
  }

  v21 = [(_UIKeyboardStateManager *)self inputDelegate];

  v8 = v18;
  if (v21)
  {
    v22 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v23 = [v22 selectedTextRange];
    v15 = [v23 isEmpty] ? v15 : 0;

    v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v25 = [v24 callShouldReplaceExtendedRange:v15 withText:v10 includeMarkedText:0];

    if (!v25)
    {
      v37 = 0;
      goto LABEL_51;
    }
  }

  if (!v17)
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __59___UIKeyboardStateManager_acceptWord_firstDelete_forInput___block_invoke_2;
    v57[3] = &unk_1E70FDDD0;
    v58 = v9;
    v59 = v10;
    [(_UIKeyboardStateManager *)self performKeyboardOutputOnInputSourceSession:v57 shouldFlush:0];
  }

  if (self->m_replacingWord)
  {
    v26 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v26 replaceRange:0 oldText:0 withText:v10 forReplaceAction:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v26 = [WeakRetained autocorrectPrompt];

    if (v26)
    {
      [v26 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
    }

    else
    {
      v40 = *MEMORY[0x1E695F050];
      v42 = *(MEMORY[0x1E695F050] + 8);
      v44 = *(MEMORY[0x1E695F050] + 16);
      v46 = *(MEMORY[0x1E695F050] + 24);
    }

    [(_UIKeyboardStateManager *)self applyAutocorrection:v9];
    [(_UIKeyboardStateManager *)self underlineCandidate:v9];
    v47 = [v9 candidate];
    [(_UIKeyboardStateManager *)self animateAutocorrectionToText:v47 fromRect:v40, v42, v44, v46];

    [(_UIKeyboardStateManager *)self setAutocorrection:0];
  }

  if ([(_UIKeyboardStateManager *)self isAutoFillMode])
  {
    v48 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v49 = [v48 keyInputDelegate];
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      v51 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v52 = [v51 keyInputDelegate];
      [v52 acceptedAutoFillWord:v10];
    }
  }

LABEL_50:
  v37 = 1;
LABEL_51:
  v14 = v55;
  if (![(UITextInputTraits *)self->m_traits isSecureTextEntry])
  {
    if (!v8)
    {
      [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
      [(_UIKeyboardStateManager *)self textAccepted:v9];
      if (v37)
      {
        goto LABEL_55;
      }

LABEL_57:
      v53 = 0;
      goto LABEL_58;
    }

    [v8 setAcceptedCandidate:v9];
  }

  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_55:
  [(_UIKeyboardStateManager *)self setChangedDelegate];
  v53 = 1;
LABEL_58:

  return v53;
}

- (void)processPayloadInfo:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46___UIKeyboardStateManager_processPayloadInfo___block_invoke;
  v10 = &unk_1E70F35B8;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  if (pthread_main_np() == 1)
  {
    v6[2](v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  [_UIKeyboardUsageTracking appAutofillCredentialFromSafariUI:v7];
}

- (void)pushAutocorrections:(id)a3 requestToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1ED49D448 != -1)
  {
    dispatch_once(&qword_1ED49D448, &__block_literal_global_1570);
  }

  v8 = [(_UIKeyboardStateManager *)self taskQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke_3;
  v12[3] = &unk_1E70FD208;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = qword_1ED49D440;
  v10 = v6;
  v11 = v7;
  [v8 addTask:v12 breadcrumb:v9];
}

- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1ED49D458 != -1)
  {
    dispatch_once(&qword_1ED49D458, &__block_literal_global_1584);
  }

  v8 = [(_UIKeyboardStateManager *)self taskQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___UIKeyboardStateManager_pushCandidateResultSet_requestToken___block_invoke_3;
  v12[3] = &unk_1E70FD208;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = qword_1ED49D450;
  v10 = v6;
  v11 = v7;
  [v8 addDeferredTask:v12 breadcrumb:v9];
}

- (void)setCandidateList:(id)a3
{
  v5 = a3;
  m_candidateList = self->m_candidateList;
  if (m_candidateList != v5)
  {
    v11 = v5;
    if (([(UIKeyboardCandidateList *)m_candidateList isExtendedList]& 1) != 0 || ![(UIKeyboardCandidateList *)v11 isExtendedList])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasMetadata]^ 1;
    }

    v8 = self->m_candidateList;
    objc_storeStrong(&self->m_candidateList, a3);
    [(UIKeyboardCandidateList *)self->m_candidateList setUIKeyboardCandidateListDelegate:self];
    [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:0];
    if (v7)
    {
      v9 = [(UIKeyboardCandidateList *)v8 currentCandidate];
      [(_UIKeyboardStateManager *)self generateCandidatesAsynchronouslyWithRange:0 selectedCandidate:0x7FFFFFFFLL, v9];

      [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
    }

    else
    {
      if (![(_UIKeyboardStateManager *)self committingCandidate])
      {
        [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
      }

      [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
      v10 = [(UIKeyboardCandidateList *)v8 currentCandidate];
      [(_UIKeyboardStateManager *)self updateCandidateDisplay];
      [(UIKeyboardCandidateList *)self->m_candidateList showCandidate:v10];
    }

    v5 = v11;
  }
}

- (void)_conditionallyNotifyPredictionsAreAvailableForCandidates:(id)a3 containingProactiveTriggers:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 isResponseKitCandidate])
      {
        v13 = [v12 responseKitCategory];
        v14 = [&unk_1EFE2B5D8 containsObject:v13];

        v9 = 1;
        if (!v14)
        {
          break;
        }
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v9 = v4 & ~v9;
        break;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v15 = [(_UIKeyboardStateManager *)self predictionFromPreference];
  if (v15)
  {
    v15 = [(_UIKeyboardStateManager *)self continuousPathUnderway];
  }

  if (v15 | v9)
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"UIKeyboardPredictionsAvailable" object:0];
  }
}

- (void)setCandidateDisplayIsExtended:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained candidateController];
  [v4 setIsExtended:v3];
}

- (void)updateCandidateDisplayAsyncWithCandidateSet:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 candidates];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v5 = v69 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        if ([v10 slotID] || (objc_msgSend(v10, "isResponseKitCandidate") & 1) != 0)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
      v11 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_13:

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v13 = objc_opt_class();
  v72 = @"UIKeyboardPerformanceSearchFoundProactiveResults";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v73 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  [v13 sendPerformanceNotification:@"UIKeyboardPerformanceSearchCandidatesEndNotification" userInfo:v15];

  v16 = [v4 committedText];

  if (v16)
  {
    v17 = [(_UIKeyboardStateManager *)self inputDelegate];

    if (v17 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v18 = objc_claimAutoreleasedReturnValue(), [v4 committedText], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "callShouldReplaceExtendedRange:withText:includeMarkedText:", 0, v19, -[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText")), v19, v18, !v20))
    {
      [(_UIKeyboardStateManager *)self unmarkText:&stru_1EFB14550];
    }

    else
    {
      v21 = [v4 committedText];
      [(_UIKeyboardStateManager *)self unmarkText:v21];
    }

    v22 = objc_loadWeakRetained(&self->_presentationDelegate);
    v23 = [v22 candidateController];
    v24 = [v23 barIsExtended];

    if (v24)
    {
      v25 = objc_loadWeakRetained(&self->_presentationDelegate);
      v26 = [v25 candidateController];
      [v26 collapse];
    }
  }

  v27 = [v4 uncommittedText];
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    v28 = 0;
    if (!v27)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v29 = [v27 displayString];
    if ([v29 length] || (objc_msgSend(v27, "selectedRange"), v30))
    {
      v28 = 0;
    }

    else
    {
      v63 = [v27 inputString];
      if ([v63 length])
      {
        v28 = 0;
      }

      else
      {
        v64 = [v27 searchString];
        v28 = [v64 length] == 0;
      }
    }

    if (!v27)
    {
      goto LABEL_29;
    }
  }

  if (!v28)
  {
    [(_UIKeyboardStateManager *)self assertIntermediateText:v27];
  }

LABEL_29:
  v31 = [v4 candidates];
  v32 = [v31 firstObject];

  if (objc_opt_respondsToSelector())
  {
    v33 = ([v32 candidateProperty] >> 1) & 1;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (![(_UIKeyboardStateManager *)self userSelectedCurrentCandidate])
  {
    [(_UIKeyboardStateManager *)self setCommittingCandidate:0];
    [(_UIKeyboardStateManager *)self setCandidates:v4];
    if ([v4 hasCandidates] && (((v11 | v33) & 1) != 0 || !-[_UIKeyboardStateManager shouldPrioritizeTextSuggestionsOverCandidateResultSet:](self, "shouldPrioritizeTextSuggestionsOverCandidateResultSet:", v4)))
    {
      v34 = [MEMORY[0x1E696AD88] defaultCenter];
      [v34 postNotificationName:@"UIKeyboardCandidatesAvailable" object:0];

      if (+[UIKeyboard isKeyboardProcess])
      {
        v35 = [(_UIKeyboardStateManager *)self textInputTraits];
        v36 = [v35 hidePrediction];

        if (v36)
        {
          v37 = [(_UIKeyboardStateManager *)self textInputTraits];
          [v37 setHidePrediction:0];

          v38 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
          v70 = @"name";
          v71 = @"UIKeyboardCandidatesAvailable";
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          [v38 forwardKeyboardOperation:sel_postNotificationName_ object:v39];
        }
      }
    }

    [(_UIKeyboardStateManager *)self updateCandidateDisplay];
    [(_UIKeyboardStateManager *)self updateReturnKey];
    v40 = +[UIKeyboard activeKeyboard];
    [v40 _didChangeCandidateList];

    if ([(_UIKeyboardStateManager *)self shouldShowLongPredictionList]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v42 = [v41 selectedTextRange];
      v43 = [v42 start];

      v44 = [(_UIKeyboardStateManager *)self inputDelegate];
      v45 = [v44 tokenizer];
      v46 = [v45 rangeEnclosingPosition:v43 withGranularity:2 inDirection:1];

      if (v46)
      {
        v65 = [v46 start];
        v47 = [(_UIKeyboardStateManager *)self inputDelegate];
        v48 = [v47 textRangeFromPosition:v65 toPosition:v43];

        v49 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v50 = [v49 textInRange:v48];

        [(UIKeyboardCandidateList *)self->m_candidateList setInlineText:v50];
      }
    }

    v51 = [v4 generatedCandidateCount];
    v52 = [v4 batchCandidateLocation];
    v53 = [v4 candidates];
    v54 = [v53 count] + v52;

    if (v51 > v54)
    {
      v55 = [(_UIKeyboardStateManager *)self delayedCandidateRequest];
      [v55 invalidate];

      v56 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel_generateCandidatesAsynchronously object:0];
      [(_UIKeyboardStateManager *)self setDelayedCandidateRequest:v56];
LABEL_46:

      goto LABEL_51;
    }

    if (self->m_candidateList)
    {
      if (![(_UIKeyboardStateManager *)self _hasMarkedText])
      {
        v57 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v58 = [v57 selectedTextRange];
        v59 = [v58 isEmpty];

        if (v59)
        {
          v60 = UIKeyboardGetCurrentInputMode();
          v56 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v60);

          v61 = [(UIKeyboardCandidateList *)self->m_candidateList statisticsIdentifier];
          v62 = TIStatisticGetKeyForCandidateAccepted();
          TIStatisticScalarIncrement();

          goto LABEL_46;
        }
      }
    }
  }

LABEL_51:
  [(_UIKeyboardStateManager *)self _setNeedsCandidates:0];
}

- (unsigned)assertIntermediateText:(id)a3
{
  v4 = a3;
  v5 = [v4 displayString];
  v6 = [v4 selectedRange];
  v8 = v7;
  v9 = [v4 inputString];
  v10 = [v4 lastInputString];
  v11 = [v4 searchString];
  v12 = [v4 candidateOffset];
  v13 = [v4 liveConversionSegments];
  v14 = -[_UIKeyboardStateManager setMarkedText:selectedRange:inputString:lastInputString:searchString:candidateOffset:liveConversionSegments:highlighSegmentIndex:](self, "setMarkedText:selectedRange:inputString:lastInputString:searchString:candidateOffset:liveConversionSegments:highlighSegmentIndex:", v5, v6, v8, v9, v10, v11, v12, v13, [v4 highlightSegmentIndex]);

  v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v16 = [v15 forwardingInputDelegate];

  v17 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];

  if (v17 && !v16)
  {
    v18 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 textOperations];
      [v20 setIntermediateText:v4];

      [v19 flushOperations];
    }
  }

  return v14;
}

- (BOOL)presentTextCompletionAsMarkedText:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardStateManager *)self _hasMarkedText]&& ![(_UIKeyboardStateManager *)self hasInlineCompletionAsMarkedText])
  {
    v12 = 0;
  }

  else
  {
    v5 = [v4 displayString];
    [(_UIKeyboardStateManager *)self _noteInlineCompletionAsMarkedText:v5];

    v6 = [v4 displayString];
    v7 = [v4 selectedRange];
    v9 = v8;
    v10 = [v4 inputString];
    v11 = [v4 searchString];
    v12 = 1;
    LOBYTE(v21) = 1;
    [(_UIKeyboardStateManager *)self _setAttributedMarkedText:v6 selectedRange:v7 inputString:v9 lastInputString:v10 searchString:0 compareAttributes:v11, v21];

    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = [v13 forwardingInputDelegate];

    v15 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];

    if (v15 && !v14)
    {
      v16 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 textOperations];
        [v18 setStyledIntermediateText:v4];

        v19 = [v17 textOperations];
        [v19 setCustomInfoType:0x1EFB7CB10];

        [v17 flushOperations];
      }

      v12 = 1;
    }
  }

  return v12;
}

- (void)removeTextCompletionFromMarkedText:(id)a3
{
  v21 = a3;
  if ([v21 length])
  {
    v4 = [(_UIKeyboardStateManager *)self _markedText];
    if (!v4 || [v21 isEqualToString:v4])
    {
      [(_UIKeyboardStateManager *)self _noteInlineCompletionAsMarkedText:0];
      v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
      v6 = [MEMORY[0x1E69C6F88] intermediateTextWithInputString:&stru_1EFB14550 displayString:v5 selectionLocation:0];
      v7 = [v6 displayString];
      v8 = [v6 selectedRange];
      v10 = v9;
      v11 = [v6 inputString];
      v12 = [v6 searchString];
      LOBYTE(v20) = 1;
      [(_UIKeyboardStateManager *)self _setAttributedMarkedText:v7 selectedRange:v8 inputString:v10 lastInputString:v11 searchString:0 compareAttributes:v12, v20];

      v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v14 = [v13 forwardingInputDelegate];

      v15 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];

      if (v15 && !v14)
      {
        v16 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 textOperations];
          [v18 setStyledIntermediateText:v6];

          v19 = [v17 textOperations];
          [v19 setCustomInfoType:0x1EFB7CB10];

          [v17 flushOperations];
        }
      }
    }
  }
}

- (BOOL)needsToDeferUpdateTextCandidateView
{
  v3 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasCandidates];
  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v5 = [v4 keyInputDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    LOBYTE(v3) = (isKindOfClass & 1) != 0 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v7 = ;
  }

  return v3;
}

- (BOOL)canUseCandidateBarAsSupplementToInlineView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained _rootInputWindowController];
  v5 = [v4 placement];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 visualModeManager];
  if ([v7 useVisualModeWindowed])
  {
    v8 = [v6 visualModeManager];
    if ([v8 windowingModeEnabled])
    {
      v9 = [v5 isFloatingAssistantView];
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

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = objc_loadWeakRetained(&self->_presentationDelegate);
    if ([objc_opt_class() isFloating] && !objc_msgSend(v5, "isFloatingAssistantView"))
    {
      v12 = 0;
    }

    else if (([(UITextInputTraits *)self->m_traits autocorrectionType]== 1) | v9 & 1)
    {
      v11 = [(_UIKeyboardStateManager *)self autocorrectionController];
      v12 = [v11 hasAutofillCandidates];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)showsCandidateInline
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained showsCandidateInline];

  return v3;
}

- (BOOL)showsCandidateBar
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained showsCandidateBar];

  return v3;
}

- (void)setShowsCandidateBar:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setShowsCandidateBar:v3];
}

- (void)candidateBarDidExtendWithGesture
{
  v2 = [(_UIKeyboardStateManager *)self inputManager];
  [v2 logDiscoverabilityEvent:1 userInfo:0];
}

- (BOOL)maximizing
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained maximizing];

  return v3;
}

- (void)layoutDidResize
{
  v2 = [(_UIKeyboardStateManager *)self inputManager];
  [v2 logDiscoverabilityEvent:0 userInfo:0];
}

- (void)conversationContext:(id)a3 didChange:(id)a4
{
  v5 = [a3 inputContextHistoryRepresentation];
  v6 = [v5 tiInputContextHistory];
  [(TIKeyboardState *)self->m_keyboardState setInputContextHistory:v6];

  if ([(_UIKeyboardStateManager *)self canShowPredictionBar]&& ![(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
  {
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
    v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v7 setNeedsAutocorrection];
  }

  else if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];

    [(_UIKeyboardStateManager *)self generateCandidatesAsynchronouslyWithRange:0 selectedCandidate:0x7FFFFFFFLL, 0];
  }
}

- (void)setAutocorrection:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v6 alternateCorrections:0];
    v5 = [MEMORY[0x1E69D9570] listWithCorrections:v4 predictions:0];
    [(_UIKeyboardStateManager *)self setAutocorrectionList:v5];
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self autocorrectionController];
    [v4 clearAutocorrection];
  }
}

- (id)_supplementalCandidateIcon:(id)a3
{
  v4 = [a3 ui_supplementalItems];
  if (![v4 count])
  {
    v7 = 0;
    goto LABEL_8;
  }

  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 icon];
LABEL_7:
    v7 = v6;

    goto LABEL_8;
  }

  v8 = [(_UIKeyboardStateManager *)self textInputTraits];
  v9 = [v8 supplementalLexiconAmbiguousItemIcon];

  if (v9)
  {
    v5 = [(_UIKeyboardStateManager *)self textInputTraits];
    v6 = [v5 supplementalLexiconAmbiguousItemIcon];
    goto LABEL_7;
  }

  v7 = [UIImage systemImageNamed:@"questionmark.circle"];
LABEL_8:

  return v7;
}

- (void)setAutocorrectionList:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___UIKeyboardStateManager_setAutocorrectionList___block_invoke;
  aBlock[3] = &unk_1E70FDE48;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [v4 autocorrectionIfSupplemental];
  if (v6)
  {
    v5[2](v5, v6);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [v4 predictionsIfSupplemental];
  v8 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v53 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v9);
  }

  if (self->m_pendingAutofillIndex < 0 || ([v4 predictions], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v15 = [v4 predictions];
    v16 = [v15 firstObject];

    if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
    {
      if (![v16 slotID])
      {
LABEL_21:
        v19 = [v4 corrections];
        v20 = [v19 autocorrection];
        v21 = [v20 isContinuousPathConversion];

        if ((v21 & 1) == 0)
        {
          if ((self->m_predictionType | 2) == 3)
          {
            self->m_predictionType = 0;
          }

LABEL_25:
          if ([v4 containsAlternativeInputCandidates])
          {
            self->m_predictionType = 6;
          }

          else
          {
            m_predictionType = self->m_predictionType;
            if (m_predictionType == 4 || m_predictionType == 2)
            {
              v26 = [v4 corrections];
              v27 = [v26 autocorrection];
              v28 = [v27 isForShortcutConversion];

              if (!v28)
              {
                goto LABEL_45;
              }
            }
          }

          if ([(_UIKeyboardStateManager *)self prewarmsPredictiveCandidates])
          {
            v29 = 1;
          }

          else
          {
            v30 = +[UIKeyboardPreferencesController sharedPreferencesController];
            v31 = [v30 preferencesActions];
            if ([v31 predictionEnabled])
            {
              v29 = 1;
            }

            else
            {
              v32 = [v4 corrections];
              v33 = [v32 autocorrection];
              v29 = v33 != 0;
            }
          }

          v34 = self->m_predictionType;
          if ((v34 | 2) == 3 || (((v34 - 5) > 1) & ~v29) == 0)
          {
            v35 = [(_UIKeyboardStateManager *)self autocorrectionController];
            v36 = v35;
            v37 = v4;
LABEL_46:
            [v35 setAutocorrectionList:v37];
            goto LABEL_47;
          }

          v38 = [v4 corrections];
          v39 = [v38 autocorrection];
          v40 = [v39 input];
          if (v40)
          {
            v52 = v40;
            v50 = [v4 corrections];
            v49 = [v50 autocorrection];
            v41 = [v49 input];
            [v4 corrections];
            v42 = v51 = v38;
            v43 = [v42 autocorrection];
            v44 = [v43 candidate];
            v48 = [v41 isEqualToString:v44];

            if ((v48 & 1) == 0)
            {
              v45 = MEMORY[0x1E69D9570];
              v36 = [v4 corrections];
              v46 = [v45 listWithCorrections:v36 predictions:0];
              v47 = [(_UIKeyboardStateManager *)self autocorrectionController];
              [v47 setAutocorrectionList:v46];

LABEL_47:
              goto LABEL_48;
            }
          }

          else
          {
          }

LABEL_45:
          v35 = [(_UIKeyboardStateManager *)self autocorrectionController];
          v36 = v35;
          v37 = 0;
          goto LABEL_46;
        }
      }

LABEL_22:
      v18 = 1;
LABEL_23:
      self->m_predictionType = v18;
      v22 = [v4 corrections];
      v23 = [v22 autocorrection];
      v24 = [v23 isContinuousPathConversion];

      if (v24)
      {
        self->m_predictionType = 5;
      }

      goto LABEL_25;
    }

    v17 = [v16 isAutofillCandidate];
    if ([v16 slotID])
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }

    v18 = 3;
    goto LABEL_23;
  }

  v13 = [v4 predictions];
  v14 = [v13 objectAtIndex:self->m_pendingAutofillIndex];
  [(_UIKeyboardStateManager *)self acceptPredictiveInput:v14];

  self->m_pendingAutofillIndex = -1;
LABEL_48:
}

- (BOOL)hasAutocorrectPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained hasAutocorrectPrompt];

  return v3;
}

- (void)removeInlineTextCompletionPrompt
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_removeInlineTextCompletionPrompt];
  }

  else
  {
    v3 = [(_UIKeyboardStateManager *)self inlineTextCompletionController];
    [v3 removeTextCompletionPrompt];
  }
}

- (void)removeTextChoicePromptWithUnderline
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained removeTextChoicePromptWithUnderline];
}

- (void)removeTextChoicePromptAndAutocorrection
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {

    [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
  }

  else
  {

    [(_UIKeyboardStateManager *)self removeAutocorrection];
  }
}

- (void)removeTextChoiceUnderlinesInRange:(id)a3
{
  v10 = a3;
  v4 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
  v5 = v10;
  if (v10 && v4)
  {
    v6 = [v10 isEmpty];
    v7 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
    v8 = v7;
    if (v6)
    {
      v9 = [v10 start];
      [v8 clearUnderlineForPosition:v9];
    }

    else
    {
      [v7 removeAllUnderlines];
    }

    v5 = v10;
  }
}

- (id)_autocorrectionListDemotingAutocorrectionFromList:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 corrections];
  v5 = [v4 autocorrection];

  if (v5 && (([v5 candidate], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "input"), v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0) ? (v9 = v7) : (v9 = &stru_1EFB14550), v10 = objc_msgSend(v6, "isEqualToString:", v9), v8, v6, (v10 & 1) == 0))
  {
    v12 = MEMORY[0x1E69D95F0];
    v13 = [v5 input];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1EFB14550;
    }

    v16 = [v12 candidateWithUnchangedInput:v15];

    v33[0] = v5;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v18 = [v3 corrections];
    v19 = [v18 alternateCorrections];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    v22 = [v17 arrayByAddingObjectsFromArray:v21];

    v23 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:v16 alternateCorrections:v22 autocorrectionBlocked:1];
    v24 = [v3 predictions];

    if (v24)
    {
      v32 = v5;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v26 = [v3 predictions];
      v24 = [v25 arrayByAddingObjectsFromArray:v26];
    }

    v27 = MEMORY[0x1E69D9570];
    v28 = [v3 emojiList];
    v29 = [v3 inlineCompletions];
    v30 = [v3 proactiveTriggers];
    v11 = [v27 listWithCorrections:v23 predictions:v24 emojiList:v28 inlineCompletionList:v29 proactiveTriggers:v30];
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (void)dismissTextChoicePrompt
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v8 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v8 forwardInputDestinationEventToUIHost:sel_dismissTextChoicePrompt];
  }

  else
  {
    [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
    v3 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v4 = [v3 hasAutocorrection];

    if (!v4)
    {
      return;
    }

    v5 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v8 = [v5 autocorrectionList];

    v6 = [(_UIKeyboardStateManager *)self _autocorrectionListDemotingAutocorrectionFromList:v8];
    if (v8 != v6)
    {
      v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
      [v7 setAutocorrectionList:v6];
    }
  }
}

- (void)presentTextChoicePromptForRange:(id)a3
{
  v5 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v4 forwardInputDestinationEventToUIHost:sel_presentTextChoicePromptForRange_];
  }

  else
  {
    v4 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
    [v4 presentIfNeededForRange:v5];
  }
}

- (void)setCandidates:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_m_candidateResultSet = &self->m_candidateResultSet;
  m_candidateResultSet = self->m_candidateResultSet;
  if (m_candidateResultSet != v4)
  {
    v7 = v4;
    if ([(TIKeyboardCandidateResultSet *)v7 batchCandidateLocation])
    {
      v8 = [(TIKeyboardCandidateResultSet *)*p_m_candidateResultSet setByAppendingSet:v7];
      v9 = v8;
      if (!v8)
      {
        v9 = *p_m_candidateResultSet;
      }

      v10 = v9;

      v7 = v10;
    }

    if (*p_m_candidateResultSet != v7)
    {
      v11 = [(TIKeyboardCandidateResultSet *)v7 candidates];
      v12 = [v11 count];

      if (v12)
      {
        objc_storeStrong(&self->m_candidateResultSet, v7);
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v13 = [(TIKeyboardCandidateResultSet *)v7 candidatesIfSupplemental];
        v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v40 + 1) + 8 * i);
              v19 = [(_UIKeyboardStateManager *)self _supplementalCandidateIcon:v18];
              [v18 setIcon:v19];
            }

            v15 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
          }

          while (v15);
        }

        v20 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet candidates];
        v21 = [v20 firstObject];

        if ([(_UIKeyboardStateManager *)self shouldShowLongPredictionList])
        {
          v22 = [MEMORY[0x1E695DFB0] null];

          if (v21 != v22)
          {
            v34 = MEMORY[0x1E69E9820];
            v35 = 3221225472;
            v36 = __41___UIKeyboardStateManager_setCandidates___block_invoke;
            v37 = &unk_1E70FD1B8;
            v38 = v21;
            v39 = self;
            v23 = _Block_copy(&v34);
            if (qword_1ED49D468 != -1)
            {
              dispatch_once(&qword_1ED49D468, &__block_literal_global_1656);
            }

            v24 = [(_UIKeyboardStateManager *)self taskQueue:v34];
            [v24 addTask:v23 breadcrumb:qword_1ED49D460];
          }
        }
      }

      else
      {
        v25 = *p_m_candidateResultSet;
        *p_m_candidateResultSet = 0;
      }
    }

    m_candidateResultSet = *p_m_candidateResultSet;
  }

  if ([(TIKeyboardCandidateResultSet *)m_candidateResultSet hasCandidates])
  {
    self->_receivedCandidatesInCurrentInputMode = 1;
    if (!self->m_candidateList)
    {
      [(_UIKeyboardStateManager *)self updateTextCandidateView];
      v26 = +[UIKeyboard activeKeyboard];
      [v26 _didChangeCandidateList];

      v27 = +[UIDevice currentDevice];
      v28 = [v27 userInterfaceIdiom];

      if (!v28)
      {
        if ([(_UIKeyboardStateManager *)self isMinimized])
        {
          v29 = [(TIKeyboardCandidateResultSet *)*p_m_candidateResultSet firstCandidate];
          v30 = [v29 slotID];

          if (v30)
          {
            v31 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
            v32 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet firstCandidate];
            v44 = v32;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
            [v31 showChoicesForCandidates:v33];
          }
        }
      }
    }
  }
}

- (void)setReturnKeyEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setReturnKeyEnabled:v3];
}

- (void)updateReturnKey:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateReturnKey:v3];
}

- (void)_handleKeyBehavior:(unint64_t)a3 forKeyType:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained _handleKeyBehavior:a3 forKeyType:v6];
}

- (void)performKeyBehaviorConfirm
{
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v3 setNextCommitTextSource:3];

  if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    v4 = [(_UIKeyboardStateManager *)self handlingKeyCommandFromHardwareKeyboard];
    v5 = MEMORY[0x1E69D9A38];
    if (!v4)
    {
      v5 = MEMORY[0x1E69D9A08];
    }

    [(_UIKeyboardStateManager *)self trackUsageForCandidateAcceptedAction:*v5];
    v6 = [(_UIKeyboardStateManager *)self acceptCurrentCandidate];
  }

  else
  {
    [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
    [(_UIKeyboardStateManager *)self removeTextChoicePrompt];
    if ([(_UIKeyboardStateManager *)self usesAutocorrectionLists])
    {
      v7 = [(_UIKeyboardStateManager *)self inputManagerState];
      v8 = [v7 wordSeparator];
      v9 = [v8 isEqualToString:&stru_1EFB14550];

      if (v9)
      {
        [(_UIKeyboardStateManager *)self generateCandidates];

        [(_UIKeyboardStateManager *)self updateCandidateDisplay];
      }
    }
  }
}

- (void)performKeyBehaviorConfirmFirstCandidate
{
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v3 setNextCommitTextSource:3];

  v4 = [(_UIKeyboardStateManager *)self handlingKeyCommandFromHardwareKeyboard];
  v5 = MEMORY[0x1E69D9A30];
  if (!v4)
  {
    v5 = MEMORY[0x1E69D9A00];
  }

  [(_UIKeyboardStateManager *)self trackUsageForCandidateAcceptedAction:*v5];

  [(_UIKeyboardStateManager *)self acceptFirstCandidate];
}

- (void)performKeyBehaviorCommitInlineWithSpace:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v5 setNextCommitTextSource:4];

  v6 = [(_UIKeyboardStateManager *)self acceptInlineCandidateWithSpace:v3];
  if (!v6)
  {
    v7 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v8 = [v7 autocorrectionList];
    v9 = [v8 predictions];
    v10 = [v9 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = 0;
    if (isKindOfClass)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69D9638]);
      [v12 setInsertionText:@"\n"];
      [(_UIKeyboardStateManager *)self performKeyboardOutput:v12];

      v6 = 0;
    }
  }
}

- (id)updateKeyBehaviors:(id)a3 withBehaviors:(id)a4 forState:(id)a5
{
  v7 = a3;
  v8 = [a4 keyBehaviorsForState:a5];
  v9 = [v8 spaceKeyBehavior];
  if (!v9)
  {
    v9 = [v7 spaceKeyBehavior];
  }

  v10 = [v8 returnKeyBehavior];
  if (!v10)
  {
    v10 = [v7 returnKeyBehavior];
  }

  if ([v8 spaceKeyBehavior] != v9 || objc_msgSend(v8, "returnKeyBehavior") != v10)
  {
    v11 = [MEMORY[0x1E69D9620] behaviorForSpaceKey:v9 forReturnKey:v10];

    v8 = v11;
  }

  return v8;
}

- (id)activeLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained activeLayout];

  return v3;
}

- (BOOL)callLayoutIgnoresShiftState
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [v5 layout];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_presentationDelegate);
  v9 = [v8 layout];
  v10 = [v9 ignoresShiftState];

  return v10;
}

- (void)callLayoutSetShift:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [WeakRetained layout];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = objc_loadWeakRetained(&self->_presentationDelegate);
    v8 = [v9 layout];
    [v8 setShift:v3];
  }
}

- (void)callLayoutSetAutoshift:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [WeakRetained layout];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = objc_loadWeakRetained(&self->_presentationDelegate);
    v8 = [v9 layout];
    [v8 setAutoshift:v3];
  }
}

- (void)callLayoutLongPressAction
{
  v3 = [(_UIKeyboardStateManager *)self activeLayout];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self activeLayout];
    [v5 longPressAction];
  }
}

- (void)callLayoutUpdateAllLocalizedKeys
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_presentationDelegate);
    v6 = [v7 layout];
    [v6 updateLocalizedKeys:1];
  }
}

- (id)inputOverlayContainerForCandidateView:(BOOL)a3
{
  v3 = a3;
  if ([(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = [(_UIKeyboardStateManager *)self delegate];
      v6 = [v5 textInputView];
      v7 = [_UIPopoverView popoverViewContainingView:v6];
      if (v7)
      {

        if (!v3)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      if (v3)
      {
LABEL_9:
        WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
        v9 = [WeakRetained candidateController];
        if ([v9 inlineRectIsVertical])
        {
          v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v11 = [v10 visualModeManager];
          v12 = [v11 shouldShowWithinAppWindow];

          if (v12)
          {
            v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v14 = [v13 keyboardWindow];
            goto LABEL_16;
          }
        }

        else
        {
        }

LABEL_13:
        v15 = objc_loadWeakRetained(&self->_presentationDelegate);
        v16 = [v15 isEmojiPopoverPresented];

        if (v16)
        {
          v13 = objc_loadWeakRetained(&self->_presentationDelegate);
          v17 = [v13 emojiPopoverController];
          v18 = [v17 popoverPresentationController];
          v19 = [v18 containerView];

          goto LABEL_17;
        }

        v13 = +[UIPeripheralHost sharedInstance];
        v14 = [v13 transformedContainerView];
LABEL_16:
        v19 = v14;
LABEL_17:

        if (v19)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v3)
    {
      goto LABEL_9;
    }
  }

  v20 = objc_loadWeakRetained(&self->_presentationDelegate);
  v21 = [v20 selectionScrolling];

  if (!v21 || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v22 = objc_claimAutoreleasedReturnValue(), [v22 textInputView], v19 = objc_claimAutoreleasedReturnValue(), v22, !v19))
  {
    if (!-[_UIKeyboardStateManager usesCandidateSelection](self, "usesCandidateSelection") || !-[_UIKeyboardStateManager showsCandidateInline](self, "showsCandidateInline") && !-[_UIKeyboardStateManager floatingForced](self, "floatingForced") || -[_UIKeyboardStateManager isMinimized](self, "isMinimized") || (+[UIPeripheralHost sharedInstance](UIPeripheralHost, "sharedInstance"), v23 = objc_claimAutoreleasedReturnValue(), [v23 transformedContainerView], v19 = objc_claimAutoreleasedReturnValue(), v23, !v19))
    {
      v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];

      if (!v24 || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v25 = objc_claimAutoreleasedReturnValue(), [v25 automaticallySelectedOverlay], v19 = objc_claimAutoreleasedReturnValue(), v25, !v19))
      {
        v26 = [(_UIKeyboardStateManager *)self inputDelegate];
        v27 = objc_opt_respondsToSelector();

        if ((v27 & 1) == 0 || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v28 = objc_claimAutoreleasedReturnValue(), [v28 textInputView], v19 = objc_claimAutoreleasedReturnValue(), v28, !v19))
        {
          v29 = +[UIPeripheralHost sharedInstance];
          v19 = [v29 transformedContainerView];
        }
      }
    }
  }

LABEL_30:

  return v19;
}

- (CGRect)getCorrectionRectIsVertical:(BOOL *)a3
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v10 = [v9 markedTextRange];

  v11 = [(_UIKeyboardStateManager *)self inputManagerState];
  v12 = [v11 inputIndex];
  v13 = v12 - [(_UIKeyboardStateManager *)self candidateViewOffset];

  if (v13 >= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = v13;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  if ([(_UIKeyboardStateManager *)self candidateViewOffset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v16 = [v10 start];
  v17 = [v15 positionFromPosition:v16 offset:{-[_UIKeyboardStateManager candidateViewOffset](self, "candidateViewOffset")}];

  v18 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v19 = [v18 positionFromPosition:v17 offset:v14];

  if (!v19 || (-[_UIKeyboardStateManager inputDelegate](self, "inputDelegate"), v20 = objc_claimAutoreleasedReturnValue(), [v10 end], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "comparePosition:toPosition:", v19, v21), v21, v20, v22 == 1))
  {
    v23 = [v10 end];

    v19 = v23;
  }

  v24 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v25 = [v24 textRangeFromPosition:v17 toPosition:v19];

  v10 = v25;
  if (v25)
  {
LABEL_10:
    v26 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v26 _lastRectForRange:v10];
    x = v27;
    y = v28;
    width = v29;
    height = v30;

    v31 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v31 firstRectForRange:v10];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v122.origin.x = x;
    v122.origin.y = y;
    v122.size.width = width;
    v122.size.height = height;
    v131.origin.x = v33;
    v131.origin.y = v35;
    v131.size.width = v37;
    v131.size.height = v39;
    if (!CGRectEqualToRect(v122, v131))
    {
      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = height;
      v132.origin.x = v33;
      v132.origin.y = v35;
      v132.size.width = v37;
      v132.size.height = v39;
      v124 = CGRectUnion(v123, v132);
      x = v124.origin.x;
      y = v124.origin.y;
      width = v124.size.width;
      height = v124.size.height;
    }

    v40 = 1;
  }

  else
  {
LABEL_13:
    v40 = 0;
  }

  v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v42 = [v41 asyncCapableInputDelegate];
  if (!v42)
  {

    goto LABEL_25;
  }

  v43 = v42;
  v44 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v45 = [v44 hasMarkedText];

  if (!v45)
  {
    goto LABEL_25;
  }

  v46 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];

  if (v46)
  {
    v47 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
    v48 = [v47 firstObject];
    [v48 rectValue];
    x = v49;
    y = v50;
    width = v51;
    height = v52;

    v53 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
    v54 = [v53 lastObject];
    [v54 rectValue];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    if ([(_UIKeyboardStateManager *)self candidateViewOffset]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = [(_UIKeyboardStateManager *)self candidateViewOffset];
      v64 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
      v65 = [v64 count];

      if (v63 < v65)
      {
        v66 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
        v67 = [v66 objectAtIndexedSubscript:{-[_UIKeyboardStateManager candidateViewOffset](self, "candidateViewOffset")}];
        [v67 rectValue];
        x = v68;
        y = v69;
        width = v70;
        height = v71;
      }

      v72 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
      v73 = [v72 count];

      if (v14 < v73)
      {
        v74 = [(_UIKeyboardStateManager *)self characterRectsForCharacterRange];
        v75 = [v74 objectAtIndexedSubscript:v14];
        [v75 rectValue];
        v56 = v76;
        v58 = v77;
        v60 = v78;
        v62 = v79;
      }
    }
  }

  else
  {
    v80 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v80 textLastRect];
    x = v81;
    y = v82;
    width = v83;
    height = v84;

    v85 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v85 textFirstRect];
    v56 = v86;
    v58 = v87;
    v60 = v88;
    v62 = v89;

    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    v133.origin.x = v56;
    v133.origin.y = v58;
    v133.size.width = v60;
    v133.size.height = v62;
    if (CGRectEqualToRect(v125, v133))
    {
      goto LABEL_25;
    }
  }

  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  v134.origin.x = v56;
  v134.origin.y = v58;
  v134.size.width = v60;
  v134.size.height = v62;
  v127 = CGRectUnion(v126, v134);
  x = v127.origin.x;
  y = v127.origin.y;
  width = v127.size.width;
  height = v127.size.height;
LABEL_25:
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = height;
  if (CGRectIsEmpty(v128))
  {
    v90 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v91 = [v90 selectedTextRange];

    if (v91)
    {
      v92 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v93 = [v91 start];
      [v92 caretRectForPosition:v93];
      x = v94;
      y = v95;
      width = v96;
      height = v97;
    }
  }

  v129.origin.x = x;
  v129.origin.y = y;
  v129.size.width = width;
  v129.size.height = height;
  if (CGRectIsNull(v129))
  {
    v98 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v99 = [v98 privateInputDelegate];
    if (v99)
    {
      v100 = v99;
      v101 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v102 = [v101 __content];

      if (!v102)
      {
        goto LABEL_34;
      }

      v98 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
      v103 = [v98 activeSelection];
      [v103 caretRect];
      x = v104;
      y = v105;
      width = v106;
      height = v107;
    }
  }

LABEL_34:
  v108 = v40 ^ 1;
  if (!a3)
  {
    v108 = 1;
  }

  if ((v108 & 1) == 0)
  {
    v109 = [(_UIKeyboardStateManager *)self inputDelegate];
    v110 = objc_opt_respondsToSelector();

    if (v110)
    {
      v111 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v112 = [v111 selectionRectsForRange:v10];
      v113 = [v112 lastObject];

      *a3 = [v113 isVertical];
      if ([v113 isVertical])
      {
        [v113 rect];
        x = v114;
        y = v115;
        width = v116;
        height = v117;
      }
    }
  }

  v118 = x;
  v119 = y;
  v120 = width;
  v121 = height;
  result.size.height = v121;
  result.size.width = v120;
  result.origin.y = v119;
  result.origin.x = v118;
  return result;
}

- (void)updateTextCandidateView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateTextCandidateView];
}

- (void)sendCallbacksForPreCorrectionsDisplay
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v5 _willShowCorrections];
  }
}

- (void)sendCallbacksForPostCorrectionsRemoval
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v5 _didHideCorrections];
  }
}

- (void)touchAutocorrectPromptTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained touchAutocorrectPromptTimer];
}

- (void)touchDelayDeleteTimerWithThreshold:(double)a3
{
  [(_UIKeyboardStateManager *)self clearDelayDeleteTimer];
  if (qword_1ED49D478 != -1)
  {
    dispatch_once(&qword_1ED49D478, &__block_literal_global_1688);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___UIKeyboardStateManager_touchDelayDeleteTimerWithThreshold___block_invoke_3;
  v8[3] = &unk_1E70FD058;
  v8[4] = self;
  v6 = [v5 scheduleTask:v8 timeInterval:0 repeats:qword_1ED49D470 breadcrumb:a3];
  m_delayDeleteTask = self->m_delayDeleteTask;
  self->m_delayDeleteTask = v6;
}

- (void)clearAutocorrectPromptTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained clearAutocorrectPromptTimer];
}

- (id)_rangeForAutocorrectionText:(id)a3
{
  v4 = a3;
  if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || !self->_pendingAutocorrectRange || (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v5 = objc_claimAutoreleasedReturnValue(), -[UITextRange end](self->_pendingAutocorrectRange, "end"), v6 = objc_claimAutoreleasedReturnValue(), [v5 _rangeOfText:v4 endingAtPosition:v6], v7 = objc_claimAutoreleasedReturnValue(), v6, v5, !v7))
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 selectedTextRange];

    if (!v9)
    {
      goto LABEL_8;
    }

    if ([v4 length])
    {
      v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v11 = [v9 end];
      v7 = [v10 _rangeOfText:v4 endingAtPosition:v11];

      if (v7)
      {
LABEL_10:

        goto LABEL_11;
      }

      if ([v9 isEmpty])
      {
LABEL_8:
        v7 = 0;
        goto LABEL_10;
      }
    }

    v7 = v9;
    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

- (id)autocorrectPromptRectsFromFirstDelegateRect:(CGRect)a3 lastDelegateRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v37[4] = *MEMORY[0x1E69E9840];
  v13 = v35;
  if (CGRectIsNull(a3))
  {
    v14 = 0;
  }

  else
  {
    v13 = v37;
    *v35 = v11;
    *&v35[1] = v10;
    v14 = 1;
    *v36 = v9;
    *&v36[1] = v8;
  }

  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (!CGRectIsEmpty(v39))
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41.origin.x = v11;
    v41.origin.y = v10;
    v41.size.width = v9;
    v41.size.height = v8;
    if (!CGRectIntersectsRect(v40, v41))
    {
      ++v14;
      *v13 = x;
      v13[1] = y;
      v13[2] = width;
      v13[3] = height;
    }
  }

  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
  if (v14)
  {
    v16 = v36;
    do
    {
      v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v18 = [v17 textInputView];

      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v20 = [(_UIKeyboardStateManager *)self inputOverlayContainer];
      v21 = *(v16 - 2);
      v22 = *(v16 - 1);
      v23 = *v16;
      v24 = v16[1];
      v16 += 4;
      [WeakRetained convertRectToAutocorrectRect:v18 delegateView:v20 container:{v21, v22, v23, v24}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = [UISimpleSelectionRect rectWithCGRect:v26, v28, v30, v32];
      [v15 addObject:v33];

      --v14;
    }

    while (v14);
  }

  return v15;
}

- (void)updateAutocorrectPrompt:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateAutocorrectPrompt:v4];
}

- (void)updateAutocorrectPrompt:(id)a3 executionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateAutocorrectPrompt:v7 executionContext:v6];
}

- (void)insertText:(id)a3 withAlternativePredictions:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) candidate];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v15 insertText:v6 alternatives:v8 style:1];
}

- (BOOL)applyAutocorrection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((!v4 || [v4 slotID]) && objc_msgSend(v5, "customInfoType") != 4096)
  {
    LOBYTE(v6) = 0;
    goto LABEL_59;
  }

  if (![(_UIKeyboardStateManager *)self hasAsyncCapableInputDelegate])
  {
    v14 = +[UIKBAnalyticsDispatcher sharedInstance];
    v15 = [v14 nextCandidateReplacementSource];

    if (v15 != 1)
    {
      goto LABEL_19;
    }

    if ([v5 isToucanInlineCompletionCandidate])
    {
      v16 = 6;
    }

    else
    {
      v17 = [v5 input];
      v18 = [v17 length];

      if (!v18)
      {
        goto LABEL_17;
      }

      v16 = 3;
    }

    v19 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v19 setNextCandidateReplacementSource:v16];

LABEL_17:
    v20 = +[UIKBAnalyticsDispatcher sharedInstance];
    v21 = [v20 nextCandidateReplacementSource];

    if (v21 != 1)
    {
      v22 = [v5 input];
      v23 = +[UIKBAnalyticsDispatcher sharedInstance];
      [v23 setNextCandidateReplacementRemovedText:v22];

      v24 = [v5 label];
      v25 = +[UIKBAnalyticsDispatcher sharedInstance];
      [v25 setNextCandidateReplacementInsertedText:v24];

      v26 = +[UIKBAnalyticsDispatcher sharedInstance];
      [v26 setAnalyticsShouldCallDidKeyPress:0];
    }

LABEL_19:
    v27 = [v5 input];
    v28 = [v27 length];

    if (!v28)
    {
      LOBYTE(v6) = 1;
      self->m_textInputChangesIgnored = 1;
      v29 = [v5 candidate];
      v31 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v31 insertText:v29];

      self->m_textInputChangesIgnored = 0;
LABEL_58:

      goto LABEL_59;
    }

    v29 = [v5 input];
    if (objc_opt_respondsToSelector())
    {
      v30 = [v5 performSelector:sel_rawInput];
    }

    else
    {
      v30 = 0;
    }

    v32 = [(_UIKeyboardStateManager *)self _rangeForAutocorrectionText:v29];
    if (!v32 && v30)
    {
      if ([v30 isEqual:v29])
      {
        v32 = 0;
LABEL_36:
        LOBYTE(v6) = 0;
        goto LABEL_57;
      }

      v32 = [(_UIKeyboardStateManager *)self _rangeForAutocorrectionText:v30];
    }

    if (!v32)
    {
      goto LABEL_36;
    }

    v6 = [(_UIKeyboardStateManager *)self inputDelegate];

    if (!v6)
    {
LABEL_57:

      goto LABEL_58;
    }

    self->m_textInputChangesIgnored = 1;
    v6 = [v5 candidate];
    if (-[_UIKeyboardStateManager currentInputModeRequiresLTRMathExpression](self, "currentInputModeRequiresLTRMathExpression") && [v5 candidateProperty] == 1)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"⁨", v6, @"⁩"];

      v6 = v33;
    }

    v34 = [(_UIKeyboardStateManager *)self attributedCorrectionFromTextAnimationCandidate:v5];
    v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v67 = [v35 selectedTextRange];

    v36 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v37 = v36;
    if (v34)
    {
      [v36 replaceRange:v32 oldText:0 withAttributedText:v34 forReplaceAction:0];
    }

    else
    {
      [v36 replaceRange:v32 oldText:0 withText:v6 forReplaceAction:0];
    }

    v38 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v39 = [v38 selectedTextRange];

    if (self->_pendingAutocorrectRange)
    {
      objc_storeStrong(&self->_pendingAutocorrectRange, v39);
    }

    if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || ([v67 isEqual:v39] & 1) != 0 || !self->_pendingAutocorrectRange)
    {
LABEL_53:
      v52 = v39;
      v53 = [(_UIKeyboardStateManager *)self documentState];
      v54 = [v53 documentStateAfterReplacingText:v29 withText:v6];
      if (v54)
      {
        [(_UIKeyboardStateManager *)self setDocumentState:v54];
      }

      else
      {
        v66 = v34;
        v55 = MEMORY[0x1E69D9590];
        [(_UIKeyboardStateManager *)self inputDelegate];
        v56 = v64 = v6;
        v57 = [v55 documentStateOfDocument:v56];
        [(_UIKeyboardStateManager *)self setDocumentState:v57];

        v34 = v66;
        v6 = v64;
      }

      self->m_textInputChangesIgnored = 0;
      LOBYTE(v6) = 1;
      goto LABEL_57;
    }

    v40 = v67;
    v65 = [(_UIKeyboardStateManager *)self inputDelegate];
    if (v65 && v40)
    {
      v62 = v39;
      v60 = [v6 length];
      v41 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v32 start];
      v42 = v63 = v40;
      v43 = [v32 end];
      v59 = [v41 offsetFromPosition:v42 toPosition:v43];

      v44 = [v63 start];
      v45 = [v32 end];
      v46 = [v65 comparePosition:v44 toPosition:v45];

      v47 = v60 - v59;
      if (v60 == v59 || v46 != 1)
      {
        v39 = v62;
        v40 = v63;
LABEL_51:
        v51 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v51 setSelectedTextRange:v40];

LABEL_52:
        goto LABEL_53;
      }

      v48 = [v63 start];
      v61 = [v65 positionFromPosition:v48 offset:v47];

      v49 = [v63 end];
      v50 = [v65 positionFromPosition:v49 offset:v47];

      v40 = [v65 textRangeFromPosition:v61 toPosition:v50];

      v39 = v62;
    }

    if (!v40)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  LOBYTE(v6) = 1;
  self->m_textInputChangesIgnored = 1;
  v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];

  if (v7)
  {
    v8 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
    v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v10 = [v5 candidate];
    v11 = [v5 input];
    if (v8)
    {
      v12 = [(_UIKeyboardStateManager *)self shouldUnderlineCandidate:v5];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __47___UIKeyboardStateManager_applyAutocorrection___block_invoke;
      v70[3] = &unk_1E70FDE70;
      v70[4] = self;
      v71 = v5;
      [v9 applyAutocorrection:v10 toString:v11 shouldUnderline:v12 withCompletionHandler:v70];

      v13 = v71;
    }

    else
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __47___UIKeyboardStateManager_applyAutocorrection___block_invoke_2;
      v68[3] = &unk_1E70FDE70;
      v68[4] = self;
      v69 = v5;
      [v9 applyAutocorrection:v10 toString:v11 withCompletionHandler:v68];

      v13 = v69;
    }

    LOBYTE(v6) = 1;
  }

LABEL_59:

  return v6;
}

- (id)attributedCorrectionFromTextAnimationCandidate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v5 textEffectName];
  if ([&unk_1EFE2B5F0 containsObject:v6])
  {
    v7 = [(_UIKeyboardStateManager *)self _attributedCorrectionTextEffectAnimation:v5];
  }

  else
  {
    if (![&unk_1EFE2B608 containsObject:v6])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [(_UIKeyboardStateManager *)self _attributedCorrectionTextEffectStyle:v5];
  }

  v8 = v7;
LABEL_9:

LABEL_10:

  return v8;
}

- (id)_attributedCorrectionTextEffectAnimation:(id)a3
{
  v3 = a3;
  v4 = [v3 textEffectName];
  v5 = [_UITextAnimation animationWithName:v4];

  if (v5 && ([v3 candidate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = [v3 candidate];
    v9 = [v8 length];

    v10 = objc_alloc(MEMORY[0x1E696AD40]);
    v11 = [v3 candidate];
    v12 = [v10 initWithString:v11];

    [v12 addAttribute:*off_1E70ECA08 value:v5 range:{0, v9}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_attributedCorrectionTextEffectStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 textEffectName];
  v5 = [v3 candidate];
  v6 = [v5 length];

  if ([v4 isEqualToString:@"bold"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    v8 = [v3 candidate];
    v9 = [v7 initWithString:v8];

    v10 = *off_1E70EC918;
    v11 = [off_1E70ECC18 boldSystemFontOfSize:12.0];
LABEL_5:
    v14 = v11;
    [v9 addAttribute:v10 value:v11 range:{0, v6}];

    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"italic"])
  {
    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    v13 = [v3 candidate];
    v9 = [v12 initWithString:v13];

    v10 = *off_1E70EC918;
    v11 = [off_1E70ECC18 italicSystemFontOfSize:12.0];
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"underline"])
  {
    v16 = objc_alloc(MEMORY[0x1E696AD40]);
    v17 = [v3 candidate];
    v9 = [v16 initWithString:v17];

    v18 = off_1E70ECAD8;
LABEL_13:
    [v9 addAttribute:*v18 value:&unk_1EFE30040 range:{0, v6}];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"strikeThrough"])
  {
    v19 = objc_alloc(MEMORY[0x1E696AD40]);
    v20 = [v3 candidate];
    v9 = [v19 initWithString:v20];

    v18 = off_1E70EC9C8;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)animateAutocorrectionToText:(id)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained animateAutocorrectionToText:v9 fromRect:{x, y, width, height}];
}

- (void)animateAutocorrectionToRect:(CGRect)a3 fromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained animateAutocorrectionToRect:v11 fromRect:{v10, v9, v8, x, y, width, height}];
}

- (void)rejectAutocorrectionForPromptFade
{
  v5 = [(_UIKeyboardStateManager *)self inputManager];
  v3 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v4 = [v3 autocorrection];
  [v5 candidateRejected:v4];
}

- (void)fadeAutocorrectPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained fadeAutocorrectPrompt];
}

- (void)underlineCandidate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained underlineCandidate:v4];
}

- (BOOL)shouldUnderlineCandidate:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 performSelector:sel_shouldHintAtAlternativeInput])
  {
    v4 = 1;
  }

  else if ([v3 confidence])
  {
    v4 = [v3 confidence] != 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)autocorrectionRecordForWord:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputManagerState];
  v6 = [v5 inputString];
  v7 = [v4 isEqualToString:v6];

  if (!v7 || (-[_UIKeyboardStateManager inputManagerState](self, "inputManagerState"), v8 = objc_claimAutoreleasedReturnValue(), [v8 autocorrectionRecordForInputString], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      v10 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
      v9 = [v10 candidateForFinalString:v4];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)delegateSuggestionsForCurrentInput
{
  v3 = [(UITextInputTraits *)self->m_traits textSuggestionDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_34:
    v28 = 1;
    goto LABEL_35;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v3 hasCurrentSuggestions])
  {
    v4 = [(_UIKeyboardStateManager *)self inputDelegate];
    v5 = [v4 _fullText];

    v6 = [(_UIKeyboardStateManager *)self inputDelegate];
    v7 = [v6 _selectedNSRange];

    v8 = [v3 suggestionsForString:v5 inputIndex:v7];
    v10 = v9;
    v11 = v8;
    if ([v11 count])
    {
      v12 = [v11 objectAtIndex:0];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 length];
    if (v13)
    {
      v14 = v13;
      if ([v5 isEqualToString:v12])
      {
LABEL_28:
        if ([v11 count] < 2)
        {
          v32 = 0;
        }

        else
        {
          v30 = [v11 objectAtIndex:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v32 = [v11 objectAtIndex:1];
          }

          else
          {
            v33 = MEMORY[0x1E69D95F0];
            v34 = [v11 objectAtIndex:1];
            v32 = [v33 candidateWithCandidate:v34 forInput:v5];
          }
        }

        [(_UIKeyboardStateManager *)self setAutocorrection:v32];
        [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];

        goto LABEL_34;
      }

      if (!delegateSuggestionsForCurrentInput_nbspString)
      {
        v15 = [MEMORY[0x1E696AEC0] _stringWithUnichar:160];
        v16 = delegateSuggestionsForCurrentInput_nbspString;
        delegateSuggestionsForCurrentInput_nbspString = v15;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v12];
      [v17 replaceOccurrencesOfString:@" " withString:delegateSuggestionsForCurrentInput_nbspString options:2 range:{0, v14}];
      self->m_textInputChangesIgnored = 1;
      v18 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v18 _selectAll];

      [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
      self->m_textInputChangesIgnored = 0;
      v19 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v19 insertText:v17 updateInputSource:0];

      if (v10 >= v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = v10;
      }

      if (v14 > v10)
      {
        self->m_textInputChangesIgnored = 1;
        v21 = [(_UIKeyboardStateManager *)self inputDelegate];
        [v21 _moveCurrentSelection:(v20 - v14)];

        v22 = [(_UIKeyboardStateManager *)self inputDelegate];
        LOBYTE(v21) = objc_opt_respondsToSelector();

        if (v21)
        {
          v23 = [v12 _isNaturallyRTL];
          if (v20 > 5 || (v23 & 1) != 0)
          {
            v29 = v23 ^ 1;
            if (v20 < v14 - 5)
            {
              v29 = 1;
            }

            if (v29)
            {
              goto LABEL_26;
            }

            v24 = [(_UIKeyboardStateManager *)self inputDelegate];
            v25 = v24;
            v26 = v14 - 1;
          }

          else
          {
            v24 = [(_UIKeyboardStateManager *)self inputDelegate];
            v25 = v24;
            v26 = 0;
          }

          [v24 _scrollRangeToVisible:v26 animated:{0, 0}];
        }

LABEL_26:
        [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
        self->m_textInputChangesIgnored = 0;
      }
    }

    else
    {
      self->m_textInputChangesIgnored = 1;
      v27 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v27 _selectAll];

      [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
      self->m_textInputChangesIgnored = 0;
      v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v17 insertText:&stru_1EFB14550 updateInputSource:0];
    }

    goto LABEL_28;
  }

  v28 = 0;
LABEL_35:

  return v28;
}

- (void)generateCandidatesWithOptions:(int)a3
{
  v3 = a3;
  v59[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x10) == 0)
  {
    [(_UIKeyboardStateManager *)self setCurrentCandidateRequest:0];
  }

  if (![(_UIKeyboardStateManager *)self canShowPredictionBar]&& ![(_UIKeyboardStateManager *)self usesCandidateSelection])
  {
    [(_UIKeyboardStateManager *)self setCandidates:0];
  }

  v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  if ([UIKeyboardCameraSession shouldShowTextSuggestionForResponder:v5])
  {
    v6 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v7 = [v6 autocorrectionList];
    v8 = [v7 predictions];
    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_UIKeyboardStateManager *)self canShowAppConnections];
  if (![(_UIKeyboardStateManager *)self canShowPredictionBar]&& ![(_UIKeyboardStateManager *)self usesCandidateSelection]&& self->m_userChangedSelection && !v10 && !v9)
  {

    [(_UIKeyboardStateManager *)self setAutocorrection:0];
    return;
  }

  if (!v9 && [(_UIKeyboardStateManager *)self _isShowingSuggestionForKeyboardCamera])
  {
    [(_UIKeyboardStateManager *)self setSuggestions:0];
  }

  v11 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v12 = [v11 _shouldEvaluateForWritingToolsInCandidateBarAsynchronously];

  v13 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v14 = [v13 _shouldDisplayWritingToolsCandidateOptions];

  if ((v14 & 1) == 0)
  {
    v15 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v16 = [v15 textSuggestionList];
    v17 = [v16 isShowingSuggestionForWritingTools];

    if (v17)
    {
      [(_UIKeyboardStateManager *)self setSuggestions:0];
    }
  }

  if ((v3 & 4) == 0)
  {
    v18 = [(UITextInputTraits *)self->m_traits textSuggestionDelegate];
    if (v18)
    {
      v19 = [(_UIKeyboardStateManager *)self delegateSuggestionsForCurrentInput];

      if (v19)
      {
        v20 = [(_UIKeyboardStateManager *)self autocorrectionController];
        v21 = ([v20 hasTextSuggestionCandidates] ^ 1) & v9;

        if (v21 != 1)
        {
          v22 = [(_UIKeyboardStateManager *)self autocorrectionController];
          v23 = ([v22 hasTextSuggestionCandidates] ^ 1) & v14;

          if (v23 != 1)
          {
            return;
          }

LABEL_68:
          v50 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          v49 = [v50 _textSuggestionsForWritingTools];
          [(_UIKeyboardStateManager *)self setSuggestions:v49];

          goto LABEL_73;
        }

LABEL_64:

        [(_UIKeyboardStateManager *)self _generateTextSuggestionForKeyboardCamera];
        return;
      }
    }
  }

  v24 = v3 & 4;
  v25 = [(_UIKeyboardStateManager *)self usesCandidateSelection];
  v26 = [(_UIKeyboardStateManager *)self utlizeEuclidModelForDictationReplacement];
  if (v24 || !v26)
  {
    if (!v25)
    {
      if ([(_UIKeyboardStateManager *)self autocorrectionPreferenceForTraits])
      {
        v31 = [(_UIKeyboardStateManager *)self changeCount]!= 0;
      }

      else
      {
        v31 = 0;
      }

      v41 = [(_UIKeyboardStateManager *)self _shouldLoadPredictionsBasedOnCurrentTraits];
      v42 = [(TIKeyboardState *)self->m_keyboardState needContactAutofill];
      if (v31 || v41 || v10 || v24 != 0 || (v42 & 1) != 0 || UIKeyboardCurrentInputModeIsMultiscript())
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57___UIKeyboardStateManager_generateCandidatesWithOptions___block_invoke;
        aBlock[3] = &unk_1E70FDE98;
        aBlock[4] = self;
        v56 = v24 >> 2;
        v57 = v14;
        v58 = v9;
        v43 = _Block_copy(aBlock);
        if (((v24 == 0) & v12) == 1 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v44 = objc_claimAutoreleasedReturnValue(), [v44 selectedTextRange], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEmpty"), v45, v44, v46))
        {
          objc_initWeak(&location, self);
          v47 = [(_UIKeyboardStateManager *)self delegateAsResponder];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __57___UIKeyboardStateManager_generateCandidatesWithOptions___block_invoke_2;
          v51[3] = &unk_1E70FDEC0;
          objc_copyWeak(&v53, &location);
          v52 = v43;
          [v47 _asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler:v51];

          objc_destroyWeak(&v53);
          objc_destroyWeak(&location);
        }

        else
        {
          if (v24)
          {
            v48 = 0;
          }

          else
          {
            v48 = v14;
          }

          (*(v43 + 2))(v43, v48);
        }

        return;
      }

      if (!v9)
      {
        if (!v14)
        {
          if ([(_UIKeyboardStateManager *)self _isShowingSuggestionForKeyboardCamera])
          {
            [(_UIKeyboardStateManager *)self setSuggestions:0];
          }

          v50 = [(_UIKeyboardStateManager *)self autocorrectionController];
          [v50 clearAutocorrectionAndNotifyObservers:1];
          goto LABEL_73;
        }

        goto LABEL_68;
      }

      goto LABEL_64;
    }

    if (v24)
    {
      [(_UIKeyboardStateManager *)self setUserSelectedCurrentCandidate:0];
    }

    else if (v9 && ([(_UIKeyboardStateManager *)self inputForMarkedText], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
    {
      [(_UIKeyboardStateManager *)self _generateTextSuggestionForKeyboardCamera];
    }

    else if (v14)
    {
      v28 = [(_UIKeyboardStateManager *)self inputForMarkedText];

      if (!v28)
      {
        v29 = [(_UIKeyboardStateManager *)self delegateAsResponder];
        v30 = [v29 _textSuggestionsForWritingTools];
        [(_UIKeyboardStateManager *)self setSuggestions:v30];
      }
    }

    v32 = [(_UIKeyboardStateManager *)self inputManagerState];
    -[_UIKeyboardStateManager generateCandidatesAsynchronouslyWithRange:selectedCandidate:](self, "generateCandidatesAsynchronouslyWithRange:selectedCandidate:", 0, [v32 initialCandidateBatchCount], 0);

    v33 = MEMORY[0x1E69D95F0];
    v34 = [(_UIKeyboardStateManager *)self inputManagerState];
    if ([v34 suppressPlaceholderCandidate])
    {
      v35 = [v33 candidateWithUnchangedInput:0];
    }

    else
    {
      v36 = [(_UIKeyboardStateManager *)self _markedText];
      v35 = [v33 candidateWithUnchangedInput:v36];
    }

    v37 = MEMORY[0x1E69D95E8];
    v38 = [MEMORY[0x1E695DFB0] null];
    v59[0] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
    v40 = [v37 setWithCandidates:v39 initialSelectedIndex:0x7FFFFFFFFFFFFFFFLL defaultCandidate:v35 sortMethods:0 sortMethodGroups:0 indexTitles:0 showExtensionCandidates:0 disambiguationCandidates:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
    [(_UIKeyboardStateManager *)self setCandidates:v40];

    [(_UIKeyboardStateManager *)self updateKeyboardConfigurations];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v50 = [(_UIKeyboardStateManager *)self dictationAlternativesForReplacement];
      if ([v50 count])
      {
        [(_UIKeyboardStateManager *)self populateDictationAlternativesCandidates:v25 withDictationAlternatives:v50];
      }

      else
      {
        [(_UIKeyboardStateManager *)self populateEuclidCandidates:v25];
      }

LABEL_73:

      return;
    }

    [(_UIKeyboardStateManager *)self populateEuclidCandidates:v25];
  }
}

- (id)_buildCandidatesFromResults:(id)a3 selectedText:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UIKeyboardStateManager *)self isSelectionAtSentenceAutoshiftBoundary:1];
  v9 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (v8)
        {
          v16 = [UIDictationUtilities capitalizeFirstWord:v15, v20];
        }

        else
        {
          v16 = v15;
        }

        v17 = v16;
        v18 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v16 forInput:v7 property:{32, v20}];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)_updateCandidatesWithCandidates:(id)a3 usesCandidateSelection:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82___UIKeyboardStateManager__updateCandidatesWithCandidates_usesCandidateSelection___block_invoke;
  v10[3] = &unk_1E70F5B18;
  v13 = a4;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)populateEuclidCandidates:(BOOL)a3
{
  v5 = [(_UIKeyboardStateManager *)self _textInputController];
  v6 = [v5 _selectedText];
  v7 = +[UIDictationController activeInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52___UIKeyboardStateManager_populateEuclidCandidates___block_invoke;
  v9[3] = &unk_1E70FDEE8;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 euclidPhoneticString:v8 maxResultsCount:10 completion:v9];
}

- (void)populateDictationAlternativesCandidates:(BOOL)a3 withDictationAlternatives:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = [(_UIKeyboardStateManager *)self _textInputController];
  v7 = [v9 _selectedText];
  v8 = [(_UIKeyboardStateManager *)self _buildCandidatesFromResults:v6 selectedText:v7];

  [(_UIKeyboardStateManager *)self _updateCandidatesWithCandidates:v8 usesCandidateSelection:v4];
}

- (id)dictationAlternativesForReplacement
{
  v2 = [(_UIKeyboardStateManager *)self _textInputController];
  v3 = [v2 dictationAlternativesForSelectedText];

  return v3;
}

- (void)_generateTextSuggestionForKeyboardCamera
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardStateManager *)self delegate];
  v4 = [UIAction _textFromCameraTitleForResponder:v3];
  v5 = [UITextSuggestionWithAction textSuggestionWithInputText:v4];
  [v5 setTarget:v3];
  [v5 setAction:sel_captureTextFromCamera_];
  v6 = +[UIAction _textFromCameraImage];
  [v5 setImage:v6];

  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(_UIKeyboardStateManager *)self setSuggestions:v7];
}

- (id)replacementsFromSelectedText
{
  v3 = objc_alloc_init(UITextReplacementGeneratorForCorrections);
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 selectedTextRange];
  [(UITextReplacementGenerator *)v3 setReplacementRange:v5];

  v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v7 = [(UITextReplacementGenerator *)v3 replacementRange];
  v8 = [v6 textInRange:v7];
  [(UITextReplacementGenerator *)v3 setStringToReplace:v8];

  v9 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
  if ([v9 _doneLoading])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(UITextReplacementGeneratorForCorrections *)v3 setTextChecker:v10];
  v11 = [(UITextReplacementGenerator *)v3 stringToReplace];
  v12 = [(_UIKeyboardStateManager *)self autocorrectionRecordForWord:v11];
  [(UITextReplacementGeneratorForCorrections *)v3 setAutocorrectionRecord:v12];

  [(UITextReplacementGeneratorForCorrections *)v3 setForceHistoryReplacement:1];
  [(UITextReplacementGeneratorForCorrections *)v3 setForceAutocorrectionGuesses:1];
  [(UITextReplacementGeneratorForCorrections *)v3 setForceSpellingGuesses:1];
  [(UITextReplacementGeneratorForCorrections *)v3 setMaxCountAfterAutocorrectionGuesses:1];
  [(UITextReplacementGeneratorForCorrections *)v3 setMaxCountAfterSpellingGuesses:3];
  v13 = [(UITextReplacementGeneratorForCorrections *)v3 replacements];

  return v13;
}

- (void)generateCandidatesFromReplacements
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardStateManager *)self replacementsFromSelectedText];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = MEMORY[0x1E69D95F0];
        v12 = [v10 replacementText];
        v13 = [v10 originalText];
        v14 = [v11 candidateWithCandidate:v12 forInput:v13];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:v4];
  [v15 updateLabelsWithSmartPunctuation:self->m_smartPunctuationController];
  v16 = [(_UIKeyboardStateManager *)self autocorrectionController];
  [v16 setAutocorrectionList:v15];

  v17 = [MEMORY[0x1E69D95E8] setWithCandidates:v4];
  [(_UIKeyboardStateManager *)self setCandidates:v17];
}

- (id)generateAutocorrectionReplacements:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__36;
  v16 = __Block_byref_object_dispose__36;
  v17 = 0;
  if (qword_1ED49D488 != -1)
  {
    dispatch_once(&qword_1ED49D488, &__block_literal_global_1766);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIKeyboardStateManager_generateAutocorrectionReplacements___block_invoke_3;
  v9[3] = &unk_1E70FD978;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performSingleTask:v9 breadcrumb:qword_1ED49D480];

  [v13[5] updateLabelsWithSmartPunctuation:self->m_smartPunctuationController];
  v7 = [v13[5] predictions];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)generateAutocorrectionListForSelectedText
{
  if ([(_UIKeyboardStateManager *)self shouldAccessInputManagerService]&& ([(_UIKeyboardStateManager *)self refreshKeyboardState], ([(TIKeyboardState *)self->m_keyboardState autocorrectionListUIDisplayed]& 1) == 0))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__36;
    v16 = __Block_byref_object_dispose__36;
    v17 = 0;
    v4 = [(TIKeyboardState *)self->m_keyboardState copy];
    [v4 setAutofillMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillMode](self->m_keyboardState, "autofillMode"))}];
    [v4 setAutofillSubMode:{+[UIKBAutofillController translateToTextInputAutofillMode:](UIKBAutofillController, "translateToTextInputAutofillMode:", -[TIKeyboardState autofillSubMode](self->m_keyboardState, "autofillSubMode"))}];
    if (qword_1ED49D498 != -1)
    {
      dispatch_once(&qword_1ED49D498, &__block_literal_global_1770);
    }

    v5 = [(_UIKeyboardStateManager *)self taskQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_3;
    v8[3] = &unk_1E70FD978;
    v6 = v4;
    v9 = v6;
    v10 = self;
    v11 = &v12;
    [v5 performSingleTask:v8 breadcrumb:qword_1ED49D490];

    [v13[5] updateLabelsWithSmartPunctuation:self->m_smartPunctuationController];
    v3 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)savedAutocorrectionListForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self _textChoicesAssistant];
  v6 = [v4 candidate];

  v7 = [v5 listForFinalString:v6];

  return v7;
}

- (void)clearAutoDeleteTimer
{
  [(UIKeyboardScheduledTask *)self->m_autoDeleteTask invalidate];
  m_autoDeleteTask = self->m_autoDeleteTask;
  self->m_autoDeleteTask = 0;
}

- (void)touchAutoDeleteTimerWithThreshold:(double)a3 adjustForPartialCompletion:(BOOL)a4
{
  v4 = a4;
  [(_UIKeyboardStateManager *)self clearAutoDeleteTimer];
  v7 = a3;
  if (v4)
  {
    v7 = a3 - (CFAbsoluteTimeGetCurrent() - self->m_autoDeleteLastDelete);
  }

  if (qword_1ED49D4B8 != -1)
  {
    dispatch_once(&qword_1ED49D4B8, &__block_literal_global_1778);
  }

  v8 = [(_UIKeyboardStateManager *)self taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88___UIKeyboardStateManager_touchAutoDeleteTimerWithThreshold_adjustForPartialCompletion___block_invoke_3;
  v11[3] = &unk_1E70FDF88;
  v12 = v4;
  v11[4] = self;
  *&v11[5] = a3;
  v9 = [v8 scheduleTask:v11 timeInterval:!v4 repeats:qword_1ED49D4B0 breadcrumb:v7];
  m_autoDeleteTask = self->m_autoDeleteTask;
  self->m_autoDeleteTask = v9;
}

- (void)handleAutoDeleteContinuationOnDestinationWithDeletionCount:(unint64_t)a3
{
  v5 = [(_UIKeyboardStateManager *)self inputDelegate];

  if (v5)
  {
    v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v6 _selectionAtDocumentStart];

    if (v7)
    {
      v8 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      [v8 forwardInputDestinationEventToUIHost:sel_performStopAutoDeleteAtDocumentStart];
    }

    else
    {
      if (!a3)
      {
        return;
      }

      [(_UIKeyboardStateManager *)self performAutoDeleteNumberOfTimes:a3 deleteOneWord:1 forwardToInputSource:0];
      v8 = +[UIDictationController activeInstance];
      [v8 markKeyboardDeleteMetricEvent];
    }
  }
}

- (void)performStopAutoDeleteAtDocumentStart
{
  if (qword_1ED49D4C8 != -1)
  {
    dispatch_once(&qword_1ED49D4C8, &__block_literal_global_1784);
  }

  v3 = [(_UIKeyboardStateManager *)self taskQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___UIKeyboardStateManager_performStopAutoDeleteAtDocumentStart__block_invoke_3;
  v4[3] = &unk_1E70FD058;
  v4[4] = self;
  [v3 addTask:v4 breadcrumb:qword_1ED49D4C0];
}

- (void)_stopAutoDeleteAtDocumentStart
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  [v4 deactivateActiveKeys];

  [(_UIKeyboardStateManager *)self clearAutoDeleteTimer];

  [(_UIKeyboardStateManager *)self clearShiftState];
}

- (void)handleAutoDeleteWithExecutionContext:(id)a3
{
  v4 = a3;
  if (![(_UIKeyboardStateManager *)self hasAdvancedInputDelegate])
  {
    goto LABEL_10;
  }

  self->m_autoDeleteOK = 1;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 _selectionAtDocumentStart];

  if (v6)
  {
    v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v8 = [v7 forwardingInputDelegate];

    if (!+[UIKeyboard isKeyboardProcess]|| v8)
    {
      [(_UIKeyboardStateManager *)self _stopAutoDeleteAtDocumentStart];
    }

    else
    {
      v9 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
      v10 = [v9 textOperations];
      [v10 setCustomInfoType:0x1EFB7CA30];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_UIKeyboardStateManager lastDeletionCountForFastDelete](self, "lastDeletionCountForFastDelete")}];
      v12 = [v9 textOperations];
      [v12 setCustomInfo:v11];

      [v9 flushOperations];
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (self->m_autoDeleteCount)
  {
    if (Current - self->m_autoDeleteLastDelete < self->m_autoDeleteInterval * 0.5)
    {
LABEL_10:
      [v4 returnExecutionToParent];
      goto LABEL_11;
    }
  }

  self->m_autoDeleteLastDelete = Current;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64___UIKeyboardStateManager_handleAutoDeleteWithExecutionContext___block_invoke;
  v15[3] = &unk_1E70FD058;
  v15[4] = self;
  v14 = [v4 childWithContinuation:v15];
  [(_UIKeyboardStateManager *)self handleDeleteAsRepeat:1 executionContext:v14];

LABEL_11:
}

- (void)completeHandleAutoDelete
{
  m_autoDeleteInterval = self->m_autoDeleteInterval;
  if (self->m_repeatDeleteWord)
  {
    v4 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet uncommittedText];

    if (!v4)
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v8 = [v7 preferencesActions];
      v9 = [v8 valueForPreferenceKey:@"RepeatDeleteWordRepeatInterfal"];
      [v9 floatValue];
      v11 = v10;

      v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v13 = [v12 preferencesActions];
      v14 = [v13 valueForPreferenceKey:@"RepeatDeleteWordCountForDecrement"];
      v15 = [v14 integerValue];

      m_autoDeleteInterval = v11 + (self->m_autoDeleteCount / v15) * -0.1;
LABEL_10:
      if (m_autoDeleteInterval < 0.05)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  m_autoDeleteCount = self->m_autoDeleteCount;
  if (m_autoDeleteCount != 20)
  {
    if (m_autoDeleteCount)
    {
      goto LABEL_10;
    }

    if (!self->m_autoDeleteUseForce)
    {
      m_autoDeleteInterval = 0.1;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (self->m_autoDeleteUseForce)
  {
LABEL_8:
    [(_UIKeyboardStateManager *)self timeoutForCurrentForce];
    m_autoDeleteInterval = v6;
    goto LABEL_10;
  }

  m_autoDeleteInterval = 0.35;
LABEL_13:
  if (m_autoDeleteInterval != self->m_autoDeleteInterval)
  {
    self->m_autoDeleteInterval = m_autoDeleteInterval;
    [(_UIKeyboardStateManager *)self touchAutoDeleteTimerWithThreshold:0 adjustForPartialCompletion:m_autoDeleteInterval];
  }

LABEL_15:
  ++self->m_autoDeleteCount;
}

- (void)startAutoDeleteTimer
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  self->m_repeatDeleteWord = [v4 BOOLForPreferenceKey:@"RepeatDeleteWordEnabled"];

  if (self->m_repeatDeleteWord)
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v7 = [v6 valueForPreferenceKey:@"RepeatDeleteWordFirstDelay"];
    [v7 floatValue];
    self->m_autoDeleteInterval = v8;

    m_autoDeleteInterval = self->m_autoDeleteInterval;
  }

  else
  {
    self->m_autoDeleteInterval = 0.5;
    m_autoDeleteInterval = 0.5;
  }

  [(_UIKeyboardStateManager *)self touchAutoDeleteTimerWithThreshold:0 adjustForPartialCompletion:m_autoDeleteInterval];
  self->m_autoDeleteCount = 0;
  self->m_autoDeleteLastDelete = -*MEMORY[0x1E695E460];
  self->m_autoDeleteShiftCharacter = 0;
}

- (double)scaleCurrentForceFrom:(double)result to:(double)a4
{
  v4 = 0.5;
  if (self->m_autoDeleteUseForce)
  {
    v4 = (self->m_autoDeleteCurrentForce + -80.0) / 420.0;
  }

  v5 = (a4 - result) * v4 + result;
  if (result >= a4)
  {
    v6 = result;
  }

  else
  {
    v6 = a4;
  }

  if (result >= a4)
  {
    result = a4;
  }

  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= result)
  {
    return v7;
  }

  return result;
}

- (double)timeoutForCurrentForce
{
  v3 = [(_UIKeyboardStateManager *)self shouldRapidDelete];
  v4 = 0.3;
  if (!v3)
  {
    v4 = 0.1;
  }

  [(_UIKeyboardStateManager *)self scaleCurrentForceFrom:v4 to:?];
  return result;
}

- (void)startAutoDeleteTimerForForce:(double)a3
{
  if (_AXSForceTouchEnabled())
  {
    self->m_autoDeleteUseForce = 1;
    _AXSForceTouchSensitivity();
    self->m_autoDeleteCurrentForceMultipler = v5;
    [(_UIKeyboardStateManager *)self convertForceToGrams:a3];
    self->m_autoDeleteCurrentForce = v6;
  }

  [(_UIKeyboardStateManager *)self startAutoDeleteTimer];
}

- (void)adjustAutoDeleteTimerForForce:(double)a3
{
  if (self->m_autoDeleteUseForce)
  {
    [(_UIKeyboardStateManager *)self convertForceToGrams:a3];
    if (v4 != self->m_autoDeleteCurrentForce)
    {
      self->m_autoDeleteCurrentForce = v4;
      if (self->m_autoDeleteCount)
      {
        [(_UIKeyboardStateManager *)self timeoutForCurrentForce];

        [(_UIKeyboardStateManager *)self touchAutoDeleteTimerWithThreshold:1 adjustForPartialCompletion:?];
      }
    }
  }
}

- (void)touchUpdateLastUsedInputModeAction
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  v5 = [v4 isPossibleToTypeFast];

  if (v5)
  {
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 disablesUpdateLastUsedInputModeTimer];

    if ((v7 & 1) == 0)
    {
      m_updateLastUsedInputModeAction = self->m_updateLastUsedInputModeAction;
      if (m_updateLastUsedInputModeAction)
      {

        [(UIDelayedAction *)m_updateLastUsedInputModeAction touch];
      }

      else
      {
        if (TIGetUpdateLastUsedInputModeDelayValue_onceToken[0] != -1)
        {
          dispatch_once(TIGetUpdateLastUsedInputModeDelayValue_onceToken, &__block_literal_global_3798);
        }

        v9 = [MEMORY[0x1E69D9680] sharedPreferencesController];
        v10 = [v9 valueForPreferenceKey:@"UpdateLastUsedInputModeDelay"];

        [v10 doubleValue];
        v12 = v11;

        if (v12 > 0.0)
        {
          v13 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleUpdateLastUsedInputModeAction_ userInfo:0 delay:v12];
          v14 = self->m_updateLastUsedInputModeAction;
          self->m_updateLastUsedInputModeAction = v13;
        }
      }
    }
  }
}

- (void)clearUpdateLastUsedInputModeAction
{
  [(UIDelayedAction *)self->m_updateLastUsedInputModeAction cancel];
  m_updateLastUsedInputModeAction = self->m_updateLastUsedInputModeAction;
  self->m_updateLastUsedInputModeAction = 0;
}

- (void)handleUpdateLastUsedInputModeAction:(id)a3
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v3 currentInputMode];

  if (([v5 isEmojiInputMode] & 1) == 0)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    [v4 updateLastUsedInputMode:v5];
  }
}

- (void)touchLongPressTimerWithDelay:(double)a3 userInfo:(id)a4
{
  v10 = a4;
  m_longPressAction = self->m_longPressAction;
  if (!m_longPressAction)
  {
    goto LABEL_4;
  }

  [(UIDelayedAction *)m_longPressAction delay];
  if (v7 != a3)
  {
    [(_UIKeyboardStateManager *)self clearLongPressTimer];
LABEL_4:
    v8 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleDelayedActionLongPress_ userInfo:v10 delay:a3];
    v9 = self->m_longPressAction;
    self->m_longPressAction = v8;

    goto LABEL_6;
  }

  [(UIDelayedAction *)self->m_longPressAction touch];
LABEL_6:
}

- (double)shouldExtendLongPressAction:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE30] processInfo];
  [v5 systemUptime];
  v7 = v6;

  [(_UIKeyboardStateManager *)self timestampOfLastTouchesEnded];
  v9 = 0.0;
  if (v8 + 0.4 < v7)
  {
    if (self->m_didExtendLongPressDelayForContinuousPath || (v10 = objc_loadWeakRetained(&self->_presentationDelegate), [v10 layout], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "typingStyleEstimator"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "currentTypingStyleEstimation"), v12, v11, v10, v13 < 2))
    {
      self->m_didExtendLongPressDelayForContinuousPath = 0;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v15 = [WeakRetained layout];
      v16 = [v15 gestureRecognizers];

      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          v20 = 0;
          do
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * v20);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ![v21 state] && objc_msgSend(v21, "forceHasIncreasedForTimeInterval:", 0.1))
            {
              [v21 minimumPressDuration];
              v23 = v22;
              [v4 delay];
              v9 = v23 - v24 + 0.01;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v18);
      }
    }

    else
    {
      self->m_didExtendLongPressDelayForContinuousPath = 1;
      v9 = 1.0;
    }
  }

  return v9;
}

- (void)handleDelayedActionLongPress:(id)a3
{
  v4 = a3;
  [(_UIKeyboardStateManager *)self shouldExtendLongPressAction:self->m_longPressAction];
  if (v5 <= 0.0)
  {
    v6 = self->m_longPressAction;
    if (qword_1ED49D4D8 != -1)
    {
      dispatch_once(&qword_1ED49D4D8, &__block_literal_global_1795);
    }

    v7 = [(_UIKeyboardStateManager *)self taskQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56___UIKeyboardStateManager_handleDelayedActionLongPress___block_invoke_3;
    v10[3] = &unk_1E70FD208;
    v11 = v6;
    v12 = self;
    v13 = v4;
    v8 = qword_1ED49D4D0;
    v9 = v6;
    [v7 addTask:v10 breadcrumb:v8];
  }

  else
  {
    [(_UIKeyboardStateManager *)self touchLongPressTimerWithDelay:?];
  }
}

- (void)longPressAction:(id)a3
{
  [(_UIKeyboardStateManager *)self clearLongPressTimer];
  self->m_longPress = 1;

  [(_UIKeyboardStateManager *)self callLayoutLongPressAction];
}

- (void)clearTimers
{
  if (pthread_main_np())
  {
    [(_UIKeyboardStateManager *)self clearLongPressTimer];
    [(_UIKeyboardStateManager *)self clearAutocorrectPromptTimer];
    [(_UIKeyboardStateManager *)self clearAutoDeleteTimer];
    [(_UIKeyboardStateManager *)self clearCapsLockDelayOverrideTimer];
    [(_UIKeyboardStateManager *)self clearUpdateLastUsedInputModeAction];

    [(_UIKeyboardStateManager *)self clearIdleDetectionAction];
  }

  else
  {

    [(_UIKeyboardStateManager *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)updateHardwareKeyboardLayout:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateHardwareKeyboardLayout:v3];
}

- (void)setInHardwareKeyboardMode:(BOOL)a3 forceRebuild:(BOOL)a4 shouldMoveKeyboard:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(TIKeyboardState *)self->m_keyboardState hardwareKeyboardMode]^ a3;
  if (v9 == 1)
  {
    [(TIKeyboardState *)self->m_keyboardState setHardwareKeyboardMode:v7];
    v10 = 4;
    if (!v7)
    {
      v10 = 1;
    }

    self->m_textInputSource = v10;
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v11 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    v12 = [v11 remoteTextInputClientHasActiveSession];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v14 = [WeakRetained geometryDelegate];
  if (![v14 isAutomatic])
  {

    goto LABEL_12;
  }

  if (v9)
  {
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_presentationDelegate);
    v16 = [v15 geometryDelegate];
    v17 = [v16 isMinimized];

    if (v17 == v7)
    {
      return;
    }
  }

  if ([(TIKeyboardState *)self->m_keyboardState hardwareKeyboardMode]&& ![(_UIKeyboardStateManager *)self floatingForced])
  {
    if (![(_UIKeyboardStateManager *)self automaticMinimizationEnabled])
    {
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained hideKeyboard];
LABEL_12:

    goto LABEL_13;
  }

  v18 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v19 = [v18 handlingRemoteEvent];

  if ((v19 & 1) == 0)
  {
    v20 = objc_loadWeakRetained(&self->_presentationDelegate);
    v21 = [v20 isUsingDictationLayout];

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v22 showKeyboard];

      WeakRetained = +[UIDictationView sharedInstance];
      v23 = +[UIDictationController sharedInstance];
      [WeakRetained setState:{objc_msgSend(v23, "state")}];
    }

    else
    {
      [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      [WeakRetained showKeyboard];
    }

    goto LABEL_12;
  }

LABEL_13:
  if (v9)
  {
    if (self->m_hardwareKeyboardAttached)
    {
      [(_UIKeyboardStateManager *)self updateHardwareKeyboardLayout:v6];
    }

    [(_UIKeyboardStateManager *)self notifyInputSourceStateChangeIfNeeded];
  }
}

- (void)proceedShouldReturnIfNeededForASP
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"autofillsignup"])
  {
    v6 = [(_UIKeyboardStateManager *)self delegateAlreadyInAutofillGroup];

    if (v6)
    {
      v7 = [(_UIKeyboardStateManager *)self inputDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [(_UIKeyboardStateManager *)self inputDelegate];
        v9 = [v11 delegate];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          [(_UIKeyboardStateManager *)self callShouldInsertText:@"\n"];
        }

        else
        {
          [(_UIKeyboardStateManager *)self dismissKeyboard];
        }

        return;
      }
    }
  }

  else
  {
  }

  [(_UIKeyboardStateManager *)self dismissKeyboard];
}

- (void)nonDestructivelyDismissKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained nonDestructivelyDismissKeyboard];
}

- (void)dismissKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained dismissKeyboard];
}

- (void)_attemptAuthenticationWithMessage:(id)a3
{
  if (a3)
  {
    [(TIKeyboardState *)self->m_keyboardState setEventAuthenticationMessage:?];
  }
}

- (BOOL)_isValidKeyInput:(id)a3
{
  v4 = a3;
  if ([(UITextInputTraits *)self->m_traits isSecureTextEntry])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v6 = [WeakRetained layout];
    if (v6)
    {
      v7 = v6;
      v8 = objc_loadWeakRetained(&self->_presentationDelegate);
      v9 = [v8 layout];
      v10 = [v9 canProduceString:v4];

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  v12 = [v4 length];
  if (!v12)
  {
LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    v15 = [v4 characterAtIndex:v14];
    if (v15 < 0x20 && ((0xFFFFD8FF >> v15) & 1) != 0)
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  v11 = 0;
LABEL_12:

  return v11;
}

- (void)updateKeyboardEventsLagging:(id)a3
{
  v4 = a3;
  v5 = GSCurrentEventTimestamp() / 1000000000.0;
  [v4 timestamp];
  v7 = v6;

  m_keyboardState = self->m_keyboardState;

  [(TIKeyboardState *)m_keyboardState setKeyboardEventsLagging:v5 - v7 > 0.004, v5 - v7];
}

- (void)_handleWebKeyEvent:(id)a3 withEventType:(unint64_t)a4 withInputString:(id)a5 withInputStringIgnoringModifiers:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (qword_1ED49D4E8 != -1)
  {
    dispatch_once(&qword_1ED49D4E8, &__block_literal_global_1802);
  }

  v13 = [(_UIKeyboardStateManager *)self taskQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers___block_invoke_3;
  v18[3] = &unk_1E70FD630;
  v18[4] = self;
  v19 = v10;
  v21 = v12;
  v22 = a4;
  v20 = v11;
  v14 = qword_1ED49D4E0;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v13 addTask:v18 breadcrumb:v14];
}

- (void)_handleWebKeyEvent:(id)a3 withEventType:(int)a4 withInputString:(id)a5 withInputStringIgnoringModifiers:(id)a6 executionContext:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v16 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 textOperations];
      [v12 setKeyEventForwardedFromInputUIHost:1];
      [v18 setCustomInfoType:0x1EFB7CA50];
      v19 = [MEMORY[0x1E695DF90] dictionary];
      [v19 setObject:@"_handleWebKeyEvent:withEventType:withInputString:withInputStringIgnoringModifiers:" forKeyedSubscript:@"selector"];
      [v19 setObject:v12 forKeyedSubscript:@"keyEvent"];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
      [v19 setObject:v20 forKeyedSubscript:@"webEventType"];

      if (v13)
      {
        [v19 setObject:v13 forKeyedSubscript:@"inputString"];
      }

      if (v14)
      {
        [v19 setObject:v14 forKeyedSubscript:@"inputStringIgnoringModifiers"];
      }

      [v18 setCustomInfo:v19];
      v21 = [(_UIKeyboardStateManager *)self buildInputSourceState];
      [v18 setInputSourceState:v21];

      [v17 flushOperations];
    }

    [v15 returnExecutionToParent];
  }

  else
  {
    location = 0;
    p_location = &location;
    v59 = 0x2050000000;
    v22 = qword_1ED49D5F0;
    v60 = qword_1ED49D5F0;
    if (!qword_1ED49D5F0)
    {
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __getWebEventClass_block_invoke;
      v54 = &unk_1E70F2F20;
      v55 = &location;
      __getWebEventClass_block_invoke(&v51);
      v22 = p_location[3];
    }

    v23 = v22;
    _Block_object_dispose(&location, 8);
    v41 = [v22 alloc];
    [v12 timestamp];
    v25 = v24;
    v26 = [v12 _gsModifierFlags];
    v43 = v14;
    v44 = v13;
    val = v15;
    v27 = v10;
    if ([v12 _hidEvent] || self->m_shiftLocked)
    {
      v28 = 0;
    }

    else if (self->m_shift)
    {
      v28 = 0x20000;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v12 _isARepeat];
    v30 = [v12 _inputFlags];
    v31 = [v12 _hint];
    v32 = [v12 _keyCode];
    v33 = [v12 _modifiedInput];
    BYTE2(v40) = [v33 isEqualToString:@"\t"];
    LOWORD(v40) = v32;
    v34 = [v41 initWithKeyEventType:v27 timeStamp:v44 characters:v43 charactersIgnoringModifiers:v28 | v26 modifiers:v29 isRepeating:v30 withFlags:v25 withInputManagerHint:v31 keyCode:v40 isTabKey:?];

    v35 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v36 = [v35 delegateAdoptsWebTextInputPrivate];

    if (v36)
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__36;
      v55 = __Block_byref_object_dispose__36;
      v56 = 0;
      v15 = val;
      objc_initWeak(&location, val);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __126___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_executionContext___block_invoke;
      aBlock[3] = &unk_1E70FDFB0;
      objc_copyWeak(&v50, &location);
      aBlock[4] = &v51;
      v37 = _Block_copy(aBlock);
      [val setPendingCompletionBlock:v37];
      ++self->m_changeCount;
      v38 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __126___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_executionContext___block_invoke_2;
      v45[3] = &unk_1E70FDFD8;
      v47 = self;
      v48 = &v51;
      v46 = val;
      [v38 handleKeyWebEvent:v34 withCompletionHandler:v45];

      objc_destroyWeak(&v50);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v51, 8);
    }

    else
    {
      v39 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v39 handleKeyWebEvent:v34];

      v15 = val;
      [val returnExecutionToParentWithInfo:MEMORY[0x1E695E118]];
    }

    v14 = v43;

    v13 = v44;
  }
}

- (void)_handleWebKeyEvent:(id)a3 withIndex:(unint64_t)a4 inInputString:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (qword_1ED49D4F8 != -1)
  {
    dispatch_once(&qword_1ED49D4F8, &__block_literal_global_1822);
  }

  v10 = [(_UIKeyboardStateManager *)self taskQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString___block_invoke_3;
  v14[3] = &unk_1E70FD8D8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v11 = qword_1ED49D4F0;
  v12 = v9;
  v13 = v8;
  [v10 addTask:v14 breadcrumb:v11];
}

- (void)_handleWebKeyEvent:(id)a3 withIndex:(unint64_t)a4 inInputString:(id)a5 executionContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(__CFString *)v11 length]<= a4)
  {
    [v12 returnExecutionToParent];
  }

  else
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v14 = [v13 delegateAdoptsWebTextInputPrivate];

      if (v14)
      {
        [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
      }

      v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v16 = [v15 inputSystemSourceSession];

      if (v16)
      {
        v17 = [v16 textOperations];
        v18 = [MEMORY[0x1E695DF90] dictionary];
        [v18 setObject:@"_handleWebKeyEvent:withIndex:inInputString:" forKeyedSubscript:@"selector"];
        [v18 setObject:v10 forKeyedSubscript:@"event"];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        [v18 setObject:v19 forKeyedSubscript:@"index"];

        if (v11)
        {
          v20 = v11;
        }

        else
        {
          v20 = &stru_1EFB14550;
        }

        [v18 setObject:v20 forKeyedSubscript:@"inputString"];
        [v17 setCustomInfoType:0x1EFB7CA50];
        [v17 setCustomInfo:v18];
        [v16 flushOperations];
      }

      [v12 returnExecutionToParent];
    }

    else
    {
      [(_UIKeyboardStateManager *)self setExternalTask:0];
      [(_UIKeyboardStateManager *)self setEventForCurrentWebEvent:v10];
      *&self->m_webEventWasHandledAsKeyCommand = 0;
      v21 = [(__CFString *)v11 rangeOfComposedCharacterSequenceAtIndex:a4];
      v22 = [(__CFString *)v11 length];
      if (v22)
      {
        v47 = v11;
        v23 = [v10 _shiftModifiedInput];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = [v10 _unmodifiedInput];
        }

        v46 = v25;
      }

      else
      {
        v47 = [(__CFString *)v11 substringWithRange:v21, 0];
        v46 = [(__CFString *)v47 copy];
      }

      v26 = [v10 _hidEvent];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke;
      aBlock[3] = &unk_1E70FD900;
      aBlock[4] = self;
      v27 = v10;
      v63 = v27;
      v65 = v21;
      v66 = v22;
      v64 = v11;
      v28 = _Block_copy(aBlock);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_2;
      v61[3] = &unk_1E70FE000;
      v61[4] = self;
      v29 = _Block_copy(v61);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_3;
      v59[3] = &unk_1E70FE028;
      v60 = v26 != 0;
      v59[4] = self;
      v30 = _Block_copy(v59);
      if (v26)
      {
        if ([v27 _isKeyDown])
        {
          v31 = 4;
        }

        else
        {
          v31 = 5;
        }

        self->m_webEventIsKeyDown = [v27 _isKeyDown];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_4;
        v55[3] = &unk_1E70FE078;
        v55[4] = self;
        v56 = v29;
        v57 = v30;
        v58 = v28;
        v32 = v30;
        v33 = [v12 childWithContinuation:v55];
        v34 = self;
        v35 = v31;
        v36 = v46;
        v16 = v47;
        [(_UIKeyboardStateManager *)v34 _handleWebKeyEvent:v27 withEventType:v35 withInputString:v47 withInputStringIgnoringModifiers:v46 executionContext:v33];

        v37 = v56;
      }

      else
      {
        self->m_webEventIsKeyDown = 1;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_8;
        v48[3] = &unk_1E70FE0A0;
        v48[4] = self;
        v45 = v27;
        v49 = v45;
        v44 = v47;
        v50 = v44;
        v36 = v46;
        v38 = v46;
        v51 = v38;
        v52 = v29;
        v53 = v30;
        v54 = v28;
        v39 = v30;
        [v12 childWithContinuation:v48];
        v40 = v29;
        v42 = v41 = v28;
        v43 = self;
        v16 = v47;
        [(_UIKeyboardStateManager *)v43 _handleWebKeyEvent:v45 withEventType:4 withInputString:v44 withInputStringIgnoringModifiers:v38 executionContext:v42];

        v28 = v41;
        v29 = v40;

        v37 = v49;
      }
    }
  }
}

- (void)triggerPendingKeyup
{
  if (self->_pendingKeyupOperation)
  {
    if (qword_1ED49D548 != -1)
    {
      dispatch_once(&qword_1ED49D548, &__block_literal_global_1853);
    }

    v3 = [(_UIKeyboardStateManager *)self taskQueue];
    v4 = [(_UIKeyboardImplHeldOperation *)self->_pendingKeyupOperation operation];
    [v3 addDeferredTask:v4 breadcrumb:qword_1ED49D540];

    pendingKeyupOperation = self->_pendingKeyupOperation;
    self->_pendingKeyupOperation = 0;
  }
}

- (void)_handleWebKeyEvent:(id)a3 withInputString:(id)a4 executionContext:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length] >= 2 && objc_msgSend(v8, "characterAtIndex:", 0) == 46)
  {
    v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v11 = [v10 privateInputDelegate];
    if (v11)
    {
      v12 = v11;
      v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v14 = [v13 _characterBeforeCaretSelection];

      if (v14 != 46)
      {
        goto LABEL_7;
      }

      [v8 substringFromIndex:1];
      v8 = v10 = v8;
    }
  }

LABEL_7:
  [(_UIKeyboardStateManager *)self _handleWebKeyEvent:v15 withIndex:0 inInputString:v8 executionContext:v9];
}

- (void)_remapKeyEvent:(id)a3 withKeyEventMap:(id)a4
{
  v12 = a3;
  v6 = a4;
  LODWORD(a4) = [v12 _gsModifierFlags];
  v7 = [v12 _modifiedInput];
  v8 = [v12 _unmodifiedInput];
  v9 = [v6 remapKeyWithString:v7 stringWithoutModifiers:v8 modifierFlags:a4 keyboardState:self->m_keyboardState];

  if (v9)
  {
    v10 = [v12 _modifiedInput];
    v11 = [v10 isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
      [v12 set_modifiedInput:v9];
    }
  }
}

- (void)_handleKeyEvent:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_UIKeyboardStateManager *)self setExternalTask:0];
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, v6);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "appKey", "", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained allowResponderChainFirstChanceToHandleKeyEvent:v6];

  kdebug_trace();
  v12 = kac_get_log();
  v13 = os_signpost_id_make_with_pointer(v12, v6);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v12, OS_SIGNPOST_INTERVAL_END, v14, "appKey", "", buf, 2u);
    }
  }

  v15 = [(_UIKeyboardStateManager *)self externalTask];

  if (v15)
  {
    v16 = [(_UIKeyboardStateManager *)self externalTask];
    [(_UIKeyboardStateManager *)self setExternalTask:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60___UIKeyboardStateManager__handleKeyEvent_executionContext___block_invoke;
    v18[3] = &unk_1E70FD058;
    v18[4] = self;
    v17 = [v7 childWithContinuation:v18];
    (v16)[2](v16, v17);
  }

  else
  {
    [(_UIKeyboardStateManager *)self flushTouchEventWaitingForKeyInputEventIfNecessary];
    [v7 returnExecutionToParent];
  }
}

- (void)handleKeyEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ([v4 _hidEvent])
  {
    v5 = [v4 _cloneEvent];
  }

  v6 = _UIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = [v4 type];
    v19 = 2048;
    v20 = [v4 subtype];
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard receives keyEvent type: %li; subtype: %li", buf, 0x16u);
  }

  if (![v5 _hidEvent] || objc_msgSend(v5, "_modifierFlags") != 0x40000 || objc_msgSend(v5, "_keyCode") != 40)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __42___UIKeyboardStateManager_handleKeyEvent___block_invoke;
    v14 = &unk_1E70FD1B8;
    v15 = self;
    v16 = v5;
    v7 = _Block_copy(&v11);
    v8 = [(_UIKeyboardStateManager *)self taskQueue:v11];
    v9 = [v8 isMainThreadExecutingTask];

    if (v9)
    {
      [(_UIKeyboardStateManager *)self setExternalTask:v7];
    }

    else
    {
      if (qword_1ED49D558 != -1)
      {
        dispatch_once(&qword_1ED49D558, &__block_literal_global_1857);
      }

      v10 = [(_UIKeyboardStateManager *)self taskQueue];
      [v10 addTask:v7 breadcrumb:qword_1ED49D550];
    }
  }
}

- (unint64_t)_handleKeyCommandCommon:(id)a3 options:(unint64_t)a4
{
  v10 = 0;
  v6 = a3;
  v7 = [v6 _hidEvent];
  v8 = [(_UIKeyboardStateManager *)self handleKeyCommand:v6 repeatOkay:&v10 options:a4];

  result = 0;
  if (v7 && v8)
  {
    if ((a4 & 2) == 0 && (v10 & 1) == 0)
    {
      [(_UIKeyboardStateManager *)self cancelAllKeyEvents];
    }

    return v8;
  }

  return result;
}

- (BOOL)_shouldEmitString:(id)a3 forKeyEvent:(id)a4
{
  v6 = a3;
  if ([a4 _inputFlags] & 0x10) != 0 && (-[TIKeyboardInputManagerState ignoresDeadKeys](self->m_inputManagerState, "ignoresDeadKeys") & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate), v8 = objc_msgSend(WeakRetained, "returnKeyState"), WeakRetained, v8 == 1) && (objc_msgSend(v6, "_isNewlineOrReturn"))
  {
    v9 = 0;
  }

  else
  {
    v10 = [(_UIKeyboardStateManager *)self inputManagerState];
    v11 = [v10 keyboardBehaviors];
    v12 = [(_UIKeyboardStateManager *)self _keyboardBehaviorState];
    v13 = [v11 keyBehaviorsForState:v12];

    v9 = !v13 || ([v13 tabKeyBehavior] == 1 || (objc_msgSend(v6, "isEqualToString:", @"\t") & 1) == 0) && ((objc_msgSend(v13, "spaceKeyBehavior") - 3) > 1 || (objc_msgSend(v6, "isEqualToString:", @" ") & 1) == 0);
  }

  return v9;
}

- (void)handleKeyEvent:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 _privatize];
  if (-[_UIKeyboardStateManager shouldApplyKeyboardCommandToUIHost](self, "shouldApplyKeyboardCommandToUIHost") || (v9 = 0x1E70E9000uLL, +[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI")) && ([v6 _inputFlags] & 0x80) != 0)
  {
    v8 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v8 forwardKeyboardEventToUIHost:v6];

    [v7 returnExecutionToParent];
  }

  else
  {
    if (([v6 _inputFlags] & 0x20) == 0)
    {
      [(_UIKeyboardStateManager *)self updateKeyboardEventsLagging:v6];
      v10 = [v6 _hidEvent];
      WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
      v12 = [WeakRetained isEmojiPopoverPresented];

      v13 = [v6 _isFromEmojiPopover];
      v14 = +[UIKeyboardInputModeController sharedInputModeController];
      v15 = [v14 currentInputMode];
      v16 = [v15 isExtensionInputMode];

      if (self->m_hardwareKeyboardAttached)
      {
        if (v10 && [(_UIKeyboardStateManager *)self exclusivityIdentifierMatched])
        {
          v17 = 1;
        }

        else
        {
          v17 = v12 | v13;
        }
      }

      else
      {
        v17 = 0;
      }

      [(_UIKeyboardStateManager *)self setInHardwareKeyboardMode:v17 & 1];
      if (self->m_hardwareKeyboardAttached && v10)
      {
        v18 = objc_loadWeakRetained(&self->_presentationDelegate);
        [v18 setHardwareKeyboardIsSeen];

        if ((v16 & 1) == 0)
        {
          [(_UIKeyboardStateManager *)self setAutomaticMinimizationEnabled:1];
          v19 = objc_loadWeakRetained(&self->_presentationDelegate);
          v20 = [v19 geometryDelegate];
          v21 = [v20 isMinimized];

          if ((v21 & 1) == 0)
          {
            [(_UIKeyboardStateManager *)self toggleSoftwareKeyboard];
          }

          v22 = objc_loadWeakRetained(&self->_presentationDelegate);
          [v22 dismissFloatingKeyboardFromPencilKitIfNeeded];
        }

        v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        [v23 updateSystemInputAssistantVisibilityAfterHardwareKeyEvent];
        if ([(_UIKeyboardStateManager *)self isCapsLockASCIIToggle])
        {
          v24 = [(_UIKeyboardStateManager *)self updateCapsLockDelayOverrideForNonTyping];
          v25 = [v24 scheduled];

          if (v25)
          {
            m_updateCapsLockDelayOverrideForNonTyping = [(_UIKeyboardStateManager *)self updateCapsLockDelayOverrideForNonTyping];
            [m_updateCapsLockDelayOverrideForNonTyping touch];
          }

          else
          {
            [(_UIKeyboardStateManager *)self adjustCapsLockDelayOverride];
            [(_UIKeyboardStateManager *)self clearCapsLockDelayOverrideTimer];
            v27 = [[UIDelayedAction alloc] initWithTarget:self action:sel_removeCapsLockDelayOverride userInfo:0 delay:0.15];
            m_updateCapsLockDelayOverrideForNonTyping = self->m_updateCapsLockDelayOverrideForNonTyping;
            self->m_updateCapsLockDelayOverrideForNonTyping = v27;
          }
        }
      }

      else if (!v10)
      {
        goto LABEL_36;
      }

      if ([v6 _isKeyDown])
      {
        if ([v6 _isARepeat])
        {
          v28 = [v6 _modifiedInput];
          v29 = [v28 _isDelete];

          if (v29)
          {
            self->m_repeatDeleteFromHardwareKeyboard = 1;
            self->m_autoDeleteCount = 0;
          }
        }
      }

      if ([v6 _isKeyDown] && objc_msgSend(v6, "_isARepeat"))
      {
        v30 = [(_UIKeyboardStateManager *)self inputDelegate];
        if (!v30 || [(_UIKeyboardStateManager *)self _hasMarkedText])
        {
LABEL_35:

          goto LABEL_36;
        }

        v41 = [(_UIKeyboardStateManager *)self canPresentPressAndHoldPopover:v6];

        if (v41)
        {
          v42 = [(_UIKeyboardStateManager *)self documentState];
          v30 = [v42 contextBeforeInput];

          if ([v30 length])
          {
            v43 = [v30 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v30, "length") - 1}];
            v45 = [v30 substringWithRange:{v43, v44}];
            if ([UIPressAndHoldPopoverController canPresentPressAndHoldPopoverForKeyString:v45])
            {
              v46 = objc_loadWeakRetained(&self->_presentationDelegate);
              [v46 presentPressAndHoldPopoverWithKeyString:v45];
            }

            [v7 returnExecutionToParent];

            goto LABEL_112;
          }

          goto LABEL_35;
        }
      }

LABEL_36:
      v30 = +[UIInputSwitcher activeInstance];
      if (v10)
      {
        if (([v6 _isARepeat] & 1) == 0)
        {
          v31 = [v6 _isKeyDown];
          m_hardwareKeyDownCodeToEventMap = self->m_hardwareKeyDownCodeToEventMap;
          v33 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v6, "_keyCode")}];
          if (v31)
          {
            [(NSMutableDictionary *)m_hardwareKeyDownCodeToEventMap setObject:v6 forKey:v33];
          }

          else
          {
            v34 = [(NSMutableDictionary *)m_hardwareKeyDownCodeToEventMap objectForKey:v33];

            if (v34)
            {
              v35 = self->m_hardwareKeyDownCodeToEventMap;
              v36 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v6, "_keyCode")}];
              [(NSMutableDictionary *)v35 removeObjectForKey:v36];

              if (self->m_repeatDeleteFromHardwareKeyboard)
              {
                [(_UIKeyboardStateManager *)self stopAutoDelete];
              }

              if ([(_UIKeyboardStateManager *)self _delegateRequiresKeyEvents])
              {
                v37 = [v6 _cloneEvent];
                v38 = [v34 _modifiedInput];
                [v37 set_modifiedInput:v38];

                v39 = [v34 _unmodifiedInput];
                [v37 set_unmodifiedInput:v39];

                v40 = [v37 _modifiedInput];
                [(_UIKeyboardStateManager *)self _handleWebKeyEvent:v37 withInputString:v40 executionContext:v7];

LABEL_112:
                goto LABEL_113;
              }

              v33 = v34;
            }

            else
            {
              v33 = 0;
            }
          }
        }

        v47 = [(_UIKeyboardStateManager *)self updatedKeyBehaviors];
        if (![v6 _isKeyDown])
        {
          goto LABEL_110;
        }

        v48 = [v6 _modifiedInput];
        if ([v48 _isPlainSpace] && objc_msgSend(v47, "spaceKeyBehavior") == 8)
        {

          goto LABEL_110;
        }

        v49 = [v6 _modifiedInput];
        if ([v49 _isNewlineOrReturn])
        {
          v50 = v30;
          v51 = v12;
          v52 = [v47 returnKeyBehavior];

          v53 = v52 == 8;
          v12 = v51;
          v30 = v50;
          v9 = 0x1E70E9000;
          if (v53)
          {
            goto LABEL_110;
          }
        }

        else
        {
        }
      }

      v54 = [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:v6 createIfNeeded:0];
      v55 = v54;
      if (v54)
      {
        CFRetain(v54);
        v56 = (GSKeyboardGetModifierState() & 0x220000) == 0;
      }

      else
      {
        v56 = 1;
      }

      [v30 hideSwitcherIfNeeded];
      v57 = [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:v6 createIfNeeded:0];
      if (v10)
      {
        v58 = v57;
        if (v55 != v57)
        {
          if (!v56)
          {
            v97 = 0;
            v90 = 0;
            v91 = 7;
            v88 = 0;
            v89 = &v97;
            v86 = 0;
            v87 = &v97;
            v85 = &v97;
            GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
          }

          [v6 _setHIDEvent:objc_msgSend(v6 keyboard:{"_hidEvent", v85, v86, v87, v88, v89, v90, v91), v58}];
        }
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if ([*(v9 + 3824) isRedesignedTextCursorEnabled] && objc_msgSend(v6, "_keyCode") != 57 && (objc_msgSend(v6, "_isGlobeKey") & 1) == 0)
      {
        v59 = [(_UIKeyboardStateManager *)self inputModeIndicatorController];
        [v59 keyPressed];

        m_showCursorAccessory = self->m_showCursorAccessory;
        if (!m_showCursorAccessory)
        {
          v61 = [[UIDelayedAction alloc] initWithTarget:self action:sel_showCursorAccessory userInfo:0 delay:0.5];
          v62 = self->m_showCursorAccessory;
          self->m_showCursorAccessory = v61;

          m_showCursorAccessory = self->m_showCursorAccessory;
        }

        [(UIDelayedAction *)m_showCursorAccessory touch];
        if (!self->m_hideCursorAccessoriesAssertion)
        {
          v63 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
          v64 = [v63 _selectionViewManager];
          v65 = [v64 _obtainHideCursorAccessoriesAssertionWithReason:@"key press"];
          m_hideCursorAccessoriesAssertion = self->m_hideCursorAccessoriesAssertion;
          self->m_hideCursorAccessoriesAssertion = v65;
        }
      }

      v67 = [(_UIKeyboardStateManager *)self inputManagerState];
      v68 = [v67 keyEventMap];

      if (v68)
      {
        v69 = [(_UIKeyboardStateManager *)self inputManagerState];
        v70 = [v69 keyEventMap];
        [(_UIKeyboardStateManager *)self _remapKeyEvent:v6 withKeyEventMap:v70];
      }

      v47 = [v6 _modifiedInput];
      v71 = [(_UIKeyboardStateManager *)self _shouldEmitString:v47 forKeyEvent:v6];
      if (v71)
      {
        if ([v47 length])
        {
          if ([(_UIKeyboardStateManager *)self _isValidKeyInput:v47])
          {
            if ([(_UIKeyboardStateManager *)self delayedCandidateList])
            {
              if (self->m_candidateList)
              {
                if (![(_UIKeyboardStateManager *)self isPredictionViewControllerVisible])
                {
                  v92 = objc_loadWeakRetained(&self->_presentationDelegate);
                  [v92 candidateController];
                  v72 = v30;
                  v74 = v73 = v12;
                  v75 = [v74 inlineCandidateView];

                  v12 = v73;
                  v30 = v72;

                  if (v75)
                  {
                    [(_UIKeyboardStateManager *)self removeCandidateList];
                  }
                }
              }
            }
          }
        }
      }

      if (v12 && [v6 _isKeyDown])
      {
        v76 = objc_loadWeakRetained(&self->_presentationDelegate);
        v77 = [v76 emojiPopoverController];
        v78 = [v77 handleHardwareKeyboardEvent:v6];

        v71 = v78 ^ 1;
        if ((v78 & 1) != 0 || v10)
        {
          goto LABEL_95;
        }

        v79 = objc_loadWeakRetained(&self->_presentationDelegate);
        v80 = [v79 emojiPopoverController];
        [v79 dismissKeyboardPopover:v80 beforeCleanup:0 completion:0];
      }

      LOBYTE(v78) = 0;
LABEL_95:
      if (!-[_UIKeyboardStateManager _delegateRequiresKeyEvents](self, "_delegateRequiresKeyEvents") || ([v6 _isGlobeKey] & 1) != 0 || ((v71 ^ 1) & 1) != 0)
      {
        if ((v78 & 1) == 0 && [(_UIKeyboardStateManager *)self _handleKeyCommand:v6])
        {
          goto LABEL_110;
        }

        v83 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v84 = [v83 keyInputDelegate];

        if (!v84 || !v71 || [v47 length] && !-[_UIKeyboardStateManager _isValidKeyInput:](self, "_isValidKeyInput:", v47))
        {
          goto LABEL_110;
        }

        if ([v47 length])
        {
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __59___UIKeyboardStateManager_handleKeyEvent_executionContext___block_invoke;
          v93[3] = &unk_1E70F6B40;
          v93[4] = self;
          v94 = v47;
          v95 = v6;
          v96 = v7;
          -[_UIKeyboardStateManager performOperations:withTextInputSource:](self, "performOperations:withTextInputSource:", v93, [v95 source]);

LABEL_111:
          goto LABEL_112;
        }
      }

      else
      {
        [v30 hideSwitcherIfNeeded];
        if ([v47 length])
        {
          [(_UIKeyboardStateManager *)self _handleWebKeyEvent:v6 withInputString:v47 executionContext:v7];
          if (([v6 _modifierFlags] & 0x100000) != 0)
          {
            v81 = self->m_hardwareKeyDownCodeToEventMap;
            v82 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v6, "_keyCode")}];
            [(NSMutableDictionary *)v81 removeObjectForKey:v82];
          }

          goto LABEL_111;
        }
      }

      [(_UIKeyboardStateManager *)self completeHandleKeyEvent:v6];
LABEL_110:
      [v7 returnExecutionToParent];
      goto LABEL_111;
    }

    [(_UIKeyboardStateManager *)self handleModifiersChangeForKeyEvent:v6 executionContext:v7];
  }

LABEL_113:
}

- (void)handleModifiersChangeForKeyEvent:(id)a3 executionContext:(id)a4
{
  v23 = a3;
  v6 = a4;
  if ([v23 _hidEvent] && (objc_msgSend(v23, "_modifierFlags") & 0x20000) != 0 && self->m_autoshift)
  {
    self->m_autoshift = 0;
    [(_UIKeyboardStateManager *)self _forwardNeededShiftStatesToDestination];
  }

  [(_UIKeyboardStateManager *)self showCursorAccessory];
  v7 = +[UIInputSwitcher sharedInstance];
  [v7 handleModifiersChangedEvent:v23];

  v8 = [v23 _keyCode];
  if (-[_UIKeyboardStateManager shouldShowKeyboardMenu](self, "shouldShowKeyboardMenu") && v8 == 57 && [v23 _hidEvent] && -[_UIKeyboardStateManager isCapsLockSwitchEnabled](self, "isCapsLockSwitchEnabled") && objc_msgSend(v23, "_isKeyDown"))
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = [v9 inputModeForASCIIToggleWithTraits:self->m_traits];

    if (v10)
    {
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v12 = [v11 activeInputModes];
      v13 = [v12 containsObject:v10];

      if (v13)
      {
        [(_UIKeyboardStateManager *)self showCursorAccessory];
        v14 = [v10 identifier];
        v15 = [(_UIKeyboardStateManager *)self switchMode:v14 withHUD:1 withDelay:1 fromCapsLock:1];

        if (!v15)
        {
          goto LABEL_15;
        }

        v16 = UIApp;
        v10 = +[UIKeyboardInputModeController sharedInputModeController];
        v17 = [v10 hardwareInputMode];
        v18 = [v17 automaticHardwareLayout];
        [v16 setHardwareKeyboardLayoutName:v18];
      }
    }
  }

LABEL_15:
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setCapsLockIfNeededForPhysicalKeyboardEvent:v23];

  if ([v23 _isKeyDown])
  {
    v20 = 4;
  }

  else
  {
    v20 = 5;
  }

  v21 = [v23 _unmodifiedInput];
  v22 = [v23 _modifiedInput];
  [(_UIKeyboardStateManager *)self _handleWebKeyEvent:v23 withEventType:v20 withInputString:v21 withInputStringIgnoringModifiers:v22 executionContext:v6];
}

- (void)cancelDictationOnSendReturnKeyPressed
{
  if ([(UITextInputTraits *)self->m_traits returnKeyType]== 7 && +[UIDictationController isRunning])
  {
    v2 = +[UIDictationController sharedInstance];
    [v2 cancelDictation];
  }
}

- (void)handleKeyWithString:(id)a3 forKeyEvent:(id)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 _inputFlags];
  v12 = v11;
  v13 = v11 & 0x18;
  v14 = v13 != 0;
  if ([v8 length] >= 2)
  {
    v15 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 1}];
    v16 = [v15 _isDelete];

    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained playDeleteKeyFeedbackIfNecessaryRepeat:0 rapid:0 deleteCount:1];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke;
    v36[3] = &unk_1E70FD1B8;
    v36[4] = self;
    v37 = v9;
    v20 = [v10 childWithContinuation:v36];
    [(_UIKeyboardStateManager *)self handleDeleteAsRepeat:0 executionContext:v20];

    v21 = v37;
LABEL_19:

    goto LABEL_20;
  }

  if ([v8 _isDelete])
  {
    goto LABEL_7;
  }

LABEL_3:
  if (![v8 _isNewlineOrReturn])
  {
    v22 = [(_UIKeyboardStateManager *)self shouldSkipCandidateSelection];
    self->m_originalShouldSkipCandidateSelection = v22;
    if ((v13 != 0) == v22 || [(_UIKeyboardStateManager *)self isInHardwareKeyboardMode])
    {
      v23 = [(_UIKeyboardStateManager *)self textInputTraits];
      v24 = [v23 keyboardType];
      if ((v24 > 0xB || ((1 << v24) & 0x930) == 0) && v24 != 127)
      {

        goto LABEL_15;
      }

      v14 = 1;
    }

    [(_UIKeyboardStateManager *)self setShouldSkipCandidateSelection:v14];
LABEL_15:
    if (+[UIKeyboard usesInputSystemUI])
    {
      [(_UIKeyboardStateManager *)self updateShiftState];
    }

    v25 = [v9 _hint];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke_3;
    v31 = &unk_1E70FD1B8;
    v32 = self;
    v33 = v9;
    v26 = [v10 childWithContinuation:&v28];
    [(_UIKeyboardStateManager *)self handleStringInput:v8 withFlags:v12 withInputManagerHint:v25 executionContext:v26, v28, v29, v30, v31, v32];

    v21 = v33;
    goto LABEL_19;
  }

  [(_UIKeyboardStateManager *)self cancelDictationOnSendReturnKeyPressed];
  if (![(UITextInputTraits *)self->m_traits returnKeyGoesToNextResponder])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke_2;
    v34[3] = &unk_1E70FD1B8;
    v34[4] = self;
    v35 = v9;
    v27 = [v10 childWithContinuation:v34];
    [(_UIKeyboardStateManager *)self handleStringInput:@"\n" withFlags:v12 withInputManagerHint:0 executionContext:v27];

    v21 = v35;
    goto LABEL_19;
  }

  v17 = [(_UIKeyboardStateManager *)self delegateAsResponder];
  v18 = [v17 _nextKeyResponder];
  [v18 becomeFirstResponder];

  [(_UIKeyboardStateManager *)self completeHandleKeyEvent:v9];
  [v10 returnExecutionToParent];
LABEL_20:
}

- (void)completeHandleKeyEvent:(id)a3
{
  v7 = [a3 _markedInput];
  if ([v7 length])
  {
    self->m_textInputChangesIgnored = 1;
    v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v4 _setMarkedText:v7 selectedRange:{objc_msgSend(v7, "length"), 0}];

    v5 = [(_UIKeyboardStateManager *)self documentState];
    v6 = [v5 documentStateAfterSettingMarkedText:v7 selectedRange:{objc_msgSend(v7, "length"), 0}];
    [(_UIKeyboardStateManager *)self setDocumentState:v6];

    [(TIKeyboardState *)self->m_keyboardState setInputForMarkedText:v7];
    self->m_textInputChangesIgnored = 0;
    [(_UIKeyboardStateManager *)self updateChangeTimeAndIncrementCount];
    [(_UIKeyboardStateManager *)self setShiftOffIfNeeded];
  }

  self->m_textInputChangingCount = 0;
  *&self->m_textInputChangesIgnored = 0;
  self->m_textInputChangingDirection = 0;
}

- (BOOL)shouldDeferEventHandlingToSystemForTextInput:(id)a3 context:(id)a4
{
  v5 = [a4 _uikitKeyEventContext];
  LOBYTE(self) = [(_UIKeyboardStateManager *)self deferEventHandlingToSystemWithContext:v5];

  return self;
}

- (BOOL)deferEventHandlingToSystemWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 keyEvent];
  if (![v4 shouldEvaluateForInputSystemHandling])
  {
    if (([v4 documentIsEditable] & 1) == 0 && objc_msgSend(v5, "keyCode") == 43)
    {
      v8 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v9 = "deferEventHandlingToSystemWithContext, handled tab";
LABEL_41:
        _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, v9, v20, 2u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (([v4 shouldInsertChar] & 1) == 0 && -[_UIKeyboardStateManager handleKeyTextCommandForCurrentEvent](self, "handleKeyTextCommandForCurrentEvent"))
    {
      v10 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v11 = "deferEventHandlingToSystemWithContext, handleKeyTextCommandForCurrentEvent";
LABEL_45:
        _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, v11, v20, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if ([v4 shouldInsertChar] && -[_UIKeyboardStateManager handleKeyAppCommandForCurrentEvent](self, "handleKeyAppCommandForCurrentEvent"))
    {
      v10 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v11 = "deferEventHandlingToSystemWithContext, handleKeyAppCommandForCurrentEvent";
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    if (([v5 modifierFlags] & 0x100000) != 0)
    {
      v8 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v9 = "deferEventHandlingToSystemWithContext, handled command modifier";
        goto LABEL_41;
      }

LABEL_42:

      v7 = 0;
      goto LABEL_43;
    }

    v12 = [v5 characters];
    v13 = [v12 length];

    if (!v13)
    {
      v8 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v9 = "deferEventHandlingToSystemWithContext, handled no characters";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    v14 = [v5 characters];
    v15 = [v14 characterAtIndex:0];

    if (v15 > 12)
    {
      if (v15 != 13)
      {
        if (v15 != 127)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }
    }

    else if (v15 != 3)
    {
      if (v15 != 8)
      {
LABEL_22:
        if ([v4 documentIsEditable] && objc_msgSend(v4, "shouldInsertChar"))
        {
          v16 = [v5 characters];
          v17 = [v5 inputFlags];
          v18 = [v5 inputManagerHint];
          [(_UIKeyboardStateManager *)self addInputString:v16 withFlags:v17 withInputManagerHint:v18];

          v10 = _UIKeyboardImplLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *v20 = 0;
            v11 = "deferEventHandlingToSystemWithContext, addInputString for character";
            goto LABEL_45;
          }

LABEL_16:

          v7 = 1;
          goto LABEL_43;
        }

LABEL_39:
        v8 = _UIKeyboardImplLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 0;
          v9 = "deferEventHandlingToSystemWithContext, did not handle";
          goto LABEL_41;
        }

        goto LABEL_42;
      }

LABEL_32:
      if ([v4 documentIsEditable])
      {
        -[_UIKeyboardStateManager deleteFromInputWithFlags:](self, "deleteFromInputWithFlags:", [v5 inputFlags]);
        v10 = _UIKeyboardImplLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 0;
          v11 = "deferEventHandlingToSystemWithContext, deleteFromInputWithFlags";
          goto LABEL_45;
        }

        goto LABEL_16;
      }

      goto LABEL_39;
    }

    if ([v4 documentIsEditable] && objc_msgSend(v4, "shouldInsertChar"))
    {
      [(_UIKeyboardStateManager *)self addInputString:@"\n" withFlags:0 withInputManagerHint:0];
      v10 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v11 = "deferEventHandlingToSystemWithContext, addInputString for enter";
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    goto LABEL_39;
  }

  v6 = _UIKeyboardImplLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 0;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "deferEventHandlingToSystemWithContext, shouldEvaluateForInputSystemHandling", v20, 2u);
  }

  v7 = [(_UIKeyboardStateManager *)self handleKeyInputMethodCommandForCurrentEvent];
LABEL_43:

  return v7;
}

- (void)toggleSoftwareKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained toggleSoftwareKeyboard];
}

- (void)ejectKeyDown
{
  if ([(_UIKeyboardStateManager *)self shouldApplyKeyboardCommandToUIHost])
  {
    v4 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v4 forwardInputDestinationEventToUIHost:sel_ejectKeyDown];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained setHardwareKeyboardIsSeen];

    [(_UIKeyboardStateManager *)self toggleSoftwareKeyboard];
  }
}

- (void)setKeyboardMinimizedByDictation:(BOOL)a3
{
  v3 = a3;
  v20[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v6 = [WeakRetained geometryDelegate];
  v7 = [v6 isMinimized];

  if (v7 != v3)
  {
    v8 = +[UIDictationController activeInstance];
    [v8 setShouldSuppressSoftwareKeyboard:v3];

    v9 = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [v9 geometryDelegate];
    [v10 setMinimized:v3];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v11 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 textOperations];
        [v13 setCustomInfoType:0x1EFB7C8F0];
        v19[0] = @"selector";
        v14 = NSStringFromSelector(sel_setKeyboardMinimizedByDictation_);
        v19[1] = @"minimized";
        v20[0] = v14;
        v15 = [MEMORY[0x1E696AD98] numberWithBool:v3];
        v20[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v13 setCustomInfo:v16];

        [v12 flushOperations];
      }
    }

    else if (+[UIKeyboard usesInputSystemUI])
    {
      v18 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      v17 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [v18 forwardDictationEventToUIHost:sel_setKeyboardMinimizedByDictation_ withOptionalObject:v17];
    }
  }
}

- (void)setCaretVisible:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained setCaretVisible:v3];
}

- (void)clearSelection
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 __content];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    self->m_textInputChangesIgnored = 1;
    v6 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
    v7 = [v6 activeSelection];

    [v7 clearSelection];
    [v7 commit];
    [(_UIKeyboardStateManager *)self syncDocumentStateToInputDelegate];
    self->m_textInputChangesIgnored = 0;
  }
}

- (id)dynamicCaretList
{
  v2 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  v3 = [v2 _legacySelectionView];
  v4 = [v3 dynamicCaretList];

  return v4;
}

- (void)updateNoContentViews
{
  v3 = [(_UIKeyboardStateManager *)self dynamicCaretList];

  if (v3)
  {
    v5 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
    v4 = [v5 _legacySelectionView];
    [v4 updateDocumentHasContent:{-[_UIKeyboardStateManager noContent](self, "noContent") ^ 1}];
  }
}

- (BOOL)canHandleKeyHitTest
{
  v2 = [(_UIKeyboardStateManager *)self inputManagerState];
  v3 = [v2 canHandleKeyHitTest];

  return v3;
}

- (BOOL)isAutoFillMode
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 keyInputDelegate];
    v7 = [v6 isAutoFillMode];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)trackUsageForAcceptedAutocorrection:(id)a3 promptWasShowing:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v5 = UIKeyboardGetCurrentInputMode();
  v6 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v5);

  if ([v8 isForShortcutConversion])
  {
    v7 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();
  }

  else if ([v8 wordOriginFeedbackID])
  {
    [v8 usageTrackingMask];
    TIStatisticScalarIncrementAutocorrectionKey();
    if (v4)
    {
      [v8 usageTrackingMask];
      TIStatisticScalarIncrementAutocorrectionKey();
    }
  }
}

- (void)trackUsageForPromptedCorrection:(id)a3 inputString:(id)a4 previousPrompt:(id)a5
{
  v14 = a5;
  v7 = a3;
  v8 = [v14 correction];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = UIKeyboardGetCurrentInputMode();
    v11 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v10);

    if (v8)
    {
      [v14 usageTrackingMask];
      TIStatisticScalarIncrementAutocorrectionKey();
    }

    v12 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v13 = [v12 autocorrection];
    [v13 usageTrackingMask];
    TIStatisticScalarIncrementAutocorrectionKey();
  }
}

- (void)trackUsageForCandidateAcceptedAction:(id)a3
{
  v17 = a3;
  v4 = [(UIKeyboardCandidateList *)self->m_candidateList statisticsIdentifier];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = UIKeyboardGetCurrentInputMode();
  v6 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v5);

  v7 = TIStatisticGetKeyForCandidateAccepted();
  TIStatisticScalarIncrement();

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v9 = [WeakRetained layout];
    v10 = [v9 currentKeyplane];
    if (!v10)
    {

      goto LABEL_7;
    }

    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_presentationDelegate);
    v13 = [v12 layout];
    v14 = [v13 currentKeyplane];
    v15 = [v14 visualStyling];

    if ((v15 & 0x40) != 0)
    {
      WeakRetained = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();
LABEL_7:
    }
  }

  if ([(UIKeyboardCandidateList *)self->m_candidateList selectedSortIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = TIStatisticGetKeyForCandidateAcceptedSelectedSortingMethod();
    TIStatisticScalarIncrement();
  }

LABEL_11:
}

- (void)performSendCurrentLocation
{
  v5 = [(_UIKeyboardStateManager *)self inputDelegate];
  v3 = [(_UIKeyboardStateManager *)self responderForSendCurrentLocation];
  if (v3)
  {
    v4 = [v5 _sendCurrentLocationAction];
    if (dyld_program_sdk_at_least())
    {
      [v3 v4];
    }

    else
    {
      [v3 performSelector_];
    }
  }
}

- (void)enableTransientInputDelegateSelectionMode
{
  v3 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68___UIKeyboardStateManager_enableTransientInputDelegateSelectionMode__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)enableTransientSelectionMode
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 delegateRespectingForwardingDelegate:0];
  [(_UIKeyboardStateManager *)self _setTransientSelectionModeEnabled:1 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v5 inputSystemSourceSession];

    if (v7)
    {
      v6 = [v7 textOperations];
      [v6 setEditingActionSelector:sel_enableTransientSelectionMode];
      [v7 flushOperations];
    }
  }
}

- (void)disableTransientSelectionMode
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 delegateRespectingForwardingDelegate:0];
  [(_UIKeyboardStateManager *)self _setTransientSelectionModeEnabled:0 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v7 = [v5 inputSystemSourceSession];

    if (v7)
    {
      v6 = [v7 textOperations];
      [v6 setEditingActionSelector:sel_disableTransientSelectionMode];
      [v7 flushOperations];
    }
  }
}

- (void)clearForwardingInputDelegateAndResign:(BOOL)a3
{
  v3 = a3;
  if ([(_UIKeyboardStateManager *)self _hasMarkedText])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v6 = [v5 forwardingInputDelegate];

      if (v6)
      {
        v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        [v7 unmarkText];
      }
    }
  }

  v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v8 clearForwardingInputDelegateAndResign:v3];

  v9 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v9 forwardClearForwardingInputDelegateAndResign:v3];
}

- (void)didChangeForwardingInputDelegate:(id)a3
{
  [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];
  if (a3)
  {
    v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v6 = [v5 forwardingInputDelegate];
    v7 = [v6 keyboardType];

    if (v7 == 122)
    {

      [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:0 allowNonLinguisticInputModes:1];
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self disableTransientSelectionMode];
    [(_UIKeyboardStateManager *)self recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 updateRenderConfigForCurrentResponder];

    [(_UIKeyboardStateManager *)self reinitializeAfterInputModeSwitch:0];
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v10 = [WeakRetained layout];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v13 = objc_loadWeakRetained(&self->_presentationDelegate);
      v12 = [v13 layout];
      [v12 didTriggerDestructiveRenderConfigChange];
    }
  }
}

- (void)_setTransientSelectionModeEnabled:(BOOL)a3 forInputDelegate:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 interactionAssistant];
    [v5 setSelectionDisplayVisible:1];
    [v5 setCursorBlinkAnimationEnabled:v4 ^ 1];
    [v5 setGhostAppearance:v4];
  }
}

- (void)_performKeyboardOutput:(id)a3 respectingForwardingDelegate:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v7 = [v6 forwardingInputDelegate];

  if (!v7 || v4)
  {
    v14[2]();
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v9 = [v8 shouldRespectForwardingInputDelegate];

    v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v10 setShouldRespectForwardingInputDelegate:0];

    v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v11 updateRespectForwardingInputDelegateFlagInDestination];

    v14[2]();
    v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v12 setShouldRespectForwardingInputDelegate:v9];

    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v13 updateRespectForwardingInputDelegateFlagInDestination];
  }
}

- (void)_ensureRTIConnection
{
  v2 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v2 ensureRTIConnection];
}

- (id)buildInputSourceState
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained buildInputSourceState];

  return v3;
}

- (void)resetInputDelegate
{
  v3 = [(_UIKeyboardStateManager *)self delegate];
  [(_UIKeyboardStateManager *)self setDelegate:0];
  [(_UIKeyboardStateManager *)self setDelegate:v3];
}

- (void)modifyTextInputTraits:(id)a3 forceSync:(BOOL)a4
{
  v4 = a4;
  remoteTextInputTraits = self->_remoteTextInputTraits;
  v7 = a3;
  v8 = [(UITextInputTraits *)remoteTextInputTraits copy];
  v7[2](v7, v8);

  [(_UIKeyboardStateManager *)self updateInputDelegateForRemoteTraitChange:v8 forceSync:v4];
}

- (void)updateInputDelegateForRemoteTraitChange:(id)a3 forceSync:(BOOL)a4
{
  v4 = a4;
  v94[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![(_UIKeyboardStateManager *)self showingEmojiSearch])
  {
    objc_storeStrong(&self->_remoteTextInputTraits, a3);
    v8 = [v7 autocapitalizationType];
    v9 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v9 setAutocapitalizationType:v8];

    v10 = [v7 autocorrectionType];
    v11 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v11 setAutocorrectionType:v10];

    v12 = [v7 spellCheckingType];
    v13 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v13 setSpellCheckingType:v12];

    v14 = [v7 keyboardType];
    v15 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v15 setKeyboardType:v14];

    v16 = [v7 returnKeyType];
    v17 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v17 setReturnKeyType:v16];

    v18 = [v7 enablesReturnKeyAutomatically];
    v19 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v19 setEnablesReturnKeyAutomatically:v18];

    v20 = [v7 isSecureTextEntry];
    v21 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v21 setSecureTextEntry:v20];

    v22 = [v7 textContentType];
    v23 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v23 setTextContentType:v22];

    v24 = [v7 smartInsertDeleteType];
    v25 = [(_UIKeyboardStateManager *)self inputDelegate];
    [v25 setSmartInsertDeleteType:v24];

    v26 = [(_UIKeyboardStateManager *)self inputDelegate];
    LOBYTE(v25) = objc_opt_respondsToSelector();

    if (v25)
    {
      v27 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v27 setForceEnableDictation:{objc_msgSend(v7, "forceEnableDictation")}];
    }

    v28 = [(_UIKeyboardStateManager *)self inputDelegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v30 setDevicePasscodeEntry:{objc_msgSend(v7, "isDevicePasscodeEntry")}];
    }

    -[UITextInputTraits setHidePrediction:](self->m_traits, "setHidePrediction:", [v7 hidePrediction]);
    v31 = [(_UIKeyboardStateManager *)self inputDelegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v33 setHidePrediction:{objc_msgSend(v7, "hidePrediction")}];
    }

    -[UITextInputTraits setDisablePrediction:](self->m_traits, "setDisablePrediction:", [v7 disablePrediction]);
    v34 = [(_UIKeyboardStateManager *)self inputDelegate];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v36 setDisablePrediction:{objc_msgSend(v7, "disablePrediction")}];
    }

    v37 = [(_UIKeyboardStateManager *)self inputDelegate];
    v38 = objc_opt_respondsToSelector();

    v39 = [(_UIKeyboardStateManager *)self inputDelegate];
    if (v38)
    {
      [v39 setInlinePredictionType:{objc_msgSend(v7, "inlinePredictionType")}];
    }

    else
    {
      v40 = objc_opt_respondsToSelector();

      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      v39 = [(_UIKeyboardStateManager *)self inputDelegate];
      [v39 setInlineCompletionType:{objc_msgSend(v7, "inlinePredictionType")}];
    }
  }

LABEL_15:
  v41 = [(UITextInputTraits *)self->m_traits forceFloatingKeyboard];
  if (v41 != [v7 forceFloatingKeyboard])
  {
    -[UITextInputTraits setForceFloatingKeyboard:](self->m_traits, "setForceFloatingKeyboard:", [v7 forceFloatingKeyboard]);
    -[_UIKeyboardStateManager setFloatingForced:](self, "setFloatingForced:", [v7 forceFloatingKeyboard]);
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    [WeakRetained refreshRivenPreferences];

    [(_UIKeyboardStateManager *)self notifyInputSourceStateChangeIfNeeded];
  }

  v43 = [(TIKeyboardState *)self->m_keyboardState autofillMode];
  v44 = [(_UIKeyboardStateManager *)self autofillController];
  v91 = v43;
  [v44 setDelegateNeedsAutofillMode:v43];

  if (v4)
  {
    [(_UIKeyboardStateManager *)self _requestInputManagerSync];
  }

  v45 = [v7 forceEnableDictation];
  v46 = [(UITextInputTraits *)self->m_traits forceEnableDictation];
  v47 = [v7 inputContextHistory];
  v90 = [(UITextInputTraits *)self->m_traits inputContextHistory];

  v92 = v47;
  v48 = [v7 responseContext];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = &stru_1EFB14550;
  }

  v51 = [(UITextInputTraits *)self->m_traits responseContext];
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = &stru_1EFB14550;
  }

  v89 = [(__CFString *)v50 isEqualToString:v53];

  v54 = [v7 keyboardAppearance];
  v55 = [(UITextInputTraits *)self->m_traits keyboardAppearance];
  v56 = [v7 updateResultComparedToTraits:self->m_traits];
  v57 = [(UITextInputTraits *)self->m_traits isSecureTextEntry];
  if (v57 == [v7 isSecureTextEntry] && (v58 = -[UITextInputTraits keyboardType](self->m_traits, "keyboardType"), v58 == objc_msgSend(v7, "keyboardType")))
  {
    v88 = v54;
    v59 = [(UITextInputTraits *)self->m_traits textContentType];
    v60 = [v7 textContentType];
    v61 = v60;
    if (v59 == v60)
    {

      v83 = [v7 copy];
      m_traits = self->m_traits;
      self->m_traits = v83;

      v54 = v88;
      goto LABEL_32;
    }

    [(UITextInputTraits *)self->m_traits textContentType];
    v62 = v87 = v55;
    v63 = [v7 textContentType];
    v86 = [v62 isEqualToString:v63];

    v55 = v87;
    v64 = [v7 copy];
    v65 = self->m_traits;
    self->m_traits = v64;

    v54 = v88;
    if (v86)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v66 = [v7 copy];
    v67 = self->m_traits;
    self->m_traits = v66;
  }

  -[_UIKeyboardStateManager recomputeActiveInputModesWithExtensions:](self, "recomputeActiveInputModesWithExtensions:", [v7 isSecureTextEntry] ^ 1);
LABEL_32:
  v68 = v45 ^ v46;
  if (v4 && ([(_UIKeyboardStateManager *)self delegate], v69 = objc_claimAutoreleasedReturnValue(), v69, v69) && v56 == 2)
  {
    v70 = v55;
    if (self->m_shift)
    {
      v71 = objc_loadWeakRetained(&self->_presentationDelegate);
      v72 = [v71 layout];
      if (!v72 || self->m_shiftLocked || [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld])
      {
      }

      else
      {
        v85 = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyPlaneChooser];

        if (v85)
        {
          [(_UIKeyboardStateManager *)self clearShiftState];
        }
      }
    }

    if (v54 != v70 && +[UIKeyboard isKeyboardProcess])
    {
      v73 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v73 traitCollectionDidChange];
    }

    v74 = objc_loadWeakRetained(&self->_presentationDelegate);
    [v74 updateLayout];
  }

  else if (v56 == 1)
  {
    [(_UIKeyboardStateManager *)self updateReturnKey:1];
  }

  if (v68)
  {
    v75 = +[UIDictationController sharedInstance];
    v93 = 0x1EFB1B590;
    v94[0] = @"Dictation state changed due to trait change";
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    [v75 postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v76];
  }

  self->m_cachedAutofillMode = [(_UIKeyboardStateManager *)self needAutofill];
  if (v91)
  {
    v77 = [(_UIKeyboardStateManager *)self autocorrectionController];
    if ([v77 hasAutofillCandidates])
    {
    }

    else
    {
      v78 = [(TIKeyboardCandidateResultSet *)self->m_candidateResultSet hasOnlySlottedCandidates];

      if (!v78)
      {
        [(_UIKeyboardStateManager *)self generateAutofillCandidateByAddingTask:1];
      }
    }
  }

  if ((v92 != v90) | v89 & 1)
  {
    v79 = [v7 inputContextHistory];
    v80 = [v79 tiInputContextHistory];
    [(TIKeyboardState *)self->m_keyboardState setInputContextHistory:v80];

    [(_UIKeyboardStateManager *)self responseContextDidChange];
  }

  if ((+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI]) && [(_UIKeyboardStateManager *)self isRTIClient])
  {
    v81 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v81 documentTraitsChanged];
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v82 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    [v82 updateDelegateConformanceForRemoteTraits];
  }
}

- (void)updateInputDelegateForRemoteDocumentStateChange:(id)a3 selectedTextRange:(_NSRange)a4 hasText:(BOOL)a5 forceSync:(BOOL)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = [v11 fullString];
  v13 = [v11 selectedText];
  if (v13)
  {
    v14 = v13;
    v15 = [v11 selectedText];
    v16 = [v15 length];

    if (!v16)
    {
      v27 = objc_alloc(MEMORY[0x1E69D9590]);
      v26 = [v11 contextBeforeInput];
      v17 = [v11 markedText];
      v18 = [v11 contextAfterInput];
      v19 = [v11 selectedRangeInMarkedText];
      v21 = [v27 initWithUnboundedContextBefore:v26 markedText:v17 selectedText:0 unboundedContextAfter:v18 selectedRangeInMarkedText:{v19, v20}];

      v11 = v21;
    }
  }

  if (qword_1ED49D568 != -1)
  {
    dispatch_once(&qword_1ED49D568, &__block_literal_global_1898);
  }

  v22 = [(_UIKeyboardStateManager *)self taskQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __111___UIKeyboardStateManager_updateInputDelegateForRemoteDocumentStateChange_selectedTextRange_hasText_forceSync___block_invoke_3;
  v28[3] = &unk_1E70FE0F0;
  v33 = a6;
  v34 = a5;
  v28[4] = self;
  v29 = v12;
  v30 = v11;
  v31 = location;
  v32 = length;
  v23 = qword_1ED49D560;
  v24 = v11;
  v25 = v12;
  [v22 addTask:v28 breadcrumb:v23];
}

- (void)updateForExpectedRemoteDocumentStateChange:(id)a3 selectedTextRange:(_NSRange)a4 forceSync:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (v5 && [(_UIKeyboardStateManager *)self hasAutocorrectPrompt]&& +[UIKeyboard isKeyboardProcess])
  {
    v8 = [(_UIKeyboardStateManager *)self autocorrectionController];
    v9 = [v8 autocorrection];
    [(_UIKeyboardStateManager *)self updateAutocorrectPrompt:v9];
  }

  if (qword_1ED49D578 != -1)
  {
    dispatch_once(&qword_1ED49D578, &__block_literal_global_1902);
  }

  v10 = [(_UIKeyboardStateManager *)self taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98___UIKeyboardStateManager_updateForExpectedRemoteDocumentStateChange_selectedTextRange_forceSync___block_invoke_3;
  v11[3] = &unk_1E70FD058;
  v11[4] = self;
  [v10 addTask:v11 breadcrumb:qword_1ED49D570];
}

- (BOOL)assertTextForRemoteDocument:(id)a3 withSelectionDelta:(id)a4 updatingSelection:(BOOL)a5
{
  v5 = a5;
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = v9 != 0;
  if (v9)
  {
    v11 = [(_UIKeyboardStateManager *)self inputDelegate];
    [(_UIKeyboardStateManager *)self replaceAllTextInResponder:v11 withText:v9];
  }

  if (var0 | var1)
  {
    v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v13 = [v12 asyncCapableInputDelegate];

    if (v13)
    {
      v14 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __92___UIKeyboardStateManager_assertTextForRemoteDocument_withSelectionDelta_updatingSelection___block_invoke;
      v19[3] = &unk_1E70F3590;
      v19[4] = self;
      [v14 adjustSelection:var0 completionHandler:{var1, v19}];

      v10 = 1;
    }

    else
    {
      v15 = [(_UIKeyboardStateManager *)self inputDelegate];
      v16 = [v15 _rangeFromCurrentRangeWithDelta:{var0, var1}];

      v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v17 setSelectedTextRange:v16];

      if (v5)
      {
        [(_UIKeyboardStateManager *)self updateForChangedSelection];
        v10 = 1;
      }
    }
  }

  return v10;
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v5 insertAttributedText:v4];
}

- (void)insertAdaptiveImageGlyph:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 delegateRespectingForwardingDelegate:0];

  if ([(_UIKeyboardStateManager *)self canInsertAdaptiveImageGlyph]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 selectedTextRange];
    [v5 insertAdaptiveImageGlyph:v7 replacementRange:v6];

    [(_UIKeyboardStateManager *)self setPreviousInputString:0];
  }
}

- (void)insertEmojiImageTextAttachment:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v5 = [v4 delegateRespectingForwardingDelegate:0];

  if ([(_UIKeyboardStateManager *)self canInsertEmojiImageTextAttachment]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 selectedTextRange];
    [v5 insertEmojiImageTextAttachment:v7 replacementRange:v6];

    [(_UIKeyboardStateManager *)self setPreviousInputString:0];
  }
}

- (void)presentEmojiGenerationWithInputString:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiGenerationPresenter sharedInstance];
  [v4 presentEmojiGenerationControllerWithInputString:v3];
}

- (void)updateAssistantViewInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained updateAssistantViewInfo:v4];
}

- (void)applyAssistantItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained applyAssistantItem:v4];
}

- (void)unmarkText:(id)a3
{
  v4 = a3;
  [UIKBAnalyticsDispatcher didCommitText:v4];
  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  [v5 unmarkText:v4];
}

- (void)handleRemoteDictationEvent_switchToDictationInputModeWithOptions:(id)a3
{
  v3 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v5)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_switchToDictationInputModeWithOptions____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected event handling", v9, 2u);
    }
  }

  v6 = +[UIDictationController sharedInstance];
  [v6 switchToDictationInputModeWithOptions:v3];
}

- (void)handleRemoteDictationEvent_switchToDictationLanguage:(id)a3
{
  v3 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v5)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_switchToDictationLanguage____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected event handling", v9, 2u);
    }
  }

  v6 = +[UIDictationController sharedInstance];
  [v6 switchToDictationLanguage:v3];
}

- (void)handleRemoteDictationEvent_startDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_startDictation___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected event handling", v7, 2u);
    }
  }

  v4 = +[UIDictationController sharedInstance];
  [v4 startDictation];
}

- (void)handleRemoteDictationEvent_stopDictation:(BOOL)a3
{
  v3 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v5)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_stopDictation____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected event handling", v10, 2u);
    }
  }

  v6 = +[UIDictationController sharedInstance];
  [v6 stopDictation:v3];

  v7 = +[UIDictationController activeInstance];
  [v7 resignFirstResponderWhenIdleIfNeeded];
}

- (void)handleRemoteDictationEvent_cancelDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_cancelDictation___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected event handling", v8, 2u);
    }
  }

  v4 = +[UIDictationController sharedInstance];
  [v4 cancelDictation];

  v5 = +[UIDictationController activeInstance];
  [v5 resignFirstResponderWhenIdleIfNeeded];
}

- (void)handleRemoteDictationEvent_handleTip:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_handleTip____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Unexpected event handling", v14, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained dictationPopoverController];
  v9 = v8;
  if (v4)
  {
    v10 = [v4 objectForKeyedSubscript:@"text"];
    v11 = [v4 objectForKeyedSubscript:@"title"];
    [v9 presentTip:v10 tipDescription:v11];
  }

  else
  {
    [v8 dismissTip];
  }
}

- (void)handleRemoteDictationEvent_setDisambiguationActive:(BOOL)a3 maxOptions:(unint64_t)a4
{
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v7)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v7)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_setDisambiguationActive_maxOptions____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpected event handling", v12, 2u);
    }
  }

  v8 = +[UIDictationController sharedInstance];
  [v8 setDisambiguationActiveEnabled:v5];

  v9 = +[UIDictationController sharedInstance];
  [v9 setMaxDisambiguationOptions:a4];
}

- (void)handleRemoteDictationEvent_movePopoverView:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_movePopoverView____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Unexpected event handling", v18, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self inputDelegate];
  v8 = [v7 _window];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v10 = [WeakRetained window];

  if (v8 != v10)
  {
    v11 = objc_loadWeakRetained(&self->_presentationDelegate);
    v12 = [v11 dictationPopoverController];
    v13 = [v4 objectForKeyedSubscript:@"sourceRect"];
    [v13 rectValue];
    [v12 movePopoverView:?];

    v14 = [v4 objectForKeyedSubscript:@"editMenuFrame"];
    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_presentationDelegate);
      [v14 rectValue];
      [v15 setEditMenuFrame:?];
    }
  }
}

- (void)handleRemoteDictationEvent_setEditMenuFrame:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_setEditMenuFrame____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected event handling", v15, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self inputDelegate];
  v8 = [v7 _window];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v10 = [WeakRetained window];

  if (v8 != v10)
  {
    v11 = objc_loadWeakRetained(&self->_presentationDelegate);
    v12 = [v4 objectForKeyedSubscript:@"editMenuFrame"];
    [v12 rectValue];
    [v11 setEditMenuFrame:?];
  }
}

- (void)handleRemoteDictationEvent_updateIdleDetection:(int64_t)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_updateIdleDetection____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected event handling", v9, 2u);
    }
  }

  [(_UIKeyboardStateManager *)self updateIdleDetection:a3];
}

- (void)handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected event handling", v7, 2u);
    }
  }

  v4 = +[UIDictationController sharedInstance];
  [v4 stopDictationIgnoreFinalizePhrases];
}

- (void)handleRemoteDictationEvent_resumeDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_resumeDictation___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected event handling", v7, 2u);
    }
  }

  v4 = +[UIDictationController sharedInstance];
  [v4 resumeDictation];
}

- (void)handleRemoteKeyboardCameraEvent_startCameraInput:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteKeyboardCameraEvent_startCameraInput____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unexpected event handling", v11, 2u);
    }
  }

  v7 = +[UIKeyboardCameraSession sharedSession];
  v8 = [(_UIKeyboardStateManager *)self inputDelegate];
  [v7 showForResponder:v8 sender:0 rtiConfiguration:v4];
}

- (void)handleEventFromRemoteSource_insertSupplementalCandidate:(id)a3 textToCommit:(id)a4
{
  v12 = a3;
  v6 = a4;
  self->m_didSyncDocumentStateToInputDelegate = 0;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [(_UIKeyboardStateManager *)self inputDelegate];

  if (v7 && (-[_UIKeyboardStateManager inputDelegateManager](self, "inputDelegateManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 callShouldReplaceExtendedRange:0 withText:v6 includeMarkedText:{-[_UIKeyboardStateManager _hasMarkedText](self, "_hasMarkedText")}], v8, !v9))
  {
    v11 = &stru_1EFB14550;
    v10 = self;
  }

  else
  {
    if ([v12 isSupplementalItemCandidate])
    {
      [(_UIKeyboardStateManager *)self _willReplaceText:v6 withSupplementalCandidate:v12];
      [(_UIKeyboardStateManager *)self unmarkText:v6];
      [(_UIKeyboardStateManager *)self _didReplaceText:v6 withSupplementalCandidate:v12];
      goto LABEL_9;
    }

    v10 = self;
    v11 = v6;
  }

  [(_UIKeyboardStateManager *)v10 unmarkText:v11];
LABEL_9:
  if ([v12 isSupplementalItemCandidate])
  {
    [(_UIKeyboardStateManager *)self _insertSupplementalCandidate:v12 overridingCandidateText:v6];
  }

LABEL_11:
}

- (void)handleEventFromRemoteSource_chooseSupplementalItem:(id)a3 toReplaceText:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92___UIKeyboardStateManager_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText___block_invoke;
  aBlock[3] = &unk_1E70FE118;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [(_UIKeyboardStateManager *)self inputDelegate];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && [v6 count])
  {
    v11 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v7];
    v12 = [_UIStringAndPositionPair alloc];
    v13 = [v11 start];
    v14 = [(_UIStringAndPositionPair *)&v12->super.isa initWithString:v7 position:v13];

    v15 = [(_UIKeyboardStateManager *)self pendingSupplementalCandidateToInsert];
    v16 = [(_UIKeyboardStateManager *)self inputDelegate];
    v17 = [(_UIStringAndPositionPair *)v15 isEqualToPair:v14 inputDelegate:v16];

    if (!v17)
    {
      [(_UIKeyboardStateManager *)self setPendingSupplementalCandidateToInsert:v14];
      if ([v6 count] == 1)
      {
        [(_UIKeyboardStateManager *)self setPendingSupplementalCandidateToInsert:0];
        v18 = [v6 firstObject];
        v8[2](v8, v18, v7);
      }

      else
      {
        objc_initWeak(&location, self);
        v19 = (self->m_lastChooseSupplementalItemToInsertCallbackIdentifier + 1);
        self->m_lastChooseSupplementalItemToInsertCallbackIdentifier = v19;
        self->m_textInputChangesIgnored = 1;
        v20 = [(_UIKeyboardStateManager *)self inputDelegate];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __92___UIKeyboardStateManager_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText___block_invoke_2;
        v21[3] = &unk_1E70FE140;
        objc_copyWeak(v25, &location);
        v24 = v8;
        v22 = v7;
        v25[1] = v19;
        v23 = v11;
        [v20 _chooseSupplementalItemToInsert:v6 replacementRange:v23 completionHandler:v21];

        self->m_textInputChangesIgnored = 0;
        objc_destroyWeak(v25);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v8[2](v8, 0, v7);
  }
}

- (void)handleEventCallbackFromRemoteDestination_didChooseSupplementalItem:(id)a3 toReplaceText:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(_UIKeyboardStateManager *)self chooseSupplementalCandidateCompletion];

  if (v7)
  {
    v8 = [(_UIKeyboardStateManager *)self chooseSupplementalCandidateCompletion];
    (v8)[2](v8, v9, v6);

    [(_UIKeyboardStateManager *)self setChooseSupplementalCandidateCompletion:0];
  }
}

- (void)handleEventFromRemoteSource_insertionPointEnteredText:(id)a3 withSupplementalCandidate:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(_UIKeyboardStateManager *)self _rangeForSupplementalItemText:v8];
  if (([v7 isEmpty] & 1) == 0)
  {
    [(_UIKeyboardStateManager *)self _dispatchInsertionPointEnteredText:v8 range:v7 withSupplementalCandidate:v6];
  }
}

- (void)handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection:(BOOL)a3
{
  if (qword_1ED49D588 != -1)
  {
    dispatch_once(&qword_1ED49D588, &__block_literal_global_1922);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107___UIKeyboardStateManager_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection___block_invoke_3;
  v6[3] = &unk_1E70FDD10;
  v6[4] = self;
  v7 = a3;
  [v5 addTask:v6 breadcrumb:qword_1ED49D580];
}

- (void)handleEventFromRemoteSource_insertAutofillContent:(id)a3
{
  v4 = MEMORY[0x1E69D9638];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 copy];

  [v6 setCustomInfo:v7];
  if (qword_1ED49D598 != -1)
  {
    dispatch_once(&qword_1ED49D598, &__block_literal_global_1926);
  }

  v8 = [(_UIKeyboardStateManager *)self taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77___UIKeyboardStateManager_handleEventFromRemoteSource_insertAutofillContent___block_invoke_3;
  v11[3] = &unk_1E70FD1B8;
  v11[4] = self;
  v12 = v6;
  v9 = qword_1ED49D590;
  v10 = v6;
  [v8 addTask:v11 breadcrumb:v9];
}

- (void)handleEventFromRemoteSource_autoFillIsMenuPresented:(BOOL)a3
{
  if (self->m_isAutoFillMenuPresented == a3)
  {
    if (a3)
    {
LABEL_3:
      self->m_shouldSuppressSelectionCommands = 1;
    }
  }

  else
  {
    self->m_isAutoFillMenuPresented = a3;
    if (a3)
    {
      +[UIPeripheralHost visiblePeripheralFrame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
      v13 = [v12 rtiDocumentState];
      [v13 caretRectInWindow];
      v50.origin.x = v14;
      v50.origin.y = v15;
      v50.size.width = v16;
      v50.size.height = v17;
      v48.origin.x = v5;
      v48.origin.y = v7;
      v48.size.width = v9;
      v48.size.height = v11;
      v18 = CGRectContainsRect(v48, v50);

      if (v18)
      {
        [(_UIKeyboardStateManager *)self dismissAutoFillMenu];
        v19 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v20 = [(_UIKeyboardStateManager *)self inputDelegateManager];
        v21 = [v20 selectedTextRange];
        v22 = [v21 start];
        [v19 caretRectForPosition:v22];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v31 = [(_UIKeyboardStateManager *)self inputDelegate];
        v32 = [v31 textInputView];
        v33 = [(_UIKeyboardStateManager *)self inputDelegate];
        v34 = [v33 textInputView];
        v35 = [v34 window];
        [v32 convertRect:v35 toView:{v24, v26, v28, v30}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        +[UIPeripheralHost visiblePeripheralFrame];
        v51.origin.x = v37;
        v51.origin.y = v39;
        v51.size.width = v41;
        v51.size.height = v43;
        if (CGRectContainsRect(v49, v51))
        {
          return;
        }

        v46 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
        [v46 documentStateChanged];
      }

      else
      {
        v44 = [(_UIKeyboardStateManager *)self _editMenuAssistant];
        v45 = [v44 _editMenuIsVisible];

        if (!v45)
        {
          goto LABEL_3;
        }

        v46 = [(_UIKeyboardStateManager *)self _editMenuAssistant];
        [v46 hideSelectionCommands];
      }
    }

    else
    {
      self->m_shouldSuppressSelectionCommands = 0;
    }
  }
}

- (void)handleEventFromRemoteSource_autoFillIsModalUIPresented:(BOOL)a3
{
  v3 = a3;
  object = [(_UIKeyboardStateManager *)self delegateAsResponder];
  if (v3)
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v5 = [v4 vendKeyboardSuppressionAssertionForReason:@"Modal AutoFill UI"];

    objc_setAssociatedObject(object, &kAutoFillKeyboardSuppressionAssertionKey, v5, 1);
  }

  else
  {
    objc_setAssociatedObject(object, &kAutoFillKeyboardSuppressionAssertionKey, 0, 1);
  }
}

- (BOOL)shouldSuppressSelectionCommands
{
  m_shouldSuppressSelectionCommands = self->m_shouldSuppressSelectionCommands;
  if (m_shouldSuppressSelectionCommands)
  {
    self->m_shouldSuppressSelectionCommands = 0;
  }

  else if (self->m_isAutoFillMenuPresented)
  {
    [(_UIKeyboardStateManager *)self dismissAutoFillMenu];
  }

  return m_shouldSuppressSelectionCommands;
}

- (void)resumeDictationForResponderChange
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained resumeDictationForResponderChange];
}

- (BOOL)isSelecting
{
  if (self->m_selecting)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v4 = [v3 selectedTextRange];
    v2 = [v4 isEmpty] ^ 1;
  }

  return v2;
}

- (void)_noteInlineCompletionAsMarkedText:(id)a3
{
  v8 = a3;
  v4 = [v8 string];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v8 copy];
  }

  else
  {
    v6 = 0;
  }

  inlineCompletionAsMarkedText = self->_inlineCompletionAsMarkedText;
  self->_inlineCompletionAsMarkedText = v6;
}

- (void)handleGrammarCorrectionEntries:(id)a3
{
  v5 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v4 forwardGrammarCorrectionEntries:v5];
  }

  else
  {
    [UITextChecker handleGrammarCorrectionEntries:v5];
  }
}

- (void)_setInputManager:(id)a3
{
  v4 = a3;
  v5 = sharedInputManagerMux();
  [v5 addClient:v4];

  [(_UIKeyboardStateManager *)self syncInputManagerToKeyboardState];
}

- (void)updateFromTextInputTraits
{
  [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];

  [(_UIKeyboardStateManager *)self updateReturnKey:1];
}

- (BOOL)_isShowingCandidateUIWithAvailableCandidates
{
  _UIDeviceNativeUserInterfaceIdiom();
  v3 = [(_UIKeyboardStateManager *)self showsCandidateBar];
  if (v3)
  {
    m_candidateList = self->m_candidateList;

    LOBYTE(v3) = [(UIKeyboardCandidateList *)m_candidateList hasCandidates];
  }

  return v3;
}

- (void)_setAutofillGroup:(id)a3
{
  v4 = a3;
  [(_UIKeyboardStateManager *)self _clearAutofillGroup];
  v5 = [(_UIKeyboardStateManager *)self autofillController];
  [v5 performSelector:sel__setAutofillGroup_ withObject:v4];
}

- (id)_autofillGroup
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 autofillGroup];

  return v3;
}

- (id)_fallbackAutofillGroup
{
  v2 = [(_UIKeyboardStateManager *)self autofillController];
  v3 = [v2 fallbackAutofillGroup];

  return v3;
}

- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self autofillController];
  v6 = [v5 containsUsernamePasswordPairsInAutofillGroup:v4];

  return v6;
}

- (BOOL)isSelectionChanging
{
  m_textInputChangingCount = self->m_textInputChangingCount;
  if (m_textInputChangingCount)
  {
    LOBYTE(m_textInputChangingCount) = !self->m_textInputChangesIgnored;
  }

  return m_textInputChangingCount & 1;
}

- (void)createTypoTrackerReport
{
  v3 = [(_UIKeyboardStateManager *)self inputManager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___UIKeyboardStateManager_createTypoTrackerReport__block_invoke;
  v4[3] = &unk_1E70FE168;
  v4[4] = self;
  [v3 writeTypologyLogWithCompletionHandler:v4];
}

- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained presentKeyboardFeedbackAssistantViewControllerForLogURL:v4];
}

- (void)_performInputViewControllerOutput:(id)a3
{
  v4 = a3;
  if (qword_1ED49D5A8 != -1)
  {
    dispatch_once(&qword_1ED49D5A8, &__block_literal_global_1938);
  }

  v5 = [(_UIKeyboardStateManager *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___UIKeyboardStateManager__performInputViewControllerOutput___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v9 = v4;
  v10 = self;
  v6 = qword_1ED49D5A0;
  v7 = v4;
  [v5 addTask:v8 breadcrumb:v6];
}

- (void)_tagTouchForTypingMenu:(unsigned int)a3
{
  v3 = *&a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1ED49D600;
  v11 = off_1ED49D600;
  if (!off_1ED49D600)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSBSTagTouchForTypingMenuSymbolLoc_block_invoke;
    v7[3] = &unk_1E70F2F20;
    v7[4] = &v8;
    __getSBSTagTouchForTypingMenuSymbolLoc_block_invoke(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(v3);
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIKBSBSTagTouchForTypingMenu(uint32_t)"];
    [v5 handleFailureInFunction:v6 file:@"_UIKeyboardStateManager.m" lineNumber:245 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)setInitialDirectionIgnoreRangeCheck:(BOOL)a3
{
  v3 = a3;
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [(_UIKeyboardStateManager *)self inputDelegate];
  if (v5)
  {
    v6 = v5;
    if (v3)
    {
    }

    else
    {
      v7 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v8 = [v7 selectedTextRange];
      v9 = [v8 isEmpty];

      if (!v9)
      {
        return;
      }
    }

    v10 = [(UITextInputTraits *)self->m_traits keyboardType];
    if (v10 > 0xB || ((1 << v10) & 0x930) == 0)
    {
      v11 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v12 = [v11 _characterBeforeCaretSelection];

      if (v12 == 10 || !v12)
      {
        v13 = [(_UIKeyboardStateManager *)self inputDelegate];
        v14 = [v13 _characterAfterCaretSelection];

        if ((v14 == 10 || !v14) && !self->m_textInputChangingDirection)
        {
          self->m_textInputChangingDirection = 1;
          v15 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          m_currentDirection = self->m_currentDirection;
          v17 = [(_UIKeyboardStateManager *)self inputDelegateManager];
          v18 = [v17 selectedTextRange];
          [v15 setBaseWritingDirection:m_currentDirection forRange:v18];

          v19 = [MEMORY[0x1E696AD88] defaultCenter];
          v22 = @"writingDirection";
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->m_currentDirection];
          v23[0] = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          [v19 postNotificationName:0x1EFB79210 object:0 userInfo:v21];

          self->m_textInputChangingDirection = 0;
        }
      }
    }
  }
}

- (_UITextInteractionEditMenuAssistant)_editMenuAssistant
{
  v2 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  v3 = [v2 _editMenuAssistant];

  return v3;
}

- (void)traitCollectionDidChange
{
  [(_UIKeyboardStateManager *)self takeTextInputTraitsFromDelegate];
  v3 = [(_UIKeyboardStateManager *)self activeLayout];
  [v3 traitCollectionDidChange];

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    v4 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
    [v4 documentTraitsChanged];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];

  if (([v4 __isKindOfUIResponder] & 1) == 0)
  {
    v5 = [(_UIKeyboardStateManager *)self delegateAsResponder];

    v4 = v5;
  }

  if (v4)
  {
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [v4 keyboardAppearance] == 10;
  }

  else
  {
    v6 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (v6)
  {
    m_traits = self->m_traits;
    if (m_traits)
    {
      if (v9 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      [(UITextInputTraits *)m_traits setKeyboardAppearance:v11];
    }
  }
}

- (BOOL)allowsReachableKeyboard
{
  v3 = [objc_opt_self() mainScreen];
  [v3 _unjailedReferenceBounds];
  v5 = v4;

  _UIDeviceNativeUserInterfaceIdiom();
  v6 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained layout];
  v9 = [v8 orientation];

  result = 0;
  if (v6 != 1 && v5 > 320.0 && (v9 - 3) >= 2)
  {
    return ![(_UIKeyboardStateManager *)self keyboardIsKeyPad];
  }

  return result;
}

- (int64_t)currentHandBias
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained layout];
  v4 = [v3 currentHandBias];

  return v4;
}

- (double)biasedKeyboardWidthRatio
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained layout];
  [v3 biasedKeyboardWidthRatio];
  v5 = v4;

  return v5;
}

- (void)acceptAutocorrectionAndEndComposition
{
  v3 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v4 = [v3 autocorrection];

  if (v4)
  {

    [(_UIKeyboardStateManager *)self acceptAutocorrectionWithCompletionHandler:0];
  }

  else
  {

    [(_UIKeyboardStateManager *)self textAccepted:0];
  }
}

- (id)internationalKeyDisplayStringOnEmojiKeyboard
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 isExtensionInputMode];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
    v8 = [WeakRetained layout];
    v6 = [v8 internationalKeyDisplayStringOnEmojiKeyboard];
  }

  return v6;
}

- (id)_remoteAppId
{
  v2 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 appId];

  return v4;
}

- (id)_remoteLocalizedAppName
{
  v2 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 localizedAppName];

  return v4;
}

- (id)_remoteUnlocalizedAppName
{
  v2 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 appName];

  return v4;
}

- (id)_remoteAssociatedDomains
{
  v2 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 associatedDomains];

  return v4;
}

- (void)_deactiveActiveKeys
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v2 = [WeakRetained layout];
  [v2 deactivateActiveKeys];
}

- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)a3
{
  m_textInputChangesIgnored = self->m_textInputChangesIgnored;
  self->m_textInputChangesIgnored = 1;
  (*(a3 + 2))(a3, a2);
  self->m_textInputChangesIgnored = m_textInputChangesIgnored;
}

- (BOOL)exclusivityIdentifierMatched
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 hardwareKeyboardExclusivityIdentifier];

  v5 = [(_UIKeyboardStateManager *)self hardwareKeyboardExclusivityIdentifier];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(_UIKeyboardStateManager *)self hardwareKeyboardExclusivityIdentifier];
    v7 = [v4 isEqualToString:v6];
  }

  return v7;
}

- (BOOL)isShiftKeyBeingHeld
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [objc_opt_class() isHardwareShiftKeyBeingHeld];

  LOBYTE(WeakRetained) = [(_UIKeyboardStateManager *)self callLayoutIsShiftKeyBeingHeld];
  return (v4 | WeakRetained | [(_UIKeyboardStateManager *)self _mimicShiftBeingHeld]) & 1;
}

- (void)lookUpResponderChainForCustomInputView
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v8 = [v3 inputSystemSourceSession];

  if (v8)
  {
    v4 = [v8 textOperations];
    [v4 setEditingActionSelector:sel_lookUpResponderChainForCustomInputView];
    [v8 flushOperations];
  }

  v5 = [(_UIKeyboardStateManager *)self inputDelegate];
  if (v5)
  {
    v6 = v5;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [v6 nextResponder];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    [v6 _showCustomInputView];
  }

LABEL_9:
}

- (id)attributedText
{
  v3 = [(_UIKeyboardStateManager *)self inputDelegate];
  v4 = [v3 _textSelectingContainer];
  v5 = objc_opt_respondsToSelector();

  v6 = [(_UIKeyboardStateManager *)self inputDelegate];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 _textSelectingContainer];
    v9 = [v8 attributedText];

LABEL_5:
    goto LABEL_7;
  }

  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v7 = [(_UIKeyboardStateManager *)self inputDelegate];
    v9 = [v7 attributedText];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)showFirstTextAlternativeWithRangeAdjustment:(int64_t)a3
{
  location = self->m_textAlternativesRange.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->m_textAlternativesRange.location = location - a3;
    v5 = [(_UIKeyboardStateManager *)self attributedText];
    v6 = self->m_textAlternativesRange.length + self->m_textAlternativesRange.location;
    if (v6 <= [v5 length])
    {
      v8 = self->m_textAlternativesRange.location;
      length = self->m_textAlternativesRange.length;
    }

    else
    {
      v7 = [v5 length];
      v8 = self->m_textAlternativesRange.location;
      length = v7 - v8;
      if (v7 <= v8)
      {
        length = 0;
        self->m_textAlternativesRange.location = v7;
        self->m_textAlternativesRange.length = 0;
        v8 = v7;
      }

      else
      {
        self->m_textAlternativesRange.length = length;
      }
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = length == 0;
    [v5 enumerateAttribute:*off_1E70EC9F8 inRange:v8 options:? usingBlock:?];
    if (*(v14 + 24) == 1)
    {
      v10 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      v11 = [v10 _textRangeFromNSRange:{self->m_textAlternativesRange.location, self->m_textAlternativesRange.length}];
      v12 = [(_UIKeyboardStateManager *)self inputDelegateManager];
      [v12 setSelectedTextRange:v11];
    }

    _Block_object_dispose(&v13, 8);
  }
}

- (BOOL)callShouldInsertText:(id)a3 onDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_1EFE8A188])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if ([v7 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 keyboardInput:v9 shouldInsertText:v6 isMarkedText:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    v14 = [v13 selectedTextRange];
    v12 = [v11 shouldChangeTextInRange:v14 replacementText:v6];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)keyboardLayoutIsInAnotherProcess
{
  if (+[UIKeyboard usesInputSystemUI]&& [(_UIKeyboardStateManager *)self isRTIClient])
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([v3 automaticAppearanceEnabled])
    {
      v4 = !+[UIKeyboard usesLocalKeyboard];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldApplyKeyboardCommandToUIHost
{
  if (!self->m_hardwareKeyboardAttached)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained keyboardLayoutIsInAnotherProcess];

  return v3;
}

- (BOOL)shouldApplyKeyboardInputToUIHost
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained keyboardLayoutIsInAnotherProcess];

  return v3;
}

- (void)performKeyboardOutputOnInputSourceSession:(id)a3 shouldFlush:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  if (v11 && v6)
  {
    v7 = [(_UIKeyboardStateManager *)self buildInputSourceState];
    v8 = [v6 textOperations];
    [v8 setInputSourceState:v7];

    v9 = [v6 textOperations];
    v10 = [v9 keyboardOutput];

    v11[2](v11, v10);
    if (v4)
    {
      [v6 flushOperations];
    }
  }
}

- (void)flushKeyboardOutputOnInputSourceSession
{
  v2 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  if (v2)
  {
    v3 = v2;
    [v2 flushOperations];
    v2 = v3;
  }
}

- (void)performOnInputSourceSessionActionSelector:(SEL)a3
{
  v4 = [(_UIKeyboardStateManager *)self inputSystemSourceSession];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 textOperations];
    [v5 setEditingActionSelector:a3];

    [v6 flushOperations];
    v4 = v6;
  }
}

- (void)presentContinuousPathIntroductionView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained presentContinuousPathIntroductionView];
}

- (void)updateIdleDetection:(int64_t)a3
{
  if (+[UIKeyboard usesInputSystemUI])
  {

    [(_UIKeyboardStateManager *)self forwardDictationEvent_updateIdleDetection:a3];
  }

  else
  {
    self->m_userInteraction = a3;
    v5 = [(_UIKeyboardStateManager *)self userInteractionDelegate];

    if (v5)
    {
      m_idleDetection = self->m_idleDetection;
      if (m_idleDetection)
      {
        [(UIDelayedAction *)m_idleDetection touch];
      }

      else
      {
        v7 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleIdleDetectionAction userInfo:0 delay:0.5];
        v8 = self->m_idleDetection;
        self->m_idleDetection = v7;
      }

      v9 = [(_UIKeyboardStateManager *)self userInteractionDelegate];
      [v9 beginUserInteraction:a3];
    }
  }
}

- (void)handleIdleDetectionAction
{
  [(_UIKeyboardStateManager *)self clearIdleDetectionAction];
  v4 = [(_UIKeyboardStateManager *)self taskQueue];
  if (![v4 isEmpty] || -[UIDelayedAction scheduled](self->m_longPressAction, "scheduled") || -[_UIKeyboardStateManager isAutoDeleteActive](self, "isAutoDeleteActive"))
  {
    goto LABEL_11;
  }

  v5 = [(_UIKeyboardStateManager *)self usesCandidateSelection];
  v6 = v5;
  if (v5)
  {
    v2 = [(_UIKeyboardStateManager *)self inputDelegateManager];
    if ([v2 _hasMarkedText])
    {
      goto LABEL_10;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v8 = [WeakRetained layout];
  if ([v8 hasActiveContinuousPathInput])
  {
    goto LABEL_9;
  }

  v9 = [(_UIKeyboardStateManager *)self textInteractionAssistant];
  if ([v9 hasActiveSelectionInteraction])
  {

LABEL_9:
    if (!v6)
    {
LABEL_11:

LABEL_12:
      m_userInteraction = self->m_userInteraction;
      v11 = self;
LABEL_13:

      [(_UIKeyboardStateManager *)v11 updateIdleDetection:m_userInteraction];
      return;
    }

LABEL_10:

    goto LABEL_11;
  }

  v12 = [(_UIKeyboardStateManager *)self isRotating];

  if (v6)
  {
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v4 = objc_loadWeakRetained(&self->_presentationDelegate);
  v2 = [v4 emojiPopoverController];
  v13 = [v2 layout];
  if ([v13 hasActiveKeys])
  {

    goto LABEL_10;
  }

  v14 = objc_loadWeakRetained(&self->_presentationDelegate);
  v15 = [v14 isPressAndHoldPopoverPresented];

  if (v15)
  {
    goto LABEL_12;
  }

  v16 = objc_loadWeakRetained(&self->_presentationDelegate);
  v17 = [v16 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = objc_loadWeakRetained(&self->_presentationDelegate);
    v20 = [v19 layout];

    LODWORD(v19) = [v20 hasActiveKeys];
    if (v19)
    {
      goto LABEL_12;
    }
  }

  if ([(_UIKeyboardStateManager *)self isTrackpadMode])
  {
    v21 = +[UIKeyboardInputMode dictationInputMode];
    v22 = [v21 usingTypeAndTalk];

    if (v22)
    {
      v11 = self;
      m_userInteraction = 0;
      goto LABEL_13;
    }
  }

  v23 = [(_UIKeyboardStateManager *)self userInteractionDelegate];
  [v23 endUserInteraction];
}

- (void)clearIdleDetectionAction
{
  [(UIDelayedAction *)self->m_idleDetection cancel];
  m_idleDetection = self->m_idleDetection;
  self->m_idleDetection = 0;
}

- (void)forwardDictationEvent_switchToDictationInputModeWithOptions:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_switchToDictationInputModeWithOptions____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_switchToDictationInputModeWithOptions_ withOptionalObject:v4];
}

- (void)forwardDictationEvent_handleDictationShouldPause:(BOOL)a3 withNewDelagate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17[2] = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v8)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", v15, 2u);
      }
    }
  }

  else if (!v8)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_handleDictationShouldPause_withNewDelagate____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v15, 2u);
    }
  }

  v9 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v16[0] = @"shouldPause";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v16[1] = @"withNewDelagate";
  v17[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v9 forwardDictationEventToUIHost:sel_handleDictationShouldPause_withNewDelagate_ withOptionalObject:v12];
}

- (void)forwardDictationEvent_switchToDictationLanguage:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_switchToDictationLanguage____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_switchToDictationLanguage_ withOptionalObject:v4];
}

- (void)forwardDictationEvent_startDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_startDictation___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v5 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_startDictation withOptionalObject:0];
}

- (void)forwardDictationEvent_stopDictation:(BOOL)a3
{
  v3 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_stopDictation____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v11, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_stopDictation_ withOptionalObject:v8];
}

- (void)forwardDictationEvent_cancelDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_cancelDictation___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v5 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_cancelDictation withOptionalObject:0];
}

- (void)forwardDictationEvent_movePopoverView:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_movePopoverView____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_movePopoverView_ withOptionalObject:v4];
}

- (void)forwardDictationEvent_handleTip:(id)a3 title:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v9)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", v15, 2u);
      }
    }
  }

  else if (!v9)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_handleTip_title____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v15, 2u);
    }
  }

  v10 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v11 = v10;
  if (v6)
  {
    v16[0] = @"text";
    v16[1] = @"title";
    v17[0] = v6;
    v17[1] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v11 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_handleTip_ withOptionalObject:v12];
  }

  else
  {
    [v10 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_handleTip_ withOptionalObject:0];
  }
}

- (void)forwardDictationEvent_updateIdleDetection:(int64_t)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_updateIdleDetection____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v12, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_updateIdleDetection_ withOptionalObject:v8];

  v9 = +[UIDictationController sharedInstance];
  [v9 insertLastHypothesisAsFinalResultLocally];
}

- (void)forwardDictationEvent_stopDictationIgnoreFinalizePhrases
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_stopDictationIgnoreFinalizePhrases___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v5 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases withOptionalObject:0];
}

- (void)forwardDictationEvent_resumeDictation
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_resumeDictation___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v5 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_resumeDictation withOptionalObject:0];
}

- (void)forwardKeyboardCameraEvent_startCameraInput:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = +[UIKeyboard usesInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_startCameraInput____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(_UIKeyboardStateManager *)self remoteTextInputPartner];
  [v7 forwardKeyboardCameraEvent_startCameraInput:v4];
}

- (void)forwardKeyboardCameraEvent_selfDestruct
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = +[UIKeyboard isInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_selfDestruct___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v5 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v6 = [v5 inputSystemSourceSession];

  if (v6)
  {
    v7 = [v6 textOperations];
    [v7 setEditingActionSelector:sel_handleRemoteKeyboardCameraEvent_selfDestruct];
    [v6 flushOperations];
  }
}

- (void)forwardKeyboardCameraEvent_updatePreviewText:(id)a3 asMarkedText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = +[UIKeyboard isKeyboardProcess];
  if (has_internal_diagnostics)
  {
    if (!v8)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unexpected forwarding event", buf, 2u);
      }
    }
  }

  else if (!v8)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_updatePreviewText_asMarkedText____s_category) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v17, 2u);
    }
  }

  v9 = [(_UIKeyboardStateManager *)self inputDelegateManager];
  v10 = [v9 inputSystemSourceSession];

  if (v10)
  {
    if (v4)
    {
      v11 = [MEMORY[0x1E69D9618] intermediateTextWithInputString:&stru_1EFB14550 displayString:v6];
      v12 = [v10 textOperations];
      [v12 setIntermediateText:v11];
    }

    else
    {
      v13 = [MEMORY[0x1E69D9618] intermediateTextWithInputString:&stru_1EFB14550 displayString:&stru_1EFB14550];
      v14 = [v10 textOperations];
      [v14 setIntermediateText:v13];

      v11 = [v10 textOperations];
      v12 = [v11 keyboardOutput];
      [v12 insertText:v6];
    }

    [v10 flushOperations];
  }
}

- (id)_getCurrentKeyplaneName
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_presentationDelegate);
    v7 = [v6 layout];
    v8 = [v7 keyplaneName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getCurrentKeyboardName
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_presentationDelegate);
    v7 = [v6 layout];
    v8 = [v7 keyboardName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getLocalizedInputMode
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v4 = [WeakRetained layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_presentationDelegate);
    v7 = [v6 layout];
    v8 = [v7 localizedInputMode];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getAutocorrection
{
  v2 = [(_UIKeyboardStateManager *)self autocorrectionController];
  v3 = [v2 autocorrection];
  v4 = [v3 candidate];

  return v4;
}

- (id)_getAutocorrectionList
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 systemInputAssistantViewController];
  v4 = [v3 centerViewController];
  v5 = [v4 displayedCandidates];

  return v5;
}

- (id)_getCandidateList
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  v3 = [WeakRetained candidateController];
  v4 = [v3 candidates];
  v5 = [v4 candidates];

  return v5;
}

- (_UITextInputUserInteractionDelegate)userInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInteractionDelegate);

  return WeakRetained;
}

- (_UIKeyboardPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (UIView)overlayContainerObserved
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  return WeakRetained;
}

@end