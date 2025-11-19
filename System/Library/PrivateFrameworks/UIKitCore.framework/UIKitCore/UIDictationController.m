@interface UIDictationController
+ (BOOL)_checkTraitsSupportDictation:(id)a3;
+ (BOOL)_isDictationAllowedWithUserDefaults:(id)a3;
+ (BOOL)_isLowStorageForOnDeviceDictationAsset;
+ (BOOL)canHandleCommandIdentifier:(unint64_t)a3;
+ (BOOL)canPerformDictation;
+ (BOOL)canShareDictationData;
+ (BOOL)canUndoOrRedo;
+ (BOOL)checkTraitsSupportDictation:(id)a3;
+ (BOOL)dictationInfoIsOnScreen;
+ (BOOL)dictationIsFunctional;
+ (BOOL)fetchCurrentInputModeSupportsDictation;
+ (BOOL)isDictationSearchBarButtonVisible;
+ (BOOL)isEventFromMessagesSendButton:(id)a3 inspectResponderChain:(BOOL)a4;
+ (BOOL)isInputDelegateSafariAddressBar;
+ (BOOL)isListening;
+ (BOOL)isRunning;
+ (BOOL)isRunningInTypeAndTalkMode;
+ (BOOL)isTextViewOnStarkScreen:(id)a3;
+ (BOOL)remoteCanDictateCurrentInputMode;
+ (BOOL)shouldDeleteBackward;
+ (BOOL)shouldForwardInInputSystemUI;
+ (BOOL)shouldHideCursorForTextView:(id)a3;
+ (BOOL)shouldInsertText:(id)a3;
+ (BOOL)shouldPreferOnDeviceRecognition;
+ (BOOL)shouldPreferOnlineRecognition;
+ (BOOL)shouldRemoveTextEntries:(id)a3;
+ (BOOL)starkSceneExists;
+ (BOOL)supportsSendVoiceCommand;
+ (BOOL)supportsSiriDictationVoiceCommands;
+ (BOOL)supportsSiriDictationVoiceCommandsUIRedesign;
+ (BOOL)supportsUndoCommandForCurrentDictationRequest;
+ (BOOL)takesPressesBegan:(id)a3 forTextView:(id)a4;
+ (BOOL)usingServerManualEndpointingThreshold;
+ (double)serverManualEndpointingThreshold;
+ (id)UIDictationInstrumentaionLocalIdentifierWithLocalString:(id)a3;
+ (id)UIDictationLanguageSourceType:(unint64_t)a3;
+ (id)UIDictationStartStopReasonTypeDescription:(unint64_t)a3;
+ (id)activeConnection;
+ (id)activeSLSDictationLanguages;
+ (id)arrayWithTextEntriesRemoved:(id)a3;
+ (id)bestInterpretationForDictationResult:(id)a3;
+ (id)convertEditValuesToHashByPosition:(id)a3 dictationResultEditType:(id)a4;
+ (id)dictionaryWithTextEntriesRemoved:(id)a3;
+ (id)firstParameterTextWithParameters:(id)a3;
+ (id)interpretation:(id)a3 forPhraseIndex:(unint64_t)a4 isShiftLocked:(BOOL)a5 autocapitalizationType:(int64_t)a6 useServerCapitalization:(BOOL)a7;
+ (id)logAutoPunctuationEdit:(id)a3 deletionValues:(id)a4 substitutionValues:(id)a5 withContext:(id)a6;
+ (id)mergePunctuationInsertAndDeleteIntoSubstituteTypeForSameStartEnd:(id)a3 deleteEditValues:(id)a4;
+ (id)removeTextIfNeeded:(id)a3;
+ (id)removeTextIfNeeded:(id)a3 metadata:(id)a4;
+ (id)secondParameterTextWithParameters:(id)a3;
+ (id)serializedDictationPhrases:(id)a3;
+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4;
+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 autocapitalization:(int64_t)a5 capitalization:(unint64_t)a6;
+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 autocapitalization:(int64_t)a5 capitalization:(unint64_t)a6 smartPunctuation:(BOOL)a7;
+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 capitalization:(unint64_t)a5;
+ (id)sharedInstance;
+ (id)slsDictationLanguages;
+ (id)streamingHypothesisForPhrases:(id)a3;
+ (id)stringForViewMode:(int)a3;
+ (id)stripNonPunctuationEditValues:(id)a3;
+ (id)textRelatedMetadataKeys;
+ (id)thirdParameterTextWithParameters:(id)a3;
+ (id)whitelistedDictationDictionariesFromMetadataDictionaries:(id)a3;
+ (id)whitelistedDictationDictionaryFromMetadata:(id)a3;
+ (id)whitelistedDictationMetadataKeys;
+ (int)UIDictationStartStopReasonToInstrumentationDictationEndPointType:(unint64_t)a3;
+ (int)UIDictationStartStopReasonToInstrumentationInvocationSourceType:(unint64_t)a3;
+ (int)mapDictationCommandIdentifierToUEIcommandIdentifier:(unint64_t)a3;
+ (int)viewMode;
+ (unint64_t)commandIdentifierWithStringIdentifier:(id)a3;
+ (unint64_t)reasonType:(id)a3;
+ (unint64_t)specificReasonTypeMicButtonOnKeyboard;
+ (unint64_t)specificReasonTypeMicButtonOnKeyboardWithInputSwitcher;
+ (void)applicationDidEnterBackgroundNotification;
+ (void)didBeginEditingInTextView:(id)a3;
+ (void)inputSystemSessionWillEndForReason:(int64_t)a3;
+ (void)instrumentationDictationAlternativeSelectedWithInstrumentationContext:(id)a3 originalText:(id)a4 replacementText:(id)a5 replacementIndex:(unint64_t)a6 alternativesAvailableCount:(unint64_t)a7 dictationLanguage:(id)a8;
+ (void)instrumentationDictationAlternativesViewedWithInstrumentationContext:(id)a3 alternatives:(id)a4 dictationLanguage:(id)a5;
+ (void)keyboardDidShow;
+ (void)keyboardDidUpdateOnScreenStatus;
+ (void)keyboardWillChangeFromDelegate:(id)a3 toDelegate:(id)a4 shouldPause:(BOOL)a5;
+ (void)logCorrectionStatisticsForDelegate:(id)a3 reason:(unint64_t)a4;
+ (void)onDidBecomeActive;
+ (void)onWillResignActive;
+ (void)performOperations:(id)a3 keyboardShifted:(BOOL)a4;
+ (void)poppedLastStreamingOperation;
+ (void)remoteMicrophoneCapabilityChanged;
+ (void)siriPreferencesChanged;
+ (void)updateLandingView;
- (BOOL)_allowsMicsInSearchField;
- (BOOL)_canApplyVoiceCommandWithIdentifierString:(id)a3 firstParameterText:(id)a4 targetString:(id)a5 voiceCommandUUID:(id)a6;
- (BOOL)_didRecognizeCommandWithIdentifier:(id)a3 strings:(id)a4 parameters:(id)a5 voiceCommandUUID:(id)a6;
- (BOOL)_handleMultipleTextTargetsForText:(id)a3 payloadText:(id)a4 voiceCommandUUID:(id)a5;
- (BOOL)_resolvedIsDictationPossible;
- (BOOL)_shouldApplyLastHypothesis;
- (BOOL)_shouldDeleteBackward;
- (BOOL)_shouldInsertText:(id)a3;
- (BOOL)_shouldUpdateHelperMessageDisplay;
- (BOOL)currentViewModeSupportsDictationMics;
- (BOOL)dataSharingDecided;
- (BOOL)dictationConnection:(id)a3 filterState:(id)a4 shouldCheckpointAtToken:(id)a5;
- (BOOL)dictationEnabled;
- (BOOL)dictationSearchFieldUIEnabled;
- (BOOL)dictationSearchFieldUISupportsTraitCollection:(id)a3;
- (BOOL)dictationWordwiseBackspaceEnabled;
- (BOOL)enableEuclidAlternatives;
- (BOOL)isFallingBackToMonolingualDictation;
- (BOOL)languageSupportsAdaptiveDelete;
- (BOOL)remoteHasMicrophone;
- (BOOL)shouldOverrideManualEndpointingWithReturnKeyType:(int64_t)a3;
- (BOOL)shouldPresentOptInAlert;
- (BOOL)shouldSuppressPartialResults;
- (BOOL)shouldUseDictationSearchFieldBehavior;
- (BOOL)smartLanguageSelectionOverridden;
- (BOOL)supportsDictationLanguage:(id)a3 error:(id *)a4;
- (BOOL)supportsInputMode:(id)a3 error:(id *)a4;
- (BOOL)useAutomaticEndpointing;
- (NSNumber)dictationRequestOrigin;
- (NSUndoManager)undoManager;
- (UIDictationController)init;
- (UIKeyboardInputMode)currentInputModeForDictation;
- (_NSRange)_getRangeOfString:(id)a3 inDocumentText:(id)a4;
- (_NSRange)cachedPreSelectionRange;
- (_NSRange)insertionRange;
- (_NSRange)preCommandExecutionPositionRange;
- (_NSRange)selectBestReplacementRangeFromContext:(id)a3 withDeltaRange:(_NSRange)a4 originalSelectedRange:(_NSRange)a5 replacementText:(id)a6;
- (_NSRange)startRangeOfCurrentHypothesis;
- (__CFString)resultTransformForLanguageModel:(id)a3;
- (float)audioLevel;
- (float)maxRecordingLength;
- (id)_assistantCompatibleLanguageCodeForInputMode:(id)a3;
- (id)_containingSearchBarForView:(id)a3;
- (id)_currentLanguageForOfflineDictationMetrics;
- (id)_documentStateForCommandApplicability;
- (id)_effectiveUndoManager;
- (id)_finalDictationStartLanguageCodeWithKeyboardInputMode:(id)a3;
- (id)_getBestHypothesisRangeGivenHintRange:(id)a3 inputDelegateManager:(id)a4 hypothesisRange:(_NSRange *)a5 documentTextInRange:(id *)a6 forHypothesis:(id)a7;
- (id)_hypothesisRangeFromSelectionRange:(id)a3 inputDelegateManager:(id)a4 forHypothesis:(id)a5;
- (id)_rangeByExtendingRange:(id)a3 backward:(int64_t)a4 forward:(int64_t)a5 inputDelegateManager:(id)a6;
- (id)_voiceCommandGrammarParseCandidatesFromPackage:(id)a3 completeCommands:(BOOL)a4;
- (id)activeMultilingualKeyboardDictationMappings;
- (id)commandMetadataWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4;
- (id)commandPayloadStringWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4;
- (id)commandTargetStringWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4;
- (id)connectionForStatisticsLogging;
- (id)currentDictationLanguageForDisplay;
- (id)dictationBlockForToken:(id)a3;
- (id)dictationConnection;
- (id)dictationConnection:(id)a3 willFilterTokensWithLanguageModel:(id)a4 forFinalize:(BOOL)a5;
- (id)dictationUIState;
- (id)fieldIdentifierInputDelegate:(id)a3;
- (id)language;
- (id)languageCodeForAssistantLanguageCode:(id)a3;
- (id)postfixTextForInputDelegate:(id)a3 wordCount:(unint64_t)a4;
- (id)prefixTextForInputDelegate:(id)a3 wordCount:(unint64_t)a4;
- (id)presentingViewControllerForPrivacySheet;
- (id)selectedTextForInputDelegate:(id)a3;
- (id)streamingOperations;
- (unint64_t)specificReasonTypeFromApplicationDuringDictation;
- (void)_addUndoNotificationObservationWithVoiceCommandUUID:(id)a3;
- (void)_beginOfflineMetricsSession;
- (void)_beginUndoGroupingIfNecessary;
- (void)_clearExistingText;
- (void)_completeStartDictationWithContinuation:(id)a3;
- (void)_createDictationPresenterWindowIfNecessary;
- (void)_deleteBackwardIntoText;
- (void)_dictationDidRecieveDidBeginDictationNotification:(id)a3;
- (void)_dictationDidRecieveDidFinishDictationNotification:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_displaySecureContentsAsPlainText:(BOOL)a3 afterDelay:(double)a4;
- (void)_endEnableDictationPromptAnimated:(BOOL)a3;
- (void)_endOfflineMetricsSession;
- (void)_endUndoGroupingIfNecessary;
- (void)_finalizePhrasesOnDictationPause;
- (void)_handleDataSharingSheetDecision;
- (void)_handlePrivacySheetDismissal;
- (void)_handleRecognizedCommandWithCommandIdentifier:(unint64_t)a3 parameters:(id)a4 strings:(id)a5 voiceCommandUUID:(id)a6;
- (void)_handleWKMultipleTextTargetsForText:(id)a3 payloadText:(id)a4 voiceCommandUUID:(id)a5 completionHandler:(id)a6;
- (void)_insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)_logEnablementPromtMetricsWithStartDate:(id)a3;
- (void)_markOfflineDictationInputMetricEvent;
- (void)_performDictationRedo;
- (void)_performDictationUndo;
- (void)_performStandardEditAction:(SEL)a3 sender:(id)a4;
- (void)_presentAlertForDictationInputModeOfType:(int64_t)a3 completionHandler:(id)a4;
- (void)_presentDataSharingOptInAlertWithCompletion:(id)a3;
- (void)_presentEnablementAndDataSharingPromptIfNeeded:(id)a3;
- (void)_presentOptInAlertWithCompletion:(id)a3;
- (void)_presentPrivacySheetForType:(int64_t)a3 completion:(id)a4;
- (void)_refreshVisibleRTIDocumentStateWithContinuation:(id)a3;
- (void)_removeUndoNotificationObservation;
- (void)_requestDocumentContextWithCompletionHandler:(id)a3;
- (void)_requestFullDocumentContextWithCompletionHandler:(id)a3;
- (void)_restoreInsertionPointPositionWithKeyboard:(id)a3 originalPositionRange:(_NSRange)a4 targetRange:(_NSRange)a5 payloadRange:(_NSRange)a6 contextBefore:(BOOL)a7;
- (void)_runFinalizeOperation:(BOOL)a3;
- (void)_setFinalResultHandler:(id)a3;
- (void)_setHaveLeakedPartialResultForCommandUtterance:(BOOL)a3;
- (void)_setupForCommandExecutionWithCommandIdentifier:(unint64_t)a3;
- (void)_setupHypothesisAsFinalResults;
- (void)_startDictationWithContinuation:(id)a3;
- (void)_startStreamingAnimations;
- (void)_stopStreamingAnimation;
- (void)_touchPhaseChangedForTouch:(id)a3;
- (void)_updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)beginUserInteraction:(int64_t)a3;
- (void)cancelDictation;
- (void)cancelDictationForResponderIfNeeded:(id)a3 wantsKeyboard:(BOOL)a4 isPencil:(BOOL)a5;
- (void)cancelDictationForTextStoreChangesInResponder:(id)a3;
- (void)cancelRecordingLimitTimer;
- (void)clearKeyboardTrackpadModeIfNeeded;
- (void)clearSelectedTextAndLastDictationResult:(BOOL)a3;
- (void)clearTextFieldPlaceholder;
- (void)completeStartConnection;
- (void)completeStartConnectionForFileAtURL:(id)a3 forInputModeIdentifier:(id)a4;
- (void)dealloc;
- (void)dictationConnection:(id)a3 didBeginLocalRecognitionWithModelInfo:(id)a4;
- (void)dictationConnection:(id)a3 didFailRecognitionWithError:(id)a4;
- (void)dictationConnection:(id)a3 didFailRecordingWithError:(id)a4;
- (void)dictationConnection:(id)a3 didFilterTokensWithFilterState:(id)a4 forFinalize:(BOOL)a5;
- (void)dictationConnection:(id)a3 didReceivePartialPackage:(id)a4 nluResult:(id)a5 languageModel:(id)a6;
- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7;
- (void)dictationConnection:(id)a3 didReceiveVoiceCommandCandidatePackage:(id)a4 nluResult:(id)a5;
- (void)dictationConnection:(id)a3 didStartRecordingWithOptions:(id)a4;
- (void)dictationConnection:(id)a3 filterState:(id)a4 processFilteredToken:(id)a5 forFinalize:(BOOL)a6;
- (void)dictationConnection:(id)a3 finalizePhrases:(id)a4 languageModel:(id)a5 correctionIdentifier:(id)a6 secureInput:(BOOL)a7 finalResult:(BOOL)a8;
- (void)dictationConnection:(id)a3 receivedInterpretation:(id)a4 languageModel:(id)a5 secureInput:(BOOL)a6;
- (void)dictationConnection:(id)a3 updateOptions:(id)a4;
- (void)dictationConnectionDidCancelIncompatibleLocalRecognizer:(id)a3;
- (void)dictationConnectionDidCancelRecording:(id)a3;
- (void)dictationConnectionDidEndRecording:(id)a3;
- (void)dictationConnectionDidFinish:(id)a3;
- (void)dictationConnectionDidStartRecording:(id)a3;
- (void)dictationConnectionWillStartRecording:(id)a3;
- (void)dictationConnnectionDidChangeAvailability:(id)a3;
- (void)dictationPrivacySheetControllerDidFinish:(id)a3;
- (void)dictationShortCutKey:(id)a3;
- (void)didShowAlternatives:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5 instrumentationContext:(id)a6 dictationLanguage:(id)a7;
- (void)dismissSoftwareKeyboardIfNeeded;
- (void)endSessionIfNecessaryForTransitionFromState:(int)a3 toState:(int)a4;
- (void)endSmartLanguageSelectionOverride;
- (void)endUserInteraction;
- (void)errorAnimationDidFinish;
- (void)euclidPhoneticString:(id)a3 maxResultsCount:(unint64_t)a4 completion:(id)a5;
- (void)finalizeDictationRecognitionWithPhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5 secureInput:(BOOL)a6 finalResult:(BOOL)a7;
- (void)finishDictationRecognitionWithPhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5 secureInput:(BOOL)a6;
- (void)forceDictationReturnToKeyboardInputMode;
- (void)forceOOPDocumentStateSync;
- (void)handleDictationShouldPause:(BOOL)a3 withNewDelagate:(BOOL)a4;
- (void)handleHardwareKeyboardGesture;
- (void)handleWKActionMoveAfter;
- (void)handleWKActionMoveBefore;
- (void)insertLastHypothesisAsFinalResultLocally;
- (void)insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:(id)a3 disambiguationIndex:(id)a4 totalDisambiguationCount:(id)a5;
- (void)instrumentDictationVoiceCommandUndoTapActionWithVoiceCommandUUID:(id)a3 undoTapAlternativeSelection:(BOOL)a4;
- (void)instrumentationDictationContextEmitInstrumentation;
- (void)instrumentationDictationTranscriptionMetadataEmitInstrumentationWithDictationResult:(id)a3;
- (void)invalidateTextInputView;
- (void)keyboardDidHide:(id)a3;
- (void)launchDictationFeedbackApp;
- (void)logAlternativeSelected:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5;
- (void)logDidAcceptDictationResult:(id)a3 reasonType:(unint64_t)a4;
- (void)logDidAcceptReplacement:(id)a3 replacementLanguageCode:(id)a4 originalText:(id)a5 correctionIdentifier:(id)a6 interactionIdentifier:(id)a7;
- (void)logEuclidRequested;
- (void)logEuclidSelection:(id)a3 suggestedTokens:(id)a4 correctedToken:(id)a5 selectedIndex:(int64_t)a6;
- (void)markDictationTipDeletionEvent:(id)a3 deletedTextRange:(_NSRange)a4;
- (void)markDictationUndoEventWithVoiceCommandUUID:(id)a3 viaTapOnRevertBubble:(BOOL)a4;
- (void)markKeyboardDeleteMetricEvent;
- (void)markKeyboardDidReset;
- (void)markKeyboardInputMetricEvent;
- (void)notifyDocumentStateChangedAndResumeDictation:(id)a3;
- (void)optInButtonPressedForPresenter:(id)a3;
- (void)optOutButtonPressedForPresenter:(id)a3;
- (void)overrideSmartLanguageSelection:(id)a3;
- (void)pauseDictationOnUserInteraction:(int64_t)a3;
- (void)pauseSpeechRecognition;
- (void)performIgnoringDocumentChanges:(id)a3;
- (void)performIgnoringRTIChanges:(id)a3;
- (void)performTextReplacementForWebKitWithDeltaRange:(_NSRange)a3 targetText:(id)a4 replacementText:(id)a5 originalSelectedRange:(_NSRange)a6 voiceCommandDisambiguationSelectedIndex:(id)a7 voiceCommandDisambiguationTargetCount:(id)a8 voiceCommandUUID:(id)a9 completionHandler:(id)a10;
- (void)playVoiceCommandHapticFeedack;
- (void)populateInstrumentationMetadataOnCommandExecuted:(id)a3 toExecuted:(id)a4;
- (void)postNotificationName:(id)a3 userInfo:(id)a4;
- (void)preferencesChanged:(id)a3;
- (void)preheatEuclidModelWithLanguageCode:(id)a3 clientID:(id)a4;
- (void)preheatIfNecessary;
- (void)prepareDoubleTapShortcutGesture:(id)a3;
- (void)prepareStartDictationKeyboardGestures;
- (void)prepareStartDictationKeyboardGesturesForDelegate:(id)a3;
- (void)prepareVoiceCommandSingleTapGesture:(id)a3;
- (void)presentAlertOfType:(int64_t)a3 withCompletion:(id)a4;
- (void)presentEnablementAndDataSharingPromptIfNeeded:(id)a3;
- (void)releaseConnection;
- (void)removeSelectedText;
- (void)removeStartDictationKeyboardGestures;
- (void)requestVisibleTextWithCompletionBlock:(id)a3;
- (void)resetAdaptiveDeleteActivationLogic;
- (void)resetDictation;
- (void)resetDictationPendingEdits;
- (void)resetIdleTimer;
- (void)resetLastHypothesis;
- (void)resetSpeechRecognition;
- (void)resignFirstResponderWhenIdleIfNeeded;
- (void)restoreTextFieldPlaceholder;
- (void)resumeDictation;
- (void)resumeSpeechRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)rtiInputSessionWillChangeToNewProcess:(id)a3;
- (void)sendButtonPressedInMessages:(id)a3;
- (void)setAppState:(int)a3;
- (void)setCandidateDictationSerializableResults:(id)a3;
- (void)setCurrentInstrumentationContext:(id)a3;
- (void)setDictationInfoOnScreenNotifyKey:(BOOL)a3;
- (void)setDictationInputMode:(id)a3;
- (void)setDisambiguationActiveEnabled:(BOOL)a3;
- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setIgnoreFinalizePhrases:(BOOL)a3;
- (void)setInteractionIdentifier:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setLocalSpeechRecognitionForced:(BOOL)a3;
- (void)setShadowState:(int)a3;
- (void)setState:(int)a3;
- (void)setupForAsyncDelegate;
- (void)setupForDictationStart;
- (void)setupForStreamingDictationStart;
- (void)setupToInsertResultForNewHypothesis:(id)a3;
- (void)showLowStorageUserAlertWithLanguage:(id)a3;
- (void)showSoftwareKeyboardIfNeeded;
- (void)startConnectionWithContinuation:(id)a3;
- (void)startDictationForFileAtURL:(id)a3 forInputModeIdentifier:(id)a4;
- (void)startDictationWithContinuation:(id)a3;
- (void)startHelperMessageDisplayIfNeeded;
- (void)startRecordingLimitTimer;
- (void)stopAndCancelDictationIfNeededWithReasonType:(unint64_t)a3;
- (void)stopAndCancelDictationWithReasonType:(unint64_t)a3;
- (void)stopDictation;
- (void)stopDictation:(BOOL)a3;
- (void)stopDictationAndResignFirstResponder;
- (void)stopDictationByTimer;
- (void)stopDictationIgnoreFinalizePhrases:(BOOL)a3;
- (void)stopHelperMessageDisplayIfNeeded;
- (void)stopIdleTimerResetTimer;
- (void)switchToDictationInputMode;
- (void)switchToDictationInputModeWithOptions:(id)a3;
- (void)switchToDictationInputModeWithTouch:(id)a3;
- (void)switchToDictationInputModeWithTouch:(id)a3 options:(id)a4;
- (void)switchToDictationInputModeWithTouch:(id)a3 withKeyboardInputMode:(id)a4 options:(id)a5;
- (void)switchToDictationLanguage:(id)a3 inputOptions:(id)a4;
- (void)switchToKeyboardInputModeIfNeeded;
- (void)updateDoubleTapShortcutWithPreference:(int64_t)a3;
- (void)updateHelperMessageDisplayIfNeeded;
- (void)updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4;
- (void)updateRecordingLimitTimerIfNeeded;
- (void)voiceCommandSingleTapKey:(id)a3;
@end

@implementation UIDictationController

+ (BOOL)starkSceneExists
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [UIScene _scenesIncludingInternal:1, 0];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 _hostsWindows])
        {
          v7 = [v6 _screen];
          v8 = [v7 _userInterfaceIdiom];

          if (v8 == 3)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

+ (BOOL)isRunning
{
  v2 = +[UIKeyboard usesInputSystemUI];
  v3 = 12;
  if (v2)
  {
    v3 = 8;
  }

  return *&_MergedGlobals_35[v3] != 0;
}

+ (int)viewMode
{
  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    return 6;
  }

  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if (+[UIDictationController starkSceneExists](UIDictationController, "starkSceneExists") && ([v3 containerWindow], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(v3, "containerWindow"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "screen"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_userInterfaceIdiom"), v7, v6, v5, v8 == 3))
  {
    v2 = 0;
  }

  else if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (+[UIKeyboardImpl isFloating])
    {
      v2 = 7;
    }

    else
    {
      v9 = [v3 inputViews];
      if ([v9 isSplit])
      {
        v2 = 4;
      }

      else
      {
        v2 = 3;
      }
    }
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

- (BOOL)dictationSearchFieldUIEnabled
{
  if ([(UIDictationController *)self currentViewModeSupportsDictationMics]&& _UIIsPrivateMainBundle() && ![(UIDictationController *)self dictationDisabledDueToTelephonyActivity])
  {
    v5 = _UIKitUserDefaults();
    if ([objc_opt_class() _isDictationAllowedWithUserDefaults:v5])
    {
      if (([v5 BOOLForKey:@"Dictation Enabled"] & 1) == 0)
      {
        v6 = +[UIDictationConnectionPreferences sharedInstance];
        v7 = [v6 suppressDictationOptIn];

        if (v7)
        {
          goto LABEL_19;
        }

        v8 = +[UIWindow _applicationKeyWindow];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[UIKeyboardImpl keyboardWindow];
        }

        v11 = v10;

        if ([v11 _isHostedInAnotherProcess])
        {

          goto LABEL_19;
        }

        IsExtension = _UIApplicationIsExtension();

        if (IsExtension)
        {
          goto LABEL_19;
        }
      }

      if ([(UIDictationController *)self _allowsMicsInSearchField])
      {
        v3 = 1;
LABEL_20:

        return v3;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v3 = [v5 BOOLForKey:@"UIDictationControllerForceDictationUIInSearchField"];
        goto LABEL_20;
      }
    }

LABEL_19:
    v3 = 0;
    goto LABEL_20;
  }

  return 0;
}

- (BOOL)currentViewModeSupportsDictationMics
{
  v2 = +[UIDictationController viewMode];
  if (v2)
  {
    v3 = v2 == 6;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)_allowsMicsInSearchField
{
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [v3 firstObject];

  v6 = 0;
  LOBYTE(self) = [(UIDictationController *)self supportsDictationLanguage:v4 error:&v6];

  return self;
}

- (UIDictationController)init
{
  v31.receiver = self;
  v31.super_class = UIDictationController;
  v2 = [(UIDictationController *)&v31 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (+[UIDictationConnection isDictationAvailable])
  {
    if (notify_register_check("com.apple.keyboard.isDictationRunning", &v3->_dictationInputModeNotifierToken))
    {
      v3->_dictationInputModeNotifierToken = -1;
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:objc_opt_class() selector:sel_applicationDidBecomeActive name:@"UIApplicationDidBecomeActiveNotification" object:0];
    [v4 addObserver:objc_opt_class() selector:sel_applicationWillResignActive name:@"UIApplicationWillResignActiveNotification" object:0];
    [v4 addObserver:objc_opt_class() selector:sel_viewServiceDidBecomeActive name:0x1EFBB4830 object:0];
    [v4 addObserver:objc_opt_class() selector:sel_viewServiceWillResignActive name:0x1EFBB4850 object:0];
    [v4 addObserver:objc_opt_class() selector:sel_applicationDidEnterBackgroundNotification name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v4 addObserver:objc_opt_class() selector:sel_siriPreferencesChanged name:0x1EFB73710 object:0];
    [v4 addObserver:objc_opt_class() selector:sel_remoteMicrophoneCapabilityChanged name:@"_UIDeviceRemoteHasMicrophoneDidChangeNotification" object:0];
    [v4 addObserver:v3 selector:sel_keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
    [v4 addObserver:v3 selector:sel_keyboardDidHide_ name:@"UIKeyboardPrivateDidHideNotification" object:0];
    [v4 addObserver:v3 selector:sel_preferencesChanged_ name:*MEMORY[0x1E69D9908] object:0];
    [v4 addObserver:v3 selector:sel_sendButtonPressedInMessages_ name:@"CKMessageEntryViewSendButtonPressedNotification" object:0];
    if (+[UIKeyboard isKeyboardProcess])
    {
      [v4 addObserver:objc_opt_class() selector:sel_keyboardDidShow name:@"UIKeyboardDidShowNotification" object:0];
      [v4 addObserver:v3 selector:sel_rtiInputSessionWillChangeToNewProcess_ name:*MEMORY[0x1E69C6FC0] object:0];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:v3 selector:sel__dictationDidRecieveDidBeginDictationNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:v3 selector:sel__dictationDidRecieveDidFinishDictationNotification_ name:@"UIDictationControllerDictationDidFinish" object:0];
    }

    v8 = +[UIDictationConnectionPreferences sharedInstance];
    preferences = v3->_preferences;
    v3->_preferences = v8;

    v10 = objc_opt_new();
    monitor = v3->_monitor;
    v3->_monitor = v10;

    objc_initWeak(&location, v3);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __29__UIDictationController_init__block_invoke;
    v28 = &unk_1E70F5A28;
    objc_copyWeak(&v29, &location);
    [(_UIDictationTelephonyMonitor *)v3->_monitor setActivityChanged:&v25];
    [(_UIDictationTelephonyMonitor *)v3->_monitor start:v25];
    v12 = objc_alloc_init(UIDictationTipController);
    dictationTipController = v3->_dictationTipController;
    v3->_dictationTipController = v12;

    v14 = objc_alloc_init(UIDictationCursorPositionRestorer);
    cursorPositionRestorer = v3->_cursorPositionRestorer;
    v3->_cursorPositionRestorer = v14;

    _MergedGlobals_35[0] = 1;
    v3->_stateHandler = os_state_add_handler();
    v16 = [[_UIAssertionController alloc] initWithAssertionSubject:v3];
    assertionController = v3->_assertionController;
    v3->_assertionController = v16;

    v18 = +[_UIDictationSettingsDomain rootSettings];
    v19 = [v18 commandHapticFeedbackEnabled];

    if (v19)
    {
      v20 = [UIImpactFeedbackGenerator alloc];
      v21 = +[_UIDictationSettingsDomain rootSettings];
      v22 = -[UIImpactFeedbackGenerator initWithStyle:view:](v20, "initWithStyle:view:", [v21 impactStyle], 0);
      feedbackGenerator = v3->_feedbackGenerator;
      v3->_feedbackGenerator = v22;
    }

    v5 = v3;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sharedInstance
{
  v2 = gSharedInstance;
  if (!gSharedInstance)
  {
    v3 = objc_alloc_init(UIDictationController);
    v4 = gSharedInstance;
    gSharedInstance = v3;

    v2 = gSharedInstance;
  }

  v5 = v2;

  return v5;
}

+ (void)onDidBecomeActive
{
  v2 = +[UIDictationController activeInstance];
  v3 = [v2 wantsAvailabilityMonitoringWhenAppActive];

  if (v3)
  {
    v4 = +[UIDictationController sharedInstance];
    v5 = [v4 dictationConnection];
    [v5 beginAvailabilityMonitoring];
  }

  _MergedGlobals_35[0] = 1;
  if (byte_1ED4987D3 == 1)
  {
    v6 = +[UIDictationController activeInstance];
    [v6 switchToDictationInputMode];

    byte_1ED4987D3 = 0;
  }

  v7 = +[UIDictationController activeInstance];
  [v7 setPauseUpdatingHelperMessage:0];
}

- (id)dictationConnection
{
  dictationConnection = self->_dictationConnection;
  if (!dictationConnection)
  {
    v4 = objc_alloc_init(UIDictationConnection);
    v5 = self->_dictationConnection;
    self->_dictationConnection = v4;

    [(UIDictationConnection *)self->_dictationConnection setDelegate:self];
    [(UIDictationConnection *)self->_dictationConnection setTokenFilter:self];
    [(UIDictationConnection *)self->_dictationConnection beginAvailabilityMonitoring];
    dictationConnection = self->_dictationConnection;
  }

  return dictationConnection;
}

- (void)endSmartLanguageSelectionOverride
{
  v6 = *MEMORY[0x1E69E9840];
  smartLanguageSelectionOverrideLanguage = self->_smartLanguageSelectionOverrideLanguage;
  if (smartLanguageSelectionOverrideLanguage)
  {
    self->_smartLanguageSelectionOverrideLanguage = 0;

    v3 = _UIDictationControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[UIDictationController endSmartLanguageSelectionOverride]";
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s ended", &v4, 0xCu);
    }
  }
}

- (void)releaseConnection
{
  [(UIDictationConnection *)self->_dictationConnection cancelAvailabilityMonitoring];
  [(UIDictationConnection *)self->_dictationConnection setDelegate:0];
  dictationConnection = self->_dictationConnection;
  self->_dictationConnection = 0;
}

+ (void)onWillResignActive
{
  v2 = qword_1ED4987F0;
  qword_1ED4987F0 = 0;

  v3 = qword_1ED4987F8;
  qword_1ED4987F8 = 0;

  if (+[UIDictationController isRunning])
  {
    v4 = +[UIDictationController sharedInstance];
    [v4 setReasonType:24];

    v5 = +[UIDictationController sharedInstance];
    [v5 cancelDictation];

    if (+[UIKeyboard usesInputSystemUI])
    {
      v6 = +[UIDictationController sharedInstance];
      [v6 setShadowState:0];
    }

    else
    {
      v6 = +[UIKeyboardImpl activeInstance];
      [v6 clearDictationMenuTimer];
    }
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 dismissDictationTip];

  v8 = +[UIDictationView activeInstance];
  [v8 applicationWillResignActive];

  v9 = +[UIDictationController sharedInstance];
  [v9 releaseConnection];

  _MergedGlobals_35[0] = 0;
  v10 = +[UIDictationController sharedInstance];
  [v10 setPauseUpdatingHelperMessage:1];
}

+ (BOOL)fetchCurrentInputModeSupportsDictation
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 textInputTraits];
  LODWORD(a1) = [a1 checkTraitsSupportDictation:v4];

  if (!a1)
  {
    return 0;
  }

  v5 = +[UIKeyboardImpl activeInstance];

  if (!v5)
  {
    return 0;
  }

  v6 = +[UIDictationController sharedInstance];
  v7 = [v6 currentInputModeForDictation];
  v8 = [v7 dictationLanguage];

  if (v8)
  {
    v9 = +[UIDictationController sharedInstance];
    v12 = 0;
    v10 = [v9 supportsDictationLanguage:v8 error:&v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)activeConnection
{
  v2 = +[UIDictationController activeInstance];
  v3 = [v2 dictationConnection];

  return v3;
}

- (void)removeStartDictationKeyboardGestures
{
  hardwareShortcutRecognizer = self->_hardwareShortcutRecognizer;
  if (hardwareShortcutRecognizer)
  {
    v4 = [(UIGestureRecognizer *)hardwareShortcutRecognizer view];
    [v4 removeGestureRecognizer:self->_hardwareShortcutRecognizer];

    v5 = self->_hardwareShortcutRecognizer;
    self->_hardwareShortcutRecognizer = 0;
  }

  hardwareVoiceCommandKeyRecognizer = self->_hardwareVoiceCommandKeyRecognizer;
  if (hardwareVoiceCommandKeyRecognizer)
  {
    v7 = [(UIGestureRecognizer *)hardwareVoiceCommandKeyRecognizer view];
    [v7 removeGestureRecognizer:self->_hardwareVoiceCommandKeyRecognizer];

    v8 = self->_hardwareVoiceCommandKeyRecognizer;
    self->_hardwareVoiceCommandKeyRecognizer = 0;
  }
}

- (UIKeyboardInputMode)currentInputModeForDictation
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];

  if (!v4)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 enabledInputModeIdentifiers];
  }

  currentInputModeForDictation = self->_currentInputModeForDictation;
  if (currentInputModeForDictation)
  {
    v8 = currentInputModeForDictation;
  }

  else
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v9 currentInputMode];
  }

  v10 = +[UIKeyboardInputMode dictationInputMode];
  v11 = [(UIKeyboardInputMode *)v8 isEqual:v10];

  if (v11)
  {
    v12 = +[UIKeyboardInputModeController sharedInputModeController];
    v13 = [v12 currentInputModeInPreference];

    v8 = v13;
  }

  return v8;
}

- (BOOL)dictationEnabled
{
  if (!MGGetBoolAnswer() || +[UIDictationConnection dictationRestricted])
  {
    v2 = 0;
    return v2 & 1;
  }

  v4 = qword_1ED4987F0;
  if (!qword_1ED4987F0)
  {
    v5 = +[UIDictationConnectionPreferences sharedInstance];
    v6 = [v5 dictationIsEnabled];

    v7 = +[UIDictationConnectionPreferences sharedInstance];
    v8 = [v7 suppressDictationOptIn];

    v9 = +[UIWindow _applicationKeyWindow];
    if (!v9)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 delegateAsResponder];
      v12 = [v11 _responderWindow];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v10 window];
      }

      v9 = v14;
    }

    if (([v9 _isHostedInAnotherProcess] & 1) != 0 || _UIApplicationIsExtension())
    {
      v15 = 0;
      if (v9)
      {
LABEL_14:
        v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:(v6 | v15) & 1];
        v17 = qword_1ED4987F0;
        qword_1ED4987F0 = v16;

        v4 = qword_1ED4987F0;
        goto LABEL_15;
      }
    }

    else
    {
      v15 = v8 ^ 1;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    v2 = v6 | v15;
    return v2 & 1;
  }

LABEL_15:

  return [v4 BOOLValue];
}

+ (BOOL)dictationIsFunctional
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  if ([v2 deviceStateIsLocked])
  {
    v3 = +[UIDictationConnectionPreferences sharedInstance];
    v4 = [v3 dictationIsEnabled];

    if (!v4)
    {
      return 0;
    }
  }

  else
  {
  }

  v5 = +[UIDictationController sharedInstance];
  v6 = [v5 dictationDisabledDueToTelephonyActivity];

  if (v6)
  {
    return 0;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegateManager];
  v10 = [v9 keyInputDelegate];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 _isPasscodeStyle])
  {
    v7 = 0;
  }

  else
  {
    v11 = +[UIDictationController sharedInstance];
    v12 = [v11 currentInputModeForDictation];
    v13 = [v12 dictationLanguage];

    v14 = [v11 dictationConnection];
    v7 = [v14 dictationIsAvailableForLanguage:v13];
  }

  return v7;
}

- (void)_beginOfflineMetricsSession
{
  if (!self->_isOfflineMetricsSessionActive)
  {
    self->_lastOfflineDictationMetricEvent = 0;
    *&self->_isOfflineMetricsSessionActive = 1;
  }
}

_DWORD *__29__UIDictationController_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v2 = +[UIDictationController sharedInstance];
  v3 = [v2 dictationUIState];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = [v4 length];
    v6 = 0;
    if (v4)
    {
      v7 = v5 <= 4294967294;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v5;
      v6 = malloc_type_malloc(v5 + 200, 0x1000040BEF03554uLL);
      *v6 = 1;
      __strlcpy_chk();
      v6[1] = v8;
      [v4 getBytes:v6 + 50 length:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)keyboardDidUpdateOnScreenStatus
{
  v2 = +[UIDictationController sharedInstance];
  if (![v2 _resolvedIsDictationPossible])
  {

    goto LABEL_9;
  }

  v3 = +[UIKeyboard isOnScreen];

  if (!v3)
  {
LABEL_9:
    v8 = +[UIDictationController activeInstance];
    [v8 stopHelperMessageDisplayIfNeeded];

    v9 = +[UIDictationController activeInstance];
    [v9 _endOfflineMetricsSession];
    goto LABEL_10;
  }

  v4 = +[UIDictationController activeInstance];
  [v4 updateHelperMessageDisplayIfNeeded];

  v5 = +[UIKeyboardImpl activeInstance];
  v9 = [v5 textInputTraits];

  v6 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  if (UIKeyboardTypeSupportsDictationSpelling([v9 dictationKeyboardType]) || (objc_msgSend(v9, "isSecureTextEntry") & 1) != 0 || objc_msgSend(v9, "forceSpellingDictation"))
  {
    v7 = +[UIDictationController sharedInstance];
    [v7 _beginOfflineMetricsSession];
  }

LABEL_10:
  v6 = v9;
LABEL_11:
}

- (BOOL)_resolvedIsDictationPossible
{
  v3 = [(UIDictationController *)self remoteHasMicrophone];
  v4 = [(UIDictationController *)self dictationEnabled];
  v5 = [(UIDictationController *)self currentInputModeForDictation];
  v6 = [v5 dictationLanguage];

  if (v6)
  {
    v13 = 0;
    v7 = [(UIDictationController *)self supportsDictationLanguage:v6 error:&v13];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 textInputTraits];
  v10 = [UIDictationController _checkTraitsSupportDictation:v9];

  v11 = v3 && v4 && v7 && v10;
  return v11;
}

- (BOOL)remoteHasMicrophone
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _remoteHasMicrophoneCapability];

  return v3;
}

- (void)stopHelperMessageDisplayIfNeeded
{
  if ([(UIDictationController *)self _shouldUpdateHelperMessageDisplay])
  {
    v2 = +[UIKeyboardImpl sharedInstance];
    v3 = [v2 inputDelegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 _updateHelpMessageOverrideWithMessage:0];
    }
  }
}

- (BOOL)_shouldUpdateHelperMessageDisplay
{
  if ([objc_opt_class() viewMode] != 6)
  {
    return 1;
  }

  if ([objc_opt_class() viewMode] == 6)
  {
    return ![(UIDictationController *)self pauseUpdatingHelperMessage];
  }

  return 0;
}

- (void)_endOfflineMetricsSession
{
  if (self->_isOfflineMetricsSessionActive)
  {
    lastOfflineDictationMetricEvent = self->_lastOfflineDictationMetricEvent;
    if (lastOfflineDictationMetricEvent == 1)
    {
      AFAggregatorClass = getAFAggregatorClass();
      v5 = [(UIDictationController *)self _currentLanguageForOfflineDictationMetrics];
      [AFAggregatorClass logDictationFollowedByContinueOccurredForLanguage:v5];
    }

    else
    {
      if (lastOfflineDictationMetricEvent != 2 || self->_didUseOfflineDictation)
      {
        goto LABEL_8;
      }

      v6 = getAFAggregatorClass();
      v5 = [(UIDictationController *)self _currentLanguageForOfflineDictationMetrics];
      [v6 logKeyboardInputFollowedByContinueOccurredForLanguage:v5];
    }

LABEL_8:
    self->_isOfflineMetricsSessionActive = 0;
  }
}

+ (BOOL)isRunningInTypeAndTalkMode
{
  v2 = [a1 isRunning];
  if (v2)
  {
    v3 = +[UIKeyboardInputMode dictationInputMode];
    v4 = [v3 usingTypeAndTalk];

    LOBYTE(v2) = v4;
  }

  return v2;
}

void __29__UIDictationController_init__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = @"reason";
  v4[0] = @"Dictation controller init";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [WeakRetained postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v2];
}

- (float)maxRecordingLength
{
  v2 = [(UIDictationController *)self isDetectingUtterances];
  result = 60.0;
  if (v2)
  {
    return 30.0;
  }

  return result;
}

+ (BOOL)usingServerManualEndpointingThreshold
{
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  v3 = [v2 ignoreServerManualEndpointingThreshold];

  return v3 ^ 1;
}

+ (double)serverManualEndpointingThreshold
{
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  v3 = [v2 manualEndpointingThreshold];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)streamingOperations
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = 0;
  }

  else
  {
    streamingOperations = self->_streamingOperations;
    if (!streamingOperations)
    {
      v5 = objc_alloc_init(UIDictationStreamingOperations);
      v6 = self->_streamingOperations;
      self->_streamingOperations = v5;

      streamingOperations = self->_streamingOperations;
    }

    v3 = streamingOperations;
  }

  return v3;
}

+ (BOOL)supportsUndoCommandForCurrentDictationRequest
{
  v2 = [a1 supportsSiriDictationVoiceCommands];
  if (v2)
  {

    LOBYTE(v2) = +[UIKeyboard isModelessActive];
  }

  return v2;
}

+ (BOOL)canUndoOrRedo
{
  v3 = +[UIDictationController activeInstance];
  if ([v3 canUndoOrRedo])
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 supportsUndoCommandForCurrentDictationRequest];
  }

  return v4;
}

+ (BOOL)isListening
{
  v2 = +[UIKeyboard usesInputSystemUI];
  v3 = 12;
  if (v2)
  {
    v3 = 8;
  }

  return *&_MergedGlobals_35[v3] == 2;
}

+ (BOOL)supportsSiriDictationVoiceCommands
{
  if (qword_1ED4987E0 != -1)
  {
    dispatch_once(&qword_1ED4987E0, &__block_literal_global_578);
  }

  if (byte_1ED4987D1 == 1)
  {
    v2 = _os_feature_enabled_impl();
    if (v2)
    {
      LOBYTE(v2) = !+[UIDictationUtilities _isUsingLargeFormatDictationUI];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t __59__UIDictationController_supportsSiriDictationVoiceCommands__block_invoke()
{
  result = MGGetSInt64Answer();
  byte_1ED4987D1 = result > 31;
  return result;
}

+ (BOOL)supportsSiriDictationVoiceCommandsUIRedesign
{
  if (!+[UIKeyboard isInlineDictationGlowEffectEnabled](UIKeyboard, "isInlineDictationGlowEffectEnabled") || !+[UIKeyboard isInlineDictationIndicatorEnabled])
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 capitalization:(unint64_t)a5
{
  v8 = a3;
  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 textInputTraits];
  v11 = [v10 autocapitalizationType];

  v12 = [a1 serializedInterpretationFromTokens:v8 transform:a4 autocapitalization:v11 capitalization:a5];

  return v12;
}

+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 autocapitalization:(int64_t)a5 capitalization:(unint64_t)a6
{
  v10 = a3;
  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 smartPunctuationController];

  if ([v12 smartQuotesEnabled])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v12 smartDashesEnabled];
  }

  v14 = [a1 serializedInterpretationFromTokens:v10 transform:a4 autocapitalization:a5 capitalization:a6 smartPunctuation:v13];

  return v14;
}

+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4 autocapitalization:(int64_t)a5 capitalization:(unint64_t)a6 smartPunctuation:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = [UIDictationInterpretation serializedInterpretationFromTokens:a3 transform:a4];
  if ((v8 & 2) != 0)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = byte_1ED4987D2;
    v13 = [v11 isShiftLocked];
    if (a5 == 3 || v13)
    {
      v14 = [v10 uppercaseString];
    }

    else
    {
      if (a5 != 1)
      {
        goto LABEL_8;
      }

      v14 = [v10 capitalizedString];
    }

    v15 = v14;

    v10 = v15;
LABEL_8:
    if (![v10 length])
    {
LABEL_19:

      goto LABEL_20;
    }

    v16 = [UIDictationUtilities _properNameForString:v10];
    if (!qword_1ED4987E8)
    {
      v17 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
      v18 = qword_1ED4987E8;
      qword_1ED4987E8 = v17;
    }

    v19 = +[UIDictationController sharedInstance];
    v20 = [v19 language];
    if ([v19 shouldSuppressSoftwareKeyboard])
    {
      v21 = 1;
      if (v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = [v19 isProcessingInitialPhrasesForCurrentRequest] ^ 1;
      if (v8)
      {
        goto LABEL_25;
      }
    }

    if (v16)
    {
      v22 = v16;
      goto LABEL_17;
    }

LABEL_25:
    if (v8 & 4) == 0 || ((v21 | v12 ^ 1))
    {
      if ((v8 | v21))
      {
        goto LABEL_18;
      }

      v27 = [v10 characterAtIndex:0];
      v28 = v27 > 0x7F ? __maskrune(v27, 0x8000uLL) : *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x8000;
      if ((v8 & 4) == 0 || !v28 || (v12 & 1) != 0 || ![qword_1ED4987E8 canChangeCaseOfFirstLetterInString:v10 toUpperCase:0 language:v20])
      {
        goto LABEL_18;
      }

      v29 = [v10 substringToIndex:1];
      v30 = [v29 lowercaseString];
    }

    else
    {
      v25 = [v10 characterAtIndex:0];
      if (v25 > 0x7F)
      {
        v26 = __maskrune(v25, 0x1000uLL);
      }

      else
      {
        v26 = *(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x1000;
      }

      if (!v26 || ![qword_1ED4987E8 canChangeCaseOfFirstLetterInString:v10 toUpperCase:1 language:v20])
      {
        goto LABEL_18;
      }

      v29 = [v10 substringToIndex:1];
      v30 = [v29 uppercaseString];
    }

    v31 = v30;
    v32 = [v10 substringFromIndex:1];
    v22 = [v31 stringByAppendingString:v32];

    v10 = v29;
LABEL_17:

    v10 = v22;
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
  if (v7)
  {
    v23 = [UIDictationUtilities applySmartPunctuationToString:v10];

    v10 = v23;
  }

  return v10;
}

+ (BOOL)_checkTraitsSupportDictation:(id)a3
{
  v3 = a3;
  v5 = MGGetBoolAnswer() && (+[UIDictationUtilities _isUsingLargeFormatDictationUI](UIDictationUtilities, "_isUsingLargeFormatDictationUI") || ([v3 isSecureTextEntry] & 1) == 0) && (((v4 = objc_msgSend(v3, "keyboardType"), v4 > 0xB) || ((1 << v4) & 0x938) == 0) && v4 != 127 || +[UIDictationUtilities _isUsingLargeFormatDictationUI](UIDictationUtilities, "_isUsingLargeFormatDictationUI") || objc_msgSend(v3, "forceEnableDictation")) && (objc_msgSend(v3, "forceDisableDictation") & 1) == 0 && objc_msgSend(v3, "keyboardAppearance") != 127;

  return v5;
}

+ (BOOL)checkTraitsSupportDictation:(id)a3
{
  v3 = [a1 _checkTraitsSupportDictation:a3];
  if (v3)
  {
    v4 = +[UIDictationController sharedInstance];
    v5 = [v4 dictationEnabled];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (BOOL)_isDictationAllowedWithUserDefaults:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Dictation Allowed"];

  if (v4)
  {
    v5 = [v3 BOOLForKey:@"Dictation Allowed"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)canPerformDictation
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 isCurrentEditResponderInEditingMode];

  if (!v4)
  {
    return 0;
  }

  v5 = _UIKitUserDefaults();
  if ([a1 _isDictationAllowedWithUserDefaults:v5] && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "textInputTraits"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(a1, "checkTraitsSupportDictation:", v7), v7, v6, v8))
  {
    v9 = [a1 dictationIsFunctional];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)logAutoPunctuationEdit:(id)a3 deletionValues:(id)a4 substitutionValues:(id)a5 withContext:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v38 = a4;
  v37 = a5;
  v35 = a6;
  v33 = v10;
  v11 = [a1 stripNonPunctuationEditValues:v10];
  v41 = [v11 mutableCopy];

  v12 = [a1 stripNonPunctuationEditValues:v38];
  v39 = [v12 mutableCopy];

  v13 = [a1 stripNonPunctuationEditValues:v37];
  v36 = [v13 mutableCopy];

  v40 = [a1 mergePunctuationInsertAndDeleteIntoSubstituteTypeForSameStartEnd:v41 deleteEditValues:v39];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v40 allKeys];
  [v41 removeObjectsForKeys:v14];

  v15 = [v40 allKeys];
  [v39 removeObjectsForKeys:v15];

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 addEntriesFromDictionary:v41];
  [v16 addEntriesFromDictionary:v39];
  [v16 addEntriesFromDictionary:v36];
  [v16 addEntriesFromDictionary:v40];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = v16;
  obj = [v16 allValues];
  v17 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v17)
  {
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v20 objectForKeyedSubscript:@"dictationResultEditType"];
        v49 = 0;
        v50 = &v49;
        v51 = 0x2050000000;
        v22 = getSISchemaAutoPunctuationEditClass_softClass;
        v52 = getSISchemaAutoPunctuationEditClass_softClass;
        if (!getSISchemaAutoPunctuationEditClass_softClass)
        {
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __getSISchemaAutoPunctuationEditClass_block_invoke;
          v48[3] = &unk_1E70F2F20;
          v48[4] = &v49;
          __getSISchemaAutoPunctuationEditClass_block_invoke(v48);
          v22 = v50[3];
        }

        v23 = v22;
        _Block_object_dispose(&v49, 8);
        v24 = objc_alloc_init(v22);
        v25 = v24;
        if (v21 == @"insertion")
        {
          [v24 setRecognizedPunctuation:&stru_1EFB14550];
          v28 = [v20 objectForKeyedSubscript:@"text"];
          [v25 setCorrectedPunctuation:v28];
        }

        else if (v21 == @"deletion")
        {
          v29 = [v20 objectForKeyedSubscript:@"text"];
          [v25 setRecognizedPunctuation:v29];

          [v25 setCorrectedPunctuation:&stru_1EFB14550];
        }

        else
        {
          if (v21 != @"substitution")
          {
            goto LABEL_15;
          }

          v26 = [v20 objectForKeyedSubscript:@"original"];
          [v25 setRecognizedPunctuation:v26];

          v27 = [v20 objectForKeyedSubscript:@"replacement"];
          [v25 setCorrectedPunctuation:v27];
        }

        [v43 addObject:v25];
LABEL_15:
      }

      v17 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v17);
  }

  v30 = [v35 turnIdentifier];
  v53 = v30;
  v54 = v43;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

  return v31;
}

+ (id)stripNonPunctuationEditValues:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__UIDictationController_stripNonPunctuationEditValues___block_invoke;
  v7[3] = &unk_1E71075F8;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __55__UIDictationController_stripNonPunctuationEditValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"dictationResultEditType"];
  v7 = v6;
  if (v6 == @"insertion" || v6 == @"deletion")
  {
    v9 = [v5 objectForKey:@"text"];
    v10 = +[UIDictationUtilities trackingPunctuations];
    v11 = [v10 containsObject:v9];

    if ((v11 & 1) == 0)
    {
      [*(a1 + 32) removeObjectForKey:v16];
    }

    goto LABEL_15;
  }

  if (v6 != @"substitution")
  {
    goto LABEL_16;
  }

  v9 = [v5 objectForKey:@"original"];
  v12 = [v5 objectForKey:@"replacement"];
  v13 = +[UIDictationUtilities trackingPunctuations];
  if ([v13 containsObject:v9])
  {
    v14 = +[UIDictationUtilities trackingPunctuations];
    v15 = [v14 containsObject:v12];

    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  [*(a1 + 32) removeObjectForKey:v16];
LABEL_14:

LABEL_15:
LABEL_16:
}

+ (id)mergePunctuationInsertAndDeleteIntoSubstituteTypeForSameStartEnd:(id)a3 deleteEditValues:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v5 allKeys];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v21 = @"substitution";
    v20 = @"dictationResultEditType";
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v6 allKeys];
        v13 = [v12 containsObject:v11];

        if (v13)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v15 = [v6 objectForKeyedSubscript:v11];
          v16 = [v23 objectForKeyedSubscript:v11];
          v17 = [v15 objectForKey:@"text"];
          v18 = [v16 objectForKey:@"text"];
          [v14 setObject:v17 forKeyedSubscript:@"original"];
          [v14 setObject:v18 forKeyedSubscript:@"replacement"];
          [v14 setObject:v21 forKeyedSubscript:v20];
          [v22 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  return v22;
}

+ (id)convertEditValuesToHashByPosition:(id)a3 dictationResultEditType:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = 0x1E695D000uLL;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v28 = *v30;
    v25 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = objc_alloc_init(*(v7 + 3984));
        if (@"substitutions" == v6)
        {
          v16 = [v11 objectForKeyedSubscript:@"original"];
          v13 = [v16 objectForKeyedSubscript:@"start"];

          v17 = [v11 objectForKeyedSubscript:@"original"];
          v14 = [v17 objectForKeyedSubscript:@"end"];

          v18 = [v11 objectForKeyedSubscript:@"original"];
          v19 = [v18 objectForKeyedSubscript:@"text"];
          [v12 setObject:v19 forKeyedSubscript:@"original"];

          v20 = [v11 objectForKeyedSubscript:@"replacement"];
          v21 = [v20 objectForKeyedSubscript:@"text"];
          [v12 setObject:v21 forKeyedSubscript:@"replacement"];

          v7 = 0x1E695D000;
          v6 = v25;

          [v12 setObject:@"substitution" forKeyedSubscript:@"dictationResultEditType"];
        }

        else
        {
          v13 = [v11 objectForKey:@"start"];
          v14 = [v11 objectForKey:@"end"];
          [v12 setObject:v6 forKeyedSubscript:@"dictationResultEditType"];
          v15 = [v11 objectForKey:@"text"];
          [v12 setObject:v15 forKeyedSubscript:@"text"];
        }

        if (v13)
        {
          v22 = v14 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"start%@end%@", v13, v14];
          [v26 setObject:v12 forKeyedSubscript:v23];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  return v26;
}

+ (void)logCorrectionStatisticsForDelegate:(id)a3 reason:(unint64_t)a4
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_71;
  }

  v62 = v5;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]"];

  v64 = [v5 metadataDictionariesForDictationResults];
  if (![v64 count])
  {
    goto LABEL_70;
  }

  v63 = +[UIDictationController activeInstance];
  v66 = [v63 connectionForStatisticsLogging];
  [v63 logDidAcceptDictationResult:v64 reasonType:a4];
  v65 = [MEMORY[0x1E695DFA8] set];
  v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v64;
  v70 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (!v70)
  {
    goto LABEL_56;
  }

  v69 = *v85;
  do
  {
    v6 = 0;
    do
    {
      if (*v85 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v84 + 1) + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v76 = [MEMORY[0x1E695DF20] dictionary];
        v75 = [MEMORY[0x1E695DF20] dictionary];
        v74 = [MEMORY[0x1E695DF20] dictionary];
        v9 = objc_alloc_init(UIDictationConnectionCorrectionInfo);
        v10 = [v8 objectForKey:@"recognizedTextInfo"];
        [(UIDictationConnectionCorrectionInfo *)v9 setRecognizedTextInfo:v10];

        v11 = [v8 objectForKey:@"alternativesSelected"];
        [(UIDictationConnectionCorrectionInfo *)v9 setSelectedAlternativesInfo:v11];

        v73 = [v8 objectForKey:@"alternativesSelectedCount"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[UIDictationConnectionCorrectionInfo setAlternativeSelectionCount:](v9, "setAlternativeSelectionCount:", [v73 intValue]);
        }

        v72 = [v8 objectForKey:@"characterModificationCount"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[UIDictationConnectionCorrectionInfo setCharacterModificationCount:](v9, "setCharacterModificationCount:", [v72 intValue]);
        }

        v12 = [v8 objectForKey:@"dictationInstrumentationContext"];
        v13 = [v8 objectForKey:@"characterInsertionCount"];

        if (v13)
        {
          v14 = [v8 objectForKey:@"characterInsertionCount"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[UIDictationConnectionCorrectionInfo setCharacterInsertionCount:](v9, "setCharacterInsertionCount:", [v14 intValue]);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s characterInsertionCount: %ld", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", -[UIDictationConnectionCorrectionInfo characterInsertionCount](v9, "characterInsertionCount")];
          }

          v15 = [v8 objectForKey:@"insertions"];
          v16 = [a1 convertEditValuesToHashByPosition:v15 dictationResultEditType:@"insertion"];

          v76 = v16;
        }

        v17 = [v8 objectForKey:@"characterDeletionCount"];

        if (v17)
        {
          v18 = [v8 objectForKey:@"characterDeletionCount"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[UIDictationConnectionCorrectionInfo setCharacterDeletionCount:](v9, "setCharacterDeletionCount:", [v18 intValue]);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s characterDeletionCount: %ld", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", -[UIDictationConnectionCorrectionInfo characterDeletionCount](v9, "characterDeletionCount")];
          }

          v19 = [v8 objectForKey:@"deletions"];
          v20 = [a1 convertEditValuesToHashByPosition:v19 dictationResultEditType:@"deletion"];

          v75 = v20;
        }

        v21 = [v8 objectForKey:@"characterSubstitutionCount"];

        if (v21)
        {
          v22 = [v8 objectForKey:@"characterSubstitutionCount"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[UIDictationConnectionCorrectionInfo setCharacterSubstitutionCount:](v9, "setCharacterSubstitutionCount:", [v22 intValue]);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s characterSubstitutionCount: %ld", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", -[UIDictationConnectionCorrectionInfo characterSubstitutionCount](v9, "characterSubstitutionCount")];
          }

          v23 = [v8 objectForKey:@"substitutions"];
          v24 = [a1 convertEditValuesToHashByPosition:v23 dictationResultEditType:@"substitutions"];

          v74 = v24;
        }

        if (v12)
        {
          v25 = [a1 logAutoPunctuationEdit:v76 deletionValues:v75 substitutionValues:v74 withContext:v12];
          [v68 addEntriesFromDictionary:v25];
        }

        v26 = [v8 objectForKey:@"fullText"];
        [(UIDictationConnectionCorrectionInfo *)v9 setCorrectedText:v26];

        v27 = MEMORY[0x1E696AEC0];
        v28 = [(UIDictationConnectionCorrectionInfo *)v9 correctedText];
        [v27 stringWithFormat:@"%s fullText: %@", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", v28];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%s alternativeSelectionCount: %ld", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", -[UIDictationConnectionCorrectionInfo alternativeSelectionCount](v9, "alternativeSelectionCount")];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%s characterModificationCount: %ld", "+[UIDictationController logCorrectionStatisticsForDelegate:reason:]", -[UIDictationConnectionCorrectionInfo characterModificationCount](v9, "characterModificationCount")];

        v29 = [v8 objectForKey:@"correctionIdentifier"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v8 objectForKeyedSubscript:@"dictationUIInteractionIdentifier"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v32 = v30;
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v30 UUIDString];
              goto LABEL_34;
            }

            v32 = 0;
          }

          v33 = v32;
LABEL_34:
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = [v8 objectForKey:@"speechRecognitionSource"];
        v36 = [v35 isEqualToString:@"local"];

        v37 = ![(UIDictationConnectionCorrectionInfo *)v9 alternativeSelectionCount]&& ![(UIDictationConnectionCorrectionInfo *)v9 characterModificationCount]&& ![(UIDictationConnectionCorrectionInfo *)v9 characterInsertionCount]&& ![(UIDictationConnectionCorrectionInfo *)v9 characterDeletionCount]&& [(UIDictationConnectionCorrectionInfo *)v9 characterSubstitutionCount]== 0;
        if (!((v29 == 0) | (v37 | v36) & 1))
        {
          [v66 sendSpeechCorrection:v9 forIdentifier:v29];
        }

        if (!v37 && (v36 & 1) != 0)
        {
          v38 = [getAFPreferencesClass_0() sharedPreferences];
          v39 = [v38 siriDataSharingOptInStatus] == 1;

          if (v39)
          {
            v40 = [v8 objectForKey:@"userEditedTextInfo"];
            [(UIDictationConnectionCorrectionInfo *)v9 setUserEditedTextInfo:v40];

            v41 = [v8 objectForKey:@"alternativesSelected"];
            v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __67__UIDictationController_logCorrectionStatisticsForDelegate_reason___block_invoke;
            v82[3] = &unk_1E7114CB0;
            v43 = v42;
            v83 = v43;
            [v41 enumerateObjectsUsingBlock:v82];
            if ([v43 count])
            {
              v93 = 0;
              v94 = &v93;
              v95 = 0x2050000000;
              v44 = qword_1ED4988E8;
              v96 = qword_1ED4988E8;
              if (!qword_1ED4988E8)
              {
                v88 = MEMORY[0x1E69E9820];
                v89 = 3221225472;
                v90 = __getSISchemaUEIDictationAlternativeTextPairsSelectedClass_block_invoke;
                v91 = &unk_1E70F2F20;
                v92 = &v93;
                __getSISchemaUEIDictationAlternativeTextPairsSelectedClass_block_invoke(&v88);
                v44 = v94[3];
              }

              v45 = v44;
              _Block_object_dispose(&v93, 8);
              v46 = objc_alloc_init(v44);
              [v46 setAlternativeSelections:v43];
              [v12 emitInstrumentation:v46];
            }

            [v66 sendSpeechCorrection:v9 interactionIdentifier:v34];
            [v66 sendVisualContextAndCorrectionsInfo:v9 interactionIdentifier:v34];
          }
        }

        if (v12 != 0 && !v37)
        {
          [v65 addObject:v12];
        }
      }

      ++v6;
    }

    while (v70 != v6);
    v47 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
    v70 = v47;
  }

  while (v47);
LABEL_56:

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = v65;
  v48 = [v77 countByEnumeratingWithState:&v78 objects:v97 count:16];
  if (v48)
  {
    v49 = *v79;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v79 != v49)
        {
          objc_enumerationMutation(v77);
        }

        v51 = *(*(&v78 + 1) + 8 * i);
        v93 = 0;
        v94 = &v93;
        v95 = 0x2050000000;
        v52 = qword_1ED4988F0;
        v96 = qword_1ED4988F0;
        if (!qword_1ED4988F0)
        {
          v88 = MEMORY[0x1E69E9820];
          v89 = 3221225472;
          v90 = __getSISchemaDictationContentEditedClass_block_invoke;
          v91 = &unk_1E70F2F20;
          v92 = &v93;
          __getSISchemaDictationContentEditedClass_block_invoke(&v88);
          v52 = v94[3];
        }

        v53 = v52;
        _Block_object_dispose(&v93, 8);
        v54 = objc_alloc_init(v52);
        [v54 setExists:1];
        v55 = [getAFPreferencesClass_0() sharedPreferences];
        v56 = [v55 siriDataSharingOptInStatus] == 1;

        if (v56)
        {
          v93 = 0;
          v94 = &v93;
          v95 = 0x2050000000;
          v57 = qword_1ED4988F8;
          v96 = qword_1ED4988F8;
          if (!qword_1ED4988F8)
          {
            v88 = MEMORY[0x1E69E9820];
            v89 = 3221225472;
            v90 = __getSISchemaUEIDictationContentEditedTier1Class_block_invoke;
            v91 = &unk_1E70F2F20;
            v92 = &v93;
            __getSISchemaUEIDictationContentEditedTier1Class_block_invoke(&v88);
            v57 = v94[3];
          }

          v58 = v57;
          _Block_object_dispose(&v93, 8);
          v59 = objc_alloc_init(v57);
          v60 = [v51 turnIdentifier];
          v61 = [v68 objectForKey:v60];
          [v59 setAutoPunctuationEdits:v61];

          [v51 emitInstrumentation:v59];
        }

        [v51 emitInstrumentation:v54];
      }

      v48 = [v77 countByEnumeratingWithState:&v78 objects:v97 count:16];
    }

    while (v48);
  }

  [v63 releaseConnectionAfterStatisticsLogging];
LABEL_70:

  v5 = v62;
LABEL_71:
}

void __67__UIDictationController_logCorrectionStatisticsForDelegate_reason___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"originalText"];
  v7 = [v5 objectForKeyedSubscript:@"replacementText"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getASRSchemaASRConfusionPairTokenClass_softClass;
  v17 = getASRSchemaASRConfusionPairTokenClass_softClass;
  if (!getASRSchemaASRConfusionPairTokenClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getASRSchemaASRConfusionPairTokenClass_block_invoke;
    v13[3] = &unk_1E70F2F20;
    v13[4] = &v14;
    __getASRSchemaASRConfusionPairTokenClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = objc_alloc_init(v8);
  v19[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setRecognizedTokens:v11];

  v18 = v7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v10 setCorrectedTokens:v12];

  [v10 setRecognizedTokensStartIndex:a3];
  [*(a1 + 32) addObject:v10];
}

+ (unint64_t)reasonType:(id)a3
{
  v4 = a3;
  v5 = [v4 invocationSource];
  v6 = [v5 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonInSafariAddressBar"];

  if (v6)
  {
    v7 = 10;
  }

  else
  {
    v8 = [v4 invocationSource];
    v9 = [v8 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonInFirstResponderSafariAddressBar"];

    if (v9)
    {
      v7 = 11;
    }

    else
    {
      v10 = [v4 invocationSource];
      v11 = [v10 isEqualToString:@"UIDictationInputModeInvocationSourceUCBBar"];

      if (v11)
      {
        v7 = 12;
      }

      else
      {
        v12 = [v4 invocationSource];
        v13 = [v12 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonInMessagesTextField"];

        if (v13)
        {
          v7 = 13;
        }

        else
        {
          v14 = [v4 invocationSource];
          v15 = [v14 isEqualToString:@"UIDictationInputModeInvocationSourceLongPressGesture"];

          if (v15)
          {
            v7 = 26;
          }

          else
          {
            v16 = [v4 invocationSource];
            v17 = [v16 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonMicButtonInFirstResponderSearchBar"];

            if (v17)
            {
              v7 = 9;
            }

            else
            {
              v18 = [v4 invocationSource];
              v19 = [v18 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonInKeyboard"];

              if (v19)
              {
                v7 = 1;
              }

              else
              {
                v20 = [v4 invocationSource];
                v21 = [v20 isEqualToString:@"UIDictationInputModeInvocationSourceGenerativeField"];

                if (v21)
                {
                  v7 = 30;
                }

                else
                {
                  v22 = [v4 invocationSource];
                  v23 = [v22 isEqualToString:@"UIDictationInputModeInvocationSourceDictationPopUpUILanguageSwitcherIcon"];

                  if (v23)
                  {
                    v7 = 28;
                  }

                  else
                  {
                    v24 = [v4 invocationSource];
                    v25 = [v24 isEqualToString:@"UIDictationInputModeInvocationSourceGlobalButtonOnDictationPlane"];

                    if (v25)
                    {
                      v7 = 16;
                    }

                    else
                    {
                      v26 = [v4 invocationSource];
                      v27 = [v26 isEqualToString:@"UIDictationInputModeInvocationSourceMicButtonOnKeyboardWithInputSwitcher"];

                      if (v27)
                      {
                        v7 = [a1 specificReasonTypeMicButtonOnKeyboardWithInputSwitcher];
                      }

                      else
                      {
                        v7 = 18;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

+ (id)UIDictationStartStopReasonTypeDescription:(unint64_t)a3
{
  if (a3 - 1 > 0x1E)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7115480[a3 - 1];
  }
}

+ (id)UIDictationLanguageSourceType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7115578[a3 - 1];
  }
}

- (void)setDictationInputMode:(id)a3
{
  v12 = a3;
  v4 = +[UIKeyboardInputMode dictationInputMode];
  v5 = [v12 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(UIDictationController *)self setCurrentInputModeForDictation:v12];
    [v12 setLastUsedDictationLanguage];
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 currentInputMode];
    [(UIDictationController *)self setKeyboardInputModeToReturn:v7];

    if (!+[UIDictationUtilities _isUsingLargeFormatDictationUI](UIDictationUtilities, "_isUsingLargeFormatDictationUI") || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v8 = objc_claimAutoreleasedReturnValue(), [v8 _window], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = +[UIKeyboardImpl activeInstance];
      v11 = +[UIKeyboardInputMode dictationInputMode];
      [v10 setKeyboardInputMode:v11 userInitiated:0];
    }
  }
}

- (void)handleDictationShouldPause:(BOOL)a3 withNewDelagate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    if (v5)
    {
      [(UIDictationController *)self setSkipAutomaticResumeDictation:1];
      v7 = _UIDictationControllerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[UIDictationController handleDictationShouldPause:withNewDelagate:]";
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s Set skipAutomaticResumeDictation to YES", buf, 0xCu);
      }

      v8 = +[UIKeyboardImpl activeInstance];
      [v8 pauseDictationForResponderChange];
    }

    else if ([(UIDictationController *)self isDictationPaused]&& v4)
    {
      if (!+[UIKeyboard isKeyboardProcess])
      {
        v9 = +[UIKeyboardImpl activeInstance];
        [v9 resumeDictationForResponderChange];
      }
    }

    else
    {
      [(UIDictationController *)self setReasonType:20];

      [(UIDictationController *)self cancelDictation];
    }
  }
}

+ (void)keyboardWillChangeFromDelegate:(id)a3 toDelegate:(id)a4 shouldPause:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v7 != v8)
  {
    if (v7)
    {
      [UIDictationController logCorrectionStatisticsForDelegate:v7 reason:20];
      if (!+[UIDictationUtilities _isUsingLargeFormatDictationUI])
      {
        v9 = +[UIDictationController activeInstance];
        [v9 _endOfflineMetricsSession];
      }
    }

    if (v8)
    {
      if (!+[UIDictationUtilities _isUsingLargeFormatDictationUI])
      {
        v10 = +[UIDictationController activeInstance];
        [v10 _beginOfflineMetricsSession];
      }

      if (+[UIKeyboard usesInputSystemUI])
      {
        v11 = +[UIDictationController activeInstance];
        [v11 prepareStartDictationKeyboardGesturesForDelegate:v8];
LABEL_12:

        v12 = +[UIKeyboardImpl activeInstance];
        [v12 forwardDictationEvent_handleDictationShouldPause:v5 withNewDelagate:v8 != 0];

        goto LABEL_19;
      }
    }

    else if (+[UIKeyboard usesInputSystemUI])
    {
      v11 = +[UIDictationController activeInstance];
      [v11 removeStartDictationKeyboardGestures];
      goto LABEL_12;
    }

    if (!+[UIKeyboard isKeyboardProcess])
    {
      v13 = +[UIDictationController activeInstance];
      [v13 handleDictationShouldPause:v5 withNewDelagate:v8 != 0];
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __79__UIDictationController_keyboardWillChangeFromDelegate_toDelegate_shouldPause___block_invoke;
    v20 = &unk_1E70F35B8;
    v21 = v8;
    v22 = v7;
    v14 = _Block_copy(&v17);
    v15 = [UIDictationController activeInstance:v17];

    if (v15)
    {
      v14[2](v14);
    }

    else
    {
      v16 = +[UIPeripheralHost sharedInstance];
      [v16 queueDelayedTask:v14];
    }
  }

LABEL_19:
}

void __79__UIDictationController_keyboardWillChangeFromDelegate_toDelegate_shouldPause___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) || (+[UIDictationController activeConnection], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    if (!*(a1 + 40) && +[UIDictationController fetchCurrentInputModeSupportsDictation](UIDictationController, "fetchCurrentInputModeSupportsDictation") && ((objc_opt_respondsToSelector() & 1) == 0 || ([*(a1 + 32) _isPasscodeStyle] & 1) == 0))
    {
      v2 = +[UIDictationController activeInstance];
      v3 = [v2 dictationConnection];
      [v3 beginAvailabilityMonitoring];

      v4 = +[UIDictationController activeInstance];
      [v4 setWantsAvailabilityMonitoringWhenAppActive:1];
LABEL_13:
    }
  }

  else
  {
    v6 = +[UIDictationController activeInstance];
    v7 = [v6 dictationConnection];
    [v7 cancelAvailabilityMonitoring];

    v8 = +[UIDictationController activeInstance];
    [v8 setWantsAvailabilityMonitoringWhenAppActive:0];

    v9 = 0;
    if (+[UIKeyboard isModelessActive])
    {
      v10 = +[UIDictationController sharedInstance];
      v9 = [v10 isDictationPaused];
    }

    if (+[UIDictationController viewMode]&& (v9 & 1) == 0)
    {
      v4 = +[UIDictationController sharedInstance];
      [v4 releaseConnection];
      goto LABEL_13;
    }
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    v11 = *(a1 + 32);
    v12 = +[UIDictationController activeInstance];
    v13 = v12;
    if (v11)
    {
      [v12 prepareStartDictationKeyboardGesturesForDelegate:*(a1 + 32)];
    }

    else
    {
      [v12 removeStartDictationKeyboardGestures];
    }
  }
}

+ (BOOL)isTextViewOnStarkScreen:(id)a3
{
  v3 = a3;
  if ([v3 __isKindOfUIResponder])
  {
    v4 = [v3 _responderWindow];
    v5 = [v4 screen];
    v6 = [v5 _userInterfaceIdiom] == 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldHideCursorForTextView:(id)a3
{
  v4 = a3;
  if ([a1 isTextViewOnStarkScreen:v4] && objc_msgSend(v4, "__isKindOfUIResponder"))
  {
    v5 = [v4 _responderWindow];
    v6 = [v5 screen];

    v7 = [v6 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    v8 = [v7 integerValue] == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)takesPressesBegan:(id)a3 forTextView:(id)a4
{
  v6 = a3;
  if ([a1 isTextViewOnStarkScreen:a4])
  {
    if (_UIPressesContainsPressType(v6, 4))
    {
      v7 = 1;
    }

    else
    {
      v7 = _UIPressesContainsPressType(v6, 7);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldDeleteBackward
{
  if ([(UIDictationController *)self performingStreamingEditingOperation]|| !+[UIDictationController isRunning](UIDictationController, "isRunning") || +[UIDictationController isRunningInTypeAndTalkMode](UIDictationController, "isRunningInTypeAndTalkMode") || +[UIDictationController supportsInlineDelete])
  {
    return 1;
  }

  [(UIDictationController *)self setDiscardNextHypothesis:1];
  return 0;
}

+ (BOOL)shouldDeleteBackward
{
  v2 = +[UIDictationController activeInstance];

  if (!v2)
  {
    return 1;
  }

  v3 = +[UIDictationController activeInstance];
  v4 = [v3 _shouldDeleteBackward];

  return v4;
}

- (BOOL)_shouldInsertText:(id)a3
{
  if (![(UIDictationController *)self performingStreamingEditingOperation]&& +[UIDictationController isRunning])
  {
    v3 = +[UIKeyboardInputMode dictationInputMode];
    [v3 usingTypeAndTalk];
  }

  return 1;
}

+ (BOOL)shouldInsertText:(id)a3
{
  v3 = a3;
  v4 = +[UIDictationController activeInstance];

  if (v4)
  {
    v5 = +[UIDictationController activeInstance];
    v6 = [v5 _shouldInsertText:v3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)serializedDictationPhrases:(id)a3
{
  v3 = [UIDictationUtilities dictationPhrasesFromPhraseArray:a3];
  v4 = [v3 textArray];

  return v4;
}

+ (id)bestInterpretationForDictationResult:(id)a3
{
  v3 = a3;
  v4 = [[UIDictationSerializableResults alloc] initWithArrayOfArrayOfStrings:v3];

  v5 = [(UIDictationSerializableResults *)v4 bestText];

  return v5;
}

+ (void)keyboardDidShow
{
  if (byte_1ED4987D3 == 1)
  {
    v2 = +[UIKeyboardImpl activeInstance];
    v3 = [v2 delegate];

    if (v3)
    {
      byte_1ED4987D3 = 0;
      v4 = +[UIDictationController activeInstance];
      [v4 switchToDictationInputMode];
    }
  }
}

+ (void)inputSystemSessionWillEndForReason:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 1)
  {
    v4 = _UIDictationControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "+[UIDictationController inputSystemSessionWillEndForReason:]";
      v7 = 2048;
      v8 = a3;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Unhandled UIDictationInputSystemSessionWillEndReason. Reason=%ld", &v5, 0x16u);
    }
  }

  else
  {

    [a1 onWillResignActive];
  }
}

+ (void)applicationDidEnterBackgroundNotification
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIDictationController sharedInstance];
  [v2 _endEnableDictationPromptAnimated:0];

  v3 = +[UIDictationController sharedInstance];
  v4 = [v3 logAppEnterBackground];

  if (v4)
  {
    v5 = [getAFAnalyticsClass() sharedAnalytics];
    v10 = @"isSuspendedUnderLock";
    v6 = [UIApp isSuspendedUnderLock];
    v7 = MEMORY[0x1E695E110];
    if (v6)
    {
      v7 = MEMORY[0x1E695E118];
    }

    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 logEventWithType:2218 context:v8];

    v9 = +[UIDictationController sharedInstance];
    [v9 setLogAppEnterBackground:0];
  }
}

+ (void)siriPreferencesChanged
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = qword_1ED4987F0;
  qword_1ED4987F0 = 0;

  v4 = qword_1ED4987F8;
  qword_1ED4987F8 = 0;

  [a1 keyboardDidUpdateOnScreenStatus];
  v5 = +[UIDictationController sharedInstance];
  v7 = @"reason";
  v8[0] = @"Dictation controller siri preferences changed";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v5 postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v6];
}

+ (void)remoteMicrophoneCapabilityChanged
{
  v5[1] = *MEMORY[0x1E69E9840];
  [a1 keyboardDidUpdateOnScreenStatus];
  v2 = +[UIDictationController sharedInstance];
  v4 = @"reason";
  v5[0] = @"Dictation controller remote microphone capability changed";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v3];
}

+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [MEMORY[0x1E696AD60] string];
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [v4 objectAtIndex:v8];
      if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      if ((v7 & 1) != 0 && ([v9 removeSpaceBefore] & 1) == 0)
      {
        [v6 appendString:@" "];
      }

      v10 = [v9 text];
      [v6 appendString:v10];
      v7 = [v9 removeSpaceAfter] ^ 1;

      if (v5 == ++v8)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_10:
    v11 = [v6 _stringByApplyingTransform:a4];
  }

  return v11;
}

+ (id)interpretation:(id)a3 forPhraseIndex:(unint64_t)a4 isShiftLocked:(BOOL)a5 autocapitalizationType:(int64_t)a6 useServerCapitalization:(BOOL)a7
{
  v9 = a5;
  v11 = a3;
  v12 = v11;
  if (a6 == 3 || v9)
  {
    v13 = [v11 uppercaseString];
    goto LABEL_6;
  }

  if (a6 == 1)
  {
    v13 = [v11 capitalizedString];
LABEL_6:
    v14 = v13;

    v12 = v14;
  }

  if (!a4 && [v12 length])
  {
    v15 = [UIDictationUtilities _properNameForString:v12];
    if (!qword_1ED498800)
    {
      v16 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
      v17 = qword_1ED498800;
      qword_1ED498800 = v16;
    }

    v18 = +[UIDictationController sharedInstance];
    v19 = [v18 language];

    if (!v15 || a7)
    {
      if (byte_1ED4987D2 == 1)
      {
        v22 = [v12 characterAtIndex:0];
        if (v22 > 0x7F)
        {
          v23 = __maskrune(v22, 0x1000uLL);
        }

        else
        {
          v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x1000;
        }

        if (!v23 || ![qword_1ED498800 canChangeCaseOfFirstLetterInString:v12 toUpperCase:0 language:v19])
        {
          goto LABEL_15;
        }

        v26 = [v12 substringToIndex:1];
        v27 = [v26 uppercaseString];
      }

      else
      {
        if (a7)
        {
          goto LABEL_15;
        }

        v24 = [v12 characterAtIndex:0];
        v25 = v24 > 0x7F ? __maskrune(v24, 0x8000uLL) : *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x8000;
        if (!v25 || ![qword_1ED498800 canChangeCaseOfFirstLetterInString:v12 toUpperCase:0 language:v19])
        {
          goto LABEL_15;
        }

        v26 = [v12 substringToIndex:1];
        v27 = [v26 lowercaseString];
      }

      v28 = v27;
      v29 = [v12 substringFromIndex:1];
      v20 = [v28 stringByAppendingString:v29];

      v12 = v26;
    }

    else
    {
      v20 = v15;
    }

    v12 = v20;
LABEL_15:
  }

  return v12;
}

+ (void)performOperations:(id)a3 keyboardShifted:(BOOL)a4
{
  v4 = byte_1ED4987D2;
  byte_1ED4987D2 = a4;
  (*(a3 + 2))(a3, a2);
  byte_1ED4987D2 = v4;
}

+ (void)updateLandingView
{
  v2 = +[UIDictationLandingView activeInstance];
  v3 = [v2 superview];

  if (v3)
  {
    v4 = +[UIDictationLandingView activeInstance];
    [v4 updatePosition];
  }
}

+ (BOOL)remoteCanDictateCurrentInputMode
{
  v2 = +[UIDictationController sharedInstance];
  v3 = [v2 currentInputModeForDictation];
  v6 = 0;
  v4 = [v2 supportsInputMode:v3 error:&v6];

  LODWORD(v3) = [v2 dictationEnabled];
  LODWORD(v3) = [v2 remoteHasMicrophone] & v3;

  return v3 & v4;
}

- (id)languageCodeForAssistantLanguageCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"intl"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"default"))
  {
    v4 = @"en_US";
    goto LABEL_14;
  }

  v5 = [v3 componentsSeparatedByString:@"-"];
  if ([v5 count] != 1)
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v5 objectAtIndex:1];
    if ([v6 isEqualToString:@"ko"] && -[__CFString isEqualToString:](v7, "isEqualToString:", @"KR"))
    {

      v7 = @"KO";
    }

    else if (!v7)
    {
      v4 = v6;
      goto LABEL_12;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v6, v7];

LABEL_12:
    goto LABEL_13;
  }

  v4 = v3;
LABEL_13:

LABEL_14:

  return v4;
}

- (BOOL)supportsDictationLanguage:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI](UIDictationUtilities, "_isUsingLargeFormatDictationUI") && (([v5 isEqualToString:@"zh_CN"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"zh-Hans") & 1) != 0))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = [UIDictationConnection dictationIsSupportedForLanguageCode:v5 error:a4];
  v7 = v6;
  if (a4 && !v6)
  {
    if ([*a4 code] == 1)
    {
      +[UIDictationConnection cacheSupportedDictationLanguages];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (BOOL)supportsInputMode:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    [v6 defaultDictationLanguage];
  }

  else
  {
    [v6 languageWithRegion];
  }
  v7 = ;

  v8 = [(UIDictationController *)self supportsDictationLanguage:v7 error:a4];
  return v8;
}

- (float)audioLevel
{
  v2 = [(UIDictationController *)self dictationConnection];
  [v2 averagePower];
  v4 = v3;

  return v4;
}

- (BOOL)shouldUseDictationSearchFieldBehavior
{
  v3 = +[UIKeyboardImpl sharedInstance];
  v4 = [v3 inputDelegate];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(UIDictationController *)self _shouldUseDictationSearchFieldBehavior];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [v4 showDictationButton];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)shouldOverrideManualEndpointingWithReturnKeyType:(int64_t)a3
{
  v4 = [(UIDictationController *)self currentViewModeSupportsDictationMics];
  if (v4)
  {

    LOBYTE(v4) = [(UIDictationController *)self shouldUseDictationSearchFieldBehavior];
  }

  return v4;
}

- (NSNumber)dictationRequestOrigin
{
  v2 = [(UIDictationController *)self shouldUseDictationSearchFieldBehavior];
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithInteger:v2];
}

- (id)fieldIdentifierInputDelegate:(id)a3
{
  v3 = a3;
  v4 = [v3 textInputView];
  if (v4)
  {
    v5 = v4;
    v6 = &stru_1EFB14550;
    while (1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_opt_class()];
      v8 = [(__CFString *)v6 stringByAppendingString:v7];

      v9 = [v5 superview];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v9 subviews];
      v13 = [v11 stringWithFormat:@"%ld, ", objc_msgSend(v12, "indexOfObject:", v5)];
      v6 = [(__CFString *)v8 stringByAppendingString:v13];

      v5 = v10;
    }
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  return v8;
}

- (id)prefixTextForInputDelegate:(id)a3 wordCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 selectedTextRange];
  v7 = [v6 start];

  if (v7)
  {
    v8 = v7;
    v9 = v8;
    v10 = v8;
    if (a4)
    {
      v11 = v8;
      while (1)
      {
        v12 = [v5 tokenizer];
        v10 = [v12 positionFromPosition:v11 toBoundary:1 inDirection:1];

        if (!v10)
        {
          break;
        }

        v13 = [v5 tokenizer];
        v14 = [v13 isPosition:v10 withinTextUnit:1 inDirection:0];

        if ((v14 & 1) == 0)
        {
          v15 = [v5 tokenizer];
          v16 = [v15 positionFromPosition:v10 toBoundary:1 inDirection:1];

          v10 = v16;
          if (!v16)
          {
            break;
          }
        }

        v11 = v10;
        if (!--a4)
        {
          goto LABEL_11;
        }
      }

      v10 = v11;
    }

LABEL_11:
    v18 = [v5 textRangeFromPosition:v10 toPosition:v9];
    v17 = [v5 textInRange:v18];
  }

  else
  {
    v17 = &stru_1EFB14550;
  }

  return v17;
}

- (id)postfixTextForInputDelegate:(id)a3 wordCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 selectedTextRange];
  v7 = [v6 end];

  if (v7)
  {
    v8 = v7;
    v9 = v8;
    v10 = v8;
    if (a4)
    {
      v11 = v8;
      while (1)
      {
        v12 = [v5 tokenizer];
        v10 = [v12 positionFromPosition:v11 toBoundary:1 inDirection:0];

        if (!v10)
        {
          break;
        }

        v13 = [v5 tokenizer];
        v14 = [v13 isPosition:v10 withinTextUnit:1 inDirection:1];

        if ((v14 & 1) == 0)
        {
          v15 = [v5 tokenizer];
          v16 = [v15 positionFromPosition:v10 toBoundary:1 inDirection:0];

          v10 = v16;
          if (!v16)
          {
            break;
          }
        }

        v11 = v10;
        if (!--a4)
        {
          goto LABEL_11;
        }
      }

      v10 = v11;
    }

LABEL_11:
    v18 = [v5 textRangeFromPosition:v9 toPosition:v10];
    v17 = [v5 textInRange:v18];
  }

  else
  {
    v17 = &stru_1EFB14550;
  }

  return v17;
}

- (id)selectedTextForInputDelegate:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];
  v6 = [v4 end];
  v7 = v6;
  v8 = &stru_1EFB14550;
  if (v5 && v6 && [v3 comparePosition:v5 toPosition:v6] && objc_msgSend(v3, "comparePosition:toPosition:", v5, v7) == -1)
  {
    v8 = [v3 textInRange:v4];
  }

  return v8;
}

- (BOOL)useAutomaticEndpointing
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 textInputTraits];

  if ([v3 acceptsDictationSearchResults])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 useAutomaticEndpointing];
  }

  return v4;
}

- (id)_finalDictationStartLanguageCodeWithKeyboardInputMode:(id)a3
{
  v4 = a3;
  v5 = [v4 dictationLanguage];
  if (!v5)
  {
    if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
    {
      v5 = [v4 languageWithRegion];
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = TIInputModeGetLanguage();
  v7 = TIInputModeGetRegion();
  if (![objc_opt_class() viewMode])
  {
    v8 = [(UIDictationConnectionPreferences *)self->_preferences languageCode];

    v7 = 0;
    v6 = v8;
  }

  if ([(UIDictationController *)self smartLanguageSelectionOverridden])
  {
    v9 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
  }

  else
  {
    if (!v6)
    {
      v10 = [MEMORY[0x1E695DF58] preferredLocale];
      v6 = [v10 languageCode];
    }

    if ([v6 isEqualToString:@"ko"] && -[__CFString isEqualToString:](v7, "isEqualToString:", @"KO"))
    {

      v7 = @"KR";
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];
  }

  v11 = v9;

  v6 = v11;
LABEL_17:
  v12 = [UIDictationUtilities _remapDictationLocaleFromLanguage:v6];
  v13 = [v12 languageIdentifier];

  return v13;
}

- (void)dictationConnection:(id)a3 updateOptions:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[UIKeyboardImpl sharedInstance];
  v7 = [v6 inputDelegate];
  v8 = [v6 textInputTraits];
  if ([v5 version])
  {
    [v5 setVersion:1];
    v9 = [(UIDictationController *)self currentInputModeForDictation];
    v10 = [v9 dictationLanguage];
    if (!v10)
    {
      if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
      {
        v10 = [v9 languageWithRegion];
      }

      else
      {
        v10 = 0;
      }
    }

    v31 = v7;
    v29 = TIInputModeGetLanguageWithRegion();
    v11 = [UIDictationUtilities _remapDictationLocaleFromLanguage:?];
    v12 = [v11 languageCode];
    v13 = [v11 regionCode];
    [v5 setUseAutomaticEndpointing:{-[UIDictationController useAutomaticEndpointing](self, "useAutomaticEndpointing")}];
    v30 = v9;
    v14 = [v9 identifier];
    v15 = TIInputModeGetVariant();
    [v5 setLayoutIdentifier:v15];

    [v5 setReturnKeyType:{objc_msgSend(v8, "returnKeyType")}];
    if ([objc_opt_class() viewMode])
    {
      if ([objc_opt_class() viewMode] == 6)
      {
        [v5 setActivationType:2];
      }
    }

    else
    {
      v16 = [(UIDictationConnectionPreferences *)self->_preferences languageCode];

      [v5 setActivationType:1];
      [v5 setUseAutomaticEndpointing:1];
      [v5 setReturnKeyType:6];
      v13 = 0;
      v12 = v16;
    }

    v17 = [(UIDictationController *)self activationIdentifier];
    [v5 setActivationIdentifier:v17];

    [v5 setLanguageCode:v12];
    [v5 setRegionCode:v13];
    v18 = [(UIDictationController *)self fieldIdentifierInputDelegate:v31];
    [v5 setFieldIdentifier:v18];

    [v5 setKeyboardType:{objc_msgSend(v8, "dictationKeyboardType")}];
    v19 = +[UIDictationUtilities _isUsingLargeFormatDictationUI];
    if (v19)
    {
      if (UIKeyboardTypeSupportsDictationSpelling([v5 keyboardType]) || (objc_msgSend(v8, "isSecureTextEntry") & 1) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = [v8 forceSpellingDictation];
      }
    }

    else
    {
      v20 = 0;
    }

    [v5 setSecureInput:v20];
    [v5 setAcceptsDictationSearchResults:{objc_msgSend(v8, "acceptsDictationSearchResults")}];
    [v5 setPrefixText:self->_prefixTextForStart];
    [v5 setSelectedText:self->_selectionTextForStart];
    [v5 setPostfixText:self->_postfixTextForStart];
    if (-[UIDictationController shouldOverrideManualEndpointingWithReturnKeyType:](self, "shouldOverrideManualEndpointingWithReturnKeyType:", [v5 returnKeyType]))
    {
      [v5 setUseAutomaticEndpointing:1];
    }

    if ([v5 useAutomaticEndpointing])
    {
      v21 = _UIDictationControllerLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v33 = "[UIDictationController dictationConnection:updateOptions:]";
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%s Starting dictation with automatic endpointing", buf, 0xCu);
      }

      [v5 setReturnKeyType:6];
      [(UIDictationController *)self setReasonType:31];
    }

    v22 = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext turnIdentifier];
    [v5 setTurnIdentifier:v22];

    if (((v19 | _os_feature_enabled_impl() ^ 1) & 1) == 0)
    {
      v23 = [getAFPreferencesClass_0() sharedPreferences];
      [v5 setAutoPunctuation:{objc_msgSend(v23, "dictationAutoPunctuationEnabled")}];
    }

    v24 = v30;
    if ([v12 isEqualToString:@"en"] && objc_msgSend(v13, "isEqualToString:", @"US") && objc_msgSend(objc_opt_class(), "supportsSiriDictationVoiceCommands") && (objc_msgSend(objc_opt_class(), "supportsSiriDictationVoiceCommandsUIRedesign") & 1) != 0)
    {
      v25 = +[UIKeyboard keyboardBundleIdentifier];
      [v5 setShouldRecognizeCommands:{+[UIDictationUtilities supportsDictationVoiceEditingUIForBundleIdentifier:](UIDictationUtilities, "supportsDictationVoiceEditingUIForBundleIdentifier:", v25)}];

      v24 = v30;
    }

    else
    {
      [v5 setShouldRecognizeCommands:0];
    }

    prefixTextForStart = self->_prefixTextForStart;
    self->_prefixTextForStart = 0;

    selectionTextForStart = self->_selectionTextForStart;
    self->_selectionTextForStart = 0;

    postfixTextForStart = self->_postfixTextForStart;
    self->_postfixTextForStart = 0;

    v7 = v31;
  }
}

- (void)completeStartConnection
{
  v3 = [(UIDictationController *)self dictationConnection];
  [v3 start];

  self->_reasonType = 0;
}

- (void)startConnectionWithContinuation:(id)a3
{
  v4 = a3;
  [(UIDictationController *)self setupForDictationStart];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UIDictationController_startConnectionWithContinuation___block_invoke;
  v6[3] = &unk_1E70F37C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIDictationController *)self _completeStartDictationWithContinuation:v6];
}

uint64_t __57__UIDictationController_startConnectionWithContinuation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeStartConnection];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startDictationForFileAtURL:(id)a3 forInputModeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__UIDictationController_startDictationForFileAtURL_forInputModeIdentifier___block_invoke;
  v10[3] = &unk_1E70F6228;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(UIDictationController *)self _completeStartDictationWithContinuation:v10];
}

- (void)completeStartConnectionForFileAtURL:(id)a3 forInputModeIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  [v6 stringWithFormat:@"%s Starting dictation connection from saved file for language code: %@", "-[UIDictationController completeStartConnectionForFileAtURL:forInputModeIdentifier:]", v7];

  [(UIDictationController *)self setState:1];
  v9 = [(UIDictationController *)self dictationConnection];
  [v9 startForFileAtURL:v8 forLanguage:v7];
}

- (void)_completeStartDictationWithContinuation:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Calling _refreshVisibleRTIDocumentStateWithContinuation", "-[UIDictationController _completeStartDictationWithContinuation:]"];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__UIDictationController__completeStartDictationWithContinuation___block_invoke;
  v6[3] = &unk_1E7114CD8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIDictationController *)self _refreshVisibleRTIDocumentStateWithContinuation:v6];
}

uint64_t __65__UIDictationController__completeStartDictationWithContinuation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [a2 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;

  v12 = [v8 copy];
  v13 = *(a1 + 32);
  v14 = *(v13 + 152);
  *(v13 + 152) = v12;

  v15 = [v7 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 144);
  *(v16 + 144) = v15;

  [*(a1 + 32) setIsProcessingPotentialVoiceCommand:0];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Dictation options. prefixText: %@, postfixText: %@, selectedText: %@", "-[UIDictationController _completeStartDictationWithContinuation:]_block_invoke", *(*(a1 + 32) + 136), *(*(a1 + 32) + 152), *(*(a1 + 32) + 144)];

  result = *(a1 + 40);
  if (result)
  {
    v19 = *(result + 16);

    return v19();
  }

  return result;
}

- (void)_setFinalResultHandler:(id)a3
{
  v4 = _Block_copy(a3);
  finalResultsOperation = self->_finalResultsOperation;
  self->_finalResultsOperation = v4;
}

- (void)setIgnoreFinalizePhrases:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  self->_ignoreFinalizePhrases = a3;
  v4 = _UIDictationControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[UIDictationController setIgnoreFinalizePhrases:]";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting ignoreFinalizePhrases flag %d", &v5, 0x12u);
  }
}

- (void)_setupHypothesisAsFinalResults
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    ignoreFinalizePhrases = self->_ignoreFinalizePhrases;
  }

  else
  {
    ignoreFinalizePhrases = 0;
  }

  v4 = [(UIDictationController *)self targetHypothesis];
  v5 = v4;
  if (self->_finalResultsOperation)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6 && !ignoreFinalizePhrases)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__UIDictationController__setupHypothesisAsFinalResults__block_invoke;
    v7[3] = &unk_1E70F2F80;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [(UIDictationController *)self _setFinalResultHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __55__UIDictationController__setupHypothesisAsFinalResults__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained lastHypothesis];
  [WeakRetained updateLastHypothesis:v3 WithNewHypothesis:&stru_1EFB14550];

  v4 = [UIDictationSerializableResults alloc];
  v8 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIDictationSerializableResults *)v4 initWithArrayOfArrayOfStrings:v6];

  [WeakRetained insertSerializedDictationResult:v7 withCorrectionIdentifier:0];
  [WeakRetained setIgnoreFinalizePhrases:1];
}

- (void)_runFinalizeOperation:(BOOL)a3
{
  if (self->_finalResultsOperation)
  {
    [(UIDictationController *)self performIgnoringDocumentChanges:?];
    finalResultsOperation = self->_finalResultsOperation;
    self->_finalResultsOperation = 0;

    if (!a3)
    {
      [(UIDictationController *)self _stopStreamingAnimation];
    }

    [(UIDictationController *)self setPendingEdits:0];
    [(UIDictationController *)self setLastHypothesis:0];

    [(UIDictationController *)self setTargetHypothesis:0];
  }
}

- (void)endSessionIfNecessaryForTransitionFromState:(int)a3 toState:(int)a4
{
  v7 = a3 != 6 && a4 == 0;
  if (a4 == 6 || v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Calling endSession on the connection", "-[UIDictationController endSessionIfNecessaryForTransitionFromState:toState:]"];

    v8 = [(UIDictationController *)self dictationConnection];
    [v8 endSession];

    if (a4 == 6)
    {
      finalResultsOperation = self->_finalResultsOperation;
      self->_finalResultsOperation = 0;
    }
  }
}

- (void)switchToKeyboardInputModeIfNeeded
{
  v5 = +[UIDictationView sharedInstance];
  if (([v5 switchingLanguage] & 1) == 0 && !-[UIDictationController shouldStayInDictationInputMode](self, "shouldStayInDictationInputMode"))
  {
    v3 = +[UIKeyboardImpl activeInstance];
    if (([v3 isDictationMenuPresented] & 1) == 0)
    {
      v4 = +[UIKeyboard isModelessActive];

      if (v4)
      {
        return;
      }

      v5 = +[UIKeyboardImpl activeInstance];
      v3 = [(UIDictationController *)self keyboardInputModeToReturn];
      [v5 setKeyboardInputMode:v3 userInitiated:0];
    }
  }
}

+ (BOOL)shouldForwardInInputSystemUI
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    return 0;
  }

  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 keyboardWindow];

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 inputDelegate];
    v7 = [v6 _window];
    v8 = v7 != v3;
  }

  else
  {
    v8 = 1;
  }

  v10 = [v5 inputDelegateManager];
  v11 = [v10 shouldRespectForwardingInputDelegate];

  v9 = v8 & (v11 ^ 1);
  return v9;
}

- (void)resignFirstResponderWhenIdleIfNeeded
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(UIDictationController *)self shouldSuppressSoftwareKeyboard])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 isDictationLanguageMenuPresented];

    if ((v4 & 1) == 0)
    {
      v5 = +[UIDictationLandingView sharedInstance];
      [v5 stopLanding];

      v6 = +[UIKeyboardImpl sharedInstance];
      v7 = [v6 textInputTraits];
      v8 = [v7 returnKeyType];

      if (v8 == 6)
      {
        v9 = +[UIKeyboardImpl sharedInstance];
        [v9 performReturn];
      }

      [(UIDictationController *)self setResigningFirstResponder:1];
      if ([objc_opt_class() shouldForwardInInputSystemUI])
      {
        v10 = +[UIKeyboardImpl activeInstance];
        v11 = [v10 inputDelegateManager];
        v12 = [v11 inputSystemSourceSession];

        if (!v12)
        {
LABEL_12:

LABEL_13:
          if (+[UIDictationUtilities _isAutomaticKeyboardDownDictationDisabled])
          {
            [(UIDictationController *)self setShouldSuppressSoftwareKeyboard:0];
            v16 = +[UIKeyboardImpl activeInstance];
            [v16 setKeyboardMinimizedByDictation:0];
          }

          return;
        }

        v13 = [v12 textOperations];
        [v13 setCustomInfoType:0x1EFB7C8F0];
        v17 = @"selector";
        v14 = NSStringFromSelector(sel_resignFirstResponderWhenIdleIfNeeded);
        v18[0] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [v13 setCustomInfo:v15];

        [v12 flushOperations];
      }

      else
      {
        if ([objc_opt_class() isInputDelegateSafariAddressBar])
        {
          [(UIDictationController *)self setResigningFirstResponder:0];
          goto LABEL_13;
        }

        v12 = +[UIKeyboardImpl sharedInstance];
        v13 = [v12 inputDelegate];
        [v13 resignFirstResponder];
      }

      goto LABEL_12;
    }
  }
}

- (void)setShadowState:(int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _UIDictationControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = stringForState(a3);
    v7 = 136315394;
    v8 = "[UIDictationController setShadowState:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s State %@", &v7, 0x16u);
  }

  dword_1ED4987D8 = a3;
  if (a3 == 3 || !a3)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 clearDictationMenuTimer];
  }
}

- (void)setAppState:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && +[UIKeyboard isMajelEnabled]&& ![(UIDictationController *)self isIgnoringRTIChanges])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 inputDelegateManager];
    v7 = [v6 inputSystemSourceSession];

    if (v7)
    {
      v8 = _UIDictationControllerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 documentTraits];
        v10 = [v9 appId];
        v15 = 136315394;
        v16 = "[UIDictationController setAppState:]";
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s Invoking setShadowState. appID %@", &v15, 0x16u);
      }

      v11 = [v7 textOperations];
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = NSStringFromSelector(sel_setShadowState_);
      [v12 setObject:v13 forKeyedSubscript:@"selector"];

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      [v12 setObject:v14 forKeyedSubscript:@"state"];

      [v11 setCustomInfoType:0x1EFB7C8F0];
      [v11 setCustomInfo:v12];
      [v7 flushOperations];
    }
  }
}

- (void)setState:(int)a3
{
  v3 = *&a3;
  v33[1] = *MEMORY[0x1E69E9840];
  if (a3 != 6 || dword_1ED4987DC)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = stringForState(a3);
    [v5 stringWithFormat:@"%s State: %@", "-[UIDictationController setState:]", v6];

    v7 = dword_1ED4987DC;
    dword_1ED4987DC = v3;
    [(UIDictationController *)self setAppState:v3];
    v8 = +[UIDictationView sharedInstance];
    [v8 setDisplayDelegate:0];

    v9 = +[UIDictationView sharedInstance];
    [v9 setState:v3];

    [(UIDictationController *)self endSessionIfNecessaryForTransitionFromState:v7 toState:v3];
    if (![(UIDictationController *)self isDetectingUtterances])
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [(UIDictationController *)self setIdleTimerDisabled:v3 != 0 forReason:v11];
    }

    if (v3)
    {
      if (v3 == 6)
      {
        [(UIDictationController *)self switchToKeyboardInputModeIfNeeded];
      }
    }

    else
    {
      [(UIDictationController *)self _runFinalizeOperation];
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 clearDictationMenuTimer];

      v32 = @"reason";
      v33[0] = @"Dictation controller did switch state";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      [(UIDictationController *)self postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v13];

      [(UIDictationController *)self releaseConnectionAfterDictationRequest];
      if ([(UIDictationController *)self isRecievingResults])
      {
        v14 = +[UIKeyboardImpl sharedInstance];
        v15 = [v14 inputDelegate];

        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 interactionAssistant];
          [v16 configureForSelectionMode];
        }
      }

      if (!self->_streamingAnimationActive)
      {
        [(UIDictationController *)self setTargetHypothesis:0];
        [(UIDictationController *)self setLastHypothesis:0];
        [(UIDictationController *)self setPendingEdits:0];
      }

      v17 = +[UIDictationView sharedInstance];
      v18 = [v17 switchingLanguage];

      if ((v18 & 1) == 0)
      {
        [(UIDictationController *)self resignFirstResponderWhenIdleIfNeeded];
        v19 = +[UIKeyboardImpl activeInstance];
        [v19 clearDictationMenuTimer];
      }

      [(UIDictationController *)self switchToKeyboardInputModeIfNeeded];
      v20 = +[UIKeyboardImpl activeInstance];
      v21 = [v20 userInteractionDelegate];

      if (v21 && [(UIDictationTipController *)self->_dictationTipController modelessTipShown])
      {
        v22 = +[UIKeyboardImpl activeInstance];
        [v22 setUserInteractionDelegate:0];
      }
    }

    if ([objc_opt_class() viewMode] == 6)
    {
      if ((v3 - 3) >= 3)
      {
        if (v3)
        {
          if (v3 != 6)
          {
            p_ignoreFinalizePhrases = &self->_ignoreFinalizePhrases;
            goto LABEL_30;
          }

          [(UIDictationController *)self _displaySecureContentsAsPlainText:0 afterDelay:2.0];
        }

        [(UIDictationController *)self restoreTextFieldPlaceholder];
      }

      else
      {
        [(UIDictationController *)self clearTextFieldPlaceholder];
      }
    }

    p_ignoreFinalizePhrases = &self->_ignoreFinalizePhrases;
    if (v3 == 3 && !self->_ignoreFinalizePhrases)
    {
      v24 = +[UIKeyboardImpl activeInstance];
      [v24 clearDictationMenuTimer];

      v25 = +[UIDictationLandingView sharedInstance];
      [v25 startLandingIfNecessary];
      goto LABEL_32;
    }

LABEL_30:
    v26 = +[UIDictationLandingView sharedInstance];
    v25 = v26;
    if (v3 != 6)
    {
      [v26 stopLanding];

      if (v3 == 2)
      {
        *p_ignoreFinalizePhrases = 0;
        v27 = +[UIKeyboardImpl activeInstance];
        v28 = [v27 inputDelegateManager];
        v29 = [v28 selectionDisplayInteraction];
        [v29 _setGlowViewMode:1];

LABEL_37:
        return;
      }

      if (v3 <= 2)
      {
        return;
      }

LABEL_33:
      self->_shouldResumeDictation = 0;
      v27 = _UIDictationControllerLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[UIDictationController setState:]";
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s Set _shouldResumeDictation to NO", buf, 0xCu);
      }

      goto LABEL_37;
    }

    [v26 stopLandingForError];
LABEL_32:

    goto LABEL_33;
  }
}

- (void)errorAnimationDidFinish
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController errorAnimationDidFinish]"];

  if ([(UIDictationController *)self state]== 6)
  {

    [(UIDictationController *)self setState:0];
  }
}

- (void)dealloc
{
  [(UIDictationController *)self stopHelperMessageDisplayIfNeeded];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:objc_opt_class()];

  [(_UIDictationPrivacySheetController *)self->_dictationPrivacySheetController setPrivacyDelegate:0];
  [(UIDictationController *)self removeStartDictationKeyboardGestures];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  dictationInputModeNotifierToken = self->_dictationInputModeNotifierToken;
  if (dictationInputModeNotifierToken != -1)
  {
    notify_cancel(dictationInputModeNotifierToken);
  }

  v5.receiver = self;
  v5.super_class = UIDictationController;
  [(UIDictationController *)&v5 dealloc];
}

- (void)cancelRecordingLimitTimer
{
  recordingLimitTimer = self->_recordingLimitTimer;
  if (recordingLimitTimer)
  {
    [(NSTimer *)recordingLimitTimer invalidate];
    v4 = self->_recordingLimitTimer;
    self->_recordingLimitTimer = 0;
  }

  [(UIDictationController *)self stopIdleTimerResetTimer];
}

- (void)stopDictationByTimer
{
  v3 = +[UIDictationController sharedInstance];
  [v3 setReasonType:19];

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 dismissDictationTip];

  [(UIDictationController *)self stopDictation];
  LODWORD(v4) = +[UIKeyboard isModelessActive];
  v6 = +[UIKeyboardImpl activeInstance];
  if (v4)
  {
    [v6 clearDictationMenuTimer];
  }

  else
  {
    v5 = [(UIDictationController *)self keyboardInputModeToReturn];
    [v6 setKeyboardInputMode:v5 userInitiated:0];
  }
}

- (void)startRecordingLimitTimer
{
  [(UIDictationController *)self cancelRecordingLimitTimer];
  v3 = MEMORY[0x1E695DFF0];
  [(UIDictationController *)self maxRecordingLength];
  v5 = [v3 scheduledTimerWithTimeInterval:self target:sel_stopDictationByTimer selector:0 userInfo:0 repeats:v4];
  recordingLimitTimer = self->_recordingLimitTimer;
  self->_recordingLimitTimer = v5;

  if ([(UIDictationController *)self isDetectingUtterances])
  {
    [(UIDictationController *)self resetIdleTimer];
    [(UIDictationController *)self stopIdleTimerResetTimer];
    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_resetIdleTimer selector:0 userInfo:0 repeats:20.0];
    idleTimerResetTimer = self->_idleTimerResetTimer;
    self->_idleTimerResetTimer = v7;
  }
}

- (void)updateRecordingLimitTimerIfNeeded
{
  if ([(UIDictationController *)self isDetectingUtterances])
  {

    [(UIDictationController *)self startRecordingLimitTimer];
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v14 = a4;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputDelegateManager];
    v8 = [v7 inputSystemSourceSession];

    if (v8)
    {
      v9 = [v8 textOperations];
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = NSStringFromSelector(a2);
      [v10 setObject:v11 forKeyedSubscript:@"selector"];

      v12 = [MEMORY[0x1E696AD98] numberWithBool:v4];
      [v10 setObject:v12 forKeyedSubscript:@"disabled"];

      if (v14)
      {
        v13 = v14;
      }

      else
      {
        v13 = &stru_1EFB14550;
      }

      [v10 setObject:v13 forKeyedSubscript:@"reason"];
      [v9 setCustomInfoType:0x1EFB7C8F0];
      [v9 setCustomInfo:v10];
      [v8 flushOperations];
    }
  }

  else
  {
    [UIApp _setIdleTimerDisabled:v4 forReason:v14];
  }
}

- (void)resetIdleTimer
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(UIDictationController *)self setIdleTimerDisabled:1 forReason:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(UIDictationController *)self setIdleTimerDisabled:0 forReason:v6];
}

- (void)stopIdleTimerResetTimer
{
  idleTimerResetTimer = self->_idleTimerResetTimer;
  if (idleTimerResetTimer)
  {
    [(NSTimer *)idleTimerResetTimer invalidate];
    v4 = self->_idleTimerResetTimer;
    self->_idleTimerResetTimer = 0;
  }
}

- (id)connectionForStatisticsLogging
{
  if (self->_dictationConnection)
  {
    self->_connectionWasAlreadyAliveForStatisticsLogging = 1;
  }

  return [(UIDictationController *)self dictationConnection];
}

- (BOOL)dataSharingDecided
{
  v2 = qword_1ED4987F8;
  if (!qword_1ED4987F8)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = [getAFPreferencesClass_0() sharedPreferences];
    v5 = [v3 initWithBool:{objc_msgSend(v4, "siriDataSharingOptInStatus") != 0}];
    v6 = qword_1ED4987F8;
    qword_1ED4987F8 = v5;

    v2 = qword_1ED4987F8;
  }

  return [v2 BOOLValue];
}

- (BOOL)dictationSearchFieldUISupportsTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 userInterfaceIdiom] == 1 || objc_msgSend(v3, "userInterfaceIdiom") == 0;

  return v4;
}

- (void)setupForStreamingDictationStart
{
  [(UIDictationController *)self setPreviousHypothesis:0];
  [(UIDictationController *)self setInsertionRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(UIDictationController *)self setDiscardNextHypothesis:0];
  v5 = [(UIDictationController *)self streamingOperations];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegate];
  [v5 dictationWillBeginInDocument:v4];
}

- (void)setupForAsyncDelegate
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 remoteTextInputPartner];
    [v4 forwardKeyboardOperation:sel_setupForAsyncDelegate object:0];
  }

  v5 = +[UIKeyboardImpl activeInstance];
  v11 = [v5 inputDelegate];

  if ([v11 _usesAsynchronousProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = v11;
    v7 = [v6 selectedTextRange];
    v8 = [v7 start];
    -[UIDictationController setSelectionStartWasInitiallyAtParagraphBoundaryForAsyncDelegate:](self, "setSelectionStartWasInitiallyAtParagraphBoundaryForAsyncDelegate:", [v6 isPosition:v8 atBoundary:3 inDirection:1]);

    v9 = [v6 selectedTextRange];
    v10 = [v9 end];
    -[UIDictationController setSelectionEndWasInitiallyAtParagraphBoundaryForAsyncDelegate:](self, "setSelectionEndWasInitiallyAtParagraphBoundaryForAsyncDelegate:", [v6 isPosition:v10 atBoundary:3 inDirection:0]);

    -[UIDictationController setInitialPreviousCharacterForAsyncDelegate:](self, "setInitialPreviousCharacterForAsyncDelegate:", [v6 _characterInRelationToCaretSelection:0xFFFFFFFFLL]);
    LOWORD(v9) = [v6 _characterInRelationToCaretSelection:0];

    [(UIDictationController *)self setInitialCharacterAfterSelectionForAsyncDelegate:v9];
  }
}

- (void)setupForDictationStart
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController setupForDictationStart]"];

  self->cancelledByWaitingForLocalResults = [(UIDictationController *)self state]== 4;
  if ([(UIDictationController *)self state])
  {
    [(UIDictationController *)self cancelDictation];
  }

  if (+[UIDictationController viewMode](UIDictationController, "viewMode") && +[UIDictationController viewMode]!= 6)
  {
    v9 = [(UIDictationController *)self currentInputModeForDictation];
    v10 = [v9 dictationLanguage];
    v12 = 0;
    v11 = [(UIDictationController *)self supportsDictationLanguage:v10 error:&v12];
    v3 = v12;

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  [(UIDictationController *)self setLastRecognitionText:0];
  [(UIDictationController *)self setLastCorrectionIdentifier:0];
  [(UIDictationController *)self setState:1];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 forceShiftUpdate];
  byte_1ED4987D2 = [v4 isShifted];
  [(UIDictationController *)self setIsProcessingInitialPhrasesForCurrentRequest:1];
  self->_hasCheckedForLeadingSpaceOnce = 0;
  v5 = [(UIDictationController *)self currentInputModeForDictation];
  v6 = [v5 dictationLanguage];

  if (![objc_opt_class() viewMode])
  {
    v7 = [(UIDictationConnectionPreferences *)self->_preferences languageCode];
    v8 = [(UIDictationController *)self languageCodeForAssistantLanguageCode:v7];

    v6 = v8;
  }

  [(UIDictationController *)self setLanguage:v6];
  [(UIDictationController *)self startRecordingLimitTimer];
  self->_recievingResults = 0;
  [(UIDictationController *)self setupForStreamingDictationStart];
  [(UIDictationController *)self setupForAsyncDelegate];
  self->_ignoreUserInteraction = 1;

LABEL_9:
}

- (void)_startDictationWithContinuation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 keyboardState];
  v7 = [v6 documentState];

  v8 = [v7 selectedText];
  v9 = [v8 copy];
  selectedTextAtStart = self->_selectedTextAtStart;
  self->_selectedTextAtStart = v9;

  v11 = [v7 contextBeforeInput];
  v12 = [v11 length];
  v13 = [(NSString *)self->_selectedTextAtStart length];
  self->_relativeRangeBefore.location = v12;
  self->_relativeRangeBefore.length = v13;

  if ([objc_opt_class() _applicationIsActive])
  {
    [(UIDictationController *)self startConnectionWithContinuation:v4];
  }

  else
  {
    v14 = _UIDictationControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[UIDictationController _startDictationWithContinuation:]";
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s Early return due to inactive application state", &v15, 0xCu);
    }
  }
}

+ (id)slsDictationLanguages
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [getAFPreferencesClass_0() sharedPreferences];
  v3 = [v2 dictationSLSLanguagesEnabled];
  v4 = [v3 keysOfEntriesPassingTest:&__block_literal_global_755];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"_" withString:{@"-", v15}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isFallingBackToMonolingualDictation
{
  if ([(UIDictationController *)self smartLanguageSelectionOverridden])
  {
    return 1;
  }

  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 enabledDictationLanguages];
  v5 = [v4 count];

  if (v5 < 2)
  {
    return 0;
  }

  v6 = +[UIDictationConnectionPreferences sharedInstance];
  v7 = [v6 isSmartLanguageSelectionEnabled];

  v8 = [objc_opt_class() activeSLSDictationLanguages];

  result = 1;
  if (v8)
  {
    if (v7)
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)_isLowStorageForOnDeviceDictationAsset
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v3 = [v2 attributesOfFileSystemForPath:@"/private/var/MobileAsset/AssetsV2" error:&v9];
  v4 = v9;

  if (!v3)
  {
    v6 = _UIDictationControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "+[UIDictationController _isLowStorageForOnDeviceDictationAsset]";
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s Error getting free disk space: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v5 = [v3 objectForKey:*MEMORY[0x1E696A3C0]];
  v6 = v5;
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [v5 unsignedLongLongValue]>> 22 < 0x7D;
LABEL_7:

  return v7;
}

- (void)showLowStorageUserAlertWithLanguage:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputDelegateManager];
    v8 = [v7 inputSystemSourceSession];

    if (v8)
    {
      v9 = [v8 textOperations];
      [v9 setCustomInfoType:0x1EFB7C8F0];
      v41[0] = @"selector";
      v10 = NSStringFromSelector(a2);
      v41[1] = @"language";
      v42[0] = v10;
      v11 = &stru_1EFB14550;
      if (v5)
      {
        v11 = v5;
      }

      v42[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      [v9 setCustomInfo:v12];

      [v8 flushOperations];
    }
  }

  else
  {
    [(UIDictationController *)self _createDictationPresenterWindowIfNecessary];
    v13 = [(UIDictationController *)self dictationPresenterWindow];
    [v13 makeKeyAndVisible];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__UIDictationController_showLowStorageUserAlertWithLanguage___block_invoke;
    aBlock[3] = &unk_1E70F59B0;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    v15 = _UIKitBundle();
    v16 = [v15 localizedStringForKey:@"Low Storage User Alert Body" value:@"On-device Dictation is temporarily unavailable. You can still use Dictation table:{but 500 MB of space is needed to run all features.", @"Localizable"}];

    v17 = +[UIKeyboardInputModeController sharedInputModeController];
    v18 = [v17 enabledDictationLanguages];
    v19 = [v18 count];

    if (v19 >= 2)
    {
      if ([(__CFString *)v5 length])
      {
        v20 = [MEMORY[0x1E695DF58] currentLocale];
        v21 = [v20 displayNameForKey:*MEMORY[0x1E695D9B0] value:v5];

        if (v21 && ([v21 isEqualToString:v5] & 1) == 0)
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = _UIKitBundle();
          v24 = [v23 localizedStringForKey:@"Low Storage User Alert Body" value:@"On-device Dictation is temporarily unavailable for %@. You can still use Dictation table:{but 500 MB of space is needed to run all features.", @"Localizable"}];
          v25 = [v22 stringWithFormat:v24, v21];

          v16 = v25;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    v26 = _UIKitBundle();
    v27 = [v26 localizedStringForKey:@"Low Storage User Alert Title" value:@"Low Storage" table:@"Localizable"];
    v28 = [UIAlertController alertControllerWithTitle:v27 message:v16 preferredStyle:1];

    v29 = _UIKitBundle();
    v30 = [v29 localizedStringForKey:@"Low Storage User Alert Manage Storage" value:@"Manage Storage" table:@"Localizable"];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__UIDictationController_showLowStorageUserAlertWithLanguage___block_invoke_2;
    v38[3] = &unk_1E7115460;
    v31 = v14;
    v39 = v31;
    v32 = [UIAlertAction actionWithTitle:v30 style:0 handler:v38];

    [v28 addAction:v32];
    v33 = _UIKitBundle();
    v34 = [v33 localizedStringForKey:@"Low Storage User Alert OK" value:@"OK" table:@"Localizable"];
    v35 = [UIAlertAction actionWithTitle:v34 style:1 handler:v31];
    [v28 addAction:v35];

    [v28 setPreferredAction:v32];
    if (v28)
    {
      v36 = [(UIDictationController *)self dictationPresenterWindow];
      v37 = [v36 rootViewController];
      [v37 presentViewController:v28 animated:1 completion:0];
    }
  }
}

uint64_t __61__UIDictationController_showLowStorageUserAlertWithLanguage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictationPresenterWindow];
  [v2 resignKeyWindow];

  v3 = [*(a1 + 32) dictationPresenterWindow];
  [v3 setHidden:1];

  v4 = *(a1 + 32);

  return [v4 setDictationPresenterWindow:0];
}

void __61__UIDictationController_showLowStorageUserAlertWithLanguage___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  [v2 openSensitiveURL:v1 withOptions:0 error:0];
}

- (void)resetAdaptiveDeleteActivationLogic
{
  [(UIDictationController *)self setShouldDeleteWordOnBackspaceTap:0];

  [(UIDictationController *)self setStartRangeOfCurrentHypothesis:0x7FFFFFFFFFFFFFFFLL, 0];
}

- (void)startDictationWithContinuation:(id)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v99 = a3;
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 forwardDictationEvent_startDictation];

    goto LABEL_60;
  }

  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 inputDelegateManager];

    v7 = [v6 inputSystemSourceSession];
    if (v7)
    {
      v8 = [v6 textInputView];
      v9 = [v6 selectedTextRange];
      v10 = [v9 start];
      [v6 caretRectForPosition:v10];
      [v8 convertRect:0 toView:?];
      v12 = v11;

      if (v12 > 2.0)
      {
        v13 = [v7 textOperations];
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v15 = NSStringFromSelector(sel_updateCaretRectInWindowIfNeeded);
        [v14 setObject:v15 forKeyedSubscript:@"selector"];

        v16 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        [v14 setObject:v16 forKeyedSubscript:@"caretRectInWindow.y"];

        [v13 setCustomInfoType:0x1EFB7C8F0];
        [v13 setCustomInfo:v14];
        [v7 flushOperations];
      }
    }
  }

  [(UIDictationController *)self resetAdaptiveDeleteActivationLogic];
  v17 = +[UIDictationConnectionPreferences sharedInstance];
  v18 = [v17 dictationIsEnabled];

  if (v18)
  {
    [(UIDictationController *)self setHasSelectedTextRange:0];
    [(UIDictationController *)self setVisibleRTIDocumentStateAtStart:0];
    [(UIDictationController *)self setVisibleRTIDocumentStateAtCommandRecognition:0];
    [(UIDictationController *)self setVisibleContextBeforeInputAtCommandExecution:0];
    [(UIDictationController *)self setCandidateDictationSerializableResults:0];
    [(UIDictationController *)self setDetectingUtterances:0];
    [(UIDictationController *)self setShouldResumeDictation:0];
    v19 = _UIDictationControllerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[UIDictationController startDictationWithContinuation:]";
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "%s Set shouldResumeDictation to NO", buf, 0xCu);
    }

    [(UIDictationController *)self setSkipAutomaticResumeDictation:0];
    [(UIDictationController *)self setHasInsertedAtLeastOneSerializedDictationResult:0];
    [(UIDictationController *)self setHaveReceivedFirstPartialResultForCurrentUtterance:0];
    v20 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[UIDictationController startDictationWithContinuation:]";
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "%s Set haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
    }

    [(UIDictationController *)self _setHaveLeakedPartialResultForCommandUtterance:0];
    [(UIDictationController *)self setSendButtonPressedDuringDictation:0];
    [(UIDictationController *)self setShouldStayInDictationInputMode:0];
    [(UIDictationController *)self setLogAppEnterBackground:1];
    v21 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [v21 UUIDString];
    [(UIDictationController *)self setInteractionIdentifier:v22];

    [(UIDictationController *)self setModelessUsedAtLeastOnce:0];
    [(UIDictationController *)self setLocalSpeechRecognitionForced:0];
    [(UIDictationController *)self setSecureOfflineOnlySpeechRecognition:0];
    if (self->_enablementInstrumentationContext)
    {
      [(UIDictationController *)self setCurrentInstrumentationContext:?];
    }

    else
    {
      v24 = [getAFAnalyticsClass() sharedAnalytics];
      v25 = [v24 newTurnBasedInstrumentationContext];
      [(UIDictationController *)self setCurrentInstrumentationContext:v25];
    }

    [(UIDictationController *)self setModelInfo:0];
    [(UIDictationController *)self setDetectedLanguage:0];
    [(UIDictationController *)self setFallbackDictationLanguage:0];
    [(UIDictationController *)self setInitialDictationLanguage:0];
    v26 = +[UIKeyboardInputModeController sharedInputModeController];
    v27 = [v26 currentInputMode];
    v28 = [v27 primaryLanguage];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_1EFB14550;
    }

    [(UIDictationController *)self setCurrentKeyboardPrimaryLanguage:v30];

    v31 = +[UIKeyboardInputModeController sharedInputModeController];
    v32 = [v31 currentInputMode];
    v33 = [v32 dictationLanguage];
    [(UIDictationController *)self setInitialDictationLanguage:v33];

    [(UIDictationController *)self setDictationSourceType:0];
    v34 = [objc_opt_class() slsDictationLanguages];
    [(UIDictationController *)self setDictationLanguages:v34];

    v35 = [(UIDictationController *)self currentInputModeForDictation];
    v36 = [v35 dictationLanguage];
    v37 = +[UIKeyboardImpl activeInstance];
    v38 = [v37 _sessionIdentifier];
    v39 = [v38 UUIDString];
    [(UIDictationController *)self preheatEuclidModelWithLanguageCode:v36 clientID:v39];

    v40 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];

    if (v40)
    {
      v98 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
      [(UIDictationController *)self setDictationSourceType:3];
    }

    else
    {
      v98 = [(UIDictationController *)self initialDictationLanguage];
      if ([v98 length])
      {
        v41 = +[UIKeyboardInputModeController sharedInputModeController];
        v42 = [v41 keyboardLanguageForDictationLanguage:v98];

        v43 = +[UIKeyboardInputModeController sharedInputModeController];
        v44 = [v43 currentInputMode];
        v45 = [v44 languageWithRegion];
        if ([v42 isEqualToString:v45])
        {
          v46 = 1;
        }

        else
        {
          v46 = 2;
        }

        [(UIDictationController *)self setDictationSourceType:v46];
      }
    }

    if (!v98)
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v54 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498808) + 8);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "dictationLanguage must not be nil or it's a programming error.", buf, 2u);
        }

        goto LABEL_59;
      }

      goto LABEL_67;
    }

    v97 = [objc_opt_class() UIDictationLanguageSourceType:{-[UIDictationController dictationSourceType](self, "dictationSourceType")}];
    v47 = +[UIKeyboardImpl activeInstance];
    v48 = [v47 userInteractionDelegate];
    v49 = v48 == 0;

    if (v49)
    {
      v50 = +[UIKeyboardImpl activeInstance];
      [v50 setUserInteractionDelegate:self];
    }

    v51 = +[UIKeyboardImpl sharedInstance];
    v52 = [v51 inputDelegateManager];
    v53 = [v52 asyncInputDelegate];
    if (v53)
    {
    }

    else
    {
      v55 = +[UIKeyboardImpl sharedInstance];
      v56 = [v55 inputDelegateManager];
      v57 = [v56 webInputDelegate];
      v58 = v57 == 0;

      if (v58)
      {
        v89 = +[UIKeyboardImpl sharedInstance];
        v90 = [v89 inputDelegateManager];
        v91 = [v90 asyncWebKitInteractionDelegate];

        if (v91)
        {
          v59 = @"async";
        }

        else
        {
          v92 = +[UIKeyboardImpl sharedInstance];
          v93 = [v92 inputDelegate];

          if (v93)
          {
            v59 = @"default";
          }

          else
          {
            v59 = @"no delegate";
          }
        }

        goto LABEL_39;
      }
    }

    v59 = @"async interaction";
LABEL_39:
    v60 = _UIDictationControllerLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
      *buf = 136316162;
      *&buf[4] = "[UIDictationController startDictationWithContinuation:]";
      *&buf[12] = 2112;
      *&buf[14] = v98;
      *&buf[22] = 2112;
      v107 = v97;
      *v108 = 2112;
      *&v108[2] = v61;
      v109 = 2112;
      v110 = v59;
      _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_DEFAULT, "%s Dictation Language %@ Source: %@ Keyboard Language %@, InputDelegateType: %@", buf, 0x34u);
    }

    v62 = [getAFAnalyticsClass() sharedAnalytics];
    v104[0] = @"startDictation";
    v63 = [objc_opt_class() UIDictationStartStopReasonTypeDescription:{-[UIDictationController reasonType](self, "reasonType")}];
    v105[0] = v63;
    v105[1] = v98;
    v104[1] = @"dictationLanguage";
    v104[2] = @"dictationLanguageSource";
    v105[2] = v97;
    v104[3] = @"dictationLanguages";
    v64 = [(UIDictationController *)self dictationLanguages];
    v65 = v64;
    v66 = MEMORY[0x1E695E0F0];
    if (v64)
    {
      v66 = v64;
    }

    v105[3] = v66;
    v104[4] = @"keyboardLocaleIdentifier";
    v67 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
    v105[4] = v67;
    v104[5] = @"dictationUIInteractionIdentifier";
    v68 = [(UIDictationController *)self interactionIdentifier];
    v69 = v68;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = &stru_1EFB14550;
    }

    v105[5] = v70;
    v104[6] = @"dictationOptInStatus";
    v71 = [getAFPreferencesClass_0() sharedPreferences];
    v72 = [v71 siriDataSharingOptInStatus];
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v73 = off_1ED498900;
    v103 = off_1ED498900;
    if (!off_1ED498900)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAFSiriDataSharingOptInStatusGetNameSymbolLoc_block_invoke;
      v107 = &unk_1E70F2F20;
      *v108 = &v100;
      v74 = AssistantServicesLibrary_1();
      v75 = dlsym(v74, "AFSiriDataSharingOptInStatusGetName");
      *(*(*v108 + 8) + 24) = v75;
      off_1ED498900 = *(*(*v108 + 8) + 24);
      v73 = v101[3];
    }

    _Block_object_dispose(&v100, 8);
    if (v73)
    {
      v76 = v73(v72);
      v105[6] = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:7];
      [v62 logEventWithType:1404 context:v77];

      v100 = 0;
      v101 = &v100;
      v102 = 0x2050000000;
      v78 = qword_1ED498908;
      v103 = qword_1ED498908;
      if (!qword_1ED498908)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSISchemaInvocationClass_block_invoke;
        v107 = &unk_1E70F2F20;
        *v108 = &v100;
        __getSISchemaInvocationClass_block_invoke(buf);
        v78 = v101[3];
      }

      v79 = v78;
      _Block_object_dispose(&v100, 8);
      v80 = objc_alloc_init(v78);
      if (+[UIDictationController viewMode]== 6)
      {
        v81 = 42;
      }

      else
      {
        v81 = [objc_opt_class() UIDictationStartStopReasonToInstrumentationInvocationSourceType:self->_reasonType];
      }

      [v80 setInvocationSource:v81];
      [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v80];
      [(UIDictationController *)self instrumentationDictationContextEmitInstrumentation];
      v82 = objc_alloc_init(getSISchemaUEILaunchContextClass());
      v100 = 0;
      v101 = &v100;
      v102 = 0x2050000000;
      v83 = qword_1ED498910;
      v103 = qword_1ED498910;
      if (!qword_1ED498910)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSISchemaUEILaunchStartedClass_block_invoke;
        v107 = &unk_1E70F2F20;
        *v108 = &v100;
        __getSISchemaUEILaunchStartedClass_block_invoke(buf);
        v83 = v101[3];
      }

      v84 = v83;
      _Block_object_dispose(&v100, 8);
      v85 = objc_alloc_init(v83);
      [v82 setStartedOrChanged:v85];

      v86 = [v82 startedOrChanged];
      [v86 setExists:1];

      [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v82];
      if (+[UIDictationController viewMode]== 6)
      {
        [(UIDictationController *)self _displaySecureContentsAsPlainText:1 afterDelay:0.0];
      }

      [(UIDictationController *)self _startDictationWithContinuation:v99];
      [(UIDictationController *)self _markOfflineDictationInputMetricEvent];
      v87 = +[UIDictationView sharedInstance];
      [v87 setSwitchingLanguage:0];

      [(UIDictationTipController *)self->_dictationTipController reset];
      self->_dictationInputModeSwitchStarted = 0;
      v88 = +[UIKeyboardImpl activeInstance];
      [v88 dismissDictationTip];

LABEL_59:
      goto LABEL_60;
    }

    v94 = [MEMORY[0x1E696AAA8] currentHandler];
    v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_AFSiriDataSharingOptInStatusGetName(AFSiriDataSharingOptInStatus)"];
    [v94 handleFailureInFunction:v95 file:@"UIDictationController.m" lineNumber:233 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_67:
    v96 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v96, OS_LOG_TYPE_FAULT, "dictationLanguage must not be nil or it's a programming error.", buf, 2u);
    }

    goto LABEL_59;
  }

  v23 = _UIDictationControllerLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[UIDictationController startDictationWithContinuation:]";
    _os_log_error_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "%s Attempted to start dictation when not enabled", buf, 0xCu);
  }

LABEL_60:
}

- (void)setCurrentInstrumentationContext:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_currentInstrumentationContext, a3);
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 inputDelegateManager];
    v7 = [v6 inputSystemSourceSession];

    if (v7)
    {
      v8 = [v7 textOperations];
      v9 = [MEMORY[0x1E695DF90] dictionary];
      v10 = NSStringFromSelector(sel_setCurrentInstrumentationContext_);
      [v9 setObject:v10 forKeyedSubscript:@"selector"];

      [v9 setObject:v11 forKeyedSubscript:@"instrumentationContext"];
      [v8 setCustomInfoType:0x1EFB7C8F0];
      [v8 setCustomInfo:v9];
      [v7 flushOperations];
    }
  }
}

- (void)setLocalSpeechRecognitionForced:(BOOL)a3
{
  v3 = a3;
  self->_localSpeechRecognitionForced = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 inputDelegateManager];
    v10 = [v5 inputSystemSourceSession];

    if (v10)
    {
      v6 = [v10 textOperations];
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = NSStringFromSelector(sel_setLocalSpeechRecognitionForced_);
      [v7 setObject:v8 forKeyedSubscript:@"selector"];

      v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [v7 setObject:v9 forKeyedSubscript:@"forceOfflineRecognition"];

      [v6 setCustomInfoType:0x1EFB7C8F0];
      [v6 setCustomInfo:v7];
      [v10 flushOperations];
    }
  }
}

- (void)setInteractionIdentifier:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_interactionIdentifier, a3);
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 inputDelegateManager];
    v7 = [v6 inputSystemSourceSession];

    if (v7)
    {
      v8 = [v7 textOperations];
      v9 = [MEMORY[0x1E695DF90] dictionary];
      v10 = NSStringFromSelector(sel_setInteractionIdentifier_);
      [v9 setObject:v10 forKeyedSubscript:@"selector"];

      [v9 setObject:v11 forKeyedSubscript:@"interactionIdentifier"];
      [v8 setCustomInfoType:0x1EFB7C8F0];
      [v8 setCustomInfo:v9];
      [v7 flushOperations];
    }
  }
}

- (void)switchToDictationLanguage:(id)a3 inputOptions:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    if (!+[UIKeyboard isModelessActive])
    {
      v9 = +[UIKeyboardImpl activeInstance];
      v10 = [(UIDictationController *)self keyboardInputModeToReturn];
      [v9 setKeyboardInputMode:v10 userInitiated:0];
    }

    v11 = +[UIDictationController sharedInstance];
    [v11 overrideSmartLanguageSelection:v6];

    v12 = off_1E70EA000;
    v13 = +[UIKeyboardInputModeController sharedInputModeController];
    v14 = [v13 keyboardLanguageForDictationLanguage:v6];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v6;
    }

    v17 = v16;

    v18 = [(UIDictationController *)self keyboardInputModeToReturn];
    v19 = [v18 languageWithRegion];
    v20 = [v17 isEqualToString:v19];

    v53 = v7;
    if (v20)
    {
      v21 = [(UIDictationController *)self keyboardInputModeToReturn];
      if (!v21)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = +[UIKeyboardInputModeController sharedInputModeController];
      v23 = [v22 currentInputMode];
      v24 = [v23 multilingualSet];

      v25 = [v24 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v25)
      {
        v26 = v25;
        v21 = 0;
        v27 = *v59;
LABEL_13:
        v28 = 0;
        v29 = v21;
        while (1)
        {
          if (*v59 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v21 = *(*(&v58 + 1) + 8 * v28);

          v30 = [v21 languageWithRegion];
          v31 = [v17 isEqualToString:v30];

          if (v31)
          {
            break;
          }

          ++v28;
          v29 = v21;
          if (v26 == v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v58 objects:v63 count:16];
            if (v26)
            {
              goto LABEL_13;
            }

            v7 = v53;
            v12 = off_1E70EA000;
            goto LABEL_20;
          }
        }

        v7 = v53;
        v12 = off_1E70EA000;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      else
      {
LABEL_20:
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v32 = [(__objc2_class *)v12[13] sharedInputModeController];
      v33 = [v32 activeInputModes];

      v34 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v34)
      {
        v35 = v34;
        v21 = 0;
        v36 = *v55;
LABEL_24:
        v37 = 0;
        v38 = v21;
        while (1)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v21 = *(*(&v54 + 1) + 8 * v37);

          v39 = [v21 languageWithRegion];
          v40 = [v17 isEqualToString:v39];

          if (v40)
          {
            break;
          }

          ++v37;
          v38 = v21;
          if (v35 == v37)
          {
            v35 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v35)
            {
              goto LABEL_24;
            }

            v21 = 0;
            break;
          }
        }

        v7 = v53;
        v12 = off_1E70EA000;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        goto LABEL_40;
      }
    }

LABEL_34:
    [v21 setDictationLanguage:v6];
    v41 = +[UIDictationView sharedInstance];
    [v41 setShowLanguageLabel:1];

    v42 = [(__objc2_class *)v12[13] sharedInputModeController];
    v43 = [v42 currentInputMode];
    v44 = +[UIKeyboardInputMode dictationInputMode];
    v45 = [v43 isEqual:v44];

    if (v45)
    {
      [v21 setLastUsedDictationLanguage];
      v46 = [(__objc2_class *)v12[13] sharedInputModeController];
      [v46 setCurrentInputModeInPreference:v21];

      v47 = +[UIKeyboardInputMode dictationInputMode];
      [v47 setCurrentInputModeForDictation:v21];

      [(UIDictationController *)self setCurrentInputModeForDictation:v21];
      [(UIDictationController *)self setKeyboardInputModeToReturn:v21];
      v48 = +[UIKeyboardImpl activeInstance];
      v49 = [v48 isInHardwareKeyboardMode];

      v7 = v53;
      if (v49)
      {
        v50 = UIApp;
        v51 = [v21 automaticHardwareLayout];
        [v50 setHardwareKeyboardLayoutName:v51];
      }

      [(UIDictationController *)self setInputModeOptions:0];
      [(UIDictationController *)self startDictationWithContinuation:0];
    }

    else
    {
      v52 = +[UIKeyboardImpl activeInstance];
      [v52 setKeyboardInputMode:v21 userInitiated:1];

      v7 = v53;
      [(UIDictationController *)self switchToDictationInputModeWithTouch:0 withKeyboardInputMode:v21 options:v53];
    }

    goto LABEL_40;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 forwardDictationEvent_switchToDictationLanguage:v6];

LABEL_41:
}

- (void)presentEnablementAndDataSharingPromptIfNeeded:(id)a3
{
  v6 = a3;
  v4 = +[UIDictationConnectionPreferences sharedInstance];
  if ([v4 dictationIsEnabled])
  {
    v5 = [(UIDictationController *)self dataSharingDecided];

    if (v5)
    {
      v6[2](v6, 1);
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(UIDictationController *)self dismissSoftwareKeyboardIfNeeded];
  [(UIDictationController *)self _presentEnablementAndDataSharingPromptIfNeeded:v6];
LABEL_6:
}

- (void)switchToDictationInputModeWithTouch:(id)a3 withKeyboardInputMode:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 inputDelegate];

  if (v12)
  {
    v13 = +[UIDictationConnectionPreferences sharedInstance];
    if ([v13 dictationIsEnabled])
    {
      v14 = [(UIDictationController *)self dataSharingDecided];

      if (v14)
      {
        v15 = [(UIDictationController *)self _finalDictationStartLanguageCodeWithKeyboardInputMode:v9];
        v16 = [getAFPreferencesClass_0() sharedPreferences];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [getAFPreferencesClass_0() sharedPreferences];
          v19 = [v18 performSelector:sel_displayedLowStorageNotificationForLanguage_ withObject:v15];

          v20 = [(UIDictationController *)self cachedDisplayLowStorageNotification];
          if (v20)
          {
            [(UIDictationController *)self setCachedDisplayLowStorageNotification:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DF90] dictionary];
            [(UIDictationController *)self setCachedDisplayLowStorageNotification:v21];
          }

          v22 = v19 != 0;

          v23 = [(UIDictationController *)self cachedDisplayLowStorageNotification];
          v24 = [v23 objectForKey:v15];
          v25 = [v24 BOOLValue];

          v26 = v22 | v25;
          v27 = +[UIDictationConnectionPreferences sharedInstance];
          LODWORD(v24) = [v27 isOnDeviceDictationSupportMissingAssetForLanguage:v15];

          if (v24)
          {
            if ((v26 & 1) == 0 && [objc_opt_class() _isLowStorageForOnDeviceDictationAsset])
            {
              v28 = [(UIDictationController *)self dictationConnection];
              [v28 suppressLowStorageNotificationForLanguage:v15 suppress:1];

              v29 = [(UIDictationController *)self cachedDisplayLowStorageNotification];
              [v29 setObject:MEMORY[0x1E695E118] forKey:v15];

              v30 = [(UIDictationController *)self dictationConnection];
              [v30 requestOfflineDictationSupportForLanguage:v15 completion:0];

              [(UIDictationController *)self showLowStorageUserAlertWithLanguage:v15];
LABEL_22:

              goto LABEL_23;
            }
          }

          else if (v26)
          {
            v31 = [(UIDictationController *)self dictationConnection];
            [v31 suppressLowStorageNotificationForLanguage:v15 suppress:0];

            v32 = [(UIDictationController *)self cachedDisplayLowStorageNotification];
            [v32 setObject:MEMORY[0x1E695E110] forKey:v15];
          }
        }

        v33 = +[UIKeyboard activeKeyboard];
        [v33 acceptAutocorrectionWithCompletionHandler:0];

        v34 = +[UIKeyboardInputMode dictationInputMode];
        [v34 setTriggeringTouch:v8];
        [v34 setCurrentInputModeForDictation:v9];
        [(UIDictationController *)self setCurrentInputModeForDictation:v9];
        if (![v34 viewControllerClass])
        {
          [(UITouch *)v8 _setPhaseChangeDelegate:?];
          self->cancelledByWaitingForLocalResults = 0;
          if ([(UIDictationController *)self isFallingBackToMonolingualDictation])
          {
            v35 = 1;
          }

          else
          {
            v35 = [v9 isDisplayed] ^ 1;
          }

          v36 = +[UIDictationView sharedInstance];
          [v36 setShowLanguageLabel:v35];

          [(UIDictationController *)self setInputModeOptions:v10];
          self->_reasonType = [UIDictationController reasonType:v10];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __91__UIDictationController_switchToDictationInputModeWithTouch_withKeyboardInputMode_options___block_invoke;
          v37[3] = &unk_1E70F6228;
          v37[4] = self;
          v38 = v9;
          v39 = v8;
          [(UIDictationController *)self startDictationWithContinuation:v37];
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    [(UIDictationController *)self dismissSoftwareKeyboardIfNeeded];
    [(UIDictationController *)self _presentEnablementAndDataSharingPromptIfNeeded:0];
  }

LABEL_23:
}

void __91__UIDictationController_switchToDictationInputModeWithTouch_withKeyboardInputMode_options___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setDictationInputMode:*(a1 + 40)];
  [*(a1 + 40) setCurrentInputModeToActiveInputModeForMultilingualKeyboardForDictation];
  if (*(a1 + 48))
  {
    v2 = +[UIDictationView sharedInstance];
    [v2 highlightEndpointButton];
  }

  v3 = *(a1 + 32);
  v5 = @"reason";
  v6[0] = @"Dictation controller did switch input mode";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v4];
}

- (void)switchToDictationInputModeWithTouch:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 currentInputMode];
  v10 = [v5 getActiveInputModeInDictationFromMultiLingualInputModes:v7];

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  [v8 setCurrentInputMode:v10];

  v9 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonInKeyboard"];
  [(UIDictationController *)self switchToDictationInputModeWithTouch:v4 withKeyboardInputMode:v10 options:v9];
}

- (void)switchToDictationInputModeWithTouch:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = [objc_opt_class() shouldForwardEventsToInputSystemUI];
  if (has_internal_diagnostics)
  {
    if (v9)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Forwarding event with UITouch is not supported", buf, 2u);
      }
    }
  }

  else if (v9)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &switchToDictationInputModeWithTouch_options____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Forwarding event with UITouch is not supported", v14, 2u);
    }
  }

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 currentInputMode];
  [(UIDictationController *)self switchToDictationInputModeWithTouch:v7 withKeyboardInputMode:v11 options:v6];
}

- (void)postNotificationName:(id)a3 userInfo:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"UIKeyboardDictationAvailabilityDidChangeNotification"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"UIDictationControllerDictationDidFinish") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"UIKeyboardDidBeginDictationNotification") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"UIDictationControllerDidResumeNotification") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"UIDictationControllerDidPauseNotification") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UIDictationWillInsertHypothesisNotification"))
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      if ([v6 isEqualToString:@"UIKeyboardDictationAvailabilityDidChangeNotification"])
      {
        v8 = [v7 objectForKeyedSubscript:@"reason"];
        v9 = _UIDictationControllerLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v28 = "[UIDictationController postNotificationName:userInfo:]";
          v29 = 2114;
          v30 = v8;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s Dictation availability did change with reason: %{public}@", buf, 0x16u);
        }
      }

      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 inputDelegateManager];
      v12 = [v11 inputSystemSourceSession];

      if (v12)
      {
        v13 = [v12 textOperations];
        [v13 setCustomInfoType:0x1EFB7C8F0];
        v21 = @"selector";
        v14 = NSStringFromSelector(sel_postNotificationName_object_userInfo_);
        v24 = v14;
        v25 = v6;
        v22 = @"notificationName";
        v23 = @"userInfo";
        if (v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = MEMORY[0x1E695E0F8];
        }

        v26 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v21 count:3];
        [v13 setCustomInfo:{v16, v21, v22, v23, v24, v25}];

        [v12 flushOperations];
      }
    }

    if ([v6 isEqualToString:@"UIKeyboardDidBeginDictationNotification"])
    {
      v17 = [v7 objectForKeyedSubscript:@"dictationLanguage"];
      v18 = +[UIKeyboardImpl activeInstance];
      [v18 setActiveDictationLanguage:v17];

      v19 = 1;
    }

    else
    {
      if (![v6 isEqualToString:@"UIDictationControllerDictationDidFinish"])
      {
LABEL_23:
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        [v20 postNotificationName:v6 object:0 userInfo:v7];

        goto LABEL_24;
      }

      v17 = +[UIKeyboardImpl activeInstance];
      [v17 setActiveDictationLanguage:0];
      v19 = 0;
    }

    self->_canSendDidFinishNotification = v19;
    goto LABEL_23;
  }

LABEL_24:
}

- (id)currentDictationLanguageForDisplay
{
  if ([(UIDictationController *)self smartLanguageSelectionOverridden])
  {
    v3 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
  }

  else
  {
    v4 = [(UIDictationController *)self currentInputModeForDictation];
    v5 = [v4 dictationLanguage];
    v3 = TIInputModeGetLanguageWithRegion();
  }

  return v3;
}

- (void)showSoftwareKeyboardIfNeeded
{
  if (![(UIDictationController *)self shouldSuppressSoftwareKeyboard])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 isMinimized];

    if (v4)
    {
      v5 = +[UIKeyboardImpl activeInstance];
      v6 = [v5 isInHardwareKeyboardMode];

      if ((v6 & 1) == 0)
      {
        [(UIDictationController *)self setDidToggleSoftwareKeyboardVisibleForDictation:1];
        v7 = +[UIKeyboardImpl activeInstance];
        [v7 ejectKeyDown];
      }
    }

    else
    {

      [(UIDictationController *)self setDidToggleSoftwareKeyboardVisibleForDictation:0];
    }
  }
}

- (void)dismissSoftwareKeyboardIfNeeded
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 isMinimized];

  if ([(UIDictationController *)self didToggleSoftwareKeyboardVisibleForDictation]&& (v4 & 1) == 0)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 ejectKeyDown];
  }

  [(UIDictationController *)self setDidToggleSoftwareKeyboardVisibleForDictation:0];
}

- (void)_displaySecureContentsAsPlainText:(BOOL)a3 afterDelay:(double)a4
{
  if (!a3)
  {
    v5 = +[UIKeyboardImpl sharedInstance];
    v7 = [v5 inputDelegate];

    if ([v7 isSecureTextEntry])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v7;
        [v6 setDisplaySecureTextUsingPlainText:0];
        [v6 setDisplaySecureEditsUsingPlainText:0];
        [v6 _forceObscureAllText];
      }
    }
  }
}

- (void)clearTextFieldPlaceholder
{
  if ([(UIDictationController *)self _shouldUpdateHelperMessageDisplay])
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    v7 = [v3 inputDelegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x1E696AAB0];
      v5 = v7;
      v6 = [[v4 alloc] initWithString:&stru_1EFB14550];
      [v5 _setOverridePlaceholder:v6 alignment:4];
      self->_prevForceDisplayOverridePlaceholder = [v5 _forceDisplayOverridePlaceholder];
      [v5 setPlaceholder:0];
      [v5 _setForceDisplayOverridePlaceholder:0];
    }
  }
}

- (void)restoreTextFieldPlaceholder
{
  if ([(UIDictationController *)self _shouldUpdateHelperMessageDisplay])
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    v5 = [v3 inputDelegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
      [v4 _setOverridePlaceholder:0 alignment:4];
      [v4 _setForceDisplayOverridePlaceholder:self->_prevForceDisplayOverridePlaceholder];
    }
  }
}

- (void)updateHelperMessageDisplayIfNeeded
{
  if ([(UIDictationController *)self _resolvedIsDictationPossible])
  {

    [(UIDictationController *)self startHelperMessageDisplayIfNeeded];
  }

  else
  {

    [(UIDictationController *)self stopHelperMessageDisplayIfNeeded];
  }
}

- (void)startHelperMessageDisplayIfNeeded
{
  v63[1] = *MEMORY[0x1E69E9840];
  if ([(UIDictationController *)self _shouldUpdateHelperMessageDisplay])
  {
    v2 = +[UIKeyboardImpl sharedInstance];
    v3 = [v2 inputDelegate];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_24:

      return;
    }

    v59 = v3;
    v4 = +[UIKeyboardImpl sharedInstance];
    v5 = [v4 textInputTraits];

    v6 = [v5 dictationInfoKeyboardType];
    v7 = +[UIKeyboardImpl sharedInstance];
    v8 = [v7 currentKey];
    if (v8)
    {
      v9 = +[UIKeyboardImpl sharedInstance];
      v10 = [v9 currentKey];
      v11 = [v10 interactionType] == 10;
    }

    else
    {
      v11 = 0;
    }

    v12 = +[UIKeyboard activeKeyboard];
    v13 = [v12 isFocused];

    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 enabledDictationLanguages];
    v16 = [v15 count];

    if (v16 <= 1)
    {
      v18 = [MEMORY[0x1E696AAE8] mainBundle];
      v19 = [v18 preferredLocalizations];
      v20 = [v19 firstObject];

      v21 = +[UIDictationController sharedInstance];
      [v21 currentInputModeForDictation];
      v56 = v11;
      v22 = v6;
      v24 = v23 = v5;
      v25 = [v24 dictationLanguage];

      v26 = MEMORY[0x1E695DF58];
      v63[0] = v20;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
      v62 = v25;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      v29 = [v26 matchedLanguagesFromAvailableLanguages:v27 forPreferredLanguages:v28];
      v17 = [v29 count] == 0;

      v5 = v23;
      v6 = v22;
      v11 = v56;
    }

    else
    {
      v17 = 1;
    }

    if (v11 || (v13 & 1) == 0)
    {
      v30 = v59;
      [v59 _updateHelpMessageOverrideWithMessage:0];
LABEL_23:

      goto LABEL_24;
    }

    v58 = v5;
    if (UIKeyboardTypeSupportsDictationSpelling(v6) || ([v5 isSecureTextEntry] & 1) != 0 || objc_msgSend(v5, "forceSpellingDictation"))
    {
      if (v17)
      {
        v31 = @"ATV_DICTATION_SPELLING_HELP_LANGUAGE";
        v32 = @"Help text for AppleTV spelling dictation with language";
        v33 = @"Hold %@ to spell in %@";
LABEL_16:
        v34 = _UILocalizedString(v31, v32, v33);
        v35 = +[UIDictationController sharedInstance];
        v36 = [v35 currentInputModeForDictation];
        v37 = [v36 dictationLanguage];

        if ([v34 hasPrefix:@"%2$@"])
        {
          v38 = 4;
        }

        else
        {
          v38 = 5;
        }

        v39 = UIKeyboardDictationDisplayNameInUILanguage(v37, v38);
        v40 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v34 validFormatSpecifiers:@"%@ %@" error:0, @"%@", v39];

        goto LABEL_22;
      }

      v41 = @"ATV_DICTATION_SPELLING_HELP";
      v42 = @"Help text for AppleTV spelling dictation";
      v43 = @"Hold %@ to spell";
    }

    else
    {
      if (v17)
      {
        v31 = @"ATV_DICTATION_GENERIC_HELP_LANGUAGE";
        v32 = @"Help text for AppleTV generic dictation with language";
        v33 = @"Hold %@ to dictate in %@";
        goto LABEL_16;
      }

      v41 = @"ATV_DICTATION_GENERIC_HELP";
      v42 = @"Help text for AppleTV generic dictation";
      v43 = @"Hold %@ to dictate";
    }

    v40 = _UILocalizedString(v41, v42, v43);
LABEL_22:
    v44 = [UIImage systemImageNamed:@"mic.circle.fill"];
    v57 = [v44 imageWithRenderingMode:2];

    v45 = [off_1E70ECBA8 textAttachmentWithImage:v57];
    v46 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v45];
    v47 = [v46 mutableCopy];

    v48 = [v40 rangeOfString:@"%@"];
    v50 = v49;
    v51 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    v30 = v59;
    v52 = [v59 _placeholderColor];
    v53 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v40];
    [v53 replaceCharactersInRange:v48 withAttributedString:{v50, v47}];
    v54 = *off_1E70EC918;
    v60[0] = *off_1E70EC920;
    v60[1] = v54;
    v61[0] = v52;
    v61[1] = v51;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v53 addAttributes:v55 range:{0, objc_msgSend(v53, "length")}];

    [v59 _updateHelpMessageOverrideWithMessage:v53];
    v5 = v58;
    goto LABEL_23;
  }
}

+ (BOOL)dictationInfoIsOnScreen
{
  v2 = dictationInfoIsOnScreen_token;
  if (!dictationInfoIsOnScreen_token)
  {
    notify_register_check("com.apple.private.restrict-post.keyboard.DictationInfoIsOnScreen", &dictationInfoIsOnScreen_token);
    v2 = dictationInfoIsOnScreen_token;
  }

  state64 = 0;
  notify_get_state(v2, &state64);
  return state64 & 1;
}

- (void)setDictationInfoOnScreenNotifyKey:(BOOL)a3
{
  v3 = a3;
  v4 = setDictationInfoOnScreenNotifyKey__token;
  if (!setDictationInfoOnScreenNotifyKey__token)
  {
    notify_register_check("com.apple.private.restrict-post.keyboard.DictationInfoIsOnScreen", &setDictationInfoOnScreenNotifyKey__token);
    v4 = setDictationInfoOnScreenNotifyKey__token;
  }

  state64 = 0;
  notify_get_state(v4, &state64);
  if ((state64 & 1) != v3)
  {
    state64 = v3;
    notify_set_state(setDictationInfoOnScreenNotifyKey__token, v3);
  }
}

- (void)_createDictationPresenterWindowIfNecessary
{
  v3 = [(UIDictationController *)self dictationPresenterWindow];

  if (!v3)
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v4 scene];

    v6 = objc_alloc_init(UIApplicationRotationFollowingWindow);
    [(UIDictationController *)self setDictationPresenterWindow:v6];

    v7 = [(UIDictationController *)self dictationPresenterWindow];
    [v7 setOpaque:0];

    v8 = [(UIDictationController *)self dictationPresenterWindow];
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];

    v10 = [(UIDictationController *)self dictationPresenterWindow];
    [v10 setWindowScene:v5];

    v11 = [(UIDictationController *)self dictationPresenterWindow];
    [v11 setWindowLevel:2000.0];

    v12 = [(UIDictationController *)self dictationPresenterWindow];
    [v12 setHidden:1];

    v13 = objc_alloc_init(UIApplicationRotationFollowingController);
    [(UIApplicationRotationFollowingController *)v13 setSizesWindowToScene:1];
    v14 = [(UIDictationController *)self dictationPresenterWindow];
    [v14 setRootViewController:v13];
  }

  v16 = [(UIDictationController *)self dictationPresenterWindow];
  v15 = [UIApp keyWindow];
  [v16 _setSecure:{objc_msgSend(v15, "_isSecure")}];
}

- (void)_logEnablementPromtMetricsWithStartDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getSISchemaUEIDictationEnablementPromptShownClass_softClass;
  v18 = getSISchemaUEIDictationEnablementPromptShownClass_softClass;
  if (!getSISchemaUEIDictationEnablementPromptShownClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSISchemaUEIDictationEnablementPromptShownClass_block_invoke;
    v14[3] = &unk_1E70F2F20;
    v14[4] = &v15;
    __getSISchemaUEIDictationEnablementPromptShownClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = objc_alloc_init(v8);
  [v10 setIsDictationEnabled:{-[UIDictationController enablementLoggingIsDictationEnabled](self, "enablementLoggingIsDictationEnabled")}];
  [v10 setIsLearnMoreButtonClicked:{-[UIDictationController enablementLoggingIsLearnMoreButtonClicked](self, "enablementLoggingIsLearnMoreButtonClicked")}];
  [v10 setPromptVisibilityDurationInMs:(v7 * 1000.0)];
  v11 = [getAFAnalyticsClass() sharedAnalytics];
  v12 = [v11 newTurnBasedInstrumentationContext];

  [v12 emitInstrumentation:v10];
  if ([(UIDictationController *)self enablementLoggingIsDictationEnabled])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&self->_enablementInstrumentationContext, v13);
}

- (void)_presentEnablementAndDataSharingPromptIfNeeded:(id)a3
{
  v4 = a3;
  [(UIDictationController *)self setEnablementLoggingIsDictationEnabled:0];
  [(UIDictationController *)self setEnablementLoggingIsLearnMoreButtonClicked:0];
  v5 = [MEMORY[0x1E695DF00] now];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"UIKeyboardWillPresentDictationEnablementPromptNotification" object:0];

  v7 = +[UIDictationConnectionPreferences sharedInstance];
  v8 = [v7 suppressDataSharingOptIn];

  v9 = objc_alloc_init(DispatchGroupWrapper);
  if (+[UIKeyboard isKeyboardProcess])
  {
    v10 = +[UIPeripheralHost sharedInstance];
    [v10 setDeactivatedKeyboard:1 forScene:0];
  }

  else
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v10 _preserveInputViewsWithId:v11 animated:1];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke;
  v22[3] = &unk_1E7114D28;
  v22[4] = self;
  v22[5] = v27;
  v22[6] = v25;
  [(DispatchGroupWrapper *)v9 executeWithDispatchGroup:v22];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_3;
  v15[3] = &unk_1E7114DC8;
  v21 = v8;
  v19 = v27;
  v15[4] = self;
  v12 = v5;
  v16 = v12;
  v13 = v4;
  v18 = v13;
  v14 = v9;
  v17 = v14;
  v20 = v23;
  [(DispatchGroupWrapper *)v14 notify:v15];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_2;
  v6[3] = &unk_1E7114D00;
  v8 = *(a1 + 40);
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _presentAlertForDictationInputModeOfType:1 completionHandler:v6];
}

uint64_t __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_2(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  [*(a1 + 32) setEnablementLoggingIsDictationEnabled:*(*(*(a1 + 48) + 8) + 24)];
  *(*(*(a1 + 56) + 8) + 24) = a3;
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || (*(a1 + 80))
  {
    v2 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_4;
    v18[3] = &unk_1E7114D78;
    v3 = *(a1 + 72);
    v18[4] = *(a1 + 32);
    v18[5] = v3;
    [v2 executeWithDispatchGroup:v18];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_6;
    v14[3] = &unk_1E7114DA0;
    v17 = *(a1 + 64);
    v14[4] = *(a1 + 32);
    v15 = v4;
    v16 = *(a1 + 56);
    [v5 notify:v14];
  }

  else
  {
    [*(a1 + 32) _logEnablementPromtMetricsWithStartDate:*(a1 + 40)];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"UIKeyboardDidFinishPresentingDictationEnablementPromptNotification" object:0];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v7 = +[UIPeripheralHost sharedInstance];
      [v7 setDeactivatedKeyboard:0 forScene:0];
    }

    else
    {
      v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v8 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
      [v7 _restoreInputViewsWithId:v8 animated:1];
    }

    if ([*(a1 + 32) shouldSuppressSoftwareKeyboard])
    {
      v9 = +[UIKeyboardImpl activeInstance];
      [v9 setKeyboardMinimizedByDictation:0];

      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 inputDelegate];
      [v11 resignFirstResponder];
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(v12 + 16);

      v13();
    }
  }
}

void __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) dataSharingDecided])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3[2](v3);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_5;
    v5[3] = &unk_1E7114D50;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 _presentAlertForDictationInputModeOfType:2 completionHandler:v5];
  }
}

void __72__UIDictationController__presentEnablementAndDataSharingPromptIfNeeded___block_invoke_6(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) _logEnablementPromtMetricsWithStartDate:*(a1 + 40)];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UIKeyboardDidFinishPresentingDictationEnablementPromptNotification" object:0];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 setDeactivatedKeyboard:0 forScene:0];
  }

  else
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
    [v4 _restoreInputViewsWithId:v5 animated:1];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(v6 + 16);

    v7();
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return;
    }

    if ([objc_opt_class() shouldForwardInInputSystemUI])
    {
      goto LABEL_19;
    }

    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 delegate];

    if (!v9)
    {
      return;
    }

    if (_MergedGlobals_35[0] != 1)
    {
LABEL_19:
      byte_1ED4987D3 = 1;
    }

    else if (!*(a1 + 48))
    {
      v10 = *(a1 + 32);

      [v10 switchToDictationInputMode];
    }
  }
}

- (void)_endEnableDictationPromptAnimated:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E69D9560] dismissEnableDictationPrompt];
  v5 = [(UIDictationController *)self dictationPrivacySheetController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UIDictationController__endEnableDictationPromptAnimated___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:v3 completion:v6];
}

- (void)presentAlertOfType:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v7 = +[UIKeyboard isKeyboardProcess];
  v8 = "_UIMonochromaticTreatment";
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v10 = [UIApp keyWindow];
    v11 = [v10 firstResponder];
    v12 = [v11 inputAccessoryView];
    v13 = [v11 inputAccessoryViewController];
    *buf = 0;
    v38 = buf;
    v39 = 0x2020000000;
    v40 = 0;
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [MEMORY[0x1E696ADC8] mainQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke;
    v29[3] = &unk_1E7114E18;
    v35 = buf;
    v16 = v10;
    v30 = v16;
    v17 = v11;
    v31 = v17;
    v18 = v12;
    v32 = v18;
    v19 = v13;
    v36 = v41;
    v33 = v19;
    v34 = self;
    v9 = [v14 addObserverForName:@"UIWindowFirstResponderDidChangeNotification" object:v16 queue:v15 usingBlock:v29];

    _Block_object_dispose(buf, 8);
    v8 = "_UIMonochromaticTreatment";
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = *(v8 + 235);
  aBlock[2] = __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke_3;
  aBlock[3] = &unk_1E7114E40;
  aBlock[4] = self;
  v28 = v41;
  v20 = v9;
  v26 = v20;
  v21 = v6;
  v27 = v21;
  v22 = _Block_copy(aBlock);
  if (a3 == 2)
  {
    [(UIDictationController *)self _presentDataSharingOptInAlertWithCompletion:v22];
  }

  else if (a3 == 1)
  {
    [(UIDictationController *)self _presentOptInAlertWithCompletion:v22];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v24 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Asking to present a Dictation Alert for a type that doesn't exist", buf, 2u);
    }
  }

  else
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &presentAlertOfType_withCompletion____s_category) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Asking to present a Dictation Alert for a type that doesn't exist", buf, 2u);
    }
  }

  _Block_object_dispose(v41, 8);
}

void __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke_2;
    block[3] = &unk_1E7114DF0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v10 = v8;
    v11 = v7;
    v12 = *(a1 + 64);
    v13 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    dispatch_after(0, MEMORY[0x1E69E96A0], block);
  }
}

void __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) firstResponder];
  if (([*(a1 + 40) isEqual:?] & 1) == 0)
  {
    v2 = *(a1 + 48);
    v3 = [v6 inputAccessoryView];
    if ([v2 isEqual:v3])
    {
    }

    else
    {
      v4 = *(a1 + 56);
      v5 = [v6 inputAccessoryViewController];
      LOBYTE(v4) = [v4 isEqual:v5];

      if ((v4 & 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        [*(a1 + 64) _endEnableDictationPromptAnimated:0];
      }
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = 0;
}

void __59__UIDictationController_presentAlertOfType_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) setDictationInfoOnScreenNotifyKey:0];
  v3 = [*(a1 + 32) presentingWindowForPrivacySheet];
  [v3 resignKeyWindow];

  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    v4 = [*(a1 + 32) dictationPresenterWindow];
    v5 = [v4 subviews];
    v6 = [v5 objectAtIndex:0];
    [v6 removeFromSuperview];
  }

  v7 = [*(a1 + 32) presentingWindowForPrivacySheet];
  [v7 setHidden:1];

  [*(a1 + 32) setDictationPresenterWindow:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v8 = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = v11[2]();
  }

  if (*(a1 + 40))
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:*(a1 + 40)];
  }

  if (v8)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, [v8 BOOLValue]);
    }
  }
}

- (BOOL)shouldPresentOptInAlert
{
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  v3 = [v2 dictationIsEnabled];

  return v3 ^ 1;
}

- (void)_presentOptInAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69D9560];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke;
  v7[3] = &unk_1E7114E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 promptToEnableDictationWithCompletionHandler:v7];
}

void __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke_2;
  block[3] = &unk_1E70FF140;
  v5 = *(a1 + 40);
  v6 = a2;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke_2(void *a1)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke_3;
  v6 = &unk_1E7114E68;
  v1 = a1[5];
  v2 = a1[4];
  v9 = a1[6];
  v7 = v2;
  v8 = v1;
  v1[2]();
}

id __58__UIDictationController__presentOptInAlertWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == 2)
  {
    [*(a1 + 32) setEnablementLoggingIsLearnMoreButtonClicked:1];
    [*(a1 + 32) _presentPrivacySheetForType:1 completion:*(a1 + 40)];
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:v1 == 1];
  }

  return v3;
}

- (void)_presentDataSharingOptInAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69D9560];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UIDictationController__presentDataSharingOptInAlertWithCompletion___block_invoke;
  v7[3] = &unk_1E7104B90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 promptToEnableDataSharingWithCompletionHandler:v7];
}

void __69__UIDictationController__presentDataSharingOptInAlertWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UIDictationController__presentDataSharingOptInAlertWithCompletion___block_invoke_2;
  block[3] = &unk_1E70F5FA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = a2;
  block[4] = v2;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__UIDictationController__presentDataSharingOptInAlertWithCompletion___block_invoke_2(void *a1)
{
  if (a1[6] == 2)
  {
    v2 = a1[4];
    v3 = a1[5];

    return [v2 _presentPrivacySheetForType:2 completion:v3];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    v6 = qword_1ED4987F8;
    qword_1ED4987F8 = v5;

    v7 = *(a1[5] + 16);

    return v7();
  }
}

- (void)_presentAlertForDictationInputModeOfType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3 == 1 && (+[UIDictationConnectionPreferences sharedInstance](UIDictationConnectionPreferences, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 dictationIsEnabled], v7, v8))
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__UIDictationController__presentAlertForDictationInputModeOfType_completionHandler___block_invoke;
    v9[3] = &unk_1E7114ED8;
    v11 = a3;
    v10 = v6;
    [(UIDictationController *)self presentAlertOfType:a3 withCompletion:v9];
  }
}

- (id)presentingViewControllerForPrivacySheet
{
  v2 = [(UIDictationController *)self dictationPresenterWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (void)_presentPrivacySheetForType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(UIDictationController *)self _createDictationPresenterWindowIfNecessary];
  v7 = _Block_copy(v6);

  privacySheetDismissalHandler = self->_privacySheetDismissalHandler;
  self->_privacySheetDismissalHandler = v7;

  v9 = [_UIDictationPrivacySheetController alloc];
  if (a3 == 1)
  {
    v10 = [(_UIDictationPrivacySheetController *)v9 initWithType:1];
  }

  else
  {
    v23 = [(_UIDictationPrivacySheetController *)v9 initWithType:2];
    [(_UIDictationPrivacySheetController *)v23 setPresentationDelegate:self];
    v10 = v23;
  }

  v24 = v10;
  [(UIDictationController *)self setDictationPrivacySheetController:v10];
  v11 = [(UIDictationController *)self dictationPrivacySheetController];
  [v11 setPrivacyDelegate:self];

  v12 = [(UIDictationController *)self dictationPrivacySheetController];
  v13 = [v12 presentationController];
  [v13 setDelegate:self];

  v14 = [(UIDictationController *)self presentingWindowForPrivacySheet];
  [v14 makeKeyAndVisible];

  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    v15 = [(UIDictationController *)self presentingWindowForPrivacySheet];
    v16 = [UIVisualEffectView alloc];
    v17 = [UIBlurEffect effectWithStyle:1];
    v18 = [(UIVisualEffectView *)v16 initWithEffect:v17];

    [v15 bounds];
    [(UIView *)v18 setFrame:?];
    [v15 insertSubview:v18 atIndex:0];
  }

  if (a3 == 1)
  {
    v19 = [v24 privacyPresenter];
    v20 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
    [v19 setPresentingViewController:v20];

    v21 = [v24 privacyPresenter];
    [v21 present];
  }

  else
  {
    v21 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
    v22 = [(UIDictationController *)self dictationPrivacySheetController];
    [v21 presentViewController:v22 animated:1 completion:0];
  }

  [(UIDictationController *)self setDictationInfoOnScreenNotifyKey:1];
}

- (void)dictationPrivacySheetControllerDidFinish:(id)a3
{
  v4 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__UIDictationController_dictationPrivacySheetControllerDidFinish___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

void __66__UIDictationController_dictationPrivacySheetControllerDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UIDictationController_dictationPrivacySheetControllerDidFinish___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_handlePrivacySheetDismissal
{
  v3 = [(UIDictationController *)self dictationPrivacySheetController];
  v4 = [v3 sheetType];

  [(UIDictationController *)self setDictationPrivacySheetController:0];
  privacySheetDismissalHandler = self->_privacySheetDismissalHandler;
  if (privacySheetDismissalHandler)
  {
    v6 = v4 == 1;
    v7 = _Block_copy(privacySheetDismissalHandler);
    v8 = self->_privacySheetDismissalHandler;
    self->_privacySheetDismissalHandler = 0;

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __53__UIDictationController__handlePrivacySheetDismissal__block_invoke;
    v14 = &unk_1E7114F00;
    v17 = v6;
    v15 = self;
    v16 = v7;
    v9 = v7[2];
    v10 = v7;
    v9();
  }
}

uint64_t __53__UIDictationController__handlePrivacySheetDismissal__block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && ([UIApp isSuspended] & 1) == 0)
  {
    [*(a1 + 32) _presentOptInAlertWithCompletion:*(a1 + 40)];
    return 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    v3 = qword_1ED4987F8;
    qword_1ED4987F8 = v2;

    [MEMORY[0x1E69D9560] dismissedDataSharingWithResponse:0];
    return MEMORY[0x1E695E118];
  }
}

- (void)_handleDataSharingSheetDecision
{
  [(UIDictationController *)self setDictationPrivacySheetController:0];
  privacySheetDismissalHandler = self->_privacySheetDismissalHandler;
  if (privacySheetDismissalHandler)
  {
    v5 = _Block_copy(privacySheetDismissalHandler);
    v4 = self->_privacySheetDismissalHandler;
    self->_privacySheetDismissalHandler = 0;

    v5[2](v5, &__block_literal_global_923_0);
  }
}

- (void)_touchPhaseChangedForTouch:(id)a3
{
  v4 = [a3 phase];
  if ((v4 - 3) <= 1)
  {
    if (v4 == 3)
    {
      self->_reasonType = 7;
      [(UIDictationController *)self stopDictation];
    }

    else
    {
      [(UIDictationController *)self cancelDictation];
    }

    v6 = +[UIKeyboardImpl activeInstance];
    v5 = [(UIDictationController *)self keyboardInputModeToReturn];
    [v6 setKeyboardInputMode:v5 userInitiated:0];
  }
}

- (void)switchToDictationInputMode
{
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 forwardDictationEvent_switchToDictationInputModeWithOptions:0];
  }

  else
  {

    [(UIDictationController *)self switchToDictationInputModeWithTouch:0 options:0];
  }
}

- (void)switchToDictationInputModeWithOptions:(id)a3
{
  v5 = a3;
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 forwardDictationEvent_switchToDictationInputModeWithOptions:v5];
  }

  else
  {
    [(UIDictationController *)self switchToDictationInputModeWithTouch:0 options:v5];
  }
}

- (_NSRange)_getRangeOfString:(id)a3 inDocumentText:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  v7 = [v5 mutableCopy];

  if (qword_1ED498818 != -1)
  {
    dispatch_once(&qword_1ED498818, &__block_literal_global_925_0);
  }

  v8 = qword_1ED498810;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __58__UIDictationController__getRangeOfString_inDocumentText___block_invoke_940;
  v19 = &unk_1E7114F28;
  v20 = v6;
  v21 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:&v16];
  v11 = [v10 rangeOfString:{v9, v16, v17, v18, v19}];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

void __58__UIDictationController__getRangeOfString_inDocumentText___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE313A8;
  v2[1] = &unk_1EFE313D8;
  v3[0] = &unk_1EFE313C0;
  v3[1] = &unk_1EFE313C0;
  v2[2] = &unk_1EFE313F0;
  v2[3] = &unk_1EFE31420;
  v3[2] = &unk_1EFE31408;
  v3[3] = &unk_1EFE31408;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_1ED498810;
  qword_1ED498810 = v0;
}

uint64_t __58__UIDictationController__getRangeOfString_inDocumentText___block_invoke_940(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _replaceOccurrencesOfCharacter:objc_msgSend(v7 withCharacter:{"longValue"), objc_msgSend(v6, "longValue")}];
  v8 = *(a1 + 40);
  v9 = [v7 longValue];

  v10 = [v6 longValue];

  return [v8 _replaceOccurrencesOfCharacter:v9 withCharacter:v10];
}

- (void)cancelDictation
{
  v63 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v55 = +[UIKeyboardImpl activeInstance];
    [v55 forwardDictationEvent_cancelDictation];
  }

  else
  {
    [(UIDictationController *)self resetAdaptiveDeleteActivationLogic];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController cancelDictation]"];

    if ([(UIDictationController *)self isIgnoringDocumentChanges]&& !self->_deferredCancellationRequested && !self->_recievingResults)
    {
      v3 = UIKeyboardGetCurrentInputMode();
      v4 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    v5 = _UIDictationControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(UIDictationController *)self state];
      reasonType = self->_reasonType;
      v8 = [objc_opt_class() UIDictationStartStopReasonTypeDescription:reasonType];
      *buf = 136315906;
      *&buf[4] = "[UIDictationController cancelDictation]";
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 2048;
      *&buf[20] = reasonType;
      *&buf[28] = 2112;
      *&buf[30] = v8;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s State: %d, reason: %lu, reason string: %@", buf, 0x26u);
    }

    if ([(UIDictationController *)self state]&& (![(UIDictationController *)self isIgnoringDocumentChanges]|| self->_deferredCancellationRequested))
    {
      v9 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];

      if (v9)
      {
        v10 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
        v11 = 3;
      }

      else
      {
        v12 = [(UIDictationController *)self detectedLanguage];

        if (v12)
        {
          v10 = [(UIDictationController *)self detectedLanguage];
          v11 = 4;
        }

        else
        {
          v13 = [(UIDictationController *)self initialDictationLanguage];

          if (v13)
          {
            v10 = [(UIDictationController *)self initialDictationLanguage];
            v11 = [(UIDictationController *)self dictationSourceType];
          }

          else
          {
            v11 = 0;
            v10 = &stru_1EFB14550;
          }
        }
      }

      v14 = [objc_opt_class() UIDictationLanguageSourceType:v11];
      v15 = [getAFAnalyticsClass() sharedAnalytics];
      v60[0] = @"cancelDictation";
      v16 = [objc_opt_class() UIDictationStartStopReasonTypeDescription:{-[UIDictationController reasonType](self, "reasonType")}];
      v61[0] = v16;
      v60[1] = @"dictationState";
      v17 = [objc_opt_class() stringForState:{-[UIDictationController state](self, "state")}];
      v61[1] = v17;
      v60[2] = @"isReceivingResults";
      v18 = [(UIDictationController *)self isRecievingResults];
      v19 = MEMORY[0x1E695E110];
      v20 = MEMORY[0x1E695E118];
      if (v18)
      {
        v21 = MEMORY[0x1E695E118];
      }

      else
      {
        v21 = MEMORY[0x1E695E110];
      }

      v61[2] = v21;
      v60[3] = @"lastRecognitionText";
      v22 = [(UIDictationController *)self lastRecognitionText];
      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v61[3] = v23;
      v60[4] = @"dictationLanguage";
      v60[5] = @"dictationLanguageSource";
      v61[4] = v10;
      v61[5] = v14;
      v60[6] = @"keyboardLocaleIdentifier";
      v24 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
      v61[6] = v24;
      v60[7] = @"dictationUIInteractionIdentifier";
      v25 = [(UIDictationController *)self interactionIdentifier];
      v26 = v25;
      v27 = &stru_1EFB14550;
      if (v25)
      {
        v27 = v25;
      }

      v61[7] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:8];
      [v15 logEventWithType:1403 context:v28];

      v56 = 0;
      v57 = &v56;
      v58 = 0x2050000000;
      v29 = getSISchemaDictationEndPointCancelClass_softClass;
      v59 = getSISchemaDictationEndPointCancelClass_softClass;
      if (!getSISchemaDictationEndPointCancelClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSISchemaDictationEndPointCancelClass_block_invoke;
        *&buf[24] = &unk_1E70F2F20;
        *&buf[32] = &v56;
        __getSISchemaDictationEndPointCancelClass_block_invoke(buf);
        v29 = v57[3];
      }

      v30 = v29;
      _Block_object_dispose(&v56, 8);
      v31 = objc_alloc_init(v29);
      [v31 setDictationEndPointType:{objc_msgSend(objc_opt_class(), "UIDictationStartStopReasonToInstrumentationDictationEndPointType:", self->_reasonType)}];
      [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v31];
      self->_deferredCancellationRequested = 0;
      v32 = +[UIKeyboardImpl activeInstance];
      v33 = [v32 inputDelegateManager];

      v34 = [v33 hasAsyncCapableInputDelegate];
      v35 = [v33 keyInputDelegate];

      if (v35)
      {
        v36 = v34;
      }

      else
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        v37 = [(UIDictationController *)self lastHypothesis];
        if (v37)
        {
          v38 = [(UIDictationController *)self targetHypothesis];
          v39 = v38 == 0;

          if (!v39)
          {
            v40 = [(UIDictationController *)self lastHypothesis];
            v41 = [(UIDictationController *)self _hypothesisRangeFromSelectionRange:0 inputDelegateManager:v33 forHypothesis:v40];

            v42 = +[UIDictationLandingView activeInstance];
            v43 = [v42 superview];
            v44 = v43 == 0;

            if (!v44)
            {
              v45 = [(UIDictationController *)self _rangeByExtendingRange:v41 backward:+[UIDictationLandingView forward:"fallbackPlaceholderLength"]inputDelegateManager:0, v33];

              v41 = v45;
            }

            v46 = [v33 textInRange:v41];
            if (v46)
            {
              v47 = [(UIDictationController *)self lastHypothesis];
              if (v47)
              {
                v48 = [(UIDictationController *)self lastHypothesis];
                v49 = [(UIDictationController *)self _getRangeOfString:v48 inDocumentText:v46]== 0x7FFFFFFFFFFFFFFFLL;

                if (v49)
                {
                  [(UIDictationController *)self setTargetHypothesis:0];
                  [(UIDictationController *)self setLastHypothesis:0];
                  [(UIDictationController *)self setPendingEdits:0];
                  [(UIDictationController *)self _stopStreamingAnimation];
                }
              }
            }
          }
        }
      }

      [(UIDictationController *)self _setupHypothesisAsFinalResults];
      if ([(UIDictationController *)self state]== 2)
      {
        v50 = [v33 _textSelectingContainer];
        if (objc_opt_respondsToSelector())
        {
          [v50 dictationRecordingDidEnd];
        }

        if (!self->_recievingResults)
        {
          v51 = UIKeyboardGetCurrentInputMode();
          v52 = TIStatisticGetKeyForInputMode();
          TIStatisticScalarIncrement();
        }
      }

      v53 = [(UIDictationController *)self dictationConnection];
      [v53 cancelSpeech];

      [(UIDictationController *)self setState:0];
      [(UIDictationController *)self cancelRecordingLimitTimer];
      [(UIDictationController *)self switchToKeyboardInputModeIfNeeded];
      [(UIDictationController *)self postNotificationName:@"UIDictationControllerDictationDidFinish" userInfo:0];
      [(UIDictationController *)self setCurrentKeyboardPrimaryLanguage:&stru_1EFB14550];
      v54 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[UIDictationController cancelDictation]";
        _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping if necessary", buf, 0xCu);
      }

      [(UIDictationController *)self _endUndoGroupingIfNecessary];
    }
  }
}

- (void)cancelDictationForTextStoreChangesInResponder:(id)a3
{
  v7 = a3;
  if (![(UIDictationController *)self isDetectingUtterances]&& ![(UIDictationController *)self isIgnoringDocumentChanges])
  {
    if (+[UIDictationController isRunning])
    {
      v4 = +[UIKeyboardImpl activeInstance];
      v5 = [v4 inputDelegateManager];
      v6 = [v5 delegateAsResponder];

      if (v6 == v7)
      {
        self->_deferredCancellationRequested = 1;
        [(UIDictationController *)self _startStreamingAnimations];
      }
    }
  }
}

- (void)stopDictation:(BOOL)a3
{
  v3 = a3;
  v52 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v43 = +[UIKeyboardImpl activeInstance];
    [v43 forwardDictationEvent_stopDictation:v3];

    return;
  }

  [(UIDictationController *)self resetAdaptiveDeleteActivationLogic];
  v5 = +[UIDictationController sharedInstance];
  if ([v5 reasonType] == 15)
  {

LABEL_8:
    v8 = +[UIDictationController sharedInstance];
    v9 = [v8 dictationTipController];
    [v9 triggerModelessInputTipDictationStoppedSignal];

    goto LABEL_9;
  }

  v6 = +[UIDictationController sharedInstance];
  v7 = [v6 reasonType];

  if (v7 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([(UIDictationController *)self state]== 1 || [(UIDictationController *)self state]== 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController stopDictation:]"];

    v10 = _UIDictationControllerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(UIDictationController *)self state];
      reasonType = self->_reasonType;
      v13 = [objc_opt_class() UIDictationStartStopReasonTypeDescription:reasonType];
      *buf = 136315906;
      *&buf[4] = "[UIDictationController stopDictation:]";
      *&buf[12] = 1024;
      *&buf[14] = v11;
      *&buf[18] = 2048;
      *&buf[20] = reasonType;
      *&buf[28] = 2112;
      *&buf[30] = v13;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s State: %d, reason: %lu, reason string: %@", buf, 0x26u);
    }

    v14 = +[UIKeyboardImpl activeInstance];
    v15 = [v14 inputDelegateManager];
    v16 = [v15 _textSelectingContainer];

    if (objc_opt_respondsToSelector())
    {
      [v16 dictationRecordingDidEnd];
    }

    if ((self->_reasonType | 8) == 0x19)
    {
      v44 = self->_lastHypothesis;
    }

    else
    {
      v44 = 0;
    }

    if ([objc_opt_class() viewMode])
    {
      v17 = +[UIDictationUtilities _isUsingLargeFormatDictationUI];
      v18 = 2;
      if (!v17)
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v42 = v18;
    v19 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];

    if (v19)
    {
      v20 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
      v21 = 3;
    }

    else
    {
      v22 = [(UIDictationController *)self detectedLanguage];

      if (v22)
      {
        v20 = [(UIDictationController *)self detectedLanguage];
        v21 = 4;
      }

      else
      {
        v23 = [(UIDictationController *)self initialDictationLanguage];

        if (v23)
        {
          v20 = [(UIDictationController *)self initialDictationLanguage];
          v21 = [(UIDictationController *)self dictationSourceType];
        }

        else
        {
          v21 = 0;
          v20 = &stru_1EFB14550;
        }
      }
    }

    v24 = +[UIDictationController sharedInstance];
    [v24 dismissSoftwareKeyboardIfNeeded];

    v25 = +[UIKeyboardImpl activeInstance];
    v26 = [v25 _hasMarkedText];

    if (v26)
    {
      v27 = +[UIKeyboardImpl activeInstance];
      [v27 acceptAutocorrectionWithCompletionHandler:0];
    }

    v28 = [objc_opt_class() UIDictationLanguageSourceType:v21];
    v29 = [getAFAnalyticsClass() sharedAnalytics];
    v49[0] = @"stopDictation";
    v30 = [UIDictationController UIDictationStartStopReasonTypeDescription:self->_reasonType];
    v50[0] = v30;
    v50[1] = v20;
    v49[1] = @"dictationLanguage";
    v49[2] = @"dictationLanguageSource";
    v50[2] = v28;
    v49[3] = @"keyboardLocaleIdentifier";
    v31 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
    v50[3] = v31;
    v49[4] = @"dictationUIInteractionIdentifier";
    v32 = [(UIDictationController *)self interactionIdentifier];
    v33 = v32;
    v34 = &stru_1EFB14550;
    if (v32)
    {
      v34 = v32;
    }

    v50[4] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:5];
    [v29 logEventWithType:1405 context:v35];

    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v36 = getSISchemaDictationEndPointStopClass_softClass;
    v48 = getSISchemaDictationEndPointStopClass_softClass;
    if (!getSISchemaDictationEndPointStopClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSISchemaDictationEndPointStopClass_block_invoke;
      *&buf[24] = &unk_1E70F2F20;
      *&buf[32] = &v45;
      __getSISchemaDictationEndPointStopClass_block_invoke(buf);
      v36 = v46[3];
    }

    v37 = v36;
    _Block_object_dispose(&v45, 8);
    v38 = objc_alloc_init(v36);
    [v38 setDictationEndPointType:{objc_msgSend(objc_opt_class(), "UIDictationStartStopReasonToInstrumentationDictationEndPointType:", self->_reasonType)}];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v38];
    v39 = [(UIDictationController *)self dictationConnection];
    v40 = [UIDictationController UIDictationStartStopReasonTypeDescription:self->_reasonType];
    [v39 stopSpeech:v40 activationType:v42 result:v44 suppressAlert:v3 ^ 1];

    v41 = [(UIDictationController *)self dictationTipController];
    [v41 setDismissalReasonType:1];

    [(UIDictationController *)self setState:3];
    [(UIDictationController *)self cancelRecordingLimitTimer];
    [(UIDictationController *)self setCurrentKeyboardPrimaryLanguage:&stru_1EFB14550];
    if ([objc_opt_class() viewMode] == 6)
    {
      [(UIDictationController *)self _displaySecureContentsAsPlainText:0 afterDelay:2.0];
    }

    [(UIDictationController *)self clearKeyboardTrackpadModeIfNeeded];
  }
}

- (void)stopDictationIgnoreFinalizePhrases:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v13 = +[UIKeyboardImpl activeInstance];
    [v13 forwardDictationEvent_stopDictationIgnoreFinalizePhrases];
  }

  else
  {
    [(UIDictationController *)self setIgnoreFinalizePhrases:1];
    if (+[UIDictationController isRunning])
    {
      v5 = [(UIDictationController *)self specificReasonTypeFromApplicationDuringDictation];
    }

    else
    {
      v5 = 18;
    }

    [(UIDictationController *)self setReasonType:v5];
    v6 = _UIDictationControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(UIDictationController *)self lastHypothesis];
      *buf = 136315394;
      v15 = "[UIDictationController stopDictationIgnoreFinalizePhrases:]";
      v16 = 2112;
      v17 = v12;
      _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "%s Last hypothesis: %@", buf, 0x16u);
    }

    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 textInputTraits];
    v9 = [v8 keyboardType];

    if (v9 == 126)
    {
      v10 = UIKeyboardGetCurrentInputMode();
      v11 = TIInputModeGetBaseLanguage();
      [(UIDictationController *)self setLastMessageKeyboardLanguage:v11];
    }

    [(UIDictationController *)self stopDictation:v3];
    [(UIDictationController *)self _setFinalResultHandler:0];
  }
}

- (void)stopAndCancelDictationWithReasonType:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    v5 = _UIDictationControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[UIDictationController stopAndCancelDictationWithReasonType:]";
      v8 = 2048;
      v9 = a3;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s reasonType=%lu", &v6, 0x16u);
    }
  }

  [(UIDictationController *)self setReasonType:a3];
  [(UIDictationController *)self stopDictation];
  [(UIDictationController *)self cancelDictation];
}

- (void)cancelDictationForResponderIfNeeded:(id)a3 wantsKeyboard:(BOOL)a4 isPencil:(BOOL)a5
{
  v5 = a5;
  v45 = a3;
  v8 = off_1E70EA000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v45;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 window];
  if ([v11 _isTextEffectsWindow])
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v13 = [v12 inputViews];
    v14 = [v13 inputAccessoryView];
    v15 = [v10 isDescendantOfView:v14];

    if (!v15)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  if (+[UIDictationController isRunningInTypeAndTalkMode](UIDictationController, "isRunningInTypeAndTalkMode") && (([v45 isFirstResponder] & 1) != 0 || a4 || v5))
  {
    if ([v45 isFirstResponder])
    {
      v22 = +[UIKeyboardImpl activeInstance];
      [v22 updateIdleDetection:4];
    }
  }

  else if (+[UIDictationController isRunning])
  {
    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_67;
    }

    if (qword_1ED498820 != -1)
    {
      dispatch_once(&qword_1ED498820, &__block_literal_global_961_0);
    }

    if ((byte_1ED4987D4 & 1) == 0)
    {
LABEL_67:
      v16 = [v45 _responderWindow];
      v17 = [v16 _isTextEffectsWindow];

      if ((v17 & 1) == 0)
      {
        if (![UIApp _isSpringBoard] || (objc_msgSend(v45, "_responderWindow"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_isSystemGestureWindow"), v18, (v19 & 1) == 0))
        {
          v20 = 0x1E70E9000uLL;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v45 _isMicButton];
          }

          else
          {
            v21 = 0;
          }

          v23 = [v10 _disableDictationTouchCancellation];
          if (+[UIDictationController isRunningInTypeAndTalkMode]|| (v23 & 1) != 0 || (v21 & 1) != 0)
          {
            v24 = +[UIKeyboardImpl activeInstance];
            v25 = [v24 inputDelegateManager];
            v26 = [v25 delegateAsResponder];

            v27 = +[UIKeyboardImpl activeInstance];
            v28 = [v27 inputDelegateManager];
            v29 = [v28 textInputView];

            v30 = v45;
            if (v45)
            {
              v31 = &qword_1ED498000;
              v32 = &qword_1ED498000;
              v33 = &qword_1ED498000;
              while (1)
              {
                v45 = v30;
                if (v30 == v26 || v30 == v29)
                {
                  break;
                }

                if (v10 && ([v10 _disableDictationTouchCancellation] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v45, "_isMicButton") & 1) != 0)
                {
                  +[UIDictationController isRunningInTypeAndTalkMode];
                  goto LABEL_57;
                }

                if (v31[261] != -1)
                {
                  dispatch_once(&qword_1ED498828, &__block_literal_global_968);
                }

                if ([v45 _conformsToProtocolUIKeyInput])
                {
                  if (qword_1ED498850 && (objc_opt_isKindOfClass() & 1) != 0)
                  {
LABEL_54:
                    v43 = +[UIDictationController activeInstance];
                    [v43 resetDictation];

                    break;
                  }

                  break;
                }

                if (v32[262] && (objc_opt_isKindOfClass() & 1) != 0 || v33[264] && (objc_opt_isKindOfClass() & 1) != 0 || qword_1ED498848 && (objc_opt_isKindOfClass() & 1) != 0 || ([objc_opt_class() isEventFromMessagesSendButton:v45 inspectResponderChain:0] & 1) != 0)
                {
                  break;
                }

                if (qword_1ED498838 && (objc_opt_isKindOfClass() & 1) != 0)
                {
                  goto LABEL_54;
                }

                v34 = [v45 nextResponder];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = self;
                  v36 = v8;
                  v37 = v29;
                  v38 = v26;
                  v39 = v31;
                  v40 = v32;
                  v41 = v20;
                  v42 = v34;

                  v10 = v42;
                  v20 = v41;
                  v32 = v40;
                  v31 = v39;
                  v26 = v38;
                  v29 = v37;
                  v8 = v36;
                  self = v35;
                  v33 = &qword_1ED498000;
                }

                v30 = v34;
                if (!v34)
                {
                  goto LABEL_50;
                }
              }

              if (+[UIDictationController isRunningInTypeAndTalkMode])
              {
                v44 = +[UIKeyboardImpl activeInstance];
                [v44 updateIdleDetection:4];
              }
            }

            else
            {
LABEL_50:
              [(UIDictationController *)self setReasonType:20];
              [(UIDictationController *)self cancelDictation];
              v45 = 0;
            }

LABEL_57:
          }

          else if (([objc_opt_class() isEventFromMessagesSendButton:v45 inspectResponderChain:1] & 1) == 0)
          {
            [(UIDictationController *)self stopAndCancelDictationWithReasonType:20];
            [(UIDictationController *)self resignFirstResponderWhenIdleIfNeeded];
          }
        }
      }
    }
  }

LABEL_58:
}

void __84__UIDictationController_cancelDictationForResponderIfNeeded_wantsKeyboard_isPencil___block_invoke()
{
  v1 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v0 = [v1 preferencesActions];
  byte_1ED4987D4 = [v0 BOOLForPreferenceKey:@"DictationDisableTapAnywhereToDisable"];
}

Class __84__UIDictationController_cancelDictationForResponderIfNeeded_wantsKeyboard_isPencil___block_invoke_2()
{
  qword_1ED498830 = NSClassFromString(&cfstr_Emkoverlayview.isa);
  qword_1ED498838 = NSClassFromString(&cfstr_Nuicontainerst.isa);
  qword_1ED498840 = NSClassFromString(&cfstr_Mfmailcomposet.isa);
  qword_1ED498848 = NSClassFromString(&cfstr_Mfcomposesubje.isa);
  result = NSClassFromString(&cfstr_Cncomposerecip.isa);
  qword_1ED498850 = result;
  return result;
}

- (void)stopAndCancelDictationIfNeededWithReasonType:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    v5 = _UIDictationControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[UIDictationController stopAndCancelDictationIfNeededWithReasonType:]";
      v8 = 1024;
      v9 = [(UIDictationController *)self isFinalizingRecognizedUtterance];
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s isFinalizingRecognizedUtterance=%d", &v6, 0x12u);
    }
  }

  if (![(UIDictationController *)self isFinalizingRecognizedUtterance])
  {
    [(UIDictationController *)self stopAndCancelDictationWithReasonType:a3];
  }
}

- (void)stopDictation
{
  self->_ignoreUserInteraction = 1;
  [(UIDictationController *)self stopDictation:1];
  self->_ignoreUserInteraction = 0;
}

- (void)stopDictationAndResignFirstResponder
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _UIDictationControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIDictationController stopDictationAndResignFirstResponder]";
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(UIDictationController *)self setShouldStayInDictationInputMode:1];
  [(UIDictationController *)self stopAndCancelDictationWithReasonType:18];
  v4 = +[UIKeyboardImpl sharedInstance];
  v5 = [v4 inputDelegate];
  [v5 resignFirstResponder];
}

- (void)forceDictationReturnToKeyboardInputMode
{
  v3 = +[UIDictationView sharedInstance];
  v4 = [v3 switchingLanguage];

  if ((v4 & 1) == 0 && [(UIDictationController *)self shouldStayInDictationInputMode])
  {
    [(UIDictationController *)self setShouldStayInDictationInputMode:0];
    v6 = +[UIKeyboardImpl activeInstance];
    v5 = [(UIDictationController *)self keyboardInputModeToReturn];
    [v6 setKeyboardInputMode:v5 userInitiated:0];
  }
}

- (void)performIgnoringDocumentChanges:(id)a3
{
  ++self->_updatingDocument;
  (*(a3 + 2))(a3, a2);
  --self->_updatingDocument;
}

- (void)performIgnoringRTIChanges:(id)a3
{
  ++self->_ignoreRTIChanges;
  (*(a3 + 2))(a3, a2);
  --self->_ignoreRTIChanges;
}

+ (id)streamingHypothesisForPhrases:(id)a3
{
  v3 = [a3 copy];
  [v3 setFromKeyboard:0];
  [v3 setTransform:0];
  [v3 setUseServerCapitalization:1];
  v4 = [v3 bestText];

  return v4;
}

- (__CFString)resultTransformForLanguageModel:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [(UIDictationController *)self language];
    v7 = [v5 keyboardLanguageForDictationLanguage:v6];

    if ([v7 isEqualToString:@"zh_Hans"])
    {
      v8 = @"Traditional-Simplified";
      if (([v4 isEqualToString:@"zh_HK"] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"zh_TW"))
      {
        v8 = 0;
      }
    }

    else if ([v7 isEqualToString:@"zh_Hant"])
    {
      if ([v4 hasSuffix:@"CN"])
      {
        v8 = @"Simplified-Traditional";
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)logDidAcceptDictationResult:(id)a3 reasonType:(unint64_t)a4
{
  v6 = a3;
  v8 = [(UIDictationController *)self dictationConnection];
  v7 = [UIDictationController UIDictationStartStopReasonTypeDescription:a4];
  [v8 logDidAcceptDictationResult:v6 reason:v7 result:self->_lastRecognitionText correctionIdentifier:self->_lastCorrectionIdentifier];
}

- (void)logDidAcceptReplacement:(id)a3 replacementLanguageCode:(id)a4 originalText:(id)a5 correctionIdentifier:(id)a6 interactionIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(UIDictationController *)self dictationConnection];
  [v17 logDidAcceptReplacement:v16 replacementLanguageCode:v15 originalText:v14 correctionIdentifier:v13 interactionIdentifier:v12];
}

- (void)didShowAlternatives:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5 instrumentationContext:(id)a6 dictationLanguage:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [objc_opt_class() instrumentationDictationAlternativesViewedWithInstrumentationContext:v13 alternatives:v16 dictationLanguage:v12];

  v17 = [(UIDictationController *)self dictationConnection];
  [v17 logDidShowAlternatives:v16 correctionIdentifier:v15 interactionIdentifier:v14];
}

- (void)logAlternativeSelected:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIDictationController *)self dictationConnection];
  [v11 logDidSelectAlternative:v10 correctionIdentifier:v9 interactionIdentifier:v8];
}

- (void)insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__UIDictationController_insertSerializedDictationResult_withCorrectionIdentifier___block_invoke;
    v19[3] = &unk_1E70F6228;
    v19[4] = self;
    v9 = v7;
    v20 = v9;
    v10 = v8;
    v21 = v10;
    [(UIDictationController *)self performIgnoringDocumentChanges:v19];
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 inputDelegateManager];
    v13 = [v12 inputSystemSourceSession];

    if (v13 && ![(UIDictationController *)self isIgnoringRTIChanges])
    {
      v14 = [v13 textOperations];
      v15 = [MEMORY[0x1E695DF90] dictionary];
      if (v9)
      {
        v16 = [v9 copy];
        [v15 setObject:v16 forKeyedSubscript:@"dictationResult"];

        v17 = NSStringFromSelector(a2);
        [v15 setObject:v17 forKeyedSubscript:@"selector"];

        if (v10)
        {
          [v15 setObject:v10 forKeyedSubscript:@"correctionIdentifier"];
        }

        [v14 setCustomInfoType:0x1EFB7C8F0];
        [v14 setCustomInfo:v15];
        [v13 flushOperations];
        [(UIDictationController *)self forceOOPDocumentStateSync];
      }
    }
  }

  else
  {
    [(UIDictationController *)self _insertSerializedDictationResult:v7 withCorrectionIdentifier:v8];
  }

  v18 = +[UIKeyboardImpl activeInstance];
  [v18 touchDictationMenuTimer];
}

- (void)_insertSerializedDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegateManager];
  v10 = [v9 keyInputDelegate];

  v11 = [v8 inputDelegateManager];
  v51 = [v11 privateInputDelegate];

  v12 = [v8 inputDelegateManager];
  v13 = [v12 _textSelectingContainer];

  v14 = _UIDictationControllerLog();
  v52 = v13;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v7;
    v47 = [v6 showMultilingualAlternatives];
    v15 = [v6 lowConfidenceAboutLanguageDetection];
    v16 = [v6 allowsAlternatives];
    [v6 multilingualAlternatives];
    v18 = v17 = v6;
    v19 = self;
    v20 = [v18 count];
    v21 = [v17 bestTextForMultilingualAlternatives];
    *buf = 136316418;
    v59 = "[UIDictationController _insertSerializedDictationResult:withCorrectionIdentifier:]";
    v60 = 1024;
    v61 = v47;
    v62 = 1024;
    v63 = v15;
    v64 = 1024;
    v65 = v16;
    v66 = 2048;
    v67 = v20;
    self = v19;
    v68 = 2048;
    v69 = [v21 count];
    v7 = v49;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s showMultilingualAlternatives=%d, lowConfidenceAboutLanguageDetection=%d, allowsAlternatives=%d, multilingualAlternatives count=%lu bestTextForMultilingualAlternatives=%lu", buf, 0x32u);

    v13 = v52;
    v6 = v17;
  }

  [(UIDictationController *)self instrumentationDictationTranscriptionMetadataEmitInstrumentationWithDictationResult:v6];
  v22 = v51;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Inserting into private input delegate: %@ public input delegate: %@", "-[UIDictationController _insertSerializedDictationResult:withCorrectionIdentifier:]", v51, v13];

  [v6 bestText];
  v24 = v23 = v13;
  [(UIDictationController *)self setLastRecognitionText:v24];

  [(UIDictationController *)self setLastCorrectionIdentifier:v7];
  if (!+[UIDictationController viewMode])
  {
    v25 = [v6 bestResults];
    v26 = [v25 bestText];
    [(UIDictationController *)self setLastRecognitionText:v26];

    v27 = [v8 inputDelegate];
    [v27 insertDictationResult:v25 withCorrectionIdentifier:v25];

    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v6 dictationPhraseArray];
    [v23 insertDictationResult:v25];
LABEL_7:

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    [v51 insertDictationResult:v6 withCorrectionIdentifier:v7];
  }

  else
  {
    v33 = [v8 inputDelegateManager];
    v34 = [v33 hasAsyncCapableInputDelegate];

    if (!v34)
    {
      v25 = [v6 bestText];
      [v10 insertText:v25];
      goto LABEL_7;
    }

    v46 = self;
    v48 = v6;
    v50 = v7;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v35 = [v6 dictationPhraseArray];
    v36 = [v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v54;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v54 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v53 + 1) + 8 * i);
          v41 = [v40 alternativeInterpretations];
          v42 = [v41 count];

          if (v42)
          {
            v43 = [v8 inputDelegateManager];
            v44 = [v40 text];
            v45 = [v40 alternativeInterpretations];
            [v43 insertText:v44 alternatives:v45 style:{objc_msgSend(v40, "style")}];
          }

          else
          {
            v43 = [v40 text];
            [v10 insertText:v43];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v37);
    }

    v6 = v48;
    v7 = v50;
    self = v46;
    v22 = v51;
  }

LABEL_8:
  if (![(UIDictationController *)self hasInsertedAtLeastOneSerializedDictationResult])
  {
    [(UIDictationController *)self setHasInsertedAtLeastOneSerializedDictationResult:1];
  }

  v28 = [v6 bestText];
  selectedTextAtStart = self->_selectedTextAtStart;
  v30 = [(UIDictationController *)self language];
  v31 = self;
  v32 = v30;
  [UIKBAnalyticsDispatcher didInsertText:v28 relativeRangeBefore:v31->_relativeRangeBefore.location selectedTextBefore:v31->_relativeRangeBefore.length withLanguage:selectedTextAtStart, v30];

  [v8 assertTextForDictation];
  [v8 syncDocumentStateToInputDelegate];
  [v8 _requestInputManagerSync];
}

- (void)_deleteBackwardIntoText
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegateManager];
  v5 = [v4 keyInputDelegate];
  [v2 stringWithFormat:@"%s Deleting text from input delegate: %@", "-[UIDictationController _deleteBackwardIntoText]", v5];

  v7 = +[UIKeyboardImpl activeInstance];
  v6 = [v7 inputDelegateManager];
  [v6 deleteBackward];
}

- (void)_clearExistingText
{
  v3 = +[UIKeyboardImpl activeInstance];
  v11 = [v3 inputDelegateManager];

  v4 = MEMORY[0x1E696AEC0];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 inputDelegateManager];
  v7 = [v6 keyInputDelegate];
  [v4 stringWithFormat:@"%s Clearing text from input delegate: %@", "-[UIDictationController _clearExistingText]", v7];

  [(UIDictationController *)self setCanUndoOrRedo:0];
  v8 = [v11 beginningOfDocument];
  v9 = [v11 endOfDocument];
  v10 = [v11 textRangeFromPosition:v8 toPosition:v9];

  [v11 replaceRange:v10 withText:&stru_1EFB14550];
  [(UIDictationController *)self setCanUndoOrRedo:1];
}

- (void)finalizeDictationRecognitionWithPhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5 secureInput:(BOOL)a6 finalResult:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (self->_ignoreFinalizePhrases)
  {
    v15 = _UIDictationControllerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[UIDictationController finalizeDictationRecognitionWithPhrases:languageModel:correctionIdentifier:secureInput:finalResult:]";
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "%s Finalize phrases ignored", buf, 0xCu);
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      [(UIDictationController *)self setShadowState:0];
    }

    else
    {
      [(UIDictationController *)self setState:0];
    }

    goto LABEL_30;
  }

  [(UIDictationController *)self setCanUndoOrRedo:0];
  v16 = +[UIKeyboardImpl activeInstance];
  v17 = [v16 inputDelegateManager];
  v18 = [v17 asyncCapableInputDelegate];

  v19 = [v16 inputDelegateManager];
  v20 = v19;
  if (v18)
  {
    [v19 asyncCapableInputDelegate];
  }

  else
  {
    [v19 asyncWebKitInteractionDelegate];
  }
  v21 = ;

  if (objc_opt_respondsToSelector())
  {
    [v21 willInsertFinalDictationResult];
  }

  v45 = v13;
  [(UIDictationController *)self setSuppressDelegateTextInputDidChangeNotifications:1, v14];
  v22 = [(UIDictationController *)self lastHypothesis];
  [(UIDictationController *)self updateLastHypothesis:v22 WithNewHypothesis:&stru_1EFB14550];

  [(UIDictationController *)self setSuppressDelegateTextInputDidChangeNotifications:0];
  v23 = +[UIKeyboardInputModeController sharedInputModeController];
  v24 = [v23 delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = +[UIKeyboardInputModeController sharedInputModeController];
    v27 = [v26 delegate];
    [v27 dictationRequestDidSucceed];
  }

  v28 = [v12 bestText];
  if ([v28 length])
  {
    v29 = [UIDictationUtilities needsTrailingSpaceForPhrases:v12 secureInput:v8];
  }

  else
  {
    v29 = 0;
  }

  v30 = [v12 bestText];
  if ([v30 length])
  {
    v31 = [UIDictationUtilities needsLeadingSpaceForPhrases:v12 secureInput:v8];

    if (v31)
    {
      [(UIDictationController *)self setSuppressDelegateTextInputDidChangeNotifications:1];
      v32 = [(UIDictationController *)self lastHypothesis];
      v33 = @" ";
      [(UIDictationController *)self updateLastHypothesis:v32 WithNewHypothesis:@" "];

      [(UIDictationController *)self setSuppressDelegateTextInputDidChangeNotifications:0];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v33 = &stru_1EFB14550;
LABEL_22:
  [(UIDictationController *)self setCanUndoOrRedo:1];
  v34 = [(UIDictationController *)self resultTransformForLanguageModel:v13];
  v35 = [v12 copy];
  [v35 setFromKeyboard:1];
  [v35 setTransform:v34];
  if (!v7 && [(UIDictationController *)self hasInsertedAtLeastOneSerializedDictationResult])
  {
    v8 = 1;
  }

  [v35 setUseServerCapitalization:v8];
  [v35 setAddTrailingSpace:v29];
  [v35 setIsFinalResult:v7];
  v36 = [v35 bestText];
  v37 = [(__CFString *)v33 stringByAppendingString:v36];

  v38 = [(UIDictationController *)self visibleContextBeforeInputAtCommandExecution];
  v39 = v38;
  if (!v38)
  {
    v38 = &stru_1EFB14550;
  }

  v40 = [(__CFString *)v38 stringByAppendingString:v37];
  [(UIDictationController *)self setVisibleContextBeforeInputAtCommandExecution:v40];

  v14 = v44;
  [(UIDictationController *)self insertSerializedDictationResult:v35 withCorrectionIdentifier:v44];
  [v16 updateReturnKey:0];
  v41 = +[UIKeyboardInputModeController sharedInputModeController];
  v42 = +[UIKeyboardInputModeController sharedInputModeController];
  v43 = [v42 currentInputModeInPreference];
  [v41 updateLastUsedInputMode:v43];

  [(UIDictationController *)self setSelectionStartWasInitiallyAtParagraphBoundaryForAsyncDelegate:0];
  [(UIDictationController *)self setSelectionEndWasInitiallyAtParagraphBoundaryForAsyncDelegate:0];
  [(UIDictationController *)self setInitialPreviousCharacterForAsyncDelegate:0];
  [(UIDictationController *)self setInitialCharacterAfterSelectionForAsyncDelegate:0];
  self->_hasCheckedForLeadingSpaceOnce = 0;
  if (objc_opt_respondsToSelector())
  {
    [v21 didInsertFinalDictationResult];
  }

  [(UIDictationController *)self setIsProcessingInitialPhrasesForCurrentRequest:0];

  v13 = v45;
LABEL_30:
}

- (void)finishDictationRecognitionWithPhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5 secureInput:(BOOL)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_ignoreFinalizePhrases)
  {
    v13 = _UIDictationControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UIDictationController finishDictationRecognitionWithPhrases:languageModel:correctionIdentifier:secureInput:]";
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s Finalize phrases ignored", buf, 0xCu);
    }

    [(UIDictationController *)self setState:0];
  }

  else
  {
    v14 = [(UIDictationController *)self isRecievingResults];
    if ((v14 & 1) == 0)
    {
      v15 = [UIDictationController streamingHypothesisForPhrases:v10];
      if (![v15 length])
      {
        [(UIDictationController *)self cancelDictation];

        goto LABEL_18;
      }
    }

    if (v10)
    {
      v16 = [v10 phrases];
      v17 = [v16 count] == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = +[UIDictationLandingView sharedInstance];
    [v18 setWillInsertResult:!v17];

    if (v14)
    {
      v19 = [(UIDictationController *)self streamingOperations];
      v20 = [v19 isNotEmpty];

      if (v20)
      {
        v14 = 5;
      }

      else
      {
        v14 = 0;
      }
    }

    objc_initWeak(buf, self);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __110__UIDictationController_finishDictationRecognitionWithPhrases_languageModel_correctionIdentifier_secureInput___block_invoke;
    v24 = &unk_1E7114F50;
    objc_copyWeak(&v28, buf);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v29 = a6;
    [(UIDictationController *)self _setFinalResultHandler:&v21];
    if (v17)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Recognition succeeded, but there were no results returned.", "-[UIDictationController finishDictationRecognitionWithPhrases:languageModel:correctionIdentifier:secureInput:]", v21, v22, v23, v24, v25, v26];

      v14 = 6;
    }

    [(UIDictationController *)self setState:v14];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

LABEL_18:
}

void __110__UIDictationController_finishDictationRecognitionWithPhrases_languageModel_correctionIdentifier_secureInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained finalizeDictationRecognitionWithPhrases:*(a1 + 32) languageModel:*(a1 + 40) correctionIdentifier:*(a1 + 48) secureInput:*(a1 + 64) finalResult:1];
}

- (id)_voiceCommandGrammarParseCandidatesFromPackage:(id)a3 completeCommands:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UIDictationControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[UIDictationController _voiceCommandGrammarParseCandidatesFromPackage:completeCommands:]";
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s AFVoiceCommandGrammarParsePackage: %@", buf, 0x16u);
  }

  if (v5)
  {
    v22 = v5;
    v21 = [v5 nBestParses];
    v7 = [v21 firstObject];
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v7;
    v8 = [v7 parseCandidates];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if (([v13 isComplete] | !v4) == 1)
          {
            v14 = [v13 commandId];
            v15 = [v14 hasSuffix:@"Suppressor"];

            if ((v15 & 1) == 0)
            {
              v16 = [v13 commandId];
              v17 = [UIDictationController commandIdentifierWithStringIdentifier:v16];

              if (![(UIDictationController *)self shouldSuppressPartialResults]|| [(UIDictationController *)self isSelectionBasedCommand:v17])
              {
                [v23 addObject:v13];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v18 = [v23 copy];
    v5 = v22;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dictationConnection:(id)a3 finalizePhrases:(id)a4 languageModel:(id)a5 correctionIdentifier:(id)a6 secureInput:(BOOL)a7 finalResult:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v25 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:]"];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [v13 bestText];
  [v16 stringWithFormat:@"%s Best interpretation: '%@'", "-[UIDictationController dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:]", v17];

  v18 = +[UIDictationLandingView activeInstance];
  LODWORD(v17) = [v18 canStopLanding];

  if (v17)
  {
    v19 = +[UIDictationLandingView activeInstance];
    [v19 stopLanding];
  }

  v20 = [(UIDictationController *)self isDetectingUtterances];
  v21 = _UIDictationControllerLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      *buf = 136315138;
      v24 = "[UIDictationController dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%s Finalizing detected utterance", buf, 0xCu);
    }

    self->_finalizingRecognizedUtterance = 1;
    [(UIDictationController *)self finalizeDictationRecognitionWithPhrases:v13 languageModel:v14 correctionIdentifier:v15 secureInput:v9 finalResult:v8];
    [(UIDictationController *)self _stopStreamingAnimation];
    [(UIDictationController *)self setTargetHypothesis:0];
    [(UIDictationController *)self setLastHypothesis:0];
    [(UIDictationController *)self setPendingEdits:0];
    self->_finalizingRecognizedUtterance = 0;
  }

  else
  {
    if (v22)
    {
      *buf = 136315138;
      v24 = "[UIDictationController dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%s Finalizing dictation result", buf, 0xCu);
    }

    [(UIDictationController *)self finishDictationRecognitionWithPhrases:v13 languageModel:v14 correctionIdentifier:v15 secureInput:v9];
  }

  self->_recievingResults = 0;
}

- (void)_stopStreamingAnimation
{
  [(CADisplayLink *)self->_streamingAnimationDisplayLink invalidate];
  streamingAnimationDisplayLink = self->_streamingAnimationDisplayLink;
  self->_streamingAnimationDisplayLink = 0;

  self->_streamingAnimationActive = 0;
}

- (void)_startStreamingAnimations
{
  if (!+[UIKeyboard usesInputSystemUI]&& !self->_streamingAnimationActive)
  {
    self->_streamingAnimationActive = 1;
    v3 = [objc_opt_self() mainScreen];
    v4 = [v3 displayLinkWithTarget:self selector:sel__displayLinkFired_];
    streamingAnimationDisplayLink = self->_streamingAnimationDisplayLink;
    self->_streamingAnimationDisplayLink = v4;

    v6 = +[_UIDictationSettingsDomain rootSettings];
    [v6 typewriterEffectFramesPerSecond];
    [(CADisplayLink *)self->_streamingAnimationDisplayLink setPreferredFramesPerSecond:v7];

    v8 = self->_streamingAnimationDisplayLink;
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

    self->_lastAnimationUpdateTimeStamp = CACurrentMediaTime();
  }
}

- (void)_displayLinkFired:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_streamingAnimationActive)
  {
    if (self->_deferredCancellationRequested)
    {
      [(UIDictationController *)self cancelDictation];
      goto LABEL_49;
    }

    v65 = v4;
    v66 = +[UIKeyboardImpl activeInstance];
    if (!v66)
    {
LABEL_48:

      v5 = v65;
      goto LABEL_49;
    }

    [v65 timestamp];
    v7 = v6;
    lastAnimationUpdateTimeStamp = self->_lastAnimationUpdateTimeStamp;
    v9 = [(UIDictationController *)self pendingEdits];
    v10 = v7 - lastAnimationUpdateTimeStamp;
    if (![v9 count])
    {
      v34 = [(UIDictationController *)self lastHypothesis];
      if ([v34 length])
      {
        v35 = +[_UIDictationSettingsDomain rootSettings];
        [v35 typewriterEffectMinDurationBetweenHypotheses];
        v37 = v36;

        if (v10 < v37)
        {
          goto LABEL_48;
        }

LABEL_7:
        v11 = [(UIDictationController *)self targetHypothesis];
        v12 = [(UIDictationController *)self lastHypothesis];
        if ([v11 isEqualToString:v12])
        {
          v13 = [(UIDictationController *)self pendingEdits];
          v14 = [v13 count];

          if (!v14)
          {
            [(UIDictationController *)self _stopStreamingAnimation];
            if (![(UIDictationController *)self state])
            {
              [(UIDictationController *)self setTargetHypothesis:0];
              [(UIDictationController *)self setLastHypothesis:0];
              [(UIDictationController *)self setPendingEdits:0];
            }

            if ([(UIDictationController *)self state]== 3)
            {
              v15 = +[UIDictationLandingView activeInstance];
              [v15 startLandingIfNecessary];
            }

            v72 = 0;
            v73 = &v72;
            v74 = 0x2050000000;
            v16 = getSISchemaUEIDictationPartialResultUpdatedClass_softClass;
            v75 = getSISchemaUEIDictationPartialResultUpdatedClass_softClass;
            if (!getSISchemaUEIDictationPartialResultUpdatedClass_softClass)
            {
              v71[0] = MEMORY[0x1E69E9820];
              v71[1] = 3221225472;
              v71[2] = __getSISchemaUEIDictationPartialResultUpdatedClass_block_invoke;
              v71[3] = &unk_1E70F2F20;
              v71[4] = &v72;
              __getSISchemaUEIDictationPartialResultUpdatedClass_block_invoke(v71);
              v16 = v73[3];
            }

            v17 = v16;
            _Block_object_dispose(&v72, 8);
            v63 = objc_alloc_init(v16);
            [v63 setExists:1];
            [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v63];
            if (self->_dictationInputModeSwitchStarted)
            {
              self->_dictationInputModeSwitchStarted = 0;
              v18 = objc_alloc_init(getSISchemaUEIDictationInputModeSwitchContextClass());
              v19 = objc_alloc_init(getSISchemaUEIDictationInputModeSwitchEndedClass());
              [v19 setExists:1];
              [v18 setEnded:v19];
              [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v18];
            }

            goto LABEL_47;
          }
        }

        else
        {
        }

        v20 = +[UIDictationLandingView activeInstance];
        v21 = [v20 canStopLanding];

        if (v21)
        {
          v22 = +[UIDictationLandingView activeInstance];
          [v22 stopLanding];
        }

        v23 = [v66 inputDelegateManager];
        v63 = [v23 selectedTextRange];

        if (v63 && ([v63 isEmpty] & 1) == 0)
        {
          [(UIDictationController *)self removeSelectedText];
LABEL_47:

          goto LABEL_48;
        }

        v24 = [(UIDictationController *)self pendingEdits];
        v25 = [v24 count];

        if (v25)
        {
          v26 = [(UIDictationController *)self targetHypothesis];
          v27 = [(UIDictationController *)self previousHypothesis];
          v28 = [v26 isEqualToString:v27];

          if (v28)
          {
            goto LABEL_31;
          }

          v29 = [(UIDictationController *)self previousHypothesis];
          v30 = [(UIDictationController *)self targetHypothesis];
          v31 = [_EditScriptRanged editScriptFromString:v29 toString:v30 chunkSize:0 orderAtomsAscending:1 operationPrecedence:-1 options:0];

          v32 = [(UIDictationController *)self pendingEdits];
          v33 = [v31 script];
          [v32 addObjectsFromArray:v33];
        }

        else
        {
          v38 = [(UIDictationController *)self lastHypothesis];
          v39 = [(UIDictationController *)self targetHypothesis];
          v31 = [_EditScriptRanged editScriptFromString:v38 toString:v39 chunkSize:0 orderAtomsAscending:1 operationPrecedence:-1 options:0];

          v40 = [v31 script];
          v32 = [v40 mutableCopy];

          [(UIDictationController *)self setPendingEdits:v32];
        }

LABEL_31:
        v41 = [(UIDictationController *)self pendingEdits];
        v42 = [v41 count];

        if (v42)
        {
          v43 = +[_UIDictationSettingsDomain rootSettings];
          [v43 typewriterEffectStreamingCharacterInsertionRate];
          v45 = (v10 * v44);

          if (v45)
          {
            [v65 timestamp];
            self->_lastAnimationUpdateTimeStamp = v46;
            v47 = [(UIDictationController *)self lastHypothesis];
            v64 = [v47 mutableCopy];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            obj = [(UIDictationController *)self pendingEdits];
            v48 = 0;
            v49 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
            if (v49)
            {
              v50 = *v68;
LABEL_35:
              v51 = 0;
              v52 = v48++;
              v61 = v49 + v52;
              while (1)
              {
                if (*v68 != v50)
                {
                  objc_enumerationMutation(obj);
                }

                v53 = *(*(&v67 + 1) + 8 * v51);
                v54 = [v53 editRange];
                v56 = v55;
                v57 = [v53 replacementText];
                [v64 replaceCharactersInRange:v54 withString:{v56, v57}];

                v58 = [v53 replacementText];
                LODWORD(v54) = [v58 isEqualToString:&stru_1EFB14550];

                v45 += v54;
                if (v45 <= v48)
                {
                  break;
                }

                ++v51;
                ++v48;
                if (v49 == v51)
                {
                  v49 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
                  v48 = v61;
                  if (v49)
                  {
                    goto LABEL_35;
                  }

                  break;
                }
              }
            }

            v59 = [(UIDictationController *)self pendingEdits];
            [v59 removeObjectsInRange:{0, v48}];

            if (self->_ignoreFinalizePhrases)
            {
              [(UIDictationController *)self setLastHypothesis:v64];
            }

            else
            {
              v60 = [(UIDictationController *)self lastHypothesis];
              [(UIDictationController *)self updateLastHypothesis:v60 WithNewHypothesis:v64];
            }
          }
        }

        else
        {
          [(UIDictationController *)self _stopStreamingAnimation];
        }

        goto LABEL_47;
      }
    }

    goto LABEL_7;
  }

LABEL_49:
}

- (id)_rangeByExtendingRange:(id)a3 backward:(int64_t)a4 forward:(int64_t)a5 inputDelegateManager:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [v9 start];
  v12 = v11;
  if (a4)
  {
    v12 = [v10 positionFromPosition:v11 offset:-a4];

    if (!v12)
    {
      v12 = [v10 beginningOfDocument];
    }
  }

  v13 = [v9 end];
  v14 = v13;
  if (a5)
  {
    v14 = [v10 positionFromPosition:v13 offset:a5];

    if (!v14)
    {
      v14 = [v10 endOfDocument];
    }
  }

  v15 = [v10 textRangeFromPosition:v12 toPosition:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v9;
  }

  v18 = v17;

  return v17;
}

- (id)_hypothesisRangeFromSelectionRange:(id)a3 inputDelegateManager:(id)a4 forHypothesis:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v7 = [v8 selectedTextRange];
  }

  v10 = [v7 end];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 positionFromPosition:v10 offset:{-objc_msgSend(v9, "length")}];
    if (!v12)
    {
      v12 = [v8 beginningOfDocument];
    }

    v13 = [v8 textRangeFromPosition:v12 toPosition:v11];
  }

  else
  {
    v11 = [v8 endOfDocument];
    v13 = [v8 textRangeFromPosition:v11 toPosition:v11];
  }

  return v13;
}

- (id)_getBestHypothesisRangeGivenHintRange:(id)a3 inputDelegateManager:(id)a4 hypothesisRange:(_NSRange *)a5 documentTextInRange:(id *)a6 forHypothesis:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_47:
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:6564 description:@"outTextRange == nil"];

    if (a6)
    {
      goto LABEL_4;
    }

LABEL_48:
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:6565 description:@"outDocumentText == nil"];

    goto LABEL_4;
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:6563 description:@"hintRange == nil"];

  if (!a5)
  {
    goto LABEL_47;
  }

LABEL_3:
  if (!a6)
  {
    goto LABEL_48;
  }

LABEL_4:
  v15 = v14;
  v16 = [v15 length];
  if ([v12 isEmpty] && !v16)
  {
    a5->location = 0;
    a5->length = 0;
    *a6 = &stru_1EFB14550;
    v12 = v12;
    v17 = v12;
    goto LABEL_43;
  }

  *a5 = xmmword_18A678470;
  *a6 = 0;
  v17 = [v13 textInRange:v12];
  if (v17)
  {
    v18 = [(UIDictationController *)self _getRangeOfString:v15 inDocumentText:v17];
    v20 = v18;
    v21 = v19;
    v48 = v13;
    if (!v18 && v19 == v16)
    {
      v44 = a5;
      v45 = a6;
      v22 = 0;
      v47 = v16;
LABEL_41:
      v44->location = v22;
      v44->length = v47;
      v39 = v17;
      *v45 = v17;
      v12 = v12;
      v23 = v17;
      v17 = v12;
      v13 = v48;
      goto LABEL_42;
    }

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = a6;
      v28 = [v17 length] - (v18 + v19);
      goto LABEL_17;
    }

    v24 = [(UIDictationController *)self _rangeByExtendingRange:v12 backward:+[UIDictationLandingView forward:"fallbackPlaceholderLength"]inputDelegateManager:0, v13];

    v23 = [v13 textInRange:v24];

    v25 = [(UIDictationController *)self _getRangeOfString:v15 inDocumentText:v23];
    v17 = 0;
    if (v23)
    {
      v20 = v25;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v26;
        v45 = a6;
        v28 = [v23 length] - (v25 + v26);
        v17 = v23;
        v21 = v27;
        v12 = v24;
LABEL_17:
        v46 = v16;
        v47 = v21;
        v44 = a5;
        if (v20 < 1)
        {
          v22 = v20;
          v34 = v17;
          v33 = v12;
        }

        else
        {
          v22 = v20;
          while (1)
          {
            v29 = [(UIDictationController *)self _rangeByExtendingRange:v12 backward:-1 forward:0 inputDelegateManager:v48, v44];
            v30 = [v48 textInRange:v29];
            v31 = [(UIDictationController *)self _getRangeOfString:v15 inDocumentText:v30];
            if (!v30 || v31 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v34 = v17;
              v33 = v12;
              goto LABEL_29;
            }

            v22 = v31;
            v47 = v32;
            v33 = v29;

            v34 = v30;
            if (!v22 && [v34 length] == v46)
            {
              break;
            }

            v12 = v33;
            v17 = v34;
            if (!--v20)
            {
              goto LABEL_30;
            }
          }

          v22 = 0;
LABEL_29:
        }

LABEL_30:
        if (v28 < 1)
        {
          v17 = v34;
          v12 = v33;
        }

        else
        {
          while (1)
          {
            v35 = [(UIDictationController *)self _rangeByExtendingRange:v33 backward:0 forward:-1 inputDelegateManager:v48, v44];
            v36 = [v48 textInRange:v35];
            v37 = [(UIDictationController *)self _getRangeOfString:v15 inDocumentText:v36];
            if (!v36 || v37 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = v34;
              v12 = v33;
              goto LABEL_40;
            }

            v22 = v37;
            v47 = v38;
            v12 = v35;

            v17 = v36;
            if (!v22 && [v17 length] == v46)
            {
              break;
            }

            v33 = v12;
            v34 = v17;
            if (!--v28)
            {
              goto LABEL_41;
            }
          }

          v22 = 0;
LABEL_40:
        }

        goto LABEL_41;
      }
    }

    v12 = v24;
  }

  else
  {
    v23 = 0;
  }

LABEL_42:

LABEL_43:

  return v17;
}

- (void)resetLastHypothesis
{
  v6 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = _UIDictationControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[UIDictationController resetLastHypothesis]";
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
    }

    [(UIDictationController *)self setLastHypothesis:0];
  }
}

- (void)updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(UIDictationController *)self _updateLastHypothesis:v7 WithNewHypothesis:v8];
  v9 = +[UIKeyboardImpl activeInstance];
  [v9 touchDictationMenuTimer];

  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    v11 = [v10 inputDelegateManager];
    v12 = [v11 inputSystemSourceSession];

    if (v12)
    {
      if ([(UIDictationController *)self isIgnoringRTIChanges])
      {
        if ([v8 isEqualToString:&stru_1EFB14550])
        {
          v13 = [v12 textOperations];
          [v13 setCustomInfoType:0x1EFB7C8F0];
          v20 = @"selector";
          v14 = NSStringFromSelector(sel_resetLastHypothesis);
          v21[0] = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
          [v13 setCustomInfo:v15];

          [v12 flushOperations];
        }
      }

      else
      {
        v16 = [v12 textOperations];
        [v16 setCustomInfoType:0x1EFB7C8F0];
        v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        v18 = v17;
        if (v7)
        {
          [v17 setObject:v7 forKeyedSubscript:@"lastHypothesis"];
        }

        if (v8)
        {
          [v18 setObject:v8 forKeyedSubscript:@"newHypothesis"];
        }

        v19 = NSStringFromSelector(a2);
        [v18 setObject:v19 forKeyedSubscript:@"selector"];

        [v16 setCustomInfo:v18];
        [v12 flushOperations];
      }
    }
  }
}

- (void)forceOOPDocumentStateSync
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = objc_alloc_init(MEMORY[0x1E69D9638]);
  [v3 setInsertionText:&stru_1EFB14550];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIDictationController_forceOOPDocumentStateSync__block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v2;
  v8 = v3;
  v4 = v3;
  v5 = v2;
  [v5 performOperations:v6 withTextInputSource:2];
}

- (void)_updateLastHypothesis:(id)a3 WithNewHypothesis:(id)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(UIDictationController *)self _shouldApplyLastHypothesis])
  {
    goto LABEL_29;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 inputDelegateManager];
  v10 = [v9 hasAsyncCapableInputDelegate];

  if (v7 && [(__CFString *)v7 length])
  {
    v11 = [v6 length];
    if (v11 > [(__CFString *)v7 length])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v51 = @"UIDictationGlowViewMode";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v52[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    [(UIDictationController *)self postNotificationName:@"UIDictationWillInsertHypothesisNotification" userInfo:v14];
  }

  v15 = [v8 inputDelegateManager];
  v16 = [v15 selectedTextRange];

  v17 = [v8 inputDelegateManager];
  v18 = v17;
  if (!v10)
  {
    v19 = [(UIDictationController *)self _hypothesisRangeFromSelectionRange:v16 inputDelegateManager:v17 forHypothesis:v6];

    v43 = 0;
    v44 = 0;
    if (v19 && (![v19 isEmpty] || objc_msgSend(v6, "length")))
    {
      v20 = [v8 inputDelegateManager];
      v42 = 0;
      v21 = [(UIDictationController *)self _getBestHypothesisRangeGivenHintRange:v19 inputDelegateManager:v20 hypothesisRange:&v43 documentTextInRange:&v42 forHypothesis:v6];
      v22 = v42;

      v19 = v21;
      if (v21)
      {
LABEL_14:
        if (v7)
        {
          v23 = v7;
        }

        else
        {
          v23 = &stru_1EFB14550;
        }

        v24 = [(__CFString *)v22 stringByReplacingCharactersInRange:v43 withString:v44, v23];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __65__UIDictationController__updateLastHypothesis_WithNewHypothesis___block_invoke;
        v36[3] = &unk_1E70F8868;
        v37 = v8;
        v38 = self;
        v39 = v19;
        v40 = v6;
        v41 = v24;
        v25 = v24;
        [(UIDictationController *)self performIgnoringDocumentChanges:v36];

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v43 = 0;
      v44 = 0;
      v22 = &stru_1EFB14550;
      if (v19)
      {
        goto LABEL_14;
      }
    }

    v26 = _UIDictationControllerLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v34 = [(UIDictationController *)self lastHypothesis];
      *buf = 136315650;
      v46 = "[UIDictationController _updateLastHypothesis:WithNewHypothesis:]";
      v47 = 2112;
      v48 = v34;
      v49 = 2112;
      v50 = 0;
      _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "%s Could not find the last hypothesis %@ in range '%@'. The likely cause is that something modified the text store or the hypothesis during dictation. Canceling dictation", buf, 0x20u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__UIDictationController__updateLastHypothesis_WithNewHypothesis___block_invoke_1066;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_22;
  }

  [v17 replaceRange:0 oldText:v6 withText:v7 forReplaceAction:3];
  v19 = v18;
LABEL_23:

  if (+[UIKeyboard isModelessActive])
  {
    v27 = +[UIKeyboardInputModeController sharedInputModeController];
    v28 = [v27 currentPublicInputMode];
    if ([v28 isExtensionInputMode])
    {
      v29 = [(__CFString *)v7 isEqualToString:&stru_1EFB14550];

      if ((v29 & 1) == 0)
      {
        [v8 _requestInputManagerSync];
      }
    }

    else
    {
    }
  }

  v30 = [v8 inputDelegateManager];
  v31 = [v30 textInteractionAssistant];
  [v31 setNeedsSelectionDisplayUpdate];

  v32 = [v8 _textChoicesAssistant];
  [v32 resetDictationChoicesAnimated:0];

  v33 = [v8 _textChoicesAssistant];
  [v33 resetDictationUnderlines];

LABEL_29:
  [(UIDictationController *)self setHasSelectedTextRange:0];
  [(UIDictationController *)self setLastHypothesis:v7];
}

uint64_t __65__UIDictationController__updateLastHypothesis_WithNewHypothesis___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inputDelegateManager];
  v3 = [v2 privateInputDelegate];
  [v3 set_textInputSource:2];

  [*(a1 + 40) setCanUndoOrRedo:0];
  [*(a1 + 32) setTextInputChangesIgnored:1];
  v4 = [*(a1 + 32) inputDelegateManager];
  [v4 replaceRange:*(a1 + 48) oldText:*(a1 + 56) withText:*(a1 + 64) forReplaceAction:3];

  [*(a1 + 32) setTextInputChangesIgnored:0];
  [*(a1 + 32) updateReturnKey:0];
  [objc_opt_class() updateLandingView];
  v5 = *(a1 + 40);

  return [v5 setCanUndoOrRedo:1];
}

- (BOOL)_shouldApplyLastHypothesis
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    return 1;
  }

  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegateManager];
  v4 = [v3 shouldRespectForwardingInputDelegate];

  return v4;
}

- (void)setupToInsertResultForNewHypothesis:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_streamingAnimationActive)
  {
    [(UIDictationController *)self setTargetHypothesis:v4];
  }

  else
  {
    v5 = [(UIDictationController *)self lastHypothesis];

    if (!v5)
    {
      [(UIDictationController *)self setLastHypothesis:&stru_1EFB14550];
    }

    v6 = +[UIDictationLandingView activeInstance];
    v7 = [v6 canStopLanding];

    if (v7)
    {
      v8 = +[UIDictationLandingView activeInstance];
      [v8 stopLanding];
    }

    [(UIDictationController *)self setTargetHypothesis:v9];
    [(UIDictationController *)self _startStreamingAnimations];
  }
}

- (BOOL)languageSupportsAdaptiveDelete
{
  if (+[UIKeyboard isModelessActive])
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFE2C9B8];
    v4 = MEMORY[0x1E695DF58];
    v5 = [(UIDictationController *)self language];
    v6 = [v4 localeWithLocaleIdentifier:v5];
    v7 = [v6 languageCode];

    v8 = [v3 containsObject:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)dictationWordwiseBackspaceEnabled
{
  if (qword_1ED498858 != -1)
  {
    dispatch_once(&qword_1ED498858, &__block_literal_global_1087_0);
  }

  if (byte_1ED4987D5 != 1)
  {
    return 0;
  }

  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:@"DictationWordwiseBackspaceEnabled"];

  return v3;
}

uint64_t __58__UIDictationController_dictationWordwiseBackspaceEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED4987D5 = result;
  return result;
}

- (void)dictationConnection:(id)a3 receivedInterpretation:(id)a4 languageModel:(id)a5 secureInput:(BOOL)a6
{
  v6 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]"];

  if ([v8 length])
  {
    if (self->_shouldResumeDictation)
    {
      v9 = _UIDictationControllerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s _shouldResumeDictation is YES. Early return", buf, 0xCu);
      }
    }

    else if ([(UIDictationController *)self isProcessingPotentialVoiceCommand])
    {
      v9 = _UIDictationControllerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
        _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s Received partial result while processing potential voice command. This partial result will be ignored.", buf, 0xCu);
      }
    }

    else
    {
      if ([(UIDictationController *)self dictationWordwiseBackspaceEnabled])
      {
        v10 = +[UIDictationController sharedInstance];
        [v10 setShouldDeleteWordOnBackspaceTap:1];

        if ([(UIDictationController *)self startRangeOfCurrentHypothesis]== 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([objc_opt_class() shouldForwardInInputSystemUI])
          {
            v11 = +[UIKeyboardImpl activeInstance];
            v12 = [v11 inputDelegateManager];
            v13 = [v12 inputSystemSourceSession];
            v14 = [v13 documentState];
            v15 = [v14 selectedTextRange];
            [(UIDictationController *)self setStartRangeOfCurrentHypothesis:v15, v16];
          }

          else
          {
            v11 = +[UIKeyboardImpl sharedInstance];
            v12 = [v11 documentState];
            v17 = [v12 _selectedTextRange];
            [(UIDictationController *)self setStartRangeOfCurrentHypothesis:v17, v18];
          }
        }
      }

      [(UIDictationController *)self updateRecordingLimitTimerIfNeeded];
      if (!self->_hasCheckedForLeadingSpaceOnce)
      {
        self->_hasCheckedForLeadingSpaceOnce = 1;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __94__UIDictationController_dictationConnection_receivedInterpretation_languageModel_secureInput___block_invoke;
        v45[3] = &unk_1E7114F78;
        v45[4] = self;
        [UIDictationUtilities selectionStartInfoWithBlock:v45];
      }

      if ([UIDictationUtilities needsLeadingSpaceForText:v8 secureInput:v6 previousCharacter:self->_previousCharacter selectionStartIsStartOfParagraph:self->_selectionStartIsStartOfParagraph])
      {
        v19 = [@" " stringByAppendingString:v8];

        v8 = v19;
      }

      if ([UIDictationUtilities needsTrailingSpaceForText:v8 secureInput:v6])
      {
        v20 = [v8 stringByAppendingString:@" "];

        v8 = v20;
      }

      self->_recievingResults = 1;
      v21 = +[UIKeyboardImpl activeInstance];
      v9 = [v21 smartPunctuationController];

      if (([v9 smartQuotesEnabled]& 1) != 0 || [v9 smartDashesEnabled])
      {
        v22 = [UIDictationUtilities applySmartPunctuationToString:v8];

        v8 = v22;
      }

      v23 = +[UIKeyboardImpl activeInstance];
      v24 = [v23 inputDelegateManager];

      if (!+[UIKeyboard isRedesignedTextCursorEnabled])
      {
        v25 = [v24 textInteractionAssistant];
        [v25 configureForHighlightMode];
      }

      v26 = [v24 selectedTextRange];
      v27 = v24;
      v28 = [v27 beginningOfDocument];
      v29 = [v26 start];
      v30 = [v27 offsetFromPosition:v28 toPosition:v29];

      v31 = [v26 start];
      v32 = [v26 end];
      v33 = [v27 offsetFromPosition:v31 toPosition:v32];

      if ([(UIDictationController *)self discardNextHypothesis])
      {
        v34 = 0;
      }

      else
      {
        v35 = [(UIDictationController *)self previousHypothesis];
        if (v35)
        {
          v36 = [(UIDictationController *)self previousHypothesis];
          v34 = [v8 isEqualToString:v36] ^ 1;
        }

        else
        {
          v34 = 1;
        }
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Hypothesis (willInsert: %d): '%@'", "-[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]", v34, v8];

      if ([(UIDictationController *)self discardNextHypothesis])
      {
        [(UIDictationController *)self setPreviousHypothesis:0];
        [(UIDictationController *)self setInsertionRange:v30, v33];
        [(UIDictationController *)self setDiscardNextHypothesis:0];
      }

      else
      {
        v37 = [(UIDictationController *)self previousHypothesis];
        if (!v37 || (v38 = v37, -[UIDictationController previousHypothesis](self, "previousHypothesis"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v8 isEqualToString:v39], v39, v38, (v40 & 1) == 0))
        {
          if (![(UIDictationController *)self haveReceivedFirstPartialResultForCurrentUtterance])
          {
            v41 = _UIDictationControllerUndoRedoLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
              _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "%s First partial result received for current utterance", buf, 0xCu);
            }

            v42 = _UIDictationControllerUndoRedoLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
              _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping if necessary", buf, 0xCu);
            }

            [(UIDictationController *)self _endUndoGroupingIfNecessary];
            v43 = _UIDictationControllerUndoRedoLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
              _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "%s Beginning undo grouping if necessary", buf, 0xCu);
            }

            [(UIDictationController *)self _beginUndoGroupingIfNecessary];
            v44 = _UIDictationControllerUndoRedoLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v47 = "[UIDictationController dictationConnection:receivedInterpretation:languageModel:secureInput:]";
              _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to YES", buf, 0xCu);
            }

            [(UIDictationController *)self setHaveReceivedFirstPartialResultForCurrentUtterance:1];
          }

          [(UIDictationController *)self setupToInsertResultForNewHypothesis:v8];
          [(UIDictationController *)self setPreviousHypothesis:v8];
        }
      }
    }
  }
}

uint64_t __94__UIDictationController_dictationConnection_receivedInterpretation_languageModel_secureInput___block_invoke(uint64_t result, __int16 a2, char a3)
{
  *(*(result + 32) + 356) = a2;
  *(*(result + 32) + 348) = a3;
  return result;
}

- (id)dictationConnection:(id)a3 willFilterTokensWithLanguageModel:(id)a4 forFinalize:(BOOL)a5
{
  v6 = a4;
  v7 = objc_alloc_init(UIDictationConnectionFilterState);
  v8 = [(UIDictationController *)self resultTransformForLanguageModel:v6];

  [(UIDictationConnectionFilterState *)v7 setTransform:v8];

  return v7;
}

- (id)dictationBlockForToken:(id)a3
{
  v4 = [a3 text];
  if (([v4 isEqualToString:@"\\delete"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"\\backspace"))
  {
    v5 = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v6 = __48__UIDictationController_dictationBlockForToken___block_invoke;
LABEL_4:
    v5[2] = v6;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    v7 = _Block_copy(v5);
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"\\clear"])
  {
    v5 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v6 = __48__UIDictationController_dictationBlockForToken___block_invoke_2;
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:
  v8 = _Block_copy(v7);

  return v8;
}

uint64_t __48__UIDictationController_dictationBlockForToken___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupHypothesisAsFinalResults];
  [*(a1 + 32) _runFinalizeOperation:1];
  [*(a1 + 32) setLastHypothesis:&stru_1EFB14550];
  v2 = *(a1 + 32);

  return [v2 _deleteBackwardIntoText];
}

uint64_t __48__UIDictationController_dictationBlockForToken___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setupHypothesisAsFinalResults];
  [*(a1 + 32) _runFinalizeOperation:1];
  [*(a1 + 32) setLastHypothesis:&stru_1EFB14550];
  v2 = *(a1 + 32);

  return [v2 _clearExistingText];
}

- (BOOL)dictationConnection:(id)a3 filterState:(id)a4 shouldCheckpointAtToken:(id)a5
{
  v7 = a4;
  v8 = [(UIDictationController *)self dictationBlockForToken:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 copy];
    [v7 setPendingDictationCommand:v10];
  }

  return v9 != 0;
}

- (void)dictationConnection:(id)a3 filterState:(id)a4 processFilteredToken:(id)a5 forFinalize:(BOOL)a6
{
  v12 = a4;
  v9 = [v12 pendingDictationCommand];

  if (v9)
  {
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:7015 description:@"This should never be called unless there's a pending dictation command!"];

  if (!a6)
  {
LABEL_3:
    v10 = [v12 pendingDictationCommand];
    v10[2]();
  }

LABEL_4:
  [v12 setPendingDictationCommand:0];
}

- (void)dictationConnection:(id)a3 didFilterTokensWithFilterState:(id)a4 forFinalize:(BOOL)a5
{
  v7 = [a4 pendingDictationCommand];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIDictationController.m" lineNumber:7028 description:@"This should never be called with a pending dictation command!"];
  }
}

- (void)dictationConnectionWillStartRecording:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnectionWillStartRecording:]"];

  [(UIDictationController *)self setState:2];
  v5 = [getAFAnalyticsClass() sharedAnalytics];
  [v5 logEventWithType:1417 context:0];

  v6 = objc_alloc_init(getSISchemaUEILaunchContextClass());
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getSISchemaUEILaunchEndedClass_softClass;
  v17 = getSISchemaUEILaunchEndedClass_softClass;
  if (!getSISchemaUEILaunchEndedClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getSISchemaUEILaunchEndedClass_block_invoke;
    v13[3] = &unk_1E70F2F20;
    v13[4] = &v14;
    __getSISchemaUEILaunchEndedClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = objc_alloc_init(v7);
  [v6 setEnded:v9];

  v10 = [v6 ended];
  [v10 setExists:1];

  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v6];
  v18 = @"dictationLanguage";
  v11 = [(UIDictationController *)self currentDictationLanguageForDisplay];
  v19[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  [(UIDictationController *)self postNotificationName:@"UIKeyboardDidBeginDictationNotification" userInfo:v12];
}

- (void)dictationConnectionDidStartRecording:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnectionDidStartRecording:]"];
}

- (void)dictationConnection:(id)a3 didStartRecordingWithOptions:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnection:didStartRecordingWithOptions:]"];

  self->_localSpeechRecognitionForced = [v5 forceOfflineRecognition];
  self->_secureOfflineOnlySpeechRecognition = [v5 secureOfflineOnly];
  v6 = _UIDictationControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ([objc_opt_class() canShareDictationData])
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    *buf = 136315394;
    v28 = "[UIDictationController dictationConnection:didStartRecordingWithOptions:]";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s Enhanced dictation logging enabled=%@", buf, 0x16u);
  }

  v8 = [v5 detectUtterances];
  if (v8)
  {
    LOBYTE(v8) = [v5 continuousListening];
  }

  self->_detectingUtterances = v8;
  v9 = _UIDictationControllerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ([(UIDictationController *)self isDetectingUtterances])
    {
      v10 = @"Yes";
    }

    else
    {
      v10 = @"No";
    }

    *buf = 136315394;
    v28 = "[UIDictationController dictationConnection:didStartRecordingWithOptions:]";
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s Utterances detection enabled=%@", buf, 0x16u);
  }

  if (self->_detectingUtterances)
  {
    [(UIDictationController *)self startRecordingLimitTimer];
    v11 = +[UIKeyboard isMajelEnabled];
    v12 = +[UIKeyboardInputMode dictationInputMode];
    [v12 setUsingTypeAndTalk:v11];

    v13 = _UIDictationControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[UIKeyboardInputMode dictationInputMode];
      v15 = [v14 usingTypeAndTalk];
      *buf = 136315394;
      v28 = "[UIDictationController dictationConnection:didStartRecordingWithOptions:]";
      v29 = 1024;
      LODWORD(v30) = v15;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s usingTypeAndTalk = %d", buf, 0x12u);
    }
  }

  else
  {
    v16 = +[UIKeyboardInputMode dictationInputMode];
    v17 = [v16 usingTypeAndTalk];

    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = +[UIKeyboardInputMode dictationInputMode];
    [v18 setUsingTypeAndTalk:0];

    v13 = _UIDictationControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[UIDictationController dictationConnection:didStartRecordingWithOptions:]";
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%s Failed to setup utterance detection.[FATAL] = ", buf, 0xCu);
    }
  }

LABEL_20:
  self->_ignoreUserInteraction = 0;
  if (+[UIKeyboard isMajelEnabled])
  {
    v19 = +[UIKeyboardImpl activeInstance];
    v20 = +[UIDictationController sharedInstance];
    v21 = [v20 dictationTipController];
    [v21 resetShowModelessTipSignal];

    v25 = @"reason";
    v26 = @"Dictation connection did start recording";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(UIDictationController *)self postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v22];
  }

  v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v24 = [v23 _textInputSessionAnalytics];
  [v24 didDictationBegin:1 usesMultiModalDictation:self->_detectingUtterances];
}

- (void)dictationConnectionDidEndRecording:(id)a3
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnectionDidEndRecording:]"];

  if ([(UIDictationController *)self state]== 2 && [(UIDictationInputModeOptions *)self->_inputModeOptions shouldStayInDictationInputModeIfAutoEndpointed]&& !+[UIKeyboard isModelessActive])
  {
    [(UIDictationController *)self setShouldStayInDictationInputMode:1];
  }

  if ([(UIDictationController *)self state]!= 3)
  {
    [(UIDictationController *)self setState:3];
    [(UIDictationController *)self clearKeyboardTrackpadModeIfNeeded];

    [(UIDictationController *)self setReasonType:31];
  }
}

- (void)dictationConnectionDidCancelRecording:(id)a3
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnectionDidCancelRecording:]"];

  [(UIDictationController *)self setState:0];
}

- (void)dictationConnection:(id)a3 didFailRecordingWithError:(id)a4
{
  v14 = a4;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnection:didFailRecordingWithError:]"];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s error: %@", "-[UIDictationController dictationConnection:didFailRecordingWithError:]", v14];
  if (!self->cancelledByWaitingForLocalResults)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = +[UIKeyboardInputModeController sharedInputModeController];
      v9 = [v8 delegate];
      [v9 dictationRequestDidFailWithError:v14];
    }

    [(UIDictationController *)self setState:6];
    v10 = +[UIKeyboardImpl activeInstance];
    v11 = [v10 inputDelegateManager];
    v12 = [v11 textInputDelegate];
    v13 = [v12 _textSelectingContainer];

    if (objc_opt_respondsToSelector())
    {
      [v13 dictationRecognitionFailed];
    }
  }
}

- (void)dictationConnection:(id)a3 didFailRecognitionWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[UIDictationController dictationConnection:didFailRecognitionWithError:]"];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s error: %@", "-[UIDictationController dictationConnection:didFailRecognitionWithError:]", v7];
  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    v12 = [v11 delegate];
    [v12 dictationRequestDidFailWithError:v7];
  }

  [(UIDictationController *)self setState:6];
  v13 = +[UIKeyboardImpl sharedInstance];
  v14 = [v13 inputDelegate];
  v15 = [v14 _textSelectingContainer];

  if (objc_opt_respondsToSelector())
  {
    [v15 dictationRecognitionFailed];
  }

  v16 = [v7 code];
  if ((v16 - 2) <= 2)
  {
    v17 = v16;
    [(UIDictationController *)self _createDictationPresenterWindowIfNecessary];
    v18 = [(UIDictationController *)self dictationPresenterWindow];
    [v18 makeKeyAndVisible];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke;
    aBlock[3] = &unk_1E70F59B0;
    aBlock[4] = self;
    v19 = _Block_copy(aBlock);
    v20 = v19;
    v60 = v6;
    if (v17 == 4)
    {
      v39 = MEMORY[0x1E696AEC0];
      v40 = _UIKitBundle();
      v41 = [v40 localizedStringForKey:@"Dictation Supports On Device Only Body" value:@"Your device requires voice input to be processed on %@ table:{but supporting data has not been downloaded yet.", @"Localizable"}];
      v42 = +[UIDevice currentDevice];
      _UILocalizedNameForIdiom([v42 userInterfaceIdiom]);
      v44 = v43 = v20;
      v27 = [v39 stringWithFormat:v41, v44];

      v45 = _UIKitBundle();
      v46 = [v45 localizedStringForKey:@"Dictation Supports On Device Only Title" value:@"Dictation not ready" table:@"Localizable"];
      v30 = [UIAlertController alertControllerWithTitle:v46 message:v27 preferredStyle:1];

      v47 = _UIKitBundle();
      v48 = [v47 localizedStringForKey:@"Dictation Supports On Device Only Close" value:@"Close" table:@"Localizable"];
      v49 = [UIAlertAction actionWithTitle:v48 style:1 handler:v43];
      [v30 addAction:v49];

      v34 = v43;
      v50 = _UIKitBundle();
      v51 = [v50 localizedStringForKey:@"Dictation Supports On Device Only Learn More" value:@"Learn More…" table:@"Localizable"];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke_3;
      v61[3] = &unk_1E7115460;
      v62 = v43;
      v52 = [UIAlertAction actionWithTitle:v51 style:0 handler:v61];
      [v30 addAction:v52];

      v38 = v62;
    }

    else if (v17 == 3)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = _UIKitBundle();
      v23 = [v22 localizedStringForKey:@"Dictation On Device Model Required Body" value:@"An installed device management profile requires voice input to be processed on %@ table:{but supporting data has not been downloaded yet.", @"Localizable"}];
      v24 = +[UIDevice currentDevice];
      _UILocalizedNameForIdiom([v24 userInterfaceIdiom]);
      v26 = v25 = v20;
      v27 = [v21 stringWithFormat:v23, v26];

      v28 = _UIKitBundle();
      v29 = [v28 localizedStringForKey:@"Dictation On Device Model Required Title" value:@"Dictation Unavailable" table:@"Localizable"];
      v30 = [UIAlertController alertControllerWithTitle:v29 message:v27 preferredStyle:1];

      v31 = _UIKitBundle();
      v32 = [v31 localizedStringForKey:@"Dictation On Device Model Required Close" value:@"Close" table:@"Localizable"];
      v33 = [UIAlertAction actionWithTitle:v32 style:1 handler:v25];
      [v30 addAction:v33];

      v34 = v25;
      v35 = _UIKitBundle();
      v36 = [v35 localizedStringForKey:@"Dictation On Device Model Required Learn More" value:@"Learn More…" table:@"Localizable"];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke_2;
      v63[3] = &unk_1E7115460;
      v64 = v25;
      v37 = [UIAlertAction actionWithTitle:v36 style:0 handler:v63];
      [v30 addAction:v37];

      v38 = v64;
    }

    else
    {
      v59 = v19;
      v53 = _UIKitBundle();
      v54 = [v53 localizedStringForKey:@"Dictation Soon Title" value:@"You Can Start Using\nDictation Soon" table:@"Localizable"];
      v55 = _UIKitBundle();
      v56 = [v55 localizedStringForKey:@"Dictation Soon Body" value:@"New users are being added for Dictation every day. You will receive an alert when you can start\nusing Dictation." table:@"Localizable"];
      v30 = [UIAlertController alertControllerWithTitle:v54 message:v56 preferredStyle:1];

      v27 = _UIKitBundle();
      v38 = [v27 localizedStringForKey:@"Dictation Soon OK" value:@"OK" table:@"Localizable"];
      v34 = v59;
      v57 = [UIAlertAction actionWithTitle:v38 style:1 handler:v59];
      [v30 addAction:v57];
    }

    if (v30)
    {
      v58 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
      [v58 presentViewController:v30 animated:1 completion:0];
    }

    v6 = v60;
  }

  [(UIDictationController *)self postNotificationName:@"UIDictationControllerDictationDidFinish" userInfo:0];
}

uint64_t __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictationPresenterWindow];
  [v2 resignKeyWindow];

  v3 = [*(a1 + 32) dictationPresenterWindow];
  [v3 setHidden:1];

  v4 = *(a1 + 32);

  return [v4 setDictationPresenterWindow:0];
}

void __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6963608];
  v6 = a2;
  v4 = [v3 defaultWorkspace];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=Keyboard/DictationSettings"];
  [v4 openSensitiveURL:v5 withOptions:0 error:0];

  (*(*(a1 + 32) + 16))();
}

void __73__UIDictationController_dictationConnection_didFailRecognitionWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6963608];
  v6 = a2;
  v4 = [v3 defaultWorkspace];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=Keyboard/DictationSettings"];
  [v4 openSensitiveURL:v5 withOptions:0 error:0];

  (*(*(a1 + 32) + 16))();
}

- (void)dictationConnection:(id)a3 didBeginLocalRecognitionWithModelInfo:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  [v5 stringWithFormat:@"%s", "-[UIDictationController dictationConnection:didBeginLocalRecognitionWithModelInfo:]"];

  [(UIDictationController *)self setModelInfo:v6];
}

- (void)dictationConnectionDidCancelIncompatibleLocalRecognizer:(id)a3
{
  [(UIDictationController *)self _setupHypothesisAsFinalResults];

  [(UIDictationController *)self _runFinalizeOperation:1];
}

- (id)_containingSearchBarForView:(id)a3
{
  v3 = a3;
  if (v3)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v3 = v3;
  }

LABEL_6:

  return v3;
}

- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v18 = a4;
  v11 = a5;
  v12 = +[UIKeyboardImpl sharedInstance];
  v13 = [v12 inputDelegate];
  v14 = [v13 _textSelectingContainer];

  v15 = [(UIDictationController *)self _containingSearchBarForView:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;

    v14 = v17;
  }

  if (_UIIsPrivateMainBundle() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [UIDictationConnection afDelegate:v14 didReceiveSearchResults:v18 recognizedText:v11 stable:v8 final:v7];
  }
}

- (void)dictationConnnectionDidChangeAvailability:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"reason";
  v6[0] = @"Dictation connection did change availability";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(UIDictationController *)self postNotificationName:@"UIKeyboardDictationAvailabilityDidChangeNotification" userInfo:v4];
}

- (void)dictationConnectionDidFinish:(id)a3
{
  if (self->_detectingUtterances)
  {
    v4 = +[UIDictationLandingView activeInstance];
    v5 = [v4 canStopLanding];

    if (v5)
    {
      v6 = +[UIDictationLandingView activeInstance];
      [v6 stopLanding];
    }

    [(UIDictationController *)self cancelDictation];
  }

  [(UIDictationController *)self switchToKeyboardInputModeIfNeeded];

  [(UIDictationController *)self postNotificationName:@"UIDictationControllerDictationDidFinish" userInfo:0];
}

- (void)setCandidateDictationSerializableResults:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_candidateDictationSerializableResults, a3);
  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputDelegateManager];
    v8 = [v7 inputSystemSourceSession];

    if (v8 && ![(UIDictationController *)self isIgnoringRTIChanges])
    {
      v9 = [v8 textOperations];
      [v9 setCustomInfoType:0x1EFB7C8F0];
      v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      v11 = v10;
      candidateDictationSerializableResults = self->_candidateDictationSerializableResults;
      if (candidateDictationSerializableResults)
      {
        [v10 setObject:candidateDictationSerializableResults forKeyedSubscript:@"candidateDictationSerializableResults"];
      }

      v13 = NSStringFromSelector(a2);
      [v11 setObject:v13 forKeyedSubscript:@"selector"];

      [v9 setCustomInfo:v11];
      [v8 flushOperations];
    }
  }
}

- (void)dictationConnection:(id)a3 didReceivePartialPackage:(id)a4 nluResult:(id)a5 languageModel:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [a4 recognition];
  v14 = [v13 oneBestTokenList];

  [(UIDictationController *)self updateRecordingLimitTimerIfNeeded];
  v15 = _UIDictationControllerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 commandGrammarParsePackage];
    v17 = 136315394;
    v18 = "[UIDictationController dictationConnection:didReceivePartialPackage:nluResult:languageModel:]";
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "%s Partial AFVoiceCommandGrammarParsePackage: %@", &v17, 0x16u);
  }

  [v12 synthesizeDidRecognizeTokens:v14 languageModel:v11];
}

- (void)dictationConnection:(id)a3 didReceiveVoiceCommandCandidatePackage:(id)a4 nluResult:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(UIDictationController *)self updateRecordingLimitTimerIfNeeded];
  v11 = [v10 commandGrammarParsePackage];

  v12 = _UIDictationControllerLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]";
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s commandGrammarParsePackage: %@", buf, 0x16u);
  }

  v13 = [(UIDictationController *)self _voiceCommandGrammarParseCandidatesFromPackage:v11 completeCommands:1];
  if ([(UIDictationController *)self isProcessingPotentialVoiceCommand])
  {
    v14 = _UIDictationControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]";
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s Skipping processing of potential voice command because we are already processing another one", buf, 0xCu);
    }
  }

  else
  {
    v15 = [v13 count];
    v16 = _UIDictationControllerLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 136315394;
        v25 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]";
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "%s commandGrammarParseCandidates: %@", buf, 0x16u);
      }

      [(UIDictationController *)self _setHaveLeakedPartialResultForCommandUtterance:[(UIDictationController *)self haveReceivedFirstPartialResultForCurrentUtterance]];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke;
      v19[3] = &unk_1E7115038;
      v19[4] = self;
      v20 = v13;
      v21 = v9;
      v22 = v8;
      v23 = v11;
      [(UIDictationController *)self requestVisibleTextWithCompletionBlock:v19];
    }

    else
    {
      if (v17)
      {
        *buf = 136315138;
        v25 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]";
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "%s No command garmmar parse candidate was extracted, so skipping", buf, 0xCu);
      }

      v18 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]";
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
      }

      [(UIDictationController *)self setHaveReceivedFirstPartialResultForCurrentUtterance:0];
    }
  }
}

void __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke(id *a1, void *a2)
{
  v196 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [a1[4] setVisibleRTIDocumentStateAtCommandRecognition:v3];
  v136 = v3;
  v4 = [v3 documentState];
  v5 = [v4 selectedText];

  v135 = v5;
  [a1[4] setHasSelectedTextRange:{objc_msgSend(v5, "length") != 0}];
  v145 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v153 = a1;
  obj = a1[5];
  v6 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
  if (v6)
  {
    v7 = v6;
    v150 = *v187;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v187 != v150)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v186 + 1) + 8 * i);
        v10 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:v9];
        v11 = [v9 commandId];
        v12 = [UIDictationController commandIdentifierWithStringIdentifier:v11];
        v13 = [v9 voiceCommandUUID];
        v14 = [a1[4] commandTargetStringWithDictationCommandIdentifier:v12 parameters:v10];
        v15 = [a1[4] commandMetadataWithDictationCommandIdentifier:v12 parameters:v10];
        v16 = [objc_opt_class() firstParameterTextWithParameters:v10];
        if ([a1[4] _canApplyVoiceCommandWithIdentifierString:v11 firstParameterText:v16 targetString:v14 voiceCommandUUID:v13])
        {
          [v145 addObject:v9];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
    }

    while (v7);
  }

  v17 = _UIDictationControllerLog();
  v18 = v145;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v145;
    _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "%s filteredCommandGrammarParseCandidates: %@", buf, 0x16u);
  }

  if ([v145 count])
  {
    v19 = _UIDictationControllerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to YES", buf, 0xCu);
    }

    [a1[4] setIsProcessingPotentialVoiceCommand:1];
  }

  v20 = objc_alloc_init(getSISchemaUEIDictationVoiceCommandExecutedClass());
  if ([v145 count] != 1)
  {
    if ([v145 count] >= 2 && objc_msgSend(objc_opt_class(), "supportsSiriDictationVoiceCommandsAdjacentEdits"))
    {
      v131 = v20;
      v49 = [v145 firstObject];
      v50 = [v49 commandId];

      v51 = [objc_opt_class() commandIdentifierWithStringIdentifier:v50];
      v52 = [v145 firstObject];
      v53 = [v52 voiceCommandUUID];

      if (v51 != 21 && v51 != 27)
      {
        v54 = _UIDictationControllerUndoRedoLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
          _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_DEFAULT, "%s Command is neither undo nor redo, so ending and beginning undo grouping if necessary", buf, 0xCu);
        }

        [a1[4] _endUndoGroupingIfNecessary];
        [a1[4] _beginUndoGroupingIfNecessary];
      }

      v134 = v53;
      v129 = v50;
      v55 = [a1[6] potentialCommandPrecedingUtterance];
      v56 = v55;
      if (v55)
      {
        v57 = [v55 recognition];
        v58 = [v57 phrases];
        v59 = [v58 count];

        if (v59)
        {
          v60 = a1[7];
          v61 = [v56 recognition];
          v62 = [v61 phrases];
          [v60 synthesizeDidRecognizePhrases:v62 languageModel:0 correctionIdentifier:0];
        }
      }

      [a1[4] _setupForCommandExecutionWithCommandIdentifier:{v51, v56}];
      v185[0] = MEMORY[0x1E69E9820];
      v185[1] = 3221225472;
      v185[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1192;
      v185[3] = &unk_1E7114FA0;
      v185[4] = a1[4];
      v185[5] = v51;
      v63 = [v145 sortedArrayUsingComparator:v185];
      v132 = +[UIKeyboardImpl activeInstance];
      v64 = [MEMORY[0x1E695DF70] array];
      v139 = [MEMORY[0x1E695DF70] array];
      v65 = [MEMORY[0x1E695DF70] array];
      v138 = [MEMORY[0x1E695DF70] array];
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v66 = v63;
      objb = [v66 countByEnumeratingWithState:&v181 objects:v193 count:16];
      v152 = v65;
      v141 = v51;
      v140 = v66;
      if (objb)
      {
        v143 = *v182;
        do
        {
          for (j = 0; j != objb; j = j + 1)
          {
            if (*v182 != v143)
            {
              objc_enumerationMutation(v140);
            }

            v68 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:*(*(&v181 + 1) + 8 * j)];
            v69 = [a1[4] commandMetadataWithDictationCommandIdentifier:v51 parameters:v68];
            v70 = [v69 expandedTargetMetadata];

            if (v70)
            {
              v71 = [v69 expandedTargetMetadata];
              v72 = [v71 expandedTargetStartIndex];

              v73 = [v69 expandedTargetMetadata];
              v74 = [v73 expandedTargetLength];

              v75 = [v69 expandedTargetMetadata];
              v76 = [v75 expandedTargetOffset];

              v77 = [v69 expandedTargetMetadata];
              v78 = [v77 expandedPayload];

              v178[0] = MEMORY[0x1E69E9820];
              v178[1] = 3221225472;
              v178[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_2;
              v178[3] = &__block_descriptor_40_e24_B32__0__NSValue_8Q16_B24l;
              v179 = v72;
              v180 = v74;
              if ([v64 indexOfObjectPassingTest:v178] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v138 addObject:v78];
                v79 = v74;
                v80 = [MEMORY[0x1E696B098] valueWithRange:{v72, v74}];
                [v64 addObject:v80];

                v81 = [v69 expandedTargetMetadata];
                v82 = [v81 expandedTarget];
                [v152 addObject:v82];

                *buf = v76;
                *&buf[8] = v79;
                v83 = [MEMORY[0x1E696B098] valueWithBytes:buf objCType:"{?=qq}"];
                [v139 addObject:v83];
              }
            }

            else
            {
              v84 = [v69 targetMetadata];

              if (!v84)
              {
                goto LABEL_58;
              }

              v85 = [v69 targetMetadata];
              v86 = [v85 targetStartIndex];

              v87 = [v69 targetMetadata];
              v88 = [v87 targetLength];

              v89 = [v69 targetMetadata];
              v137 = [v89 targetOffset];

              v90 = [v69 targetMetadata];
              v78 = [v90 payload];

              v91 = [v69 targetMetadata];
              v92 = [v91 target];

              v175[0] = MEMORY[0x1E69E9820];
              v175[1] = 3221225472;
              v175[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_3;
              v175[3] = &__block_descriptor_40_e24_B32__0__NSValue_8Q16_B24l;
              v176 = v86;
              v177 = v88;
              if ([v64 indexOfObjectPassingTest:v175] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v138 addObject:v78];
                v93 = [MEMORY[0x1E696B098] valueWithRange:{v86, v88}];
                [v64 addObject:v93];

                [v152 addObject:v92];
                *buf = v137;
                *&buf[8] = v88;
                v94 = [MEMORY[0x1E696B098] valueWithBytes:buf objCType:"{?=qq}"];
                [v139 addObject:v94];
              }

              a1 = v153;
            }

            v65 = v152;
            v51 = v141;
LABEL_58:
          }

          v66 = v140;
          objb = [v140 countByEnumeratingWithState:&v181 objects:v193 count:16];
        }

        while (objb);
      }

      [v131 setCommandType:{objc_msgSend(objc_opt_class(), "mapDictationCommandIdentifierToUEIcommandIdentifier:", v51)}];
      v48 = v134;
      v95 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v134];
      [v131 setVoiceCommandId:v95];

      v96 = v66;
      v97 = [v132 inputDelegateManager];
      v98 = [v97 hasAsyncCapableInputDelegate];

      if (v98)
      {
        v99 = v51;
        v100 = a1[4];
        v164[0] = MEMORY[0x1E69E9820];
        v164[1] = 3221225472;
        v164[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_4;
        v164[3] = &unk_1E7115010;
        v165 = v139;
        v166 = v64;
        v167 = v65;
        v101 = v138;
        v102 = v138;
        v103 = a1[4];
        v168 = v102;
        v169 = v103;
        v170 = v132;
        v171 = v134;
        v172 = v96;
        v174 = v99;
        v173 = v131;
        [v100 _requestDocumentContextWithCompletionHandler:v164];

        v104 = v165;
        v105 = v132;
        v18 = v145;
        v20 = v131;
        v45 = v129;
      }

      else
      {
        objc = [MEMORY[0x1E695DF70] array];
        v144 = [MEMORY[0x1E695DF70] array];
        v109 = v139;
        if ([v139 count])
        {
          v110 = 0;
          do
          {
            v162 = 0;
            v163 = 0;
            v111 = [v109 objectAtIndexedSubscript:v110];
            [v111 getValue:&v162];

            v112 = [v132 inputDelegateManager];
            v113 = [v112 textInputDelegate];
            v114 = [v113 _textRangeFromDirectionalRange:{v162, v163}];

            v115 = [v132 inputDelegateManager];
            v116 = [v115 textInRange:v114];

            v117 = [v152 objectAtIndexedSubscript:v110];
            v118 = [v116 caseInsensitiveCompare:v117];

            if (v118)
            {
              v119 = _UIDictationControllerLog();
              if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                v120 = [v152 objectAtIndexedSubscript:v110];
                *buf = 136315650;
                *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
                *&buf[12] = 2112;
                *&buf[14] = v116;
                v191 = 2112;
                v192 = v120;
                _os_log_error_impl(&dword_188A29000, v119, OS_LOG_TYPE_ERROR, "%s Invalid target, textInRange:'%@', targetText:'%@'", buf, 0x20u);
              }
            }

            else
            {
              [objc addObject:v114];
              v119 = [v138 objectAtIndexedSubscript:v110];
              [v144 addObject:v119];
            }

            ++v110;
            v109 = v139;
          }

          while ([v139 count] > v110);
        }

        if ([objc count])
        {
          [v153[4] playVoiceCommandHapticFeedack];
          v121 = [v132 _textChoicesAssistant];
          v154[0] = MEMORY[0x1E69E9820];
          v154[1] = 3221225472;
          v154[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1200;
          v154[3] = &unk_1E7114FE8;
          v122 = v140;
          v123 = v153[4];
          v155 = v122;
          v156 = v123;
          v161 = v141;
          v157 = v131;
          v48 = v134;
          v158 = v134;
          v159 = objc;
          v160 = v132;
          [v121 decorateTextInRanges:v159 replacementTexts:v144 allowAutomaticReplacement:1 autoHide:0 voiceCommandTrackingUUID:v158 withCompletionHandler:v154];

          v18 = v145;
          v45 = v129;
          v65 = v152;
        }

        else
        {
          v124 = _UIDictationControllerLog();
          v48 = v134;
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
            _os_log_impl(&dword_188A29000, v124, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", buf, 0xCu);
          }

          [v153[4] setIsProcessingPotentialVoiceCommand:0];
          [v153[4] notifyDocumentStateChangedAndResumeDictation:v132];
          v125 = _UIDictationControllerLog();
          v18 = v145;
          v45 = v129;
          v65 = v152;
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
            _os_log_error_impl(&dword_188A29000, v125, OS_LOG_TYPE_ERROR, "%s No valid target founds, command execution failed.", buf, 0xCu);
          }

          [v131 setCommandStatus:3];
          [*(v153[4] + 81) emitInstrumentation:v131];
        }

        v126 = _UIDictationControllerUndoRedoLog();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
          _os_log_impl(&dword_188A29000, v126, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
        }

        a1 = v153;
        [v153[4] setHaveReceivedFirstPartialResultForCurrentUtterance:0];

        v20 = v131;
        v105 = v132;
        v96 = v140;
        v101 = v138;
        v104 = objc;
      }
    }

    else
    {
      v106 = _UIDictationControllerLog();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
        _os_log_impl(&dword_188A29000, v106, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", buf, 0xCu);
      }

      [a1[4] setIsProcessingPotentialVoiceCommand:0];
      v107 = [a1[6] recognition];
      v45 = [v107 phrases];

      v48 = [a1[7] dictationSerializedResultWithPhrases:v45 languageModel:0];
      [a1[4] dictationConnection:a1[7] didReceiveCandidateDictationSerializableResults:v48];
      v108 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
        _os_log_impl(&dword_188A29000, v108, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
      }

      [a1[4] setHaveReceivedFirstPartialResultForCurrentUtterance:0];
    }

    v44 = v136;
    goto LABEL_86;
  }

  v21 = [v145 firstObject];
  v133 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:v21];
  v22 = [v21 commandId];
  v151 = [v21 voiceCommandUUID];
  v23 = [objc_opt_class() commandIdentifierWithStringIdentifier:v22];
  v24 = v23;
  if (v23 != 21 && v23 != 27)
  {
    v25 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "%s Command is neither undo nor redo, so ending and beginning undo grouping if necessary", buf, 0xCu);
    }

    [a1[4] _endUndoGroupingIfNecessary];
    [a1[4] _beginUndoGroupingIfNecessary];
  }

  v128 = v21;
  v130 = v20;
  v26 = [a1[6] potentialCommandPrecedingUtterance];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 recognition];
    v29 = [v28 phrases];
    v30 = [v29 count];

    if (v30)
    {
      v31 = a1[7];
      v32 = [v27 recognition];
      v33 = [v32 phrases];
      [v31 synthesizeDidRecognizePhrases:v33 languageModel:0 correctionIdentifier:0];
    }
  }

  v142 = v27;
  v34 = a1[4];
  v35 = [a1[8] nBestParses];
  v36 = [v35 firstObject];
  v37 = [v36 utterance];
  v194 = v37;
  v38 = 1;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v194 count:1];
  if ([v133 count])
  {
    v40 = v133;
  }

  else
  {
    v40 = 0;
  }

  obja = v22;
  v41 = [v34 didRecognizeCommandWithIdentifier:v22 strings:v39 parameters:v40 voiceCommandUUID:v151 allVisibleRangeRects:0 currentGazePoint:0];

  v42 = [a1[4] commandMetadataWithDictationCommandIdentifier:v24 parameters:v133];
  v20 = v130;
  [v130 setCommandType:{objc_msgSend(objc_opt_class(), "mapDictationCommandIdentifierToUEIcommandIdentifier:", v24)}];
  v43 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v151];
  [v130 setVoiceCommandId:v43];

  [a1[4] populateInstrumentationMetadataOnCommandExecuted:v42 toExecuted:v130];
  v44 = v136;
  v45 = v128;
  if ((v41 & 1) == 0)
  {
    v46 = _UIDictationControllerLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v128;
      _os_log_error_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "%s Command applicability check passed, command not handled. This should not happen: %@", buf, 0x16u);
    }

    [a1[4] resetDictation];
    v38 = 3;
  }

  [v130 setCommandStatus:v38];
  v47 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
    _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
  }

  [a1[4] setHaveReceivedFirstPartialResultForCurrentUtterance:0];
  [*(a1[4] + 81) emitInstrumentation:v130];

  v18 = v145;
  v48 = v133;
LABEL_86:

  if ([v18 count])
  {
    [a1[4] resetDictationPendingEdits];
  }
}

uint64_t __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1192(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 9999999;
  v6 = a3;
  v7 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:a2];
  v8 = [*(a1 + 32) commandMetadataWithDictationCommandIdentifier:*(a1 + 40) parameters:v7];
  v9 = [v8 expandedTargetMetadata];

  v10 = 9999999;
  v11 = 9999999;
  if (v9)
  {
    v12 = [v8 expandedTargetMetadata];
    v11 = [v12 expandedTargetStartIndex];

    v13 = [v8 expandedTargetMetadata];
    v10 = [v13 expandedTargetLength];
  }

  v14 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:v6];
  v15 = [*(a1 + 32) commandMetadataWithDictationCommandIdentifier:*(a1 + 40) parameters:v14];
  v16 = [v15 expandedTargetMetadata];

  v17 = 9999999;
  if (v16)
  {
    v18 = [v15 expandedTargetMetadata];
    v17 = [v18 expandedTargetStartIndex];

    v19 = [v15 expandedTargetMetadata];
    v5 = [v19 expandedTargetLength];
  }

  v20 = 1;
  v21 = -1;
  if (v10 >= v5)
  {
    v21 = v10 > v5;
  }

  if (v11 <= v17)
  {
    v20 = v21;
  }

  if (v11 >= v17)
  {
    v22 = v20;
  }

  else
  {
    v22 = -1;
  }

  return v22;
}

void __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_4(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v59 = [MEMORY[0x1E695DF70] array];
  v58 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 selectedTextRange];
  v54 = v6;
  v55 = v5;
  v57 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    v8 = 0x1E696B000uLL;
    v56 = a1;
    do
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:v7];
      v10 = [v9 rangeValue];
      v12 = v11;

      v72 = 0;
      v73 = 0;
      v13 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      [v13 getValue:&v72];

      v14 = [v3 _textFromDirectionalRange:{v72, v73}];
      v15 = [*(a1 + 48) objectAtIndexedSubscript:v7];
      v16 = [v14 caseInsensitiveCompare:v15];

      if (v16)
      {
        v17 = _UIDictationControllerLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [*(a1 + 48) objectAtIndexedSubscript:v7];
          *buf = 136315650;
          v75 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke_4";
          v76 = 2112;
          v77 = v14;
          v78 = 2112;
          v79 = v18;
          _os_log_error_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%s Invalid target, textInRange:'%@', targetText:'%@'", buf, 0x20u);
        }
      }

      else
      {
        v19 = v72;
        v20 = v73;
        [*(a1 + 56) objectAtIndexedSubscript:v7];
        v21 = v3;
        v22 = v8;
        v24 = v23 = v4;
        [v57 addObject:v24];

        v4 = v23;
        v8 = v22;
        v3 = v21;
        v25 = [*(v8 + 152) valueWithRange:{v19, v20}];
        [v4 addObject:v25];

        v26 = [v21 characterRectsForCharacterRange:{v10, v12}];
        v27 = [v26 firstObject];
        [v27 CGRectValue];
        x = v28;
        y = v30;
        width = v32;
        height = v34;

        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v17 = v26;
        v36 = [v17 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v69;
          a1 = v56;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v69 != v38)
              {
                objc_enumerationMutation(v17);
              }

              [*(*(&v68 + 1) + 8 * i) CGRectValue];
              v84.origin.x = v40;
              v84.origin.y = v41;
              v84.size.width = v42;
              v84.size.height = v43;
              v82.origin.x = x;
              v82.origin.y = y;
              v82.size.width = width;
              v82.size.height = height;
              v83 = CGRectUnion(v82, v84);
              x = v83.origin.x;
              y = v83.origin.y;
              width = v83.size.width;
              height = v83.size.height;
            }

            v37 = [v17 countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v37);
        }

        else
        {
          a1 = v56;
        }

        v44 = [*(v8 + 152) valueWithCGRect:{x, y, width, height}];
        [v58 addObject:v44];

        [v59 addObject:v14];
      }

      ++v7;
    }

    while ([*(a1 + 32) count] > v7);
  }

  if ([v4 count])
  {
    [*(a1 + 64) playVoiceCommandHapticFeedack];
    v45 = [*(a1 + 72) _textChoicesAssistant];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1197;
    v60[3] = &unk_1E7114FE8;
    v46 = *(a1 + 80);
    v47 = *(a1 + 88);
    v48 = *(a1 + 64);
    v61 = v47;
    v62 = v48;
    v49 = *(a1 + 96);
    v67 = *(a1 + 104);
    v63 = v49;
    v64 = *(a1 + 80);
    v65 = v4;
    v66 = *(a1 + 72);
    LOWORD(v53) = 1;
    [v45 decorateTextInRects:v58 targetTextArray:v59 replacementTexts:v57 deltaRanges:v65 originalSelectedRange:v55 allowAutomaticReplacement:v54 autoHide:v53 voiceCommandUUID:v46 withCompletionHandler:v60];
  }

  else
  {
    v50 = _UIDictationControllerLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v75 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
      _os_log_impl(&dword_188A29000, v50, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", buf, 0xCu);
    }

    [*(a1 + 64) setIsProcessingPotentialVoiceCommand:0];
    [*(a1 + 64) notifyDocumentStateChangedAndResumeDictation:*(a1 + 72)];
    v51 = _UIDictationControllerLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v75 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
      _os_log_error_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "%s No valid target founds, command execution failed.", buf, 0xCu);
    }

    [*(a1 + 96) setCommandStatus:3];
    [*(*(a1 + 64) + 648) emitInstrumentation:*(a1 + 96)];
  }

  v52 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v75 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
    _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_DEFAULT, "%s Updating haveReceivedFirstPartialResultForCurrentUtterance to NO", buf, 0xCu);
  }

  [*(a1 + 64) setHaveReceivedFirstPartialResultForCurrentUtterance:0];
}

void __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1197(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "integerValue")}];
    v6 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:v5];
    v7 = [*(a1 + 40) commandMetadataWithDictationCommandIdentifier:*(a1 + 80) parameters:v6];
    [*(a1 + 40) populateInstrumentationMetadataOnCommandExecuted:v7 toExecuted:*(a1 + 48)];
    [*(a1 + 48) setCommandStatus:1];
    [*(*(a1 + 40) + 648) emitInstrumentation:*(a1 + 48)];
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 64), "count")}];
    [v8 instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:v9 disambiguationIndex:v4 totalDisambiguationCount:v10];
  }

  v11 = _UIDictationControllerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", &v12, 0xCu);
  }

  [*(a1 + 40) setIsProcessingPotentialVoiceCommand:0];
  [*(a1 + 40) notifyDocumentStateChangedAndResumeDictation:*(a1 + 72)];
}

void __94__UIDictationController_dictationConnection_didReceiveVoiceCommandCandidatePackage_nluResult___block_invoke_1200(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "integerValue")}];
    v6 = [UIDictationUtilities dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:v5];
    v7 = [*(a1 + 40) commandMetadataWithDictationCommandIdentifier:*(a1 + 80) parameters:v6];
    [*(a1 + 40) populateInstrumentationMetadataOnCommandExecuted:v7 toExecuted:*(a1 + 48)];
    [*(a1 + 48) setCommandStatus:1];
    [*(*(a1 + 40) + 648) emitInstrumentation:*(a1 + 48)];
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 64), "count")}];
    [v8 instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:v9 disambiguationIndex:v4 totalDisambiguationCount:v10];
  }

  v11 = _UIDictationControllerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[UIDictationController dictationConnection:didReceiveVoiceCommandCandidatePackage:nluResult:]_block_invoke";
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", &v12, 0xCu);
  }

  [*(a1 + 40) setIsProcessingPotentialVoiceCommand:0];
  [*(a1 + 40) notifyDocumentStateChangedAndResumeDictation:*(a1 + 72)];
}

- (void)populateInstrumentationMetadataOnCommandExecuted:(id)a3 toExecuted:(id)a4
{
  v6 = a4;
  v5 = [a3 instrumentationMetadata];
  if ([objc_opt_class() supportsSiriDictationVoiceCommandsAdjacentEdits] && v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 setHasSpelling:{objc_msgSend(v5, "hasSpelling")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setHasTextSelection:{objc_msgSend(v5, "hasTextSelection")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setIsWfstParseable:{objc_msgSend(v5, "isWfstParseable")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setHasAdjacentEdit:{objc_msgSend(v5, "hasAdjacentEdit")}];
    }
  }
}

+ (void)didBeginEditingInTextView:(id)a3
{
  if (+[UIDictationController isRunning])
  {
    v3 = +[UIDictationController sharedInstance];
    [v3 cancelDictation];
  }

  v4 = +[UIDictationController sharedInstance];
  [v4 setWantsAvailabilityMonitoringWhenAppActive:1];
}

+ (id)stringForViewMode:(int)a3
{
  if (a3 > 7)
  {
    return @"Unknown state";
  }

  else
  {
    return off_1E71155D0[a3];
  }
}

+ (void)poppedLastStreamingOperation
{
  v2 = +[UIDictationController sharedInstance];
  v3 = [v2 state];

  if (v3 == 5)
  {
    v4 = +[UIDictationController sharedInstance];
    [v4 setState:0];
  }
}

- (void)preheatIfNecessary
{
  if (![(UIDictationController *)self hasPreheated])
  {
    v3 = [(UIDictationController *)self dictationConnection];
    [v3 preheat];

    [(UIDictationController *)self setHasPreheated:1];
  }
}

- (id)language
{
  if (+[UIDictationController viewMode])
  {
    v3 = self->_language;
  }

  else
  {
    v3 = [(UIDictationConnectionPreferences *)self->_preferences languageCode];
  }

  return v3;
}

- (void)setLanguage:(id)a3
{
  v5 = a3;
  language = self->_language;
  p_language = &self->_language;
  if (language != v5)
  {
    v8 = v5;
    objc_storeStrong(p_language, a3);
    v5 = v8;
  }
}

- (void)prepareStartDictationKeyboardGestures
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 hardwareKeyboardAttached];

  if (v4)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v5 = [v7 inputDelegateManager];
    v6 = [v5 keyInputDelegate];
    [(UIDictationController *)self prepareStartDictationKeyboardGesturesForDelegate:v6];
  }

  else
  {

    [(UIDictationController *)self removeStartDictationKeyboardGestures];
  }
}

- (void)prepareDoubleTapShortcutGesture:(id)a3
{
  v14 = a3;
  hardwareShortcutRecognizer = self->_hardwareShortcutRecognizer;
  if (!hardwareShortcutRecognizer)
  {
    v5 = [[_UITapTapHoldGestureRecognizer alloc] initWithTarget:self action:sel_dictationShortCutKey_];
    v6 = self->_hardwareShortcutRecognizer;
    self->_hardwareShortcutRecognizer = v5;

    [(UITapGestureRecognizer *)self->_hardwareShortcutRecognizer setIsSingleKeyPressGesture:1];
    hardwareShortcutRecognizer = self->_hardwareShortcutRecognizer;
  }

  v7 = [(UIGestureRecognizer *)hardwareShortcutRecognizer view];

  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v14;
    }

    else
    {
      v8 = [v14 textInputView];
    }

    v9 = v8;
    if (!v8)
    {
      v10 = +[UIWindowScene _keyWindowScene];
      v9 = [(UIWindowScene *)v10 _keyWindow];
    }

    [v9 addGestureRecognizer:self->_hardwareShortcutRecognizer];
  }

  v11 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v12 = [v11 valueForPreferenceKey:*MEMORY[0x1E69D9760]];
  v13 = [v12 intValue];

  [(UIDictationController *)self updateDoubleTapShortcutWithPreference:v13];
}

- (void)prepareVoiceCommandSingleTapGesture:(id)a3
{
  v11 = a3;
  hardwareVoiceCommandKeyRecognizer = self->_hardwareVoiceCommandKeyRecognizer;
  if (!hardwareVoiceCommandKeyRecognizer)
  {
    v5 = [(UITapGestureRecognizer *)[_UIVoiceCommandButtonTapGestureRecognizer alloc] initWithTarget:self action:sel_voiceCommandSingleTapKey_];
    v6 = self->_hardwareVoiceCommandKeyRecognizer;
    self->_hardwareVoiceCommandKeyRecognizer = v5;

    [(UITapGestureRecognizer *)self->_hardwareVoiceCommandKeyRecognizer setIsSingleKeyPressGesture:1];
    [(UITapGestureRecognizer *)self->_hardwareVoiceCommandKeyRecognizer setMaximumTapDuration:0.25];
    hardwareVoiceCommandKeyRecognizer = self->_hardwareVoiceCommandKeyRecognizer;
  }

  v7 = [(UIGestureRecognizer *)hardwareVoiceCommandKeyRecognizer view];

  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v11;
    }

    else
    {
      v8 = [v11 textInputView];
    }

    v9 = v8;
    if (!v8)
    {
      v10 = +[UIWindowScene _keyWindowScene];
      v9 = [(UIWindowScene *)v10 _keyWindow];
    }

    [v9 addGestureRecognizer:self->_hardwareVoiceCommandKeyRecognizer];
  }

  [(UITapGestureRecognizer *)self->_hardwareVoiceCommandKeyRecognizer setAllowedPressTypes:&unk_1EFE2C9D0];
  [(UIGestureRecognizer *)self->_hardwareVoiceCommandKeyRecognizer setAllowedTouchTypes:&unk_1EFE2C9E8];
}

- (void)prepareStartDictationKeyboardGesturesForDelegate:(id)a3
{
  v6 = a3;
  [(UIDictationController *)self removeStartDictationKeyboardGestures];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 hardwareKeyboardAttached];

  if (v5)
  {
    [(UIDictationController *)self prepareDoubleTapShortcutGesture:v6];
    [(UIDictationController *)self prepareVoiceCommandSingleTapGesture:v6];
  }
}

- (void)updateDoubleTapShortcutWithPreference:(int64_t)a3
{
  if (self->_currentShortcutType != a3 || (-[UIGestureRecognizer allowedPressTypes](self->_hardwareShortcutRecognizer, "allowedPressTypes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    v7 = MEMORY[0x1E695E0F0];
    v8 = &unk_1EFE2CA30;
    if (a3 == 1)
    {
      v7 = &unk_1EFE2CA48;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    if (a3)
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_1EFE2CA00;
    }

    if (a3)
    {
      v10 = v7;
    }

    else
    {
      v10 = &unk_1EFE2CA18;
    }

    [(UITapGestureRecognizer *)self->_hardwareShortcutRecognizer setAllowedPressTypes:v9];
    [(UIGestureRecognizer *)self->_hardwareShortcutRecognizer setAllowedTouchTypes:v10];
    self->_currentShortcutType = a3;
  }
}

- (void)handleHardwareKeyboardGesture
{
  if (+[UIDictationController isRunning])
  {
    v2 = +[UIDictationController sharedInstance];
    [v2 stopDictation];

    v4 = +[UIKeyboardImpl activeInstance];
    [v4 clearDictationMenuTimer];
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if ([v4 shouldShowDictationKey])
    {
      v3 = [objc_opt_class() dictationIsFunctional];

      if (!v3)
      {
        return;
      }

      v4 = +[UIDictationController sharedInstance];
      [v4 switchToDictationInputMode];
    }
  }
}

- (void)dictationShortCutKey:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    if (+[UIDictationController isRunning])
    {
      [v4 setState:4];
    }

    [(UIDictationController *)self setReasonType:21];
    [(UIDictationController *)self handleHardwareKeyboardGesture];
  }

  if ([v4 state] == 3 && (objc_msgSend(v4, "gestureType") != 1 || +[UIDictationController isRunning](UIDictationController, "isRunning")))
  {
    [(UIDictationController *)self setReasonType:21];
    [(UIDictationController *)self handleHardwareKeyboardGesture];
  }
}

- (void)voiceCommandSingleTapKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UIGestureRecognizer *)v4 state]== UIGestureRecognizerStateEnded)
  {
    hardwareVoiceCommandKeyRecognizer = self->_hardwareVoiceCommandKeyRecognizer;
    if (hardwareVoiceCommandKeyRecognizer == v4)
    {
      v6 = [(_UIVoiceCommandButtonTapGestureRecognizer *)hardwareVoiceCommandKeyRecognizer voiceCommandButtonTapDuration];
      [(UITapGestureRecognizer *)self->_hardwareVoiceCommandKeyRecognizer maximumTapDuration];
      v8 = v7;
      v9 = _UIDictationControllerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        [v6 doubleValue];
        v12 = 136315650;
        v13 = "[UIDictationController voiceCommandSingleTapKey:]";
        v14 = 2048;
        v15 = v10;
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s Triggered with: tapDuration=%f, maxTapDuration=%f", &v12, 0x20u);
      }

      if (v6)
      {
        [v6 doubleValue];
        if (v11 <= v8)
        {
          [(UIDictationController *)self setReasonType:22];
          [(UIDictationController *)self handleHardwareKeyboardGesture];
        }
      }
    }
  }
}

- (void)preferencesChanged:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 hardwareKeyboardAttached];

  if (v5)
  {
    v6 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v7 = [v6 valueForPreferenceKey:*MEMORY[0x1E69D9760]];
    v8 = [v7 intValue];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__UIDictationController_preferencesChanged___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = self;
    v9[5] = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

- (id)_assistantCompatibleLanguageCodeForInputMode:(id)a3
{
  v3 = a3;
  v4 = TIInputModeGetLanguage();
  v5 = TIInputModeGetRegion();

  if ([v4 isEqualToString:@"ko"] && -[__CFString isEqualToString:](v5, "isEqualToString:", @"KO"))
  {

    v5 = @"KR";
LABEL_5:
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v4, v5];

    goto LABEL_7;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = v4;
LABEL_7:

  return v6;
}

- (id)_currentLanguageForOfflineDictationMetrics
{
  v3 = [(UIDictationController *)self currentInputModeForDictation];
  v4 = [v3 dictationLanguage];
  v5 = [(UIDictationController *)self _assistantCompatibleLanguageCodeForInputMode:v4];

  return v5;
}

- (void)_markOfflineDictationInputMetricEvent
{
  if (self->_isOfflineMetricsSessionActive)
  {
    self->_didUseOfflineDictation = 1;
    self->_lastOfflineDictationMetricEvent = 1;
  }
}

- (void)markKeyboardInputMetricEvent
{
  if (self->_isOfflineMetricsSessionActive)
  {
    if (self->_lastOfflineDictationMetricEvent == 1)
    {
      AFAggregatorClass = getAFAggregatorClass();
      v4 = [(UIDictationController *)self _currentLanguageForOfflineDictationMetrics];
      [AFAggregatorClass logDictationFollowedByKeyboardInputOccurredForLanguage:v4];
    }

    self->_lastOfflineDictationMetricEvent = 2;
  }
}

- (void)markDictationTipDeletionEvent:(id)a3 deletedTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  if (self->_lastKeyboardMetricEvent != 3 || !+[UIDictationController isRunning])
  {
    [(UIDictationTipController *)self->_dictationTipController resetDeletionEventCount];
  }

  [(UIDictationTipController *)self->_dictationTipController addDeletionEventCount:v7 deletedTextRange:location, length];
  self->_lastKeyboardMetricEvent = 3;
}

- (void)markKeyboardDeleteMetricEvent
{
  if (self->_isOfflineMetricsSessionActive)
  {
    if (self->_lastOfflineDictationMetricEvent == 1)
    {
      AFAggregatorClass = getAFAggregatorClass();
      v4 = [(UIDictationController *)self _currentLanguageForOfflineDictationMetrics];
      [AFAggregatorClass logDictationFollowedByKeyboardDeleteOccurredForLanguage:v4];
    }

    self->_lastOfflineDictationMetricEvent = 3;
  }
}

- (void)markKeyboardDidReset
{
  if (self->_isOfflineMetricsSessionActive)
  {
    self->_didUseOfflineDictation = 0;
    self->_lastOfflineDictationMetricEvent = 0;
  }
}

- (void)overrideSmartLanguageSelection:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIDictationController *)self setSmartLanguageSelectionOverrideLanguage:v4];
  v5 = _UIDictationControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[UIDictationController overrideSmartLanguageSelection:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s Dictation language: %@", buf, 0x16u);
  }

  v6 = [getAFAnalyticsClass() sharedAnalytics];
  v7 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
  v13[0] = v7;
  v12[1] = @"correctionIdentifier";
  v8 = [(UIDictationController *)self lastCorrectionIdentifier];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v10 = v8;
  }

  v13[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 logEventWithType:2219 context:v11];
}

- (BOOL)smartLanguageSelectionOverridden
{
  v2 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
  v3 = v2 != 0;

  return v3;
}

- (void)rtiInputSessionWillChangeToNewProcess:(id)a3
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    if (+[UIDictationController isRunning])
    {
      [(UIDictationController *)self setAppState:0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__UIDictationController_rtiInputSessionWillChangeToNewProcess___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __63__UIDictationController_rtiInputSessionWillChangeToNewProcess___block_invoke(uint64_t a1)
{
  result = +[UIKeyboard isKeyboardProcess];
  if (result)
  {
    result = +[UIDictationController isRunning];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 performIgnoringRTIChanges:&__block_literal_global_1254];
    }
  }

  return result;
}

void __63__UIDictationController_rtiInputSessionWillChangeToNewProcess___block_invoke_2()
{
  v0 = +[UIDictationController sharedInstance];
  [v0 stopDictationIgnoreFinalizePhrases];
}

- (void)keyboardDidHide:(id)a3
{
  v4 = +[UIDictationView activeInstance];
  v5 = [v4 switchingLanguage];

  if ((v5 & 1) == 0)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    if ([(UIDictationController *)self shouldStayInDictationInputMode])
    {
      [(UIDictationController *)self setShouldStayInDictationInputMode:0];
      v7 = [(UIDictationController *)self keyboardInputModeToReturn];
      [v6 setKeyboardInputMode:v7 userInitiated:0];
    }

    else if (([v6 _shouldSuppressSoftwareKeyboard] & 1) == 0 && (objc_msgSend(v6, "isInHardwareKeyboardMode") & 1) == 0 && !-[UIDictationController ignoreKeyboardDidHideNotification](self, "ignoreKeyboardDidHideNotification"))
    {
      [(UIDictationController *)self stopDictationIgnoreFinalizePhrases];
    }
  }

  [(UIDictationController *)self setIgnoreKeyboardDidHideNotification:0];
}

+ (BOOL)isDictationSearchBarButtonVisible
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 inputDelegate];

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 showDictationButton] && objc_msgSend(v3, "isEditing") && !objc_msgSend(v3, "hasText");

  return v4;
}

+ (id)textRelatedMetadataKeys
{
  if (qword_1ED498868 != -1)
  {
    dispatch_once(&qword_1ED498868, &__block_literal_global_1256);
  }

  v3 = qword_1ED498860;

  return v3;
}

void __48__UIDictationController_textRelatedMetadataKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"fullText", @"originalText", @"replacementText", @"bestAlternatives", @"bestText", @"text", @"text", 0}];
  v1 = qword_1ED498860;
  qword_1ED498860 = v0;
}

+ (id)arrayWithTextEntriesRemoved:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [a1 arrayWithTextEntriesRemoved:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [a1 dictionaryWithTextEntriesRemoved:{v11, v15}];
          }

          else
          {
            v12 = v11;
          }
        }

        v13 = v12;
        [v5 addObject:{v12, v15}];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)dictionaryWithTextEntriesRemoved:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__UIDictationController_dictionaryWithTextEntriesRemoved___block_invoke;
  v9[3] = &unk_1E7115060;
  v11 = a1;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __58__UIDictationController_dictionaryWithTextEntriesRemoved___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [objc_opt_class() textRelatedMetadataKeys];
  v7 = [v6 containsObject:v12];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = @"*";
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_opt_class() arrayWithTextEntriesRemoved:v5];
LABEL_7:
    v11 = v10;

    v5 = v11;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_opt_class() dictionaryWithTextEntriesRemoved:v5];
    goto LABEL_7;
  }

LABEL_8:
  v8 = *(a1 + 32);
  v9 = v5;
LABEL_9:
  [v8 setObject:v9 forKey:v12];
}

+ (id)whitelistedDictationMetadataKeys
{
  if (qword_1ED498878 != -1)
  {
    dispatch_once(&qword_1ED498878, &__block_literal_global_1259);
  }

  v3 = qword_1ED498870;

  return v3;
}

void __57__UIDictationController_whitelistedDictationMetadataKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"characterModificationCount", @"characterInsertionCount", @"characterDeletionCount", @"characterSubstitutionCount", @"correctionIdentifier", @"dictationUIInteractionIdentifier", @"fullText", @"speechRecognitionSource", @"multilingualIsLowConfidence", @"bestAlternatives", @"bestText", @"alternativesSelectedCount", @"alternativesSelected", @"insertions", @"deletions", @"substitutions", @"insertion", @"deletion", 0}];
  v1 = qword_1ED498870;
  qword_1ED498870 = v0;
}

+ (id)whitelistedDictationDictionaryFromMetadata:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[UIDictationController whitelistedDictationMetadataKeys];
  v5 = [MEMORY[0x1E695DF90] dictionary];
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
        if ([v4 containsObject:{v11, v14}])
        {
          v12 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)shouldRemoveTextEntries:(id)a3
{
  v4 = a3;
  if ([a1 canShareDictationData])
  {
    v5 = [v4 objectForKey:@"speechRecognitionSource"];
    if ([v5 isEqualToString:@"local"])
    {
      v6 = os_variant_has_internal_diagnostics() ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (BOOL)canShareDictationData
{
  v3 = [a1 sharedInstance];
  v4 = [v3 isDetectingUtterances];

  if ((v4 & 1) == 0)
  {
    v5 = [a1 sharedInstance];
    v6 = [v5 secureOfflineOnlySpeechRecognition];

    if (!v6)
    {
      return 1;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v9 = [getAFPreferencesClass_0() sharedPreferences];
      v7 = [v9 siriDataSharingOptInStatus] == 1;

      return v7;
    }
  }

  return 0;
}

+ (id)removeTextIfNeeded:(id)a3
{
  v3 = a3;
  if (v3 && ([objc_opt_class() shouldRemoveTextEntries] & 1) != 0)
  {
    v4 = @"*";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

+ (id)removeTextIfNeeded:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([objc_opt_class() shouldRemoveTextEntries:v6] & 1) != 0)
  {
    v7 = @"*";
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

+ (id)whitelistedDictationDictionariesFromMetadataDictionaries:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [objc_opt_class() whitelistedDictationDictionaryFromMetadata:{v10, v16}];
        if (v11)
        {
          v12 = v11;
          if ([objc_opt_class() shouldRemoveTextEntries:v10])
          {
            v13 = [objc_opt_class() dictionaryWithTextEntriesRemoved:v12];

            v12 = v13;
          }

          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v14;
}

+ (id)activeSLSDictationLanguages
{
  v45 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    v9 = 0;
    goto LABEL_32;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__125;
  v36 = __Block_byref_object_dispose__125;
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  v37 = [v2 dictationSLSEnabledLanguages];

  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  if ([v33[5] count])
  {
    v4 = _UIDictationControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v6 = [v5 preferencesActions];
      v7 = [v6 valueForPreferenceKey:@"DictationLanguagesEnabled"];
      v8 = v33[5];
      *buf = 136315650;
      v40 = "+[UIDictationController activeSLSDictationLanguages]";
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Getting dictation languages: enabledDictationLanguages %@ enabledSLSDictationLanguages %@", buf, 0x20u);
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__UIDictationController_activeSLSDictationLanguages__block_invoke;
    v31[3] = &unk_1E7115088;
    v31[4] = &v32;
    [v3 updateEnabledDictationAndSLSLanguagesWithCompletionBlock:v31];
  }

  v25 = [v33[5] keysOfEntriesPassingTest:&__block_literal_global_1264];
  if ([v25 count] >= 2)
  {
    v10 = MEMORY[0x1E695DFA8];
    v11 = [v3 enabledDictationLanguages];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v26 = [v10 setWithArray:{v13, v25}];

    [v26 intersectSet:v25];
    if ([v26 count] < 2)
    {
      v9 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v14 = [v3 currentInputMode];
    v15 = [v14 languageWithRegion];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v3 enabledDictationLanguages];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v3 keyboardLanguageForDictationLanguage:v21];
          v23 = [v22 isEqualToString:v15];

          if (v23)
          {
            if ([v26 containsObject:v21])
            {
              goto LABEL_27;
            }

            v18 = 1;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v17);

      if (v18)
      {
        v9 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
LABEL_27:
    }

    v9 = [v26 allObjects];
    goto LABEL_29;
  }

  v9 = 0;
LABEL_31:

  _Block_object_dispose(&v32, 8);
LABEL_32:

  return v9;
}

void __52__UIDictationController_activeSLSDictationLanguages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v7 = _UIDictationControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "+[UIDictationController activeSLSDictationLanguages]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s Generated since no existing defafult for SLS languages: enabledDictationLanguages %@ enabledSLSDictationLanguages %@", &v8, 0x20u);
  }
}

- (id)dictationUIState
{
  v40[8] = *MEMORY[0x1E69E9840];
  v39[0] = @"EnabledDictationLanguages";
  v38 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v37 = [v38 preferencesActions];
  v3 = [v37 valueForPreferenceKey:@"DictationLanguagesEnabled"];
  v4 = MEMORY[0x1E695E0F8];
  v36 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v40[0] = v5;
  v39[1] = @"EnabledSLSDictationLanguages";
  v35 = [getAFPreferencesClass_0() sharedPreferences];
  v6 = [v35 dictationSLSLanguagesEnabled];
  v34 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v40[1] = v7;
  v39[2] = @"EffectiveEnabledDictationLanguages";
  v33 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v33 enabledDictationLanguages];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v40[2] = v10;
  v39[3] = @"SmartLanguageSelectionOverridden";
  v32 = [(UIDictationController *)self smartLanguageSelectionOverridden];
  if (v32)
  {
    v11 = MEMORY[0x1E696AEC0];
    v30 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
    v12 = [v11 stringWithFormat:@"with %@", v30];
  }

  else
  {
    v12 = @"No";
  }

  v31 = v12;
  v40[3] = v12;
  v39[4] = @"CurrentKeyboardPrimaryLanguage";
  v13 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
  v14 = v13;
  v15 = @"Not set";
  if (v13)
  {
    v15 = v13;
  }

  v40[4] = v15;
  v39[5] = @"CurrentKeyboardLanguage";
  v16 = +[UIKeyboardInputModeController sharedInputModeController];
  v17 = [v16 currentInputMode];
  v18 = [v17 primaryLanguage];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1EFB14550;
  }

  v40[5] = v20;
  v39[6] = @"DictationLanguage";
  v21 = +[UIKeyboardInputModeController sharedInputModeController];
  v22 = [v21 currentInputMode];
  v23 = [v22 dictationLanguage];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v40[6] = v25;
  v39[7] = @"IsFallingBackToMonolingualDictation";
  v26 = [(UIDictationController *)self isFallingBackToMonolingualDictation];
  v27 = @"Yes";
  if (!v26)
  {
    v27 = @"No";
  }

  v40[7] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:8];

  if (v32)
  {
  }

  return v28;
}

- (void)instrumentationDictationContextEmitInstrumentation
{
  v51 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v3 = getSISchemaDictationContextClass_softClass;
  v48 = getSISchemaDictationContextClass_softClass;
  if (!getSISchemaDictationContextClass_softClass)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __getSISchemaDictationContextClass_block_invoke;
    v44[3] = &unk_1E70F2F20;
    v44[4] = &v45;
    __getSISchemaDictationContextClass_block_invoke(v44);
    v3 = v46[3];
  }

  v4 = v3;
  _Block_object_dispose(&v45, 8);
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_class();
  v7 = [(UIDictationController *)self currentKeyboardPrimaryLanguage];
  v8 = [v6 UIDictationInstrumentaionLocalIdentifierWithLocalString:v7];
  [v5 setKeyboardLocale:v8];

  v9 = objc_opt_class();
  v10 = [(UIDictationController *)self initialDictationLanguage];
  v11 = [v9 UIDictationInstrumentaionLocalIdentifierWithLocalString:v10];
  [v5 setDictationLocale:v11];

  v12 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [(UIDictationController *)self smartLanguageSelectionOverrideLanguage];
    v15 = [v13 UIDictationInstrumentaionLocalIdentifierWithLocalString:v14];
    [v5 setUserSelectedLocale:v15];
  }

  else
  {
    [v5 setUserSelectedLocale:0];
  }

  v16 = objc_alloc(getSISchemaUUIDClass());
  v17 = +[UIKeyboardImpl activeInstance];
  v18 = [v17 _sessionIdentifier];
  v19 = [v16 initWithNSUUID:v18];
  [v5 setTextInputSessionId:v19];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = +[UIKeyboardInputModeController sharedInputModeController];
  v21 = [v20 activeInputModes];

  v22 = [v21 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v22)
  {
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = objc_opt_class();
        v27 = [v25 languageWithRegion];
        v28 = [v26 UIDictationInstrumentaionLocalIdentifierWithLocalString:v27];
        [v5 addKeyboardLocalesEnabled:v28];
      }

      v22 = [v21 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v22);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = +[UIKeyboardInputModeController sharedInputModeController];
  v30 = [v29 activeDictationLanguages];

  v31 = [v30 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v31)
  {
    v32 = *v37;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = [objc_opt_class() UIDictationInstrumentaionLocalIdentifierWithLocalString:*(*(&v36 + 1) + 8 * j)];
        [v5 addDictationLocalesEnabled:v34];
      }

      v31 = [v30 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v31);
  }

  v35 = +[UIKeyboard keyboardBundleIdentifier];
  [v5 setBundleId:v35];

  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v5];
}

- (void)instrumentationDictationTranscriptionMetadataEmitInstrumentationWithDictationResult:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v34 = [v35 dictationPhraseArray];
  v3 = [v35 bestTextForMultilingualAlternatives];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v32 = v5;

  if ([v35 lowConfidenceAboutLanguageDetection] && objc_msgSend(v35, "showMultilingualAlternatives") && objc_msgSend(v32, "count"))
  {
    v6 = [v35 multilingualAlternatives];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v35 multilingualAlternatives];
      v9 = [v8 objectAtIndex:0];
      v10 = [v9 dominantLanguage];

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v10 = 0;
    }

    v22 = 1;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v34;
    v11 = 0;
    v12 = 0;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v14)
    {
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          if ([v17 style] == 1)
          {
            v18 = [v17 text];
            v19 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v20 = [v18 componentsSeparatedByCharactersInSet:v19];
            v21 = [v20 count];

            v12 = (v12 + 1);
            v11 = (v11 + v21);
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v14);
    }

    v22 = 0;
    v10 = 0;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v23 = qword_1ED498918;
  v49 = qword_1ED498918;
  if (!qword_1ED498918)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __getSISchemaDictationAlternativesPresentClass_block_invoke;
    v44 = &unk_1E70F2F20;
    v45 = &v46;
    __getSISchemaDictationAlternativesPresentClass_block_invoke(&v41);
    v23 = v47[3];
  }

  v24 = v23;
  _Block_object_dispose(&v46, 8);
  v25 = objc_alloc_init(v23);
  [v25 setNumberOfUnderlines:v12];
  [v25 setCountOfWordsUnderlined:v11];
  if (v10)
  {
    v26 = [objc_opt_class() UIDictationInstrumentaionLocalIdentifierWithLocalString:v10];
    [v25 setAlternativesLocale:v26];
  }

  else
  {
    [v25 setAlternativesLocale:0];
  }

  [v25 setMultilingualIsLowConfidence:{v22, v32}];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v27 = qword_1ED498920;
  v49 = qword_1ED498920;
  if (!qword_1ED498920)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __getSISchemaDictationTranscriptionMetadataClass_block_invoke;
    v44 = &unk_1E70F2F20;
    v45 = &v46;
    __getSISchemaDictationTranscriptionMetadataClass_block_invoke(&v41);
    v27 = v47[3];
  }

  v28 = v27;
  _Block_object_dispose(&v46, 8);
  v29 = objc_alloc_init(v27);
  if ([(UIDictationController *)self secureOfflineOnlySpeechRecognition])
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  [v29 setDictationModel:v30];
  if ([(UIDictationController *)self secureOfflineOnlySpeechRecognition])
  {
    v31 = [(UIDictationController *)self modelInfo];
    [v29 setDictationModelVersion:v31];
  }

  else
  {
    [v29 setDictationModelVersion:0];
  }

  [v29 setDictationAlternativesPresent:v25];
  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v29];
}

+ (id)UIDictationInstrumentaionLocalIdentifierWithLocalString:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getSISchemaLocaleIdentifierClass_softClass;
  v14 = getSISchemaLocaleIdentifierClass_softClass;
  if (!getSISchemaLocaleIdentifierClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSISchemaLocaleIdentifierClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getSISchemaLocaleIdentifierClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_alloc_init(v4);
  v7 = TIInputModeGetBaseLanguage();
  [v6 setLanguageCode:v7];

  v8 = TIInputModeGetRegion();
  [v6 setCountryCode:v8];

  return v6;
}

+ (int)UIDictationStartStopReasonToInstrumentationInvocationSourceType:(unint64_t)a3
{
  if (a3 - 1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return dword_18A67F5C0[a3 - 1];
  }
}

+ (int)UIDictationStartStopReasonToInstrumentationDictationEndPointType:(unint64_t)a3
{
  if (a3 - 1 > 0x1C)
  {
    return 0;
  }

  else
  {
    return dword_18A67F630[a3 - 1];
  }
}

+ (void)instrumentationDictationAlternativesViewedWithInstrumentationContext:(id)a3 alternatives:(id)a4 dictationLanguage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v11 = getSISchemaDictationAlternativesViewedClass_softClass;
    v23 = getSISchemaDictationAlternativesViewedClass_softClass;
    if (!getSISchemaDictationAlternativesViewedClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getSISchemaDictationAlternativesViewedClass_block_invoke;
      v19[3] = &unk_1E70F2F20;
      v19[4] = &v20;
      __getSISchemaDictationAlternativesViewedClass_block_invoke(v19);
      v11 = v21[3];
    }

    v12 = v11;
    _Block_object_dispose(&v20, 8);
    v13 = objc_alloc_init(v11);
    v14 = [v9 objectForKeyedSubscript:@"alternatives"];
    [v13 setCountOfAlternativesAvailable:{objc_msgSend(v14, "count")}];

    v15 = [v9 objectForKeyedSubscript:@"originalText"];
    v16 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v17 = [v15 componentsSeparatedByCharactersInSet:v16];
    [v13 setCountOfWordsUnderlined:{objc_msgSend(v17, "count")}];

    if (v10)
    {
      v18 = [a1 UIDictationInstrumentaionLocalIdentifierWithLocalString:v10];
      [v13 setAlternativesLocale:v18];
    }

    else
    {
      [v13 setAlternativesLocale:0];
    }

    [v8 emitInstrumentation:v13];
  }
}

+ (void)instrumentationDictationAlternativeSelectedWithInstrumentationContext:(id)a3 originalText:(id)a4 replacementText:(id)a5 replacementIndex:(unint64_t)a6 alternativesAvailableCount:(unint64_t)a7 dictationLanguage:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v14)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v18 = getSISchemaDictationAlternativeSelectedClass_softClass;
    v28 = getSISchemaDictationAlternativeSelectedClass_softClass;
    if (!getSISchemaDictationAlternativeSelectedClass_softClass)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getSISchemaDictationAlternativeSelectedClass_block_invoke;
      v24[3] = &unk_1E70F2F20;
      v24[4] = &v25;
      __getSISchemaDictationAlternativeSelectedClass_block_invoke(v24);
      v18 = v26[3];
    }

    v19 = v18;
    _Block_object_dispose(&v25, 8);
    v20 = objc_alloc_init(v18);
    [v20 setAlternativeListPosition:a6];
    [v20 setCountOfAlternativesAvailable:a7];
    v21 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v22 = [v15 componentsSeparatedByCharactersInSet:v21];
    [v20 setCountOfWordsReplaced:{objc_msgSend(v22, "count")}];

    if (v17)
    {
      v23 = [a1 UIDictationInstrumentaionLocalIdentifierWithLocalString:v17];
      [v20 setAlternativesLocale:v23];
    }

    else
    {
      [v20 setAlternativesLocale:0];
    }

    [v14 emitInstrumentation:v20];
  }
}

- (void)optInButtonPressedForPresenter:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  v5 = qword_1ED4987F8;
  qword_1ED4987F8 = v4;

  [(UIDictationController *)self _handleDataSharingSheetDecision];
  [MEMORY[0x1E69D9560] dismissedDataSharingWithResponse:1];
  v6 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)optOutButtonPressedForPresenter:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  v5 = qword_1ED4987F8;
  qword_1ED4987F8 = v4;

  [(UIDictationController *)self _handleDataSharingSheetDecision];
  [MEMORY[0x1E69D9560] dismissedDataSharingWithResponse:3];
  v6 = [(UIDictationController *)self presentingViewControllerForPrivacySheet];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

+ (BOOL)shouldPreferOnlineRecognition
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 textInputTraits];
  v4 = [v3 preferOnlineDictation];

  return v4;
}

+ (BOOL)shouldPreferOnDeviceRecognition
{
  if ([a1 shouldPreferOnlineRecognition])
  {
    return 0;
  }

  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 textInputTraits];
  v4 = [v3 returnKeyType];

  if (v4 != 6)
  {
    return 0;
  }

  v5 = +[UIKeyboard keyboardBundleIdentifier];
  v6 = [&unk_1EFE2CA60 containsObject:v5];

  return v6;
}

+ (BOOL)isInputDelegateSafariAddressBar
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v2 = +[UIKeyboardImpl sharedInstance];
    v3 = [v2 inputDelegate];
    NSClassFromString(&cfstr_Unifiedfield.isa);
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v2 = +[UIDictationController sharedInstance];
  v3 = [v2 _inputDelegateClassName];
  if (([v3 isEqualToString:@"UnifiedField"] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = +[UIKeyboard keyboardBundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.mobilesafari"];

LABEL_6:
  return v5;
}

+ (BOOL)isEventFromMessagesSendButton:(id)a3 inspectResponderChain:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 textInputTraits];
  v8 = [v7 keyboardType];

  if (v8 == 126)
  {
    if (qword_1ED498880 != -1)
    {
      dispatch_once(&qword_1ED498880, &__block_literal_global_1318);
    }

    do
    {
      if (qword_1ED498888 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v9 = [v5 accessibilityIdentification];
        LODWORD(v10) = [v9 isEqualToString:@"sendButton"];
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if ((v10 | !v4))
      {
        break;
      }

      v10 = [v5 nextResponder];

      v5 = v10;
    }

    while (v10);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

Class __77__UIDictationController_isEventFromMessagesSendButton_inspectResponderChain___block_invoke()
{
  result = NSClassFromString(&cfstr_Ckentryviewbut.isa);
  qword_1ED498888 = result;
  return result;
}

- (void)sendButtonPressedInMessages:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIDictationController isRunning])
  {
    [(UIDictationController *)self setSendButtonPressedDuringDictation:1];
    v5 = [(UIDictationController *)self dictationTipController];
    [v5 signalDictationSendMessageTip];
  }

  v6 = objc_opt_class();
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 inputDelegate];
  [v6 logCorrectionStatisticsForDelegate:v8 reason:25];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v9 = getAFDictationDiscoverabilitySignalsStreamManagerClass_softClass;
  v19 = getAFDictationDiscoverabilitySignalsStreamManagerClass_softClass;
  if (!getAFDictationDiscoverabilitySignalsStreamManagerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getAFDictationDiscoverabilitySignalsStreamManagerClass_block_invoke;
    v15[3] = &unk_1E70F2F20;
    v15[4] = &v16;
    __getAFDictationDiscoverabilitySignalsStreamManagerClass_block_invoke(v15);
    v9 = v17[3];
  }

  v10 = v9;
  _Block_object_dispose(&v16, 8);
  v11 = _UIMainBundleIdentifier();
  v20 = @"dictation-active";
  v12 = [(UIDictationController *)self isSendButtonPressedDuringDictation];
  v13 = MEMORY[0x1E695E110];
  if (v12)
  {
    v13 = MEMORY[0x1E695E118];
  }

  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v9 sendSendMessageSentEventWithBundleIdentifier:v11 context:0 userInfo:v14];
}

- (unint64_t)specificReasonTypeFromApplicationDuringDictation
{
  if ([(UIDictationController *)self isSendButtonPressedDuringDictation])
  {
    return 25;
  }

  else
  {
    return 17;
  }
}

+ (unint64_t)specificReasonTypeMicButtonOnKeyboard
{
  if (+[UIDictationController isDictationSearchBarButtonVisible])
  {
    return 2;
  }

  if (+[UIDictationController isInputDelegateSafariAddressBar])
  {
    return 3;
  }

  return 1;
}

+ (unint64_t)specificReasonTypeMicButtonOnKeyboardWithInputSwitcher
{
  if (+[UIDictationController isDictationSearchBarButtonVisible])
  {
    return 5;
  }

  if (+[UIDictationController isInputDelegateSafariAddressBar])
  {
    return 6;
  }

  return 4;
}

- (void)insertLastHypothesisAsFinalResultLocally
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIDictationController *)self lastHypothesis];
  if (+[UIDictationController isRunning])
  {
    v4 = +[UIKeyboardInputMode dictationInputMode];
    if ([v4 usingTypeAndTalk])
    {
      v5 = [v3 length];

      if (v5)
      {
        v6 = [(UIDictationController *)self candidateDictationSerializableResults];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v9 = [UIDictationSerializableResults alloc];
          v12 = v3;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
          v13[0] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
          v8 = [(UIDictationSerializableResults *)v9 initWithArrayOfArrayOfStrings:v11];
        }

        [(UIDictationController *)self setCandidateDictationSerializableResults:0];
        [(UIDictationController *)self finalizeDictationRecognitionWithPhrases:v8 languageModel:&stru_1EFB14550 correctionIdentifier:0 secureInput:0 finalResult:0];
        [(UIDictationController *)self setLastHypothesis:0];
      }
    }

    else
    {
    }
  }
}

- (void)_finalizePhrasesOnDictationPause
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIDictationController *)self candidateDictationSerializableResults];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [UIDictationSerializableResults alloc];
    v7 = [(UIDictationController *)self lastHypothesis];
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v5 = [(UIDictationSerializableResults *)v6 initWithArrayOfArrayOfStrings:v9];
  }

  [(UIDictationController *)self setCandidateDictationSerializableResults:0];
  [(UIDictationSerializableResults *)v5 setFromKeyboard:1];
  v10 = [(UIDictationController *)self dictationConnection];
  v11 = [(UIDictationController *)self dictationConnection];
  -[UIDictationController dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:](self, "dictationConnection:finalizePhrases:languageModel:correctionIdentifier:secureInput:finalResult:", v10, v5, &stru_1EFB14550, 0, [v11 isSecureInput], 0);
}

- (void)pauseDictationOnUserInteraction:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning]&& !self->_shouldResumeDictation && ![(UIDictationController *)self dictationIsModifyingText])
  {
    v5 = _UIDictationControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[UIDictationController pauseDictationOnUserInteraction:]";
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s UIDictationController should pause dictation", buf, 0xCu);
    }

    [(UIDictationController *)self _stopStreamingAnimation];
    [(UIDictationController *)self pauseSpeechRecognition];
    v6 = [(UIDictationController *)self lastHypothesis];
    v7 = _UIDictationControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v12 = "[UIDictationController pauseDictationOnUserInteraction:]";
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "%s lastHypothesis at beginUserInteraction: '%@'", buf, 0x16u);
    }

    if ([v6 length])
    {
      if ([objc_opt_class() _shouldPerformPhrasesFinalizationIgnoringRTIChangesWithUserInteraction:a3])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __57__UIDictationController_pauseDictationOnUserInteraction___block_invoke;
        v10[3] = &unk_1E70F3590;
        v10[4] = self;
        [(UIDictationController *)self performIgnoringRTIChanges:v10];
      }

      else
      {
        [(UIDictationController *)self _finalizePhrasesOnDictationPause];
      }
    }

    [(UIDictationController *)self setIsProcessingInitialPhrasesForCurrentRequest:0];
    self->_shouldResumeDictation = 1;
    v8 = _UIDictationControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      shouldResumeDictation = self->_shouldResumeDictation;
      *buf = 136315394;
      v12 = "[UIDictationController pauseDictationOnUserInteraction:]";
      v13 = 1024;
      LODWORD(v14) = shouldResumeDictation;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s _shouldResumeDictation=%d", buf, 0x12u);
    }
  }
}

- (void)resumeDictation
{
  v8 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 forwardDictationEvent_resumeDictation];
  }

  else if ([(UIDictationController *)self shouldResumeDictation]&& +[UIDictationController isRunning])
  {
    v3 = _UIDictationControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[UIDictationController resumeDictation]";
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [(UIDictationController *)self setupForAsyncDelegate];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Calling _refreshVisibleRTIDocumentStateWithContinuation", "-[UIDictationController resumeDictation]"];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__UIDictationController_resumeDictation__block_invoke;
    v5[3] = &unk_1E71150B0;
    v5[4] = self;
    [(UIDictationController *)self _refreshVisibleRTIDocumentStateWithContinuation:v5];
  }
}

- (void)resetSpeechRecognition
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = +[UIKeyboardInputMode dictationInputMode];
  if ([v5 usingTypeAndTalk] && +[UIDictationController isRunning](UIDictationController, "isRunning"))
  {
    shouldResumeDictation = self->_shouldResumeDictation;

    if (!shouldResumeDictation)
    {
      v4 = _UIDictationControllerLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v8 = "[UIDictationController resetSpeechRecognition]";
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s UIDictationController reset speech recognition, stopping streaming animation", buf, 0xCu);
      }

      [(UIDictationController *)self _stopStreamingAnimation];
      [(UIDictationController *)self pauseSpeechRecognition];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Calling _refreshVisibleRTIDocumentStateWithContinuation", "-[UIDictationController resetSpeechRecognition]"];

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __47__UIDictationController_resetSpeechRecognition__block_invoke;
      v6[3] = &unk_1E71150B0;
      v6[4] = self;
      [(UIDictationController *)self _refreshVisibleRTIDocumentStateWithContinuation:v6];
    }
  }

  else
  {
  }
}

- (void)resetDictation
{
  [(UIDictationController *)self _stopStreamingAnimation];
  [(UIDictationController *)self resetDictationPendingEdits];

  [(UIDictationController *)self resetSpeechRecognition];
}

- (void)resetDictationPendingEdits
{
  [(UIDictationController *)self setTargetHypothesis:0];
  [(UIDictationController *)self setLastHypothesis:0];
  [(UIDictationController *)self setPendingEdits:0];

  [(UIDictationController *)self setPreviousHypothesis:0];
}

- (void)beginUserInteraction:(int64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(UIDictationController *)self dictationTipController];
  [v5 setDismissalReasonType:2];

  if (+[UIDictationController isRunning]&& !self->_ignoreUserInteraction)
  {
    v7 = _UIDictationControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[UIDictationController beginUserInteraction:]";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s UIDictationController beginUserInteraction: %ld", buf, 0x16u);
    }

    if ([(UIDictationController *)self userInteractionShouldResetAdaptiveDeleteActivationLogic:a3])
    {
      [(UIDictationController *)self resetAdaptiveDeleteActivationLogic];
    }

    v8 = +[UIKeyboardImpl activeInstance];
    if ([(UIDictationController *)self userInteractionShouldDismissDictationTip:a3])
    {
      [v8 dismissDictationTip];
    }

    [v8 _clearDictationMenuTimer:0];
    [(UIDictationController *)self updateRecordingLimitTimerIfNeeded];
    if (a3 <= 1)
    {
      [(UIDictationController *)self _removeUndoNotificationObservation];
      v9 = [v8 _textChoicesAssistant];
      [v9 resetDictationChoicesAnimated:0];

      v10 = [v8 _textChoicesAssistant];
      [v10 resetDictationUnderlines];
    }

    if (![(UIDictationController *)self shouldResumeDictation])
    {
      v11 = +[UIKeyboardInputMode dictationInputMode];
      v12 = [v11 usingTypeAndTalk];

      if (v12)
      {
        [(UIDictationController *)self pauseDictationOnUserInteraction:a3];
        v13 = _UIDictationControllerUndoRedoLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[UIDictationController beginUserInteraction:]";
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping if necessary", buf, 0xCu);
        }

        [(UIDictationController *)self _endUndoGroupingIfNecessary];
        if (![(UIDictationController *)self modelessUsedAtLeastOnce])
        {
          v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v15 = [v14 _textInputSessionAnalytics];
          [v15 didDictationBegin:0 usesMultiModalDictation:1];

          [(UIDictationController *)self setModelessUsedAtLeastOnce:1];
        }

        if (!self->_dictationInputModeSwitchStarted)
        {
          self->_dictationInputModeSwitchStarted = 1;
          v16 = objc_alloc_init(getSISchemaUEIDictationInputModeSwitchContextClass());
          v22 = 0;
          v23 = &v22;
          v24 = 0x2050000000;
          v17 = getSISchemaUEIDictationInputModeSwitchStartedClass_softClass;
          v25 = getSISchemaUEIDictationInputModeSwitchStartedClass_softClass;
          if (!getSISchemaUEIDictationInputModeSwitchStartedClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getSISchemaUEIDictationInputModeSwitchStartedClass_block_invoke;
            v27 = &unk_1E70F2F20;
            v28 = &v22;
            __getSISchemaUEIDictationInputModeSwitchStartedClass_block_invoke(buf);
            v17 = v23[3];
          }

          v18 = v17;
          _Block_object_dispose(&v22, 8);
          v19 = objc_alloc_init(v17);
          [v19 setExists:1];
          [v16 setStartedOrChanged:v19];
          [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v16];
        }
      }

      else
      {
        v20 = _UIDictationControllerLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[UIDictationController beginUserInteraction:]";
          _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "%s UIDictationController should stop dictation", buf, 0xCu);
        }

        [(UIDictationController *)self stopAndCancelDictationWithReasonType:0];
      }
    }
  }

  else if (!a3)
  {
    v21 = +[UIDictationController sharedInstance];
    v6 = [v21 dictationTipController];
    [v6 processSoftwareKeyboardInteraction];
  }
}

- (void)endUserInteraction
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    if ([(UIDictationController *)self shouldResumeDictation]&& ![(UIDictationController *)self skipAutomaticResumeDictation])
    {
      if (+[UIDictationController isRunningInTypeAndTalkMode])
      {
        [(UIDictationController *)self resumeDictation];
        self->_shouldAttemptToShowTips = 1;
      }

      else
      {
        v6 = _UIDictationControllerLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v9 = "[UIDictationController endUserInteraction]";
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s Setting shouldResumeDictation to NO", buf, 0xCu);
        }

        [(UIDictationController *)self setShouldResumeDictation:0];
      }
    }
  }

  else
  {
    v3 = +[UIDictationLandingView activeInstance];
    v4 = [v3 hasActivePlaceholder];

    if ((v4 & 1) == 0)
    {
      v7 = +[UIDictationController sharedInstance];
      v5 = [v7 dictationTipController];
      [v5 processUserInteractionEnded];
    }
  }
}

- (void)resumeSpeechRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIDictationController *)self dictationConnection];
  [v11 resumeSpeechRecognitionWithPrefixText:v10 postfixText:v9 selectedText:v8];

  self->_shouldResumeDictation = 0;
  v12 = _UIDictationControllerLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shouldResumeDictation = self->_shouldResumeDictation;
    v14 = 136315394;
    v15 = "[UIDictationController resumeSpeechRecognitionWithPrefixText:postfixText:selectedText:]";
    v16 = 1024;
    v17 = shouldResumeDictation;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s _shouldResumeDictation=%d", &v14, 0x12u);
  }

  [(UIDictationController *)self setState:2];
  if (self->_shouldAttemptToShowTips)
  {
    [(UIDictationTipController *)self->_dictationTipController presentDelayedTipIfNeeded];
    self->_shouldAttemptToShowTips = 0;
  }

  [(UIDictationController *)self postNotificationName:@"UIDictationControllerDidResumeNotification" userInfo:0];
}

- (void)pauseSpeechRecognition
{
  v3 = [(UIDictationController *)self dictationConnection];
  [v3 pauseSpeechRecognition];

  [(UIDictationController *)self postNotificationName:@"UIDictationControllerDidPauseNotification" userInfo:0];
}

- (void)clearKeyboardTrackpadModeIfNeeded
{
  v5 = +[UIKeyboardImpl activeInstance];
  if ([v5 isTrackpadMode])
  {
    v2 = [v5 _layout];
    [v2 didEndTrackpadModeForServerSideDictation];
  }

  if (([v5 isSyncingDictationLanguageForInputModeSwitch] & 1) == 0)
  {
    v3 = +[UIDictationView activeInstance];
    v4 = [v3 switchingLanguage];

    if ((v4 & 1) == 0)
    {
      [v5 clearDictationMenuTimer];
    }
  }
}

- (void)removeSelectedText
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegateManager];
  v5 = [v4 selectedTextRange];

  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    [(UIDictationController *)self setCanUndoOrRedo:0];
    v6 = [v3 inputDelegateManager];
    v7 = [v6 hasAsyncCapableInputDelegate];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__UIDictationController_removeSelectedText__block_invoke;
    v12[3] = &unk_1E70F35E0;
    v13 = v3;
    v14 = v7;
    [(UIDictationController *)self performIgnoringDocumentChanges:v12];
    if (v7)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__UIDictationController_removeSelectedText__block_invoke_3;
      v11[3] = &unk_1E70FD3C0;
      v11[4] = self;
      [(UIDictationController *)self _requestDocumentContextWithCompletionHandler:v11];
    }

    [(UIDictationController *)self setCanUndoOrRedo:1];
  }

  [v3 dismissTextChoicePrompt];
  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    v8 = [v3 inputDelegateManager];
    v9 = [v8 inputSystemSourceSession];

    if (v9)
    {
      v10 = [v9 textOperations];
      [v10 setEditingActionSelector:sel_removeSelectedText];
      [v9 flushOperations];
    }
  }
}

void __43__UIDictationController_removeSelectedText__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTextInputChangesIgnored:1];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __43__UIDictationController_removeSelectedText__block_invoke_2;
  v6 = &unk_1E70F35E0;
  v8 = *(a1 + 40);
  v7 = v2;
  [v7 performOperations:&v3 withTextInputSource:2];
  [*(a1 + 32) setTextInputChangesIgnored:{0, v3, v4, v5, v6}];
}

void __43__UIDictationController_removeSelectedText__block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || ([*(a1 + 32) inputDelegateManager], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "textInteractionAssistant"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, !v3))
  {
    v4 = [*(a1 + 32) inputDelegateManager];
    [v4 deleteBackward];
  }

  else
  {
    v4 = [*(a1 + 32) inputDelegateManager];
    [v4 insertText:&stru_1EFB14550];
  }
}

- (void)_requestDocumentContextWithCompletionHandler:(id)a3
{
  v3 = a3;
  v7 = objc_alloc_init(UIWKDocumentRequest);
  [(UIWKDocumentRequest *)v7 setFlags:133];
  if (_os_feature_enabled_impl())
  {
    [(UIWKDocumentRequest *)v7 setFlags:[(UIWKDocumentRequest *)v7 flags]| 0x40];
  }

  [(UIWKDocumentRequest *)v7 setSurroundingGranularity:1];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 inputDelegateManager];
  [v5 visibleTextRect];
  [(UIWKDocumentRequest *)v7 setDocumentRect:?];

  v6 = [v4 inputDelegateManager];
  [v6 requestDocumentContext:v7 completionHandler:v3];
}

- (void)_requestFullDocumentContextWithCompletionHandler:(id)a3
{
  v3 = a3;
  v8 = objc_alloc_init(UIWKDocumentRequest);
  [(UIWKDocumentRequest *)v8 setFlags:133];
  [(UIWKDocumentRequest *)v8 setSurroundingGranularity:5];
  if (_os_feature_enabled_impl())
  {
    [(UIWKDocumentRequest *)v8 setFlags:[(UIWKDocumentRequest *)v8 flags]| 0x40];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 inputDelegateManager];
  v6 = [v5 textInputView];
  [v6 bounds];
  [(UIWKDocumentRequest *)v8 setDocumentRect:?];

  v7 = [v4 inputDelegateManager];
  [v7 requestDocumentContext:v8 completionHandler:v3];
}

- (BOOL)shouldSuppressPartialResults
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegateManager];
  v5 = [v4 selectedTextRange];
  if ([v5 isEmpty])
  {
    v6 = [(UIDictationController *)self hasSelectedTextRange];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)requestVisibleTextWithCompletionBlock:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = qword_1ED498928;
  v16 = qword_1ED498928;
  if (!qword_1ED498928)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getRTIDocumentRequestClass_block_invoke;
    v12[3] = &unk_1E70F2F20;
    v12[4] = &v13;
    __getRTIDocumentRequestClass_block_invoke(v12);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = objc_alloc_init(v4);
  [v6 setFlags:9];
  [v6 setTextGranularity:1];
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 remoteTextInputPartnerPrivate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UIDictationController_requestVisibleTextWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E71150D8;
  v11 = v3;
  v9 = v3;
  [v8 _performDocumentRequest:v6 completion:v10];
}

void __63__UIDictationController_requestVisibleTextWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UIDictationController_requestVisibleTextWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E70F37C0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __63__UIDictationController_requestVisibleTextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = _UIDictationControllerLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[UIDictationController requestVisibleTextWithCompletionBlock:]_block_invoke_2";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Received visible RTIDocumentState", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = +[UIKeyboard keyboardBundleIdentifier];
    v7 = 136315394;
    v8 = "[UIDictationController requestVisibleTextWithCompletionBlock:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s Received nil RTIDocumentState, client: %@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_refreshVisibleRTIDocumentStateWithContinuation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__UIDictationController__refreshVisibleRTIDocumentStateWithContinuation___block_invoke;
  v6[3] = &unk_1E7115100;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIDictationController *)self requestVisibleTextWithCompletionBlock:v6];
}

void __73__UIDictationController__refreshVisibleRTIDocumentStateWithContinuation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 documentState];
  v4 = [v8 contextBeforeInput];
  v5 = [v8 contextAfterInput];
  v6 = [v8 selectedText];
  [*(a1 + 32) setHasSelectedTextRange:{objc_msgSend(v6, "length") != 0}];
  [*(a1 + 32) setVisibleRTIDocumentStateAtStart:v3];

  [*(a1 + 32) setVisibleContextBeforeInputAtCommandExecution:v4];
  [*(a1 + 32) setVisibleRTIDocumentStateAtCommandRecognition:0];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Dictation resume options. prefixText: %@, postfixText: %@, selectedText: %@", "-[UIDictationController _refreshVisibleRTIDocumentStateWithContinuation:]_block_invoke", v4, v5, v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v4, v5, v6);
  }
}

- (void)handleWKActionMoveAfter
{
  v3 = +[UIKeyboardImpl activeInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__UIDictationController_handleWKActionMoveAfter__block_invoke;
  v5[3] = &unk_1E70FD3C0;
  v6 = v3;
  v4 = v3;
  [(UIDictationController *)self _requestDocumentContextWithCompletionHandler:v5];
}

void __48__UIDictationController_handleWKActionMoveAfter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedTextRange];
  v6 = [v3 directionalRangeForSelectionRange:{v4 + v5, 0}];
  v8 = v7;

  v9 = [*(a1 + 32) inputDelegateManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__UIDictationController_handleWKActionMoveAfter__block_invoke_2;
  v10[3] = &unk_1E70F3590;
  v11 = *(a1 + 32);
  [v9 adjustSelection:v6 completionHandler:{v8, v10}];
}

- (void)handleWKActionMoveBefore
{
  v3 = +[UIKeyboardImpl activeInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__UIDictationController_handleWKActionMoveBefore__block_invoke;
  v5[3] = &unk_1E70FD3C0;
  v6 = v3;
  v4 = v3;
  [(UIDictationController *)self _requestDocumentContextWithCompletionHandler:v5];
}

void __49__UIDictationController_handleWKActionMoveBefore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 directionalRangeForSelectionRange:{objc_msgSend(v3, "selectedTextRange"), 0}];
  v6 = v5;

  v7 = [*(a1 + 32) inputDelegateManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__UIDictationController_handleWKActionMoveBefore__block_invoke_2;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 32);
  [v7 adjustSelection:v4 completionHandler:{v6, v8}];
}

- (void)_dictationDidRecieveDidBeginDictationNotification:(id)a3
{
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP", a3) || +[UIKeyboard isKeyboardProcess])
  {
    notify_set_state(self->_dictationInputModeNotifierToken, 1uLL);

    notify_post("com.apple.keyboard.isDictationRunning");
  }
}

- (void)_dictationDidRecieveDidFinishDictationNotification:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[UIDictationController _dictationDidRecieveDidFinishDictationNotification:]";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping if necessary", &v9, 0xCu);
  }

  [(UIDictationController *)self _endUndoGroupingIfNecessary];
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    notify_set_state(self->_dictationInputModeNotifierToken, 0);
    notify_post("com.apple.keyboard.isDictationRunning");
  }

  if (!+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 _textChoicesAssistant];
    [v6 resetDictationChoicesAnimated:0];

    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 _textChoicesAssistant];
    [v8 cancelPendingDictationPromptDisplay];
  }
}

+ (id)firstParameterTextWithParameters:(id)a3
{
  v3 = a3;
  if (+[UIDictationController supportsSiriDictationVoiceCommands])
  {
    v4 = [v3 objectForKeyedSubscript:@"Param0"];
    v5 = [v4 text];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)secondParameterTextWithParameters:(id)a3
{
  v3 = a3;
  if (+[UIDictationController supportsSiriDictationVoiceCommands])
  {
    v4 = [v3 objectForKeyedSubscript:@"Param1"];
    v5 = [v4 text];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)thirdParameterTextWithParameters:(id)a3
{
  v3 = a3;
  if (+[UIDictationController supportsSiriDictationVoiceCommands])
  {
    v4 = [v3 objectForKeyedSubscript:@"Param2"];
    v5 = [v4 text];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)commandIdentifierWithStringIdentifier:(id)a3
{
  v3 = qword_1ED498890;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED498890, &__block_literal_global_1346);
  }

  v5 = [qword_1ED498898 objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

void __63__UIDictationController_commandIdentifierWithStringIdentifier___block_invoke()
{
  if (+[UIDictationController supportsSiriDictationVoiceCommands])
  {
    v0 = qword_1ED498898;
    qword_1ED498898 = &unk_1EFE34428;
  }
}

- (void)clearSelectedTextAndLastDictationResult:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__UIDictationController_clearSelectedTextAndLastDictationResult___block_invoke;
  v3[3] = &unk_1E70F35E0;
  v3[4] = self;
  v4 = a3;
  [(UIDictationController *)self performIgnoringDocumentChanges:v3];
}

void __65__UIDictationController_clearSelectedTextAndLastDictationResult___block_invoke(uint64_t a1)
{
  v9 = +[UIKeyboardImpl activeInstance];
  [v9 setTextInputChangesIgnored:1];
  [*(a1 + 32) setCanUndoOrRedo:0];
  if (*(a1 + 40) == 1 && [*(a1 + 32) hasSelectedTextRange])
  {
    v2 = [v9 inputDelegateManager];
    v3 = [v2 hasAsyncCapableInputDelegate];

    v4 = [v9 inputDelegateManager];
    v5 = v4;
    if (v3)
    {
      [v4 deleteBackward];
    }

    else
    {
      [v4 insertText:&stru_1EFB14550];
    }
  }

  else
  {
    v6 = [*(a1 + 32) lastHypothesis];
    v7 = [v6 length];

    for (; v7; --v7)
    {
      v8 = [v9 inputDelegateManager];
      [v8 deleteBackward];
    }

    [*(a1 + 32) setLastHypothesis:0];
  }

  [v9 setTextInputChangesIgnored:0];
  [*(a1 + 32) setCanUndoOrRedo:1];
}

+ (BOOL)canHandleCommandIdentifier:(unint64_t)a3
{
  if (a3 > 0x1B)
  {
    return 0;
  }

  if (((1 << a3) & 0xFF7DFFE) != 0)
  {
    return 1;
  }

  if (a3 == 19)
  {
    return [a1 supportsSendVoiceCommand];
  }

  else
  {
    return 0;
  }
}

+ (int)mapDictationCommandIdentifierToUEIcommandIdentifier:(unint64_t)a3
{
  if (a3 - 1 > 0x1A)
  {
    return 0;
  }

  else
  {
    return dword_18A67F6A4[a3 - 1];
  }
}

- (void)_restoreInsertionPointPositionWithKeyboard:(id)a3 originalPositionRange:(_NSRange)a4 targetRange:(_NSRange)a5 payloadRange:(_NSRange)a6 contextBefore:(BOOL)a7
{
  length = a4.length;
  location = a4.location;
  if (a7)
  {
    v10 = a4.location - a5.length;
    v11 = [a3 inputDelegateManager];
    v12 = v11;
    v13 = v10 + a6.length;
  }

  else
  {
    v11 = [a3 inputDelegateManager];
    v12 = v11;
    v13 = location;
  }

  v15 = [v11 _textRangeFromNSRange:{v13, length}];

  v14 = [a3 inputDelegateManager];

  [v14 setSelectedTextRange:v15];
}

- (void)invalidateTextInputView
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegateManager];
  v4 = [v3 textInputView];

  [v4 layoutIfNeeded];
}

- (void)notifyDocumentStateChangedAndResumeDictation:(id)a3
{
  v5 = a3;
  [(UIDictationController *)self invalidateTextInputView];
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || !+[UIKeyboard inputUIOOP])
  {
    v4 = [v5 remoteTextInputPartner];
    [v4 documentStateChanged];
  }

  [(UIDictationController *)self resumeDictation];
}

- (id)commandTargetStringWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4
{
  v5 = a4;
  v6 = 0;
  if (a3 <= 0x17)
  {
    if (((1 << a3) & 0xC04AC2) != 0)
    {
      v7 = [objc_opt_class() firstParameterTextWithParameters:v5];
LABEL_4:
      v6 = v7;
      goto LABEL_5;
    }

    if (((1 << a3) & 0x30) != 0)
    {
      v7 = [objc_opt_class() secondParameterTextWithParameters:v5];
      goto LABEL_4;
    }
  }

LABEL_5:

  return v6;
}

- (id)commandPayloadStringWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4
{
  v5 = a4;
  v6 = 0;
  if (a3 <= 8)
  {
    if (a3 != 1)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          goto LABEL_17;
        }

        v7 = [objc_opt_class() firstParameterTextWithParameters:v5];
        v8 = [v7 uppercaseString];
        goto LABEL_16;
      }

      v10 = [objc_opt_class() secondParameterTextWithParameters:v5];
LABEL_14:
      v6 = v10;
      goto LABEL_17;
    }

    v9 = @"_placeholder_UIDictationTextAlternativesActionDelete_FA6ACA5B-6332-4904-95E9-D4A0894E570D_";
LABEL_11:
    v10 = v9;
    goto LABEL_14;
  }

  switch(a3)
  {
    case 9uLL:
      v7 = [objc_opt_class() firstParameterTextWithParameters:v5];
      v8 = [v7 capitalizedString];
      break;
    case 0xBuLL:
      v7 = [objc_opt_class() firstParameterTextWithParameters:v5];
      v8 = [v7 lowercaseString];
      break;
    case 0xEuLL:
      v9 = @"_placeholder_UIDictationTextAlternativesActionSelect_4DD80D2E-12A9-4AEE-B8A8-E7B3C8A733E3_";
      goto LABEL_11;
    default:
      goto LABEL_17;
  }

LABEL_16:
  v6 = v8;

LABEL_17:

  return v6;
}

- (id)commandMetadataWithDictationCommandIdentifier:(unint64_t)a3 parameters:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = 0;
  if (a3 <= 0x17)
  {
    if (((1 << a3) & 0xC04A82) != 0)
    {
      v8 = [objc_opt_class() secondParameterTextWithParameters:v6];
    }

    else
    {
      if (((1 << a3) & 0x70) == 0)
      {
        goto LABEL_33;
      }

      v8 = [objc_opt_class() thirdParameterTextWithParameters:v6];
    }

    v9 = v8;
    if (!v8)
    {
      v7 = 0;
      goto LABEL_33;
    }

    v10 = [v8 dataUsingEncoding:4];
    v67 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:1 error:&v67];
    v12 = v67;
    if (v12)
    {
      v13 = _UIDictationControllerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v51 = [v12 localizedDescription];
        *buf = 136315650;
        v69 = "[UIDictationController commandMetadataWithDictationCommandIdentifier:parameters:]";
        v70 = 2112;
        v71 = v51;
        v72 = 2112;
        v73 = v9;
        _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s ERROR: Unable to convert command metadata string to JSON dictionary: %@\nJSON string:\n%@", buf, 0x20u);
      }

      v7 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v57 = v10;
    v53 = v9;
    v60 = [(UIDictationController *)self commandTargetStringWithDictationCommandIdentifier:a3 parameters:v6];
    v54 = v6;
    v59 = [(UIDictationController *)self commandPayloadStringWithDictationCommandIdentifier:a3 parameters:v6];
    v64 = [v11 objectForKeyedSubscript:@"targetStartIndex"];
    v62 = [v11 objectForKeyedSubscript:@"targetLength"];
    v66 = [v11 objectForKeyedSubscript:@"expandedTarget"];
    v65 = [v11 objectForKeyedSubscript:@"expandedTargetStartIndex"];
    v63 = [v11 objectForKeyedSubscript:@"expandedTargetLength"];
    v52 = [v11 objectForKeyedSubscript:@"expandedPayload"];
    v61 = [v11 objectForKeyedSubscript:@"targetOffset"];
    v58 = [v11 objectForKeyedSubscript:@"expandedTargetOffset"];
    v55 = [_UIDictationVoiceCommandInstrumentationMetadata alloc];
    v14 = [v11 objectForKeyedSubscript:@"hasSpelling"];
    v15 = [v14 BOOLValue];
    v16 = [v11 objectForKeyedSubscript:@"hasTextSelection"];
    v17 = [v16 BOOLValue];
    v18 = [v11 objectForKeyedSubscript:@"isWfstParseable"];
    v19 = [v18 BOOLValue];
    v20 = [v11 objectForKeyedSubscript:@"hasAdjacentEdit"];
    v21 = -[_UIDictationVoiceCommandInstrumentationMetadata initWithHasSpelling:hasTextSelection:isWfstParseable:hasAdjacentEdit:](v55, "initWithHasSpelling:hasTextSelection:isWfstParseable:hasAdjacentEdit:", v15, v17, v19, [v20 BOOLValue]);

    v22 = v21;
    if (a3 == 14)
    {
      v24 = @"_placeholder_UIDictationTextAlternativesActionSelect_4DD80D2E-12A9-4AEE-B8A8-E7B3C8A733E3_";
      v9 = v53;
      v6 = v54;
      v12 = 0;
      v25 = v52;
    }

    else
    {
      if (a3 != 1)
      {
        v9 = v53;
        v6 = v54;
        v12 = 0;
        v28 = v52;
        v26 = v58;
LABEL_20:
        v29 = 0;
        v13 = v60;
        if (v60 && v64 && v62 && v61)
        {
          v30 = [_UIDictationVoiceCommandTargetMetadata alloc];
          v31 = [v64 intValue];
          v32 = v28;
          v33 = [v62 intValue];
          v34 = [v61 intValue];
          v35 = v30;
          v13 = v60;
          v36 = v31;
          v12 = 0;
          v37 = v33;
          v28 = v32;
          v26 = v58;
          v29 = [(_UIDictationVoiceCommandTargetMetadata *)v35 initWithTarget:v60 targetStartIndex:v36 targetLength:v37 targetOffset:v34 payload:v59];
        }

        v38 = 0;
        v56 = v11;
        if (v66 && v65 && v63 && v28 && v26)
        {
          v39 = [_UIDictationVoiceCommandExpandedTargetMetadata alloc];
          v40 = [v65 intValue];
          v41 = v29;
          v42 = v28;
          v43 = [v63 intValue];
          v44 = [v26 intValue];
          v45 = v39;
          v46 = v40;
          v12 = 0;
          v13 = v60;
          v47 = v43;
          v28 = v42;
          v29 = v41;
          v38 = [(_UIDictationVoiceCommandExpandedTargetMetadata *)v45 initWithExpandedTarget:v66 expandedTargetStartIndex:v46 expandedTargetLength:v47 expandedTargetOffset:v44 expandedPayload:v28];
        }

        v48 = v28;
        v49 = v29;
        v7 = [[_UIDictationVoiceCommandMetadata alloc] initWithTargetMetadata:v29 expandedTargetMetadata:v38 instrumentationMetadata:v22];

        v11 = v56;
        v10 = v57;
        goto LABEL_32;
      }

      v23 = [objc_opt_class() supportsSiriDictationVoiceCommandsAdjacentEdits];
      v24 = @"_placeholder_UIDictationTextAlternativesActionDelete_FA6ACA5B-6332-4904-95E9-D4A0894E570D_";
      v25 = v52;
      v9 = v53;
      if (v23)
      {
        v24 = v52;
      }

      v6 = v54;
      v12 = 0;
    }

    v26 = v58;
    v27 = v24;

    v28 = v27;
    goto LABEL_20;
  }

LABEL_33:

  return v7;
}

+ (BOOL)supportsSendVoiceCommand
{
  if (qword_1ED4988A0 != -1)
  {
    dispatch_once(&qword_1ED4988A0, &__block_literal_global_1530_0);
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v2 = qword_1ED4988A8;
    v3 = +[UIKeyboard keyboardBundleIdentifier];
    v4 = [v2 containsObject:v3];
  }

  else
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      return 1;
    }

    if (qword_1ED4988B0 != -1)
    {
      dispatch_once(&qword_1ED4988B0, &__block_literal_global_1539);
    }

    if (byte_1ED4987D6 != 1)
    {
      return 0;
    }

    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputDelegateManager];
    v3 = [v7 textInputDelegate];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v4 = [v3 canPerformDictationAction:@"UITextInputDictationActionTypeSend"];
  }

  v5 = v4;
LABEL_6:

  return v5;
}

void __49__UIDictationController_supportsSendVoiceCommand__block_invoke()
{
  v0 = qword_1ED4988A8;
  qword_1ED4988A8 = &unk_1EFE2CA78;
}

void __49__UIDictationController_supportsSendVoiceCommand__block_invoke_2()
{
  v0 = qword_1ED4988A8;
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v2 bundleIdentifier];
  byte_1ED4987D6 = [v0 containsObject:v1];
}

- (void)_performStandardEditAction:(SEL)a3 sender:(id)a4
{
  v8 = a4;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 inputDelegateManager];
  v7 = [v6 delegateAsResponder];

  if ([v7 canPerformAction:a3 withSender:0])
  {
    [UIApp sendAction:a3 to:v7 from:v8 forEvent:0];
  }
}

- (id)_documentStateForCommandApplicability
{
  v3 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
  v4 = [v3 documentState];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(UIDictationController *)self visibleRTIDocumentStateAtStart];
    v6 = [v7 documentState];
  }

  return v6;
}

- (BOOL)_canApplyVoiceCommandWithIdentifierString:(id)a3 firstParameterText:(id)a4 targetString:(id)a5 voiceCommandUUID:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(getSISchemaUEIDictationVoiceCommandExecutedClass());
  v15 = [objc_opt_class() commandIdentifierWithStringIdentifier:v10];
  [v14 setCommandType:{objc_msgSend(objc_opt_class(), "mapDictationCommandIdentifierToUEIcommandIdentifier:", v15)}];
  v16 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v13];
  [v14 setVoiceCommandId:v16];

  if (v15)
  {
    if ([objc_opt_class() canHandleCommandIdentifier:v15])
    {
      v17 = [(UIDictationController *)self _documentStateForCommandApplicability];
      v18 = v17;
      if (v15 == 26)
      {
        v19 = [v11 integerValue];
        if (+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") && +[UIKeyboard isKeyboardProcess])
        {
          maxDisambiguationOptions = self->_maxDisambiguationOptions;
          if (maxDisambiguationOptions)
          {
            v21 = 1;
            if (v19 == -1 || maxDisambiguationOptions > v19 - 1)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_25;
        }

        v28 = +[UIKeyboardImpl activeInstance];
        v29 = [v28 _textChoicesAssistant];
        v30 = [v29 canHandleDictationChoiceForPromptIndex:v19];

        if ((v30 & 1) == 0)
        {
LABEL_25:
          [v14 setCommandStatus:3];
          [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v14];
          v21 = 0;
LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      if ([(UIDictationController *)self isSelectionRequiredForCommand:v15])
      {
        v24 = +[UIKeyboardImpl activeInstance];
        v25 = [v24 inputDelegate];
        v26 = [v25 selectedTextRange];
        if (![v26 isEmpty])
        {

          goto LABEL_35;
        }

        v35 = [(UIDictationController *)self hasSelectedTextRange];

        if (v35)
        {
LABEL_35:
          v21 = 1;
          goto LABEL_36;
        }

        v27 = _UIDictationControllerLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[UIDictationController _canApplyVoiceCommandWithIdentifierString:firstParameterText:targetString:voiceCommandUUID:]";
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s Command applicability check: no selection found for command with identifier: %@", buf, 0x16u);
        }
      }

      else
      {
        if (!-[UIDictationController _isNonEmptyDocumentRequiredForCommand:](self, "_isNonEmptyDocumentRequiredForCommand:", v15) || ![v18 documentIsEmpty])
        {
          if (v12)
          {
            v37 = 0;
            v38 = &v37;
            v39 = 0x2020000000;
            v40 = 0;
            v31 = [v18 contextBeforeInput];
            v32 = [v18 contextAfterInput];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __116__UIDictationController__canApplyVoiceCommandWithIdentifierString_firstParameterText_targetString_voiceCommandUUID___block_invoke;
            v36[3] = &unk_1E7115128;
            v36[4] = &v37;
            [UIDictationUtilities searchString:v12 contextBefore:v31 contextAfter:v32 completionHandler:v36];
            if ((v38[3] & 1) == 0)
            {
              v34 = _UIDictationControllerLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315907;
                v42 = "[UIDictationController _canApplyVoiceCommandWithIdentifierString:firstParameterText:targetString:voiceCommandUUID:]";
                v43 = 2112;
                v44 = v10;
                v45 = 2112;
                v46 = v12;
                v47 = 2113;
                v48 = v31;
                _os_log_error_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s Command applicability check: command target not found for command with identifier: %@, target: %@, context before %{private}@", buf, 0x2Au);
              }

              _Block_object_dispose(&v37, 8);
              goto LABEL_25;
            }

            _Block_object_dispose(&v37, 8);
          }

          goto LABEL_35;
        }

        v27 = _UIDictationControllerLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[UIDictationController _canApplyVoiceCommandWithIdentifierString:firstParameterText:targetString:voiceCommandUUID:]";
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s Command applicability check: document is empty but non-empty document required by command with identifier: %@", buf, 0x16u);
        }
      }

      goto LABEL_25;
    }

    v23 = _UIDictationControllerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v10;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "UIDictationController unhandled command with identifier: %@", buf, 0xCu);
    }

    [v14 setCommandStatus:2];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v14];
  }

  else
  {
    v22 = _UIDictationControllerLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[UIDictationController _canApplyVoiceCommandWithIdentifierString:firstParameterText:targetString:voiceCommandUUID:]";
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "%s Unknown command with identifier: %@", buf, 0x16u);
    }

    [v14 setCommandStatus:0];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v14];
  }

  v21 = 0;
LABEL_37:

  return v21;
}

uint64_t __116__UIDictationController__canApplyVoiceCommandWithIdentifierString_firstParameterText_targetString_voiceCommandUUID___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)_handleMultipleTextTargetsForText:(id)a3 payloadText:(id)a4 voiceCommandUUID:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v66 = a4;
  v9 = a5;
  [(UIDictationController *)self setCommandTargetRangeMatchingGazeRange:0];
  v10 = +[UIKeyboardImpl activeInstance];
  v11 = [v10 inputDelegateManager];
  v12 = [v11 hasAsyncCapableInputDelegate];

  if (v12)
  {
    v13 = 0;
    goto LABEL_39;
  }

  if (!+[UIKeyboard inputUIOOP])
  {
    v20 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    v21 = [v20 documentState];
    if (v21)
    {
      v22 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
      v23 = [v22 documentState];
      v16 = [v23 contextBeforeInput];
    }

    else
    {
      v16 = [(UIDictationController *)self visibleContextBeforeInputAtCommandExecution];
    }

    v17 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    v18 = [v17 documentState];
    if (v18)
    {
      [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    }

    else
    {
      [(UIDictationController *)self visibleRTIDocumentStateAtStart];
    }
    v24 = ;
    v25 = [v24 documentState];
    v19 = [v25 contextAfterInput];

    goto LABEL_14;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v14 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    v15 = [v14 documentState];
    v16 = [v15 contextBeforeInput];

    v17 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    v18 = [v17 documentState];
    v19 = [v18 contextAfterInput];
LABEL_14:

    goto LABEL_15;
  }

  v19 = 0;
  v16 = 0;
LABEL_15:
  v26 = [UIDictationUtilities rangesForSearchStringWithWordBoundariesValidation:v16 substring:v8 reverse:0];
  v58 = v19;
  v27 = [UIDictationUtilities rangesForSearchStringWithWordBoundariesValidation:v19 substring:v8 reverse:0];
  v65 = [MEMORY[0x1E695DF70] array];
  v28 = [v26 count];
  v29 = [v27 count] + v28;
  v13 = v29 > 0;
  v57 = v27;
  if (v29 < 1)
  {
    v49 = v16;
  }

  else
  {
    v53 = v29 > 0;
    v54 = self;
    v55 = v9;
    v56 = v8;
    v64 = [MEMORY[0x1E695DF70] array];
    v63 = [MEMORY[0x1E695DF70] array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v52 = v26;
    v80[0] = v26;
    v80[1] = v27;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    v61 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v61)
    {
      v60 = *v76;
      do
      {
        v30 = 0;
        do
        {
          if (*v76 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v62 = v30;
          v31 = *(*(&v75 + 1) + 8 * v30);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v32 = v31;
          v33 = [v32 countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v72;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v72 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = [*(*(&v71 + 1) + 8 * i) rangeValue];
                v39 = v38;
                if (v16)
                {
                  v37 -= [v16 length];
                }

                v40 = [v10 inputDelegateManager];
                v41 = [v40 textInputDelegate];
                v42 = [v41 _rangeFromCurrentRangeWithDelta:{v37, v39}];

                [v64 addObject:v42];
                v43 = MEMORY[0x1E696B098];
                v44 = [v10 inputDelegateManager];
                v45 = [v44 textInputDelegate];
                v46 = [v45 _nsrangeForTextRange:v42];
                v48 = [v43 valueWithRange:{v46, v47}];
                [v65 addObject:v48];

                [v63 addObject:v66];
              }

              v34 = [v32 countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v34);
          }

          v16 = 0;
          v30 = v62 + 1;
        }

        while (v62 + 1 != v61);
        v16 = 0;
        v49 = 0;
        v61 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
      }

      while (v61);
    }

    else
    {
      v49 = v16;
    }

    v9 = v55;
    if ([objc_opt_class() supportsSiriDictationVoiceCommandsUIRedesign])
    {
      [(UIDictationController *)v54 playVoiceCommandHapticFeedack];
      v50 = [v10 _textChoicesAssistant];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __88__UIDictationController__handleMultipleTextTargetsForText_payloadText_voiceCommandUUID___block_invoke;
      v67[3] = &unk_1E7115150;
      v67[4] = v54;
      v68 = v55;
      v69 = v64;
      v70 = v10;
      [v50 decorateTextInRanges:v69 replacementTexts:v63 allowAutomaticReplacement:1 autoHide:0 voiceCommandTrackingUUID:v68 withCompletionHandler:v67];
    }

    v8 = v56;
    v13 = v53;
    v26 = v52;
  }

LABEL_39:
  return v13;
}

uint64_t __88__UIDictationController__handleMultipleTextTargetsForText_payloadText_voiceCommandUUID___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = MEMORY[0x1E696AD98];
    v6 = a1[6];
    v7 = a2;
    v8 = [v5 numberWithInt:{objc_msgSend(v6, "count")}];
    [v3 instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:v4 disambiguationIndex:v7 totalDisambiguationCount:v8];
  }

  v9 = a1[4];
  v10 = a1[7];

  return [v9 notifyDocumentStateChangedAndResumeDictation:v10];
}

- (void)instrumentDictationVoiceCommandUndoTapActionWithVoiceCommandUUID:(id)a3 undoTapAlternativeSelection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getSISchemaUEIDictationVoiceCommandUndoTapActionClass_softClass;
  v15 = getSISchemaUEIDictationVoiceCommandUndoTapActionClass_softClass;
  if (!getSISchemaUEIDictationVoiceCommandUndoTapActionClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSISchemaUEIDictationVoiceCommandUndoTapActionClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getSISchemaUEIDictationVoiceCommandUndoTapActionClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = objc_alloc_init(v7);
  v10 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v6];
  [v9 setVoiceCommandId:v10];

  [v9 setIsUndoTapAlternativeSelection:v4];
  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v9];
}

- (void)instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:(id)a3 disambiguationIndex:(id)a4 totalDisambiguationCount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v11 = getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_softClass;
  v19 = getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_softClass;
  if (!getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_block_invoke;
    v15[3] = &unk_1E70F2F20;
    v15[4] = &v16;
    __getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_block_invoke(v15);
    v11 = v17[3];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);
  v13 = objc_alloc_init(v11);
  v14 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v8];
  [v13 setVoiceCommandId:v14];

  [v13 setDisambiguationType:1];
  [v13 setDisambiguationIndex:{objc_msgSend(v9, "intValue")}];
  [v13 setTotalDisambiguationAlternatives:{objc_msgSend(v10, "intValue")}];
  [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v13];
}

- (void)_handleWKMultipleTextTargetsForText:(id)a3 payloadText:(id)a4 voiceCommandUUID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[UIKeyboardImpl activeInstance];
  v15 = [v14 inputDelegateManager];
  v16 = [v15 hasAsyncCapableInputDelegate];

  if (v16)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __108__UIDictationController__handleWKMultipleTextTargetsForText_payloadText_voiceCommandUUID_completionHandler___block_invoke;
    v17[3] = &unk_1E71151A0;
    v18 = v10;
    v19 = v11;
    v20 = self;
    v21 = v14;
    v22 = v12;
    v23 = v13;
    [(UIDictationController *)self _requestDocumentContextWithCompletionHandler:v17];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

void __108__UIDictationController__handleWKMultipleTextTargetsForText_payloadText_voiceCommandUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 contextBefore];
  v5 = _stringForObject(v4);

  v6 = [v3 contextAfter];
  v7 = _stringForObject(v6);

  v67 = v3;
  v62 = [v3 selectedTextRange];
  v9 = v8;
  v10 = [UIDictationUtilities rangesForSearchStringWithWordBoundariesValidation:v5 substring:*(a1 + 32) reverse:0];
  v60 = v7;
  v11 = [UIDictationUtilities rangesForSearchStringWithWordBoundariesValidation:v7 substring:*(a1 + 32) reverse:0];
  v12 = [v10 count];
  if ([v11 count] + v12 < 1)
  {
    (*(*(a1 + 72) + 16))();
    v49 = v5;
  }

  else
  {
    v53 = v9;
    v61 = [MEMORY[0x1E695DF70] array];
    v66 = [MEMORY[0x1E695DF70] array];
    v65 = [MEMORY[0x1E695DF70] array];
    v64 = [MEMORY[0x1E695DF70] array];
    v63 = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v54 = v11;
    v55 = v10;
    v87[0] = v10;
    v87[1] = v11;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v58 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
    if (v58)
    {
      v57 = *v82;
      do
      {
        v13 = 0;
        do
        {
          if (*v82 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = v13;
          v14 = *(*(&v81 + 1) + 8 * v13);
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v70 = v14;
          v15 = [v70 countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v78;
            v68 = *v78;
            do
            {
              v18 = 0;
              v69 = v16;
              do
              {
                if (*v78 != v17)
                {
                  objc_enumerationMutation(v70);
                }

                v19 = [*(*(&v77 + 1) + 8 * v18) rangeValue];
                v21 = v20;
                if (v5)
                {
                  v22 = v19 - [v5 length];
                  v23 = v5;
                }

                else
                {
                  v23 = v60;
                  v22 = v19;
                }

                v24 = [v23 substringWithRange:{v19, v21}];
                if (([v24 isEqualToString:*(a1 + 40)] & 1) == 0)
                {
                  v25 = a1;
                  v26 = v22;
                  v27 = [MEMORY[0x1E696B098] valueWithRange:{v22 + v62, v21}];
                  [v61 addObject:v27];

                  v28 = [v67 characterRectsForCharacterRange:{v22 + v62, v21}];
                  v29 = [v28 firstObject];
                  [v29 CGRectValue];
                  x = v30;
                  y = v32;
                  width = v34;
                  height = v36;

                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v38 = v28;
                  v39 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = *v74;
                    do
                    {
                      for (i = 0; i != v40; ++i)
                      {
                        if (*v74 != v41)
                        {
                          objc_enumerationMutation(v38);
                        }

                        [*(*(&v73 + 1) + 8 * i) CGRectValue];
                        v92.origin.x = v43;
                        v92.origin.y = v44;
                        v92.size.width = v45;
                        v92.size.height = v46;
                        v90.origin.x = x;
                        v90.origin.y = y;
                        v90.size.width = width;
                        v90.size.height = height;
                        v91 = CGRectUnion(v90, v92);
                        x = v91.origin.x;
                        y = v91.origin.y;
                        width = v91.size.width;
                        height = v91.size.height;
                      }

                      v40 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
                    }

                    while (v40);
                  }

                  v47 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
                  [v66 addObject:v47];

                  v48 = [MEMORY[0x1E696B098] valueWithRange:{v26, v21}];
                  [v65 addObject:v48];

                  [v64 addObject:v24];
                  a1 = v25;
                  [v63 addObject:*(v25 + 40)];

                  v17 = v68;
                  v16 = v69;
                }

                ++v18;
              }

              while (v18 != v16);
              v16 = [v70 countByEnumeratingWithState:&v77 objects:v86 count:16];
            }

            while (v16);
          }

          v5 = 0;
          v13 = v59 + 1;
        }

        while (v59 + 1 != v58);
        v5 = 0;
        v49 = 0;
        v58 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      }

      while (v58);
    }

    else
    {
      v49 = v5;
    }

    if ([objc_opt_class() supportsSiriDictationVoiceCommandsUIRedesign])
    {
      [*(a1 + 48) playVoiceCommandHapticFeedack];
      v50 = [*(a1 + 56) _textChoicesAssistant];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __108__UIDictationController__handleWKMultipleTextTargetsForText_payloadText_voiceCommandUUID_completionHandler___block_invoke_2;
      v71[3] = &unk_1E7115178;
      v51 = *(a1 + 64);
      v72 = *(a1 + 72);
      LOWORD(v52) = 1;
      [v50 decorateTextInRects:v66 targetTextArray:v64 replacementTexts:v63 deltaRanges:v65 originalSelectedRange:v62 allowAutomaticReplacement:v53 autoHide:v52 voiceCommandUUID:v51 withCompletionHandler:v71];
    }

    v11 = v54;
    v10 = v55;
  }
}

- (void)_handleRecognizedCommandWithCommandIdentifier:(unint64_t)a3 parameters:(id)a4 strings:(id)a5 voiceCommandUUID:(id)a6
{
  v10 = a4;
  v98 = a5;
  v11 = a6;
  v12 = +[UIKeyboardImpl activeInstance];
  v13 = [v12 inputDelegateManager];
  v14 = [v13 textInputDelegate];
  v15 = [v12 inputDelegateManager];
  v16 = [v15 selectedTextRange];
  v17 = [v14 _nsrangeForTextRange:v16];
  [(UIDictationController *)self setPreCommandExecutionPositionRange:v17, v18];

  if (a3 == 21 || ([(UIDictationController *)self _addUndoNotificationObservationWithVoiceCommandUUID:v11], a3 != 26))
  {
    v19 = [v12 _textChoicesAssistant];
    [v19 resetDictationChoicesAnimated:0];
  }

  v20 = [(UIDictationController *)self commandMetadataWithDictationCommandIdentifier:a3 parameters:v10];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if ([objc_opt_class() supportsSiriDictationVoiceCommandsAdjacentEdits])
    {
      v21 = [v20 expandedTargetMetadata];

      if (v21)
      {
        v22 = [v12 _textChoicesAssistant];
        [v22 resetDictationUnderlines];

        v23 = [objc_opt_class() firstParameterTextWithParameters:v10];
LABEL_16:
        v29 = [objc_opt_class() secondParameterTextWithParameters:v10];
LABEL_25:
        v37 = v29;
        v38 = [v20 expandedTargetMetadata];
        if (v38)
        {
          v39 = v38;
          v40 = [objc_opt_class() supportsSiriDictationVoiceCommandsAdjacentEdits];

          if (v40)
          {
            v41 = [v20 expandedTargetMetadata];
            v42 = [v41 expandedTarget];

            v43 = [v20 expandedTargetMetadata];
            v44 = [v43 expandedPayload];

            v37 = v44;
            v23 = v42;
          }
        }

        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_2;
        v138[3] = &unk_1E71151F0;
        v138[4] = self;
        v139 = v12;
        v140 = v23;
        v141 = v37;
        v142 = v11;
        v45 = v37;
        v31 = v23;
        [(UIDictationController *)self _handleWKMultipleTextTargetsForText:v31 payloadText:v45 voiceCommandUUID:v142 completionHandler:v138];

LABEL_29:
        goto LABEL_47;
      }
    }
  }

  if (a3 <= 0x1A && ((1 << a3) & 0x400C000) != 0)
  {
    v24 = [(UIDictationController *)self visibleRTIDocumentStateAtCommandRecognition];
    v25 = [v24 selectedTextRange];
    [(UIDictationController *)self setCachedPreSelectionRange:v25, v26];
  }

  v27 = [v12 _textChoicesAssistant];
  [v27 resetDictationUnderlines];

  switch(a3)
  {
    case 6uLL:
    case 7uLL:
    case 9uLL:
    case 0xBuLL:
      v28 = [objc_opt_class() firstParameterTextWithParameters:v10];
      v23 = v28;
      switch(a3)
      {
        case 0xBuLL:
          v29 = [v28 lowercaseString];
          break;
        case 9uLL:
          v29 = [v28 capitalizedString];
          break;
        case 7uLL:
          v29 = [v28 uppercaseString];
          break;
        default:
          goto LABEL_16;
      }

      goto LABEL_25;
    case 8uLL:
    case 0xAuLL:
    case 0xCuLL:
      v30 = [v12 inputDelegateManager];
      v31 = [v30 selectedTextRange];

      v32 = [v12 inputDelegateManager];
      v33 = [v32 hasAsyncCapableInputDelegate];

      if (v33)
      {
        v143[0] = MEMORY[0x1E69E9820];
        v143[1] = 3221225472;
        v143[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke;
        v143[3] = &unk_1E71151C8;
        v146 = a3;
        v144 = v12;
        v145 = self;
        [(UIDictationController *)self _requestDocumentContextWithCompletionHandler:v143];

        goto LABEL_29;
      }

      [v12 updateForChangedSelection];
      v34 = [v12 inputDelegateManager];
      v35 = [v34 textInRange:v31];

      switch(a3)
      {
        case 8uLL:
          v36 = [v35 uppercaseString];
          break;
        case 0xCuLL:
          v36 = [v35 lowercaseString];
          break;
        case 0xAuLL:
          v36 = [v35 capitalizedString];
          break;
        default:
          goto LABEL_56;
      }

      v61 = v36;

      v35 = v61;
LABEL_56:
      v62 = [v12 inputDelegateManager];
      [v62 insertText:v35];

      [(UIDictationController *)self notifyDocumentStateChangedAndResumeDictation:v12];
      goto LABEL_29;
    case 0xEuLL:
      v51 = [objc_opt_class() firstParameterTextWithParameters:v10];
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_3;
      v134[3] = &unk_1E70F4660;
      v134[4] = self;
      v135 = v12;
      v136 = v51;
      v137 = v11;
      v52 = v51;
      [(UIDictationController *)self _handleWKMultipleTextTargetsForText:v52 payloadText:0x1EFB75A90 voiceCommandUUID:v137 completionHandler:v134];

      v53 = v135;
      goto LABEL_35;
    case 0xFuLL:
      [(UIDictationController *)self playVoiceCommandHapticFeedack];
      [(UIDictationController *)self _performStandardEditAction:sel_selectAll_ sender:0];
      [(UIDictationController *)self notifyDocumentStateChangedAndResumeDictation:v12];
      goto LABEL_48;
    case 0x10uLL:
      v50 = sel_cut_;
      goto LABEL_41;
    case 0x11uLL:
      [(UIDictationController *)self _performStandardEditAction:sel_copy_ sender:0];
      [v12 dismissDictationMenu];
      [v12 presentDictationMenu];
      goto LABEL_46;
    case 0x12uLL:
      v50 = sel_paste_;
LABEL_41:
      [(UIDictationController *)self _performStandardEditAction:v50 sender:0];
      goto LABEL_42;
    case 0x14uLL:
      v46 = +[UIDictationLandingView activeInstance];
      v47 = [v46 canStopLanding];

      if (v47)
      {
        v48 = +[UIDictationLandingView activeInstance];
        [v48 stopLanding];
      }

      v49 = +[UIDictationController activeInstance];
      [v49 stopDictation];

      goto LABEL_47;
    case 0x15uLL:
      [(UIDictationController *)self playVoiceCommandHapticFeedack];
      v55 = [v12 inputDelegateManager];
      v56 = [v55 selectedTextRange];
      v57 = [v56 isEmpty];

      v58 = [(UIDictationController *)self cachedPreSelectionRange];
      if ((v57 & 1) != 0 || v58 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIDictationController *)self _performDictationUndo];
      }

      else
      {
        objc_initWeak(&location, self);
        v59 = [(UIDictationController *)self cursorPositionRestorer];
        v60 = [(UIDictationController *)self cachedPreSelectionRange];
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_4;
        v132[3] = &unk_1E70F5A28;
        objc_copyWeak(&v133, &location);
        [v59 setCursorToOffset:v60 completion:v132];

        objc_destroyWeak(&v133);
        objc_destroyWeak(&location);
      }

      goto LABEL_47;
    case 0x1BuLL:
      [(UIDictationController *)self playVoiceCommandHapticFeedack];
      [(UIDictationController *)self _performDictationRedo];
      goto LABEL_47;
    default:
      if (a3 == 22 || a3 == 5)
      {
        location = 0;
        p_location = &location;
        v128 = 0x3032000000;
        v129 = __Block_byref_object_copy__125;
        v130 = __Block_byref_object_dispose__125;
        v131 = [objc_opt_class() firstParameterTextWithParameters:v10];
        v54 = [objc_opt_class() secondParameterTextWithParameters:v10];
        if ([UIDictationUtilities shouldInsertSpaceBetweenStringA:p_location[5] andStringB:v54])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", p_location[5], v54];
        }

        else
        {
          [p_location[5] stringByAppendingString:v54];
        }
        v66 = ;
        if (a3 == 22)
        {
          v67 = p_location[5];

          v68 = @"_placeholder_UIDictationTextAlternativesActionMoveBefore_56C81A32-B231-496C-BAD4-559E159B46E8_";
          v66 = v68;
          v54 = v67;
        }

        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_5;
        v119[3] = &unk_1E7115218;
        v119[4] = self;
        v120 = v12;
        v69 = v54;
        v121 = v69;
        v70 = v66;
        v122 = v70;
        v123 = v11;
        v124 = &location;
        v125 = a3;
        [(UIDictationController *)self _handleWKMultipleTextTargetsForText:v69 payloadText:v70 voiceCommandUUID:v123 completionHandler:v119];

        v71 = v120;
        goto LABEL_68;
      }

      if (a3 <= 18)
      {
        if (a3 <= 3)
        {
          switch(a3)
          {
            case 1uLL:
              v83 = [objc_opt_class() firstParameterTextWithParameters:v10];
              v84 = @"_placeholder_UIDictationTextAlternativesActionDelete_FA6ACA5B-6332-4904-95E9-D4A0894E570D_";
              v85 = [(UIDictationController *)self commandMetadataWithDictationCommandIdentifier:1 parameters:v10];
              if ([objc_opt_class() supportsSiriDictationVoiceCommandsAdjacentEdits])
              {
                v86 = [v85 expandedTargetMetadata];

                if (v86)
                {
                  v87 = [v85 expandedTargetMetadata];
                  v88 = [v87 expandedTarget];

                  v89 = [v85 expandedTargetMetadata];
                  v90 = [v89 expandedPayload];

                  v83 = v88;
                  v84 = v90;
                }
              }

              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 3221225472;
              v101[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_11;
              v101[3] = &unk_1E71151F0;
              v101[4] = self;
              v102 = v12;
              v103 = v83;
              v104 = v84;
              v105 = v11;
              v91 = v84;
              v92 = v83;
              [(UIDictationController *)self _handleWKMultipleTextTargetsForText:v92 payloadText:v91 voiceCommandUUID:v105 completionHandler:v101];

              break;
            case 2uLL:
              v80 = [v12 inputDelegateManager];
              v81 = [v80 hasAsyncCapableInputDelegate];

              if (v81)
              {
                v109[0] = MEMORY[0x1E69E9820];
                v109[1] = 3221225472;
                v109[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_7;
                v109[3] = &unk_1E7115240;
                v110 = v12;
                v111 = self;
                [(UIDictationController *)self _requestFullDocumentContextWithCompletionHandler:v109];
                v82 = v110;
              }

              else
              {
                [(UIDictationController *)self playVoiceCommandHapticFeedack];
                [v12 handleClear];
                v95 = dispatch_time(0, 160000000);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_10;
                block[3] = &unk_1E70F35B8;
                v107 = v12;
                v108 = self;
                dispatch_after(v95, MEMORY[0x1E69E96A0], block);
                v82 = v107;
              }

              break;
            case 3uLL:
              v63 = [v12 inputDelegateManager];
              v64 = [v63 selectedTextRange];
              v65 = [v64 isEmpty];

              if (v65)
              {
                [v12 handleDeleteWordWithExecutionContext:0];
              }

              else
              {
                v96 = [v12 inputDelegateManager];
                [v96 deleteBackward];
              }

LABEL_42:
              [v12 dismissDictationMenu];
              goto LABEL_46;
          }

LABEL_47:
          [(UIDictationController *)self setCachedPreSelectionRange:0x7FFFFFFFFFFFFFFFLL, 0];
          goto LABEL_48;
        }

        if (a3 - 14 < 2)
        {
          goto LABEL_48;
        }

        if (a3 != 4)
        {
          goto LABEL_47;
        }

LABEL_80:
        location = 0;
        p_location = &location;
        v128 = 0x3032000000;
        v129 = __Block_byref_object_copy__125;
        v130 = __Block_byref_object_dispose__125;
        v131 = [objc_opt_class() firstParameterTextWithParameters:v10];
        v75 = [objc_opt_class() secondParameterTextWithParameters:v10];
        if ([UIDictationUtilities shouldInsertSpaceBetweenStringA:v75 andStringB:p_location[5]])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v75, p_location[5]];
        }

        else
        {
          [v75 stringByAppendingString:p_location[5]];
        }
        v93 = ;
        if (a3 == 23)
        {
          v97 = p_location[5];

          v94 = @"_placeholder_UIDictationTextAlternativesActionMoveAfter_D48B4A2E-2FBE-41EE-A266-3B7B3FB8F4DD_";
          v75 = v97;
          v93 = v94;
        }

        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_6;
        v112[3] = &unk_1E7115218;
        v112[4] = self;
        v113 = v12;
        v69 = v75;
        v114 = v69;
        v70 = v93;
        v115 = v70;
        v116 = v11;
        v117 = &location;
        v118 = a3;
        [(UIDictationController *)self _handleWKMultipleTextTargetsForText:v69 payloadText:v70 voiceCommandUUID:v116 completionHandler:v112];

        v71 = v113;
LABEL_68:

        _Block_object_dispose(&location, 8);
        if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xE)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      if (a3 <= 23)
      {
        if (a3 != 19)
        {
          if (a3 != 23)
          {
            goto LABEL_47;
          }

          goto LABEL_80;
        }

        v76 = +[UIDictationLandingView sharedInstance];
        [v76 stopLanding];

        v77 = +[UIKeyboardImpl activeInstance];
        [v77 performSendAction];
LABEL_88:

LABEL_46:
        [(UIDictationController *)self notifyDocumentStateChangedAndResumeDictation:v12];
        goto LABEL_47;
      }

      if (a3 == 24)
      {
        v78 = +[UIKeyboardImpl activeInstance];
        v77 = v78;
        v79 = sel_moveToBeginningOfDocument_;
        goto LABEL_87;
      }

      if (a3 == 25)
      {
        v78 = +[UIKeyboardImpl activeInstance];
        v77 = v78;
        v79 = sel_moveToEndOfDocument_;
LABEL_87:
        [v78 performTextOperationActionSelector:v79];
        goto LABEL_88;
      }

      if (a3 != 26)
      {
        goto LABEL_47;
      }

      v52 = [objc_opt_class() firstParameterTextWithParameters:v10];
      v72 = [v52 integerValue];
      [(UIDictationController *)self playVoiceCommandHapticFeedack];
      v73 = +[UIKeyboardImpl activeInstance];
      v74 = [v73 _textChoicesAssistant];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_12;
      v99[3] = &unk_1E7115268;
      v99[4] = self;
      v100 = v12;
      [v74 updateDictationChoicesFromPromptIndex:v72 completionHandler:v99];

      v53 = v100;
LABEL_35:

LABEL_48:
      [(UIDictationController *)self resetDictationPendingEdits];
      self->_hasCheckedForLeadingSpaceOnce = 0;

      return;
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectedText];
  v8 = _stringForObject(v3);

  if ([v8 length])
  {
    v4 = *(a1 + 48);
    switch(v4)
    {
      case 8:
        v5 = [v8 uppercaseString];
        break;
      case 12:
        v5 = [v8 lowercaseString];
        break;
      case 10:
        v5 = [v8 capitalizedString];
        break;
      default:
        goto LABEL_9;
    }

    v6 = v5;

    v8 = v6;
  }

LABEL_9:
  [*(a1 + 32) updateForChangedSelection];
  v7 = [*(a1 + 32) inputDelegateManager];
  [v7 insertText:v8];

  [*(a1 + 40) notifyDocumentStateChangedAndResumeDictation:*(a1 + 32)];
}

uint64_t __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_2(void *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 notifyDocumentStateChangedAndResumeDictation:a1[5]];
  }

  else
  {
    return [v3 _handleMultipleTextTargetsForText:a1[6] payloadText:a1[7] voiceCommandUUID:a1[8]];
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 notifyDocumentStateChangedAndResumeDictation:v4];
  }

  else if ([v3 _handleMultipleTextTargetsForText:*(a1 + 48) payloadText:0x1EFB75A90 voiceCommandUUID:*(a1 + 56)])
  {
    v5 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];

    if (v5)
    {
      v6 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];
      v7 = [v6 rangeValue];
      v9 = v8;

      v10 = [*(a1 + 40) inputDelegateManager];
      v12 = [v10 _textRangeFromNSRange:{v7, v9}];

      v11 = [*(a1 + 40) inputDelegateManager];
      [v11 setSelectedTextRange:v12];

      [*(a1 + 40) updateForChangedSelection];
    }
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _performDictationUndo];
    [v2 setCachedPreSelectionRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
    WeakRetained = v2;
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_5(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 notifyDocumentStateChangedAndResumeDictation:v4];
  }

  else if ([v3 _handleMultipleTextTargetsForText:*(a1 + 48) payloadText:*(a1 + 56) voiceCommandUUID:*(a1 + 64)])
  {
    v5 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];

    if (v5)
    {
      v6 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];
      v7 = [v6 rangeValue];

      v8 = [*(a1 + 40) inputDelegateManager];
      v20 = [v8 _textRangeFromNSRange:{v7, 0}];

      v9 = [*(a1 + 40) inputDelegateManager];
      [v9 setSelectedTextRange:v20];

      [*(a1 + 40) updateForChangedSelection];
      if (*(a1 + 80) == 22)
      {
        [*(a1 + 32) notifyDocumentStateChangedAndResumeDictation:*(a1 + 40)];
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", *(*(*(a1 + 72) + 8) + 40)];
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = [*(a1 + 40) inputDelegateManager];
        [v13 insertText:*(*(*(a1 + 72) + 8) + 40)];

        v14 = [*(a1 + 32) preCommandExecutionPositionRange] > v7;
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = [v15 preCommandExecutionPositionRange];
        LOBYTE(v19) = v14;
        [v15 _restoreInsertionPointPositionWithKeyboard:v16 originalPositionRange:v17 targetRange:v18 payloadRange:0 contextBefore:{0, 0, objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "length"), v19}];
      }
    }
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_6(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 notifyDocumentStateChangedAndResumeDictation:v4];
  }

  else if ([v3 _handleMultipleTextTargetsForText:*(a1 + 48) payloadText:*(a1 + 56) voiceCommandUUID:*(a1 + 64)])
  {
    v5 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];

    if (v5)
    {
      v6 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];
      v7 = [v6 rangeValue];
      v9 = v8;

      v10 = v7 + v9;
      v11 = [*(a1 + 40) inputDelegateManager];
      v23 = [v11 _textRangeFromNSRange:{v10, 0}];

      v12 = [*(a1 + 40) inputDelegateManager];
      [v12 setSelectedTextRange:v23];

      [*(a1 + 40) updateForChangedSelection];
      if (*(a1 + 80) == 23)
      {
        [*(a1 + 32) notifyDocumentStateChangedAndResumeDictation:*(a1 + 40)];
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", *(*(*(a1 + 72) + 8) + 40)];
        v14 = *(*(a1 + 72) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v16 = [*(a1 + 40) inputDelegateManager];
        [v16 insertText:*(*(*(a1 + 72) + 8) + 40)];

        v17 = [*(a1 + 32) preCommandExecutionPositionRange] > v10;
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = [v18 preCommandExecutionPositionRange];
        LOBYTE(v22) = v17;
        [v18 _restoreInsertionPointPositionWithKeyboard:v19 originalPositionRange:v20 targetRange:v21 payloadRange:0 contextBefore:{0, 0, objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "length"), v22}];
      }
    }
  }
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fullText];
  v5 = [v3 directionalRangeForSelectionRange:{0, objc_msgSend(v4, "length")}];
  v7 = v6;

  v8 = [*(a1 + 32) inputDelegateManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_8;
  v11[3] = &unk_1E70F35B8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v8 adjustSelection:v5 completionHandler:{v7, v11}];
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) updateForChangedSelection];
  [*(a1 + 40) playVoiceCommandHapticFeedack];
  v2 = [*(a1 + 32) inputDelegateManager];
  [v2 deleteBackward];

  v3 = dispatch_time(0, 160000000);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_9;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_after(v3, MEMORY[0x1E69E96A0], v6);
}

uint64_t __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) presentDictationUndoMenu];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 notifyDocumentStateChangedAndResumeDictation:v3];
}

uint64_t __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) presentDictationUndoMenu];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 notifyDocumentStateChangedAndResumeDictation:v3];
}

void __107__UIDictationController__handleRecognizedCommandWithCommandIdentifier_parameters_strings_voiceCommandUUID___block_invoke_11(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 notifyDocumentStateChangedAndResumeDictation:v4];
  }

  else if ([v3 _handleMultipleTextTargetsForText:*(a1 + 48) payloadText:*(a1 + 56) voiceCommandUUID:*(a1 + 64)])
  {
    v5 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];

    if (v5)
    {
      v6 = [*(a1 + 32) commandTargetRangeMatchingGazeRange];
      v7 = [v6 rangeValue];
      v9 = v8;

      v10 = [*(a1 + 40) inputDelegateManager];
      v31 = [v10 _textRangeFromNSRange:{v7, v9}];

      v11 = [*(a1 + 40) inputDelegateManager];
      [v11 setSelectedTextRange:v31];

      [*(a1 + 40) updateForChangedSelection];
      v12 = [*(a1 + 40) inputDelegateManager];
      v13 = [v12 textInputDelegate];
      v14 = [*(a1 + 40) inputDelegateManager];
      v15 = [v14 selectedTextRange];
      v16 = [v13 _nsrangeForTextRange:v15];
      v18 = v17;

      v19 = [*(a1 + 40) inputDelegateManager];
      [v19 deleteBackward];

      v20 = [*(a1 + 40) inputDelegateManager];
      v21 = [v20 textInputDelegate];
      v22 = [*(a1 + 40) inputDelegateManager];
      v23 = [v22 selectedTextRange];
      v24 = [v21 _nsrangeForTextRange:v23];

      v25 = v16 + v18 - v24;
      LOBYTE(v18) = [*(a1 + 32) preCommandExecutionPositionRange] > v7;
      v27 = *(a1 + 32);
      v26 = *(a1 + 40);
      v28 = [v27 preCommandExecutionPositionRange];
      LOBYTE(v30) = v18;
      [v27 _restoreInsertionPointPositionWithKeyboard:v26 originalPositionRange:v28 targetRange:v29 payloadRange:0 contextBefore:{v25, 0, 0, v30}];
    }
  }
}

- (BOOL)_didRecognizeCommandWithIdentifier:(id)a3 strings:(id)a4 parameters:(id)a5 voiceCommandUUID:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_opt_class() commandIdentifierWithStringIdentifier:v10];
  v15 = objc_alloc_init(getSISchemaUEIDictationVoiceCommandExecutedClass());
  [v15 setCommandType:{objc_msgSend(objc_opt_class(), "mapDictationCommandIdentifierToUEIcommandIdentifier:", v14)}];
  v16 = [objc_alloc(getSISchemaUUIDClass()) initWithNSUUID:v13];
  [v15 setVoiceCommandId:v16];

  if ([objc_opt_class() shouldForwardInInputSystemUI])
  {
    [(UIDictationController *)self clearSelectedTextAndLastDictationResult:[(UIDictationController *)self isSelectionBasedCommand:v14]^ 1];
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = NSStringFromSelector(sel_didRecognizeCommandWithIdentifier_strings_parameters_voiceCommandUUID_allVisibleRangeRects_currentGazePoint_);
    [v17 setObject:v18 forKeyedSubscript:@"selector"];

    if (v10)
    {
      [v17 setObject:v10 forKeyedSubscript:@"identifier"];
    }

    if (v11)
    {
      [v17 setObject:v11 forKeyedSubscript:@"strings"];
    }

    if (v12)
    {
      [v17 setObject:v12 forKeyedSubscript:@"parameters"];
    }

    if (v13)
    {
      [v17 setObject:v13 forKeyedSubscript:@"voiceCommandUUID"];
    }

    v19 = +[UIKeyboardImpl activeInstance];
    v20 = [v19 inputDelegateManager];
    v21 = [v20 inputSystemSourceSession];

    if (v21)
    {
      v22 = [v21 textOperations];
      [v22 setCustomInfoType:0x1EFB7C8F0];
      [v22 setCustomInfo:v17];
      [v21 flushOperations];
    }

    [(UIDictationController *)self pauseDictation];
    [(UIDictationController *)self setTargetHypothesis:0];
    [(UIDictationController *)self setLastHypothesis:0];
    [(UIDictationController *)self setPendingEdits:0];
    self->_hasCheckedForLeadingSpaceOnce = 0;
    v23 = _UIDictationControllerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[UIDictationController _didRecognizeCommandWithIdentifier:strings:parameters:voiceCommandUUID:]";
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", buf, 0xCu);
    }

    [(UIDictationController *)self setIsProcessingPotentialVoiceCommand:0];
  }

  else
  {
    v31 = v13;
    v17 = [objc_opt_class() firstParameterTextWithParameters:v12];
    v21 = [objc_opt_class() secondParameterTextWithParameters:v12];
    v24 = +[UIDictationController sharedInstance];
    [v24 dictationTipController];
    v25 = v12;
    v26 = v10;
    v28 = v27 = v11;
    [v28 dictationCommandUsed:v14 firstTargetString:v17 secondTargetString:v21];

    v11 = v27;
    v10 = v26;
    v12 = v25;

    [(UIDictationController *)self _setupForCommandExecutionWithCommandIdentifier:v14];
    v29 = _UIDictationControllerLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v39 = "[UIDictationController _didRecognizeCommandWithIdentifier:strings:parameters:voiceCommandUUID:]";
      v40 = 2112;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v25;
      _os_log_debug_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEBUG, "%s Recognized command %@ with strings %@ parameters %@", buf, 0x2Au);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __96__UIDictationController__didRecognizeCommandWithIdentifier_strings_parameters_voiceCommandUUID___block_invoke;
    v32[3] = &unk_1E7115290;
    v32[4] = self;
    v37 = v14;
    v33 = v25;
    v34 = v11;
    v13 = v31;
    v35 = v31;
    v36 = v15;
    [(UIDictationController *)self requestVisibleTextWithCompletionBlock:v32];
  }

  return 1;
}

uint64_t __96__UIDictationController__didRecognizeCommandWithIdentifier_strings_parameters_voiceCommandUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setVisibleRTIDocumentStateAtCommandRecognition:a2];
  [*(a1 + 32) _handleRecognizedCommandWithCommandIdentifier:*(a1 + 72) parameters:*(a1 + 40) strings:*(a1 + 48) voiceCommandUUID:*(a1 + 56)];
  [*(a1 + 64) setCommandStatus:1];
  [*(*(a1 + 32) + 648) emitInstrumentation:*(a1 + 64)];
  v3 = _UIDictationControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UIDictationController _didRecognizeCommandWithIdentifier:strings:parameters:voiceCommandUUID:]_block_invoke";
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting isProcessingPotentialVoiceCommand to NO", &v5, 0xCu);
  }

  return [*(a1 + 32) setIsProcessingPotentialVoiceCommand:0];
}

- (void)_setupForCommandExecutionWithCommandIdentifier:(unint64_t)a3
{
  [(UIDictationController *)self clearSelectedTextAndLastDictationResult:[(UIDictationController *)self isSelectionBasedCommand:a3]^ 1];
  if (!+[UIKeyboard usesInputSystemUI])
  {
    [(UIDictationController *)self pauseDictation];
  }

  [(UIDictationController *)self invalidateTextInputView];
}

- (id)_effectiveUndoManager
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 delegateAsResponder];
  v5 = [v4 _responderForEditing];
  v6 = [v5 undoManager];

  v7 = [(UIDictationController *)self undoManager];
  v8 = v7;
  if (!v7)
  {
    v9 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[UIDictationController _effectiveUndoManager]";
      v10 = "%s ERROR: Cached undo manager was nil. No manager returned";
      goto LABEL_12;
    }

LABEL_6:

    v11 = 0;
    goto LABEL_8;
  }

  if (v7 != v6)
  {
    v9 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[UIDictationController _effectiveUndoManager]";
      v10 = "%s ERROR: Cached undo manager differs from current responder's manager. Refusing to return manager.";
LABEL_12:
      _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, v10, &v13, 0xCu);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (void)_beginUndoGroupingIfNecessary
{
  v21 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() supportsSiriDictationVoiceCommands])
  {
    if ([objc_opt_class() shouldForwardInInputSystemUI] && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "inputDelegateManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "inputSystemSourceSession"), v16 = objc_claimAutoreleasedReturnValue(), v4, v3, v16))
    {
      v5 = [v16 textOperations];
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = NSStringFromSelector(sel_beginUndoGroupingIfNecessary_);
      [v6 setObject:v7 forKeyedSubscript:@"selector"];

      [v5 setCustomInfoType:0x1EFB7C8F0];
      [v5 setCustomInfo:v6];
      [v16 flushOperations];
    }

    else if (![(UIDictationController *)self isDictationUndoGroupingOpen])
    {
      v9 = +[UIKeyboardImpl activeInstance];
      v10 = [v9 delegateAsResponder];
      v11 = [v10 _responderForEditing];
      v12 = [v11 undoManager];

      v13 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[UIDictationController _beginUndoGroupingIfNecessary]";
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s Beginning undo grouping", buf, 0xCu);
      }

      [(UIDictationController *)self setUndoManager:v12];
      [v12 beginUndoGrouping];
      v14 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 groupingLevel];
        *buf = 136315394;
        v18 = "[UIDictationController _beginUndoGroupingIfNecessary]";
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s groupingLevel: %ld", buf, 0x16u);
      }

      [(UIDictationController *)self setIsDictationUndoGroupingOpen:1];
    }
  }

  else
  {
    v8 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[UIDictationController _beginUndoGroupingIfNecessary]";
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s Skip undo grouping", buf, 0xCu);
    }
  }
}

- (void)_endUndoGroupingIfNecessary
{
  v26 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() supportsSiriDictationVoiceCommands])
  {
    if ([objc_opt_class() shouldForwardInInputSystemUI])
    {
      v3 = +[UIKeyboardImpl activeInstance];
      v4 = [v3 inputDelegateManager];
      v21 = [v4 inputSystemSourceSession];

      if (v21)
      {
        v5 = [v21 textOperations];
        v6 = [MEMORY[0x1E695DF90] dictionary];
        v7 = NSStringFromSelector(sel_endUndoGroupingIfNecessary_);
        [v6 setObject:v7 forKeyedSubscript:@"selector"];

        [v5 setCustomInfoType:0x1EFB7C8F0];
        [v5 setCustomInfo:v6];
        [v21 flushOperations];

        return;
      }
    }

    if (![(UIDictationController *)self isDictationUndoGroupingOpen])
    {
      return;
    }

    v9 = +[UIKeyboardImpl activeInstance];
    v10 = [(UIDictationController *)self undoManager];
    if (!v10)
    {
      v13 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
        _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s ERROR: Cached undo manager was nil. Cannot end grouping on the original manager. The undo group may be left open or state inconsistent.", buf, 0xCu);
      }

      goto LABEL_27;
    }

    v11 = [v9 delegateAsResponder];
    v12 = [v11 _responderForEditing];
    v13 = [v12 undoManager];

    if (v10 != v13)
    {
      v14 = _UIDictationControllerUndoRedoLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s Current responder's undo manager is different from the cached one. Using the cached undo manager to end grouping.", buf, 0xCu);
      }
    }

    v15 = [v10 groupingLevel];
    v16 = _UIDictationControllerUndoRedoLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 < 1)
    {
      if (!v17)
      {
LABEL_26:

        [(UIDictationController *)self setIsDictationUndoGroupingOpen:0];
LABEL_27:

        return;
      }

      v20 = [v10 groupingLevel];
      *buf = 136315394;
      v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
      v24 = 2048;
      v25 = v20;
      v19 = "%s isDictationUndoGroupingOpen was YES but groupingLevel was %ld, so we will forgo ending of the undo grouping (this is likely because a voice command caused the field to lose focus before dictation has fully had a chance to finish)";
    }

    else
    {
      if (v17)
      {
        *buf = 136315138;
        v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping", buf, 0xCu);
      }

      [v10 endUndoGrouping];
      v16 = _UIDictationControllerUndoRedoLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v18 = [v10 groupingLevel];
      *buf = 136315394;
      v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
      v24 = 2048;
      v25 = v18;
      v19 = "%s groupingLevel: %ld";
    }

    _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
    goto LABEL_26;
  }

  v8 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[UIDictationController _endUndoGroupingIfNecessary]";
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s Skip undo grouping", buf, 0xCu);
  }
}

- (void)_setHaveLeakedPartialResultForCommandUtterance:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() shouldForwardInInputSystemUI] && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "inputDelegateManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "inputSystemSourceSession"), v13 = objc_claimAutoreleasedReturnValue(), v6, v5, v13))
  {
    v7 = [v13 textOperations];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = NSStringFromSelector(sel_setHaveLeakedPartialResultForCommandUtterance_);
    [v8 setObject:v9 forKeyedSubscript:@"selector"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v8 setObject:v10 forKeyedSubscript:@"haveLeakedPartialResultForCommandUtterance"];

    [v7 setCustomInfoType:0x1EFB7C8F0];
    [v7 setCustomInfo:v8];
    [v13 flushOperations];
  }

  else
  {
    v11 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      *buf = 136315394;
      v15 = "[UIDictationController _setHaveLeakedPartialResultForCommandUtterance:]";
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%s Setting haveLeakedPartialResultForCommandUtterance to %@", buf, 0x16u);
    }

    [(UIDictationController *)self setHaveLeakedPartialResultForCommandUtterance:v3];
  }
}

- (void)markDictationUndoEventWithVoiceCommandUUID:(id)a3 viaTapOnRevertBubble:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (self->_undoNotificationToken)
  {
    v6 = [(UIDictationController *)self dictationConnection];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 updateVoiceCommandContextWithPrefixText:0 postfixText:0 selectedText:0 disambiguationActive:0 cursorInVisibleText:0 favorCommandSuppression:0 abortCommandSuppression:0 undoEvent:v7];

    [(UIDictationController *)self _removeUndoNotificationObservation];
  }

  [(UIDictationController *)self instrumentDictationVoiceCommandUndoTapActionWithVoiceCommandUUID:v8 undoTapAlternativeSelection:v4];
}

- (void)_addUndoNotificationObservationWithVoiceCommandUUID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E696AA30];
  v7 = [MEMORY[0x1E696ADC8] mainQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__UIDictationController__addUndoNotificationObservationWithVoiceCommandUUID___block_invoke;
  v11[3] = &unk_1E71152B8;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v11];
  undoNotificationToken = self->_undoNotificationToken;
  self->_undoNotificationToken = v9;
}

- (void)_removeUndoNotificationObservation
{
  if (self->_undoNotificationToken)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_undoNotificationToken];

    undoNotificationToken = self->_undoNotificationToken;
    self->_undoNotificationToken = 0;
  }
}

- (void)_performDictationUndo
{
  v13 = *MEMORY[0x1E69E9840];
  [(UIDictationController *)self pauseDictation];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [(UIDictationController *)self _effectiveUndoManager];
  if ([v4 canUndo])
  {
    v5 = [(UIDictationController *)self cursorPositionRestorer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__UIDictationController__performDictationUndo__block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = self;
    v10 = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__UIDictationController__performDictationUndo__block_invoke_1584;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v3;
    [v5 saveCursorLocationAndRestoreAfterPerforming:v9 completion:v7];
  }

  else
  {
    v6 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[UIDictationController _performDictationUndo]";
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s undoManager says we can't undo", buf, 0xCu);
    }

    [(UIDictationController *)self notifyDocumentStateChangedAndResumeDictation:v3];
  }
}

uint64_t __46__UIDictationController__performDictationUndo__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIDictationController _performDictationUndo]_block_invoke";
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%s Ending undo grouping if necessary", &v6, 0xCu);
  }

  [*(a1 + 32) _endUndoGroupingIfNecessary];
  if ([*(a1 + 32) haveLeakedPartialResultForCommandUtterance])
  {
    v3 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[UIDictationController _performDictationUndo]_block_invoke";
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s Performing extra [undoManager undo] to get rid of leaked partial", &v6, 0xCu);
    }

    [*(a1 + 40) undo];
  }

  v4 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIDictationController _performDictationUndo]_block_invoke";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Performing [undoManager undo]", &v6, 0xCu);
  }

  [*(a1 + 40) undo];
  return [*(a1 + 32) invalidateTextInputView];
}

- (void)_performDictationRedo
{
  v14 = *MEMORY[0x1E69E9840];
  [(UIDictationController *)self pauseDictation];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [(UIDictationController *)self _effectiveUndoManager];
  if ([v4 canRedo])
  {
    v5 = [(UIDictationController *)self cursorPositionRestorer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__UIDictationController__performDictationRedo__block_invoke;
    v9[3] = &unk_1E70F35B8;
    v10 = v4;
    v11 = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__UIDictationController__performDictationRedo__block_invoke_1585;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v3;
    [v5 saveCursorLocationAndRestoreAfterPerforming:v9 completion:v7];
  }

  else
  {
    v6 = _UIDictationControllerUndoRedoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[UIDictationController _performDictationRedo]";
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s undoManager says we can't redo", buf, 0xCu);
    }

    [(UIDictationController *)self notifyDocumentStateChangedAndResumeDictation:v3];
  }
}

uint64_t __46__UIDictationController__performDictationRedo__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _UIDictationControllerUndoRedoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UIDictationController _performDictationRedo]_block_invoke";
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%s Performing [undoManager redo]", &v4, 0xCu);
  }

  [*(a1 + 32) redo];
  return [*(a1 + 40) invalidateTextInputView];
}

- (void)performTextReplacementForWebKitWithDeltaRange:(_NSRange)a3 targetText:(id)a4 replacementText:(id)a5 originalSelectedRange:(_NSRange)a6 voiceCommandDisambiguationSelectedIndex:(id)a7 voiceCommandDisambiguationTargetCount:(id)a8 voiceCommandUUID:(id)a9 completionHandler:(id)a10
{
  length = a6.length;
  location = a6.location;
  v29 = a3.length;
  v30 = a3.location;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v31 = a10;
  v28 = self;
  [(UIDictationController *)self instrumentDictationVoiceCommandDisambiguationActionWithVoiceCommandUUID:v18 disambiguationIndex:v16 totalDisambiguationCount:v17];
  v19 = +[UIKeyboardImpl activeInstance];
  v20 = [v19 inputDelegateManager];
  v21 = [v20 hasAsyncCapableInputDelegate];

  if (v21)
  {
    v27 = v14;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3010000000;
    v47[3] = "";
    v47[4] = location;
    v26 = location;
    v47[5] = length;
    v22 = [v15 isEqualToString:0x1EFB75A70];
    v23 = [v15 isEqualToString:0x1EFB75A90];
    v24 = [v19 inputDelegateManager];
    if ((v22 | v23))
    {
      v25 = v29;
    }

    else
    {
      v25 = 0;
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke;
    v32[3] = &unk_1E71153A8;
    v33 = v19;
    v45 = v22;
    v34 = v15;
    v35 = v28;
    v42 = v29;
    v40 = v47;
    v41 = v30;
    v39 = v31;
    v46 = v23;
    v36 = v27;
    v43 = v26;
    v44 = length;
    v37 = v18;
    v38 = v16;
    [v24 adjustSelection:v30 completionHandler:{v25, v32}];

    _Block_object_dispose(v47, 8);
    v14 = v27;
  }
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateForChangedSelection];
  v2 = *(a1 + 40);
  v3 = v2;
  if (*(a1 + 128) == 1)
  {

    v4 = *(a1 + 48);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_2;
    v31[3] = &unk_1E7115308;
    v3 = &stru_1EFB14550;
    v32 = *(a1 + 32);
    v33 = &stru_1EFB14550;
    v34 = *(a1 + 48);
    v20 = *(a1 + 80);
    v5 = *(a1 + 80);
    v36 = *(a1 + 96);
    v6 = v5;
    v35 = v20;
    [v4 _requestDocumentContextWithCompletionHandler:v31];
  }

  else if (*(a1 + 129) == 1)
  {
    v7 = *(a1 + 80);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69D95F0]) initWithCandidate:v2 forInput:*(a1 + 56)];
    v9 = [*(a1 + 32) inputDelegateManager];
    v10 = [v8 candidate];
    v11 = [v8 input];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_5;
    v22[3] = &unk_1E7115380;
    v23 = v8;
    v24 = *(a1 + 32);
    v12 = *(a1 + 112);
    v29 = *(a1 + 96);
    v30 = v12;
    v21 = *(a1 + 40);
    v13 = v21.i64[0];
    v25 = vextq_s8(v21, v21, 8uLL);
    v14 = *(a1 + 80);
    v15 = *(a1 + 64);
    v28 = *(a1 + 88);
    v16 = *(a1 + 56);
    *&v17 = *(a1 + 72);
    *(&v17 + 1) = v14;
    *&v18 = v15;
    *(&v18 + 1) = v16;
    v26 = v18;
    v27 = v17;
    v19 = v8;
    [v9 applyAutocorrection:v10 toString:v11 shouldUnderline:1 withCompletionHandler:v22];
  }
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 selectedTextRange];
  v5 = v4;
  v6 = [*(a1 + 32) inputDelegateManager];
  [v6 insertText:*(a1 + 40)];

  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_3;
  v8[3] = &unk_1E71152E0;
  v12 = *(a1 + 72);
  v11 = *(a1 + 64);
  v13 = v3;
  v14 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  [v7 _requestDocumentContextWithCompletionHandler:v8];
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedTextRange];
  if ((*(a1 + 59) & 0x80) != 0)
  {
    *(*(*(a1 + 48) + 8) + 32) += v4 - (*(a1 + 72) + *(a1 + 80));
  }

  v5 = [v3 directionalRangeForSelectionRange:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
  v7 = v6;

  v8 = [*(a1 + 32) inputDelegateManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_4;
  v9[3] = &unk_1E70F0F78;
  v10 = *(a1 + 40);
  [v8 adjustSelection:v5 completionHandler:{v7, v9}];
}

uint64_t __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D9570] listWithAutocorrection:*(a1 + 32)];
  v3 = [*(a1 + 40) _textChoicesAssistant];
  [v3 addList:v2 forCandidate:*(a1 + 32)];

  v4 = [*(a1 + 40) _textChoicesAssistant];
  [v4 trackUnderlineForWebKitCandidate:*(a1 + 32)];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_6;
  v16[3] = &unk_1E7115358;
  v5 = *(a1 + 120);
  v22 = *(a1 + 104);
  v23 = v5;
  v15 = *(a1 + 48);
  v6 = *(&v15 + 1);
  v7 = *(a1 + 88);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v15;
  v18 = v10;
  v11 = *(a1 + 64);
  v21 = *(a1 + 96);
  v12 = *(a1 + 72);
  *&v13 = *(a1 + 80);
  *(&v13 + 1) = v7;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v19 = v14;
  v20 = v13;
  [v15 _requestDocumentContextWithCompletionHandler:v16];
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) selectBestReplacementRangeFromContext:v3 withDeltaRange:*(a1 + 104) originalSelectedRange:*(a1 + 112) replacementText:{*(a1 + 120), *(a1 + 128), *(a1 + 40)}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = _UIDictationControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v63 = "[UIDictationController performTextReplacementForWebKitWithDeltaRange:targetText:replacementText:originalSelectedRange:voiceCommandDisambiguationSelectedIndex:voiceCommandDisambiguationTargetCount:voiceCommandUUID:completionHandler:]_block_invoke_6";
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s ERROR: Could not find valid replacement range.", buf, 0xCu);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v10 = [v3 characterRectsForCharacterRange:{v4, v5}];
    v11 = [v10 firstObject];
    [v11 CGRectValue];
    x = v12;
    y = v14;
    width = v16;
    height = v18;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v54 + 1) + 8 * i) CGRectValue];
          v68.origin.x = v25;
          v68.origin.y = v26;
          v68.size.width = v27;
          v68.size.height = v28;
          v65.origin.x = x;
          v65.origin.y = y;
          v65.size.width = width;
          v65.size.height = height;
          v66 = CGRectUnion(v65, v68);
          x = v66.origin.x;
          y = v66.origin.y;
          width = v66.size.width;
          height = v66.size.height;
        }

        v22 = [v20 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v22);
    }

    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    if (CGRectIsEmpty(v67))
    {
      if ((*(a1 + 107) & 0x80) != 0)
      {
        v29 = [*(a1 + 72) length];
        *(*(*(a1 + 96) + 8) + 32) += [*(a1 + 40) length] - v29;
      }

      v30 = [v3 directionalRangeForSelectionRange:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
      v32 = v31;
      v33 = [*(a1 + 48) inputDelegateManager];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_3_1591;
      v43[3] = &unk_1E70F4A50;
      v45 = *(a1 + 88);
      v44 = *(a1 + 80);
      [v33 adjustSelection:v30 completionHandler:{v32, v43}];

      v34 = v45;
    }

    else
    {
      v34 = [MEMORY[0x1E696B098] valueWithRect:{x, y, width, height}];
      v41 = [*(a1 + 48) _textChoicesAssistant];
      v60 = v34;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
      v42 = [*(a1 + 56) input];
      v59 = v42;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      v36 = [*(a1 + 56) candidate];
      v58 = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      v39 = *(a1 + 64);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_1589;
      v46[3] = &unk_1E7115330;
      v53 = *(a1 + 104);
      v52 = *(a1 + 96);
      v47 = *(a1 + 72);
      v48 = *(a1 + 40);
      v49 = v3;
      v50 = *(a1 + 48);
      v51 = *(a1 + 88);
      LOWORD(v38) = 256;
      [v41 decorateTextInRects:v40 targetTextArray:v35 replacementTexts:v37 deltaRanges:0 originalSelectedRange:v8 allowAutomaticReplacement:v9 autoHide:v38 voiceCommandUUID:v39 withCompletionHandler:v46];
    }
  }
}

void __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_1589(uint64_t a1)
{
  if ((*(a1 + 83) & 0x80) != 0)
  {
    v2 = [*(a1 + 32) length];
    *(*(*(a1 + 72) + 8) + 32) += [*(a1 + 40) length] - v2;
  }

  v3 = [*(a1 + 48) directionalRangeForSelectionRange:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
  v5 = v4;
  v6 = [*(a1 + 56) inputDelegateManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_2_1590;
  v7[3] = &unk_1E70F0F78;
  v8 = *(a1 + 64);
  [v6 adjustSelection:v3 completionHandler:{v5, v7}];
}

uint64_t __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_2_1590(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __233__UIDictationController_performTextReplacementForWebKitWithDeltaRange_targetText_replacementText_originalSelectedRange_voiceCommandDisambiguationSelectedIndex_voiceCommandDisambiguationTargetCount_voiceCommandUUID_completionHandler___block_invoke_3_1591(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (_NSRange)selectBestReplacementRangeFromContext:(id)a3 withDeltaRange:(_NSRange)a4 originalSelectedRange:(_NSRange)a5 replacementText:(id)a6
{
  location = a5.location;
  v7 = a4.location;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [a3 autocorrectedRanges];
  v11 = [v10 count];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  if (v11 != 1)
  {
    v12 = [v9 length];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v10;
    v16 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v14 = location + v7;
      v18 = *v25;
LABEL_7:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v24 + 1) + 8 * v19) rangeValue] == v14 && v20 == v12)
        {
          goto LABEL_4;
        }

        if (v17 == ++v19)
        {
          v17 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v12 = 0;
LABEL_17:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  v13 = [v10 firstObject];
  v14 = [v13 rangeValue];
  v12 = v15;
LABEL_4:

LABEL_18:
  v22 = v14;
  v23 = v12;
  result.length = v23;
  result.location = v22;
  return result;
}

- (void)playVoiceCommandHapticFeedack
{
  feedbackGenerator = self->_feedbackGenerator;
  v3 = +[_UIDictationSettingsDomain rootSettings];
  [v3 impactIntensity];
  [UIImpactFeedbackGenerator impactOccurredWithIntensity:"impactOccurredWithIntensity:atLocation:" atLocation:?];
}

- (void)setDisambiguationActiveEnabled:(BOOL)a3
{
  v3 = a3;
  self->_isDisambiguationUIActive = a3;
  if ([objc_opt_class() shouldForwardEventsToInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 _textChoicesAssistant];
    [v10 forwardDictationEvent_setDisambiguationActive:v3 maxOptions:{objc_msgSend(v6, "numberOfDisambiguationOptions")}];
  }

  else
  {
    v7 = [(UIDictationController *)self dictationConnection];
    v8 = [v7 supportNewVoiceEditingCommandSPI];

    v10 = [(UIDictationController *)self dictationConnection];
    if (v3)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
      if (v8)
      {
        [v10 updateVoiceCommandContextWithPrefixText:0 postfixText:0 selectedText:0 disambiguationActive:v5 cursorInVisibleText:0 favorCommandSuppression:v6 abortCommandSuppression:0 undoEvent:0];
      }

      else
      {
        [v10 updateVoiceCommandContextWithPrefixText:0 postfixText:0 selectedText:0 disambiguationActive:v5 cursorInVisibleText:0 favorCommandSuppression:v6 abortCommandSuppression:0];
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v6 = v9;
      if (v8)
      {
        [v10 updateVoiceCommandContextWithPrefixText:0 postfixText:0 selectedText:0 disambiguationActive:v5 cursorInVisibleText:0 favorCommandSuppression:0 abortCommandSuppression:v9 undoEvent:0];
      }

      else
      {
        [v10 updateVoiceCommandContextWithPrefixText:0 postfixText:0 selectedText:0 disambiguationActive:v5 cursorInVisibleText:0 favorCommandSuppression:0 abortCommandSuppression:v9];
      }
    }
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (a4 == 42)
  {
    [(UIDictationController *)self setDisambiguationActiveEnabled:a3];
  }
}

- (void)launchDictationFeedbackApp
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"dictationreporter://feedback"];
  [UIApp openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:&__block_literal_global_1597];
}

- (id)activeMultilingualKeyboardDictationMappings
{
  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:*MEMORY[0x1E69D96E8]];

  return v3;
}

- (BOOL)enableEuclidAlternatives
{
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  v3 = [v2 enableEuclidAlternatives];

  return v3;
}

- (void)preheatEuclidModelWithLanguageCode:(id)a3 clientID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UIDictationController *)self currentEuclidLanguage];
  v8 = [v10 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(UIDictationController *)self setCurrentEuclidLanguage:v10];
    v9 = [(UIDictationController *)self dictationConnection];
    [v9 preheatEuclidModelWithLanguageCode:@"en_US" clientID:v6];
  }
}

- (void)euclidPhoneticString:(id)a3 maxResultsCount:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(UIDictationController *)self dictationConnection];
  [v10 euclidPhoneticString:v9 maxResultsCount:a4 completion:v8];
}

- (void)logEuclidRequested
{
  v3 = [getAFPreferencesClass_0() sharedPreferences];
  v4 = [v3 siriDataSharingOptInStatus];

  if (v4 == 1)
  {
    v5 = objc_alloc_init(getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass());
    [v5 setSpeechAlternativesType:1];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v5];
  }
}

- (void)logEuclidSelection:(id)a3 suggestedTokens:(id)a4 correctedToken:(id)a5 selectedIndex:(int64_t)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a4;
  v9 = a5;
  v10 = [getAFPreferencesClass_0() sharedPreferences];
  v11 = [v10 siriDataSharingOptInStatus];

  if (v11 == 1)
  {
    v12 = objc_alloc_init(getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass());
    [v12 setSpeechAlternativesType:2];
    [v12 setAlternativesIndexSelectedByUser:a6];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v13 = qword_1ED498938;
    v41 = qword_1ED498938;
    if (!qword_1ED498938)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1Class_block_invoke;
      v36 = &unk_1E70F2F20;
      v37 = &v38;
      __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1Class_block_invoke(&v33);
      v13 = v39[3];
    }

    v14 = v13;
    _Block_object_dispose(&v38, 8);
    v15 = objc_alloc_init(v13);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v16 = qword_1ED498940;
    v41 = qword_1ED498940;
    if (!qword_1ED498940)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getSISchemaEuclidConfusionPairClass_block_invoke;
      v36 = &unk_1E70F2F20;
      v37 = &v38;
      __getSISchemaEuclidConfusionPairClass_block_invoke(&v33);
      v16 = v39[3];
    }

    v17 = v16;
    _Block_object_dispose(&v38, 8);
    v18 = objc_alloc_init(v16);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v28;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v21)
    {
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [*(*(&v29 + 1) + 8 * v23) candidate];
          [v19 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v42 count:16];
      }

      while (v21);
    }

    [v18 setRecognizedToken:v27];
    [v18 setSuggestedTokens:v19];
    v25 = [v9 candidate];
    [v18 setCorrectedToken:v25];

    [v15 setConfusionPair:v18];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v12];
    [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentInstrumentationContext emitInstrumentation:v15];
  }
}

- (_NSRange)insertionRange
{
  length = self->_insertionRange.length;
  location = self->_insertionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSUndoManager)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_undoManager);

  return WeakRetained;
}

- (_NSRange)preCommandExecutionPositionRange
{
  length = self->_preCommandExecutionPositionRange.length;
  location = self->_preCommandExecutionPositionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)cachedPreSelectionRange
{
  length = self->_cachedPreSelectionRange.length;
  location = self->_cachedPreSelectionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)startRangeOfCurrentHypothesis
{
  length = self->_startRangeOfCurrentHypothesis.length;
  location = self->_startRangeOfCurrentHypothesis.location;
  result.length = length;
  result.location = location;
  return result;
}

@end