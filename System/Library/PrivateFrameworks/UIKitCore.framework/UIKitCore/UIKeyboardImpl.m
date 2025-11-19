@interface UIKeyboardImpl
+ (BOOL)isActivatingForeground;
+ (BOOL)isDictationPopoverEnabled;
+ (BOOL)isFloating;
+ (BOOL)isFloatingForced;
+ (BOOL)isSplit;
+ (BOOL)keyboardOrientation:(int64_t)a3 isEquivalentToOrientation:(int64_t)a4;
+ (BOOL)shouldAccessInputManagerService;
+ (BOOL)shouldMergeAssistantBarWithKeyboardLayout;
+ (BOOL)shouldPadTopOfKeyboard;
+ (BOOL)showsGlobeAndDictationKeysExternally;
+ (BOOL)showsGlobeAndDictationKeysExternallyForFloatingKeyboard;
+ (BOOL)smartInsertDeleteIsEnabled;
+ (BOOL)supportsFloating;
+ (BOOL)supportsSplit;
+ (CGPoint)_normalizedScreenPoint:(CGPoint)a3;
+ (CGPoint)_screenPointFromNormalizedPoint:(CGPoint)a3;
+ (CGPoint)defaultUndockedOffsetForFloating:(BOOL)a3;
+ (CGPoint)floatingNormalizedPersistentOffset;
+ (CGPoint)floatingPersistentOffset;
+ (CGPoint)normalizedPersistentOffset;
+ (CGPoint)normalizedPersistentOffsetIgnoringState;
+ (CGPoint)persistentOffset;
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4;
+ (Class)layoutClassForCurrentInputMode;
+ (Class)layoutClassForInputMode:(id)a3 keyboardType:(int64_t)a4 screenTraits:(id)a5;
+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4;
+ (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4;
+ (UIEdgeInsets)requestedFloatingInsets;
+ (double)additionalInstanceHeight;
+ (double)additionalInstanceHeightForInterfaceOrientation:(int64_t)a3 hasInputView:(BOOL)a4;
+ (double)additionalTopPaddingForRoundedKeyboard;
+ (double)floatingHeight;
+ (double)floatingScreenWidthToEmulate;
+ (double)floatingWidth;
+ (double)keyboardWidthForScreen:(id)a3 withOrientation:(int64_t)a4;
+ (double)persistentSplitProgress;
+ (double)topMarginForInterfaceOrientation:(int64_t)a3;
+ (id)_applicationClientComponent;
+ (id)keyboardScreen;
+ (id)keyboardWindow;
+ (id)normalizedInputModesFromPreference;
+ (id)sharedInstanceForCustomInputView:(BOOL)a3;
+ (id)uniqueNumberPadInputModesFromInputModes:(id)a3 forKeyboardType:(int64_t)a4;
+ (void)applicationDidBecomeActive:(id)a3;
+ (void)applicationDidEnterBackground:(id)a3;
+ (void)applicationDidReceiveMemoryWarning:(id)a3;
+ (void)applicationWillEnterForeground:(id)a3;
+ (void)applicationWillResignActive:(id)a3;
+ (void)applicationWillSuspend:(id)a3;
+ (void)performWithoutFloatingLock:(id)a3;
+ (void)purgeImageCache;
+ (void)refreshRivenStateWithTraits:(id)a3 isKeyboard:(BOOL)a4;
+ (void)releaseSharedInstance;
+ (void)sendPerformanceNotification:(id)a3 userInfo:(id)a4;
+ (void)setFloating:(BOOL)a3;
+ (void)setFloating:(BOOL)a3 positionedAtDefaultOffsetAnimated:(BOOL)a4;
+ (void)setFloating:(BOOL)a3 positionedAtOffset:(CGPoint)a4 animated:(BOOL)a5;
+ (void)setFloatingPersistentOffset:(CGPoint)a3;
+ (void)setPersistentOffset:(CGPoint)a3;
+ (void)setPersistentSplitProgress:(double)a3;
+ (void)switchControlStatusDidChange:(id)a3;
- (BOOL)_canHandleResponderCommand:(SEL)a3;
- (BOOL)_cancelOperation:(BOOL)a3 testOnly:(BOOL)a4;
- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)a3;
- (BOOL)_isBackdropVisible;
- (BOOL)_isShowingCandidateUIWithAvailableCandidates;
- (BOOL)_isShowingSuggestionForKeyboardCamera;
- (BOOL)_shouldAcceptAutocorrectionOnSelectionChange;
- (BOOL)_shouldLoadPredictionsBasedOnCurrentTraits;
- (BOOL)_shouldMinimizeForHardwareKeyboard;
- (BOOL)_shouldSuppressSoftwareKeyboard;
- (BOOL)_shouldSuppressSoftwareKeyboardAndAssistantView;
- (BOOL)_shouldSuppressSoftwareKeyboardByDictation;
- (BOOL)_shouldSuppressSoftwareKeyboardByOneness;
- (BOOL)_shouldSuppressSoftwareKeyboardForResponder:(id)a3 ignoringPolicyDelegate:(BOOL)a4 ignoreNumberPad:(BOOL)a5;
- (BOOL)_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:(BOOL)a3;
- (BOOL)_showsScribbleIconsInAssistantView;
- (BOOL)accessibilityUsesExtendedKeyboardPredictionsEnabled;
- (BOOL)allowsReachableKeyboard;
- (BOOL)automaticMinimizationEnabled;
- (BOOL)callLayoutIsGeometricShiftOrMoreKeyForTouch:(id)a3;
- (BOOL)callLayoutIsShiftKeyBeingHeld;
- (BOOL)callShouldInsertText:(id)a3;
- (BOOL)callShouldInsertText:(id)a3 onDelegate:(id)a4;
- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4;
- (BOOL)canPresentDictationMenuWithAnimationStyle:(int64_t)a3;
- (BOOL)canPresentEmojiPopover;
- (BOOL)canPresentNumberpadPopover;
- (BOOL)canPresentOrDismissEmojiPopover;
- (BOOL)canShowAppConnections;
- (BOOL)canToggleSoftwareKeyboard;
- (BOOL)canUseCandidateBarAsSupplementToInlineView;
- (BOOL)caretBlinks;
- (BOOL)caretVisible;
- (BOOL)centerFilled;
- (BOOL)continuousPathUnderway;
- (BOOL)delegateSuggestionsForCurrentInput;
- (BOOL)globeKeyDisplaysAsEmojiKey;
- (BOOL)hardwareKeyboardIsSeen;
- (BOOL)hasAdvancedInputDelegate;
- (BOOL)hasAsyncCapableInputDelegate;
- (BOOL)hasAutocorrectPrompt;
- (BOOL)hasCursorAssertion;
- (BOOL)hideAccessoryViewsDuringSplit;
- (BOOL)imageSuggestionEnabled;
- (BOOL)inputModeSwitcherVisible;
- (BOOL)insertTextIfShould:(id)a3;
- (BOOL)insertsSpaceAfterPredictiveInput;
- (BOOL)isDictationMenuPresented;
- (BOOL)isDictationPopoverPresented;
- (BOOL)isEmojiPopoverVisibleOrDismissing;
- (BOOL)isHardwareKeyboardAttachedNow;
- (BOOL)isMinimized;
- (BOOL)isPredictionViewControllerVisible;
- (BOOL)isRTIClient;
- (BOOL)isShiftKeyBeingHeld;
- (BOOL)isTrackpadMode;
- (BOOL)isUsingDictationLayout;
- (BOOL)keyboardDrawsOpaque;
- (BOOL)keyboardIsInPencilTextInputMode;
- (BOOL)keyboardIsKeyPad;
- (BOOL)keyboardLayoutIsInAnotherProcess;
- (BOOL)keyboardsExpandedPreference;
- (BOOL)layoutIsResizing;
- (BOOL)nextCharacterIsWordCharacter;
- (BOOL)performSendAction;
- (BOOL)playInputClick;
- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)returnKeyEnabled;
- (BOOL)rivenSplitLock;
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)shouldAllowTwoFingerSelectionGestureOnView:(id)a3;
- (BOOL)shouldApplyKeyboardCommandToUIHost;
- (BOOL)shouldCollapseButtonBarForFeedbackUI;
- (BOOL)shouldShowCandidateBar;
- (BOOL)shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:(BOOL)a3 ignoreHidePredictionTrait:(BOOL)a4;
- (BOOL)shouldShowContinuousPathIntroductionView;
- (BOOL)shouldShowDictationKey;
- (BOOL)shouldShowInternationalKey;
- (BOOL)shouldShowInternationalKeyIntroduction;
- (BOOL)shouldShowModelessInputTip;
- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewController;
- (BOOL)shouldUnderlineCandidate:(id)a3;
- (BOOL)shouldUseCarPlayModes;
- (BOOL)showsCandidateBar;
- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton;
- (BOOL)splitTransitionInProgress;
- (CGRect)convertRectToAutocorrectRect:(CGRect)a3 delegateView:(id)a4 container:(id)a5;
- (CGRect)correctionRect;
- (CGRect)dragGestureRectInView:(id)a3;
- (CGRect)frameForKeylayoutName:(id)a3;
- (CGRect)getCorrectionRectIsVertical:(BOOL *)a3;
- (CGRect)keyboardIntroductionFrame;
- (CGRect)overrideEditMenuTargetRectForConfiguration:(id)a3;
- (CGRect)subtractKeyboardFrameFromRect:(CGRect)a3 inView:(id)a4;
- (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3;
- (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4;
- (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4;
- (UIKeyInput)delegate;
- (UIKeyboardImpl)initWithFrame:(CGRect)a3 forCustomInputView:(BOOL)a4;
- (UIKeyboardImplGeometryDelegate)geometryDelegate;
- (UIKeyboardLayout)activeLayout;
- (UIView)overlayContainerObserved;
- (double)lastTouchDownTimestamp;
- (id)UILanguagePreference;
- (id)_autofillContext;
- (id)_autofillGroup;
- (id)_fallbackAutofillGroup;
- (id)_getAutocorrectionList;
- (id)_getCurrentKeyboardName;
- (id)_getCurrentKeyplaneName;
- (id)_getLocalizedInputMode;
- (id)_passwordRules;
- (id)_remoteAppId;
- (id)_remoteAssociatedDomains;
- (id)_remoteLocalizedAppName;
- (id)_remoteUnlocalizedAppName;
- (id)_supplementalCandidateIcon:(id)a3;
- (id)_targetForResponderCommand:(SEL)a3;
- (id)asyncCapableInputDelegate;
- (id)asyncInputDelegate;
- (id)autocorrectPromptRectsForInput:(id)a3;
- (id)buildInputSourceState;
- (id)delegateAsResponder;
- (id)dynamicCaretList;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)inlineCandidateView;
- (id)inputDelegate;
- (id)inputModeLastUsedPreference;
- (id)inputModePreference;
- (id)internationalKeyDisplayStringOnEmojiKeyboard;
- (id)keyboardMenuElements;
- (id)keyboardViewController;
- (id)keyplaneView;
- (id)layoutState;
- (id)markedTextOverlay;
- (id)physicalKeyboardEventWithInput:(id)a3 inputFlags:(int)a4;
- (id)responderForSendCurrentLocation;
- (id)responderStylingTraitsForceEditingMask:(BOOL)a3;
- (id)returnKeyDisplayName;
- (id)stopDictationMenuElementsForTextInputView:(id)a3;
- (id)stopDictationMenuElementsShowingTitle:(BOOL)a3;
- (id)webInputDelegate;
- (id)window;
- (int)promptTypeForInputString:(id)a3;
- (int64_t)_autoFillModeForPopoverType:(int)a3;
- (int64_t)_textInputSourceForDelegate:(id)a3;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)_clearDictationMenuTimer:(BOOL)a3;
- (void)_conditionallyNotifyPredictionsAreAvailableForCandidates:(id)a3 containingProactiveTriggers:(BOOL)a4;
- (void)_configureMarkedTextAttributesForConversion:(id)a3 selectedRange:(_NSRange)a4 highlightRange:(_NSRange)a5;
- (void)_dictationDidRecieveDidBeginDictationNotification:(id)a3;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_forwardScrollEventToUIHost:(SEL)a3 scrollView:(id)a4;
- (void)_generateTextSuggestionForKeyboardCamera;
- (void)_handleAutoFillPopoverCommandWithType:(int)a3 action:(SEL)a4;
- (void)_handleKeyBehavior:(unint64_t)a3 forKeyType:(id)a4;
- (void)_moveWithEvent:(id)a3;
- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)a3 selectionChanged:(BOOL)a4;
- (void)_postInputResponderChangedNotification;
- (void)_presentDictationMenuIfAllowed;
- (void)_presentKeyboardPopoverWithType:(int)a3 keyString:(id)a4 popoverController:(id)a5 textInputView:(id)a6 caretRect:(CGRect)a7 isVerticalText:(BOOL)a8 completion:(id)a9;
- (void)_resetCapsLock;
- (void)_selectionScrolling:(BOOL)a3 scroller:(id)a4;
- (void)_setCandidateController:(id)a3;
- (void)_setCapsLockIfNeeded:(__GSKeyboard *)a3 event:(__IOHIDEvent *)a4;
- (void)_setTransientSelectionModeEnabled:(BOOL)a3 forInputDelegate:(id)a4;
- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)a3;
- (void)_suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:(BOOL)a3;
- (void)_tagTouchForTypingMenu:(unsigned int)a3;
- (void)_textSelectionEditMenuDidShow;
- (void)_updateExternalDeviceInputSetting;
- (void)_updateExternalDeviceInputSettingForWindow:(id)a3;
- (void)_updateKeyboardLanguage:(id)a3;
- (void)_updateLayoutAndLocalizedKeys;
- (void)_updateShouldSuppressAssistantBar;
- (void)_updateSoundPreheating;
- (void)_updateSoundPreheatingForWindow:(id)a3;
- (void)_updateTextInputPencilSource;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)acceptAutocorrectionAndEndComposition;
- (void)acceptHandwritingCandidate;
- (void)acceptInlineCompletionWithCompletionHandler:(id)a3;
- (void)addInputString:(id)a3 fromVariantKey:(BOOL)a4;
- (void)animateAutocorrectionToRect:(CGRect)a3 fromRect:(CGRect)a4;
- (void)animateAutocorrectionToText:(id)a3 fromRect:(CGRect)a4;
- (void)applicationResumedEventsOnly:(id)a3;
- (void)applicationSuspendedEventsOnly:(id)a3;
- (void)applyAssistantItem:(id)a3;
- (void)assertCursorForForSelectionChange;
- (void)assertTextForDictation;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)autocorrectionAnimationDidStopWithAutocorrectionView:(id)a3;
- (void)becomeFirstResponderAndMakeVisible:(BOOL)a3;
- (void)beginAcceptingInlineCompletionByDirectTap;
- (void)beginFloatingTransitionFromPanGestureRecognizer:(id)a3;
- (void)beginObservingInputOverlayContainerFrame;
- (void)callLayoutUpdateAllLocalizedKeys;
- (void)callLayoutUpdateLocalizedKeys;
- (void)callLayoutUpdateRecentInputs;
- (void)callLayoutUpdateReturnKey;
- (void)cancelSplitTransition;
- (void)cleanupKeyboardPopover:(id)a3;
- (void)clearAnimations;
- (void)clearAutocorrectPromptTimer;
- (void)clearCursorAccessory;
- (void)clearCursorAssertion;
- (void)clearDetachHardwareKeyboardAction;
- (void)clearExcessKeyboardMemory;
- (void)clearForwardingInputDelegateAndResign:(BOOL)a3;
- (void)clearInputModeAssertion;
- (void)clearLanguageIndicator;
- (void)clearLayouts;
- (void)clearRecentInput;
- (void)clearTimers;
- (void)collapseSelection;
- (void)completeDelete;
- (void)configureTipViewWithTitle:(id)a3 description:(id)a4 closeButtonAction:(id)a5;
- (void)copyOperation;
- (void)cutOperation;
- (void)deactivateLayout;
- (void)dealloc;
- (void)deferReplaceTextActionToSystem:(id)a3;
- (void)delayedInit;
- (void)deleteHandwritingStrokesAtIndexes:(id)a3;
- (void)detach;
- (void)detachHardwareKeyboard;
- (void)didChangeForwardingInputDelegate:(id)a3;
- (void)didCompleteUpdateDefaults;
- (void)didDismissMemojiCard;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didPresentMemojiCard;
- (void)disableTransientSelectionMode;
- (void)dismissAutoFillPopover;
- (void)dismissContinuousPathIntroductionView;
- (void)dismissCursorAccessory;
- (void)dismissDictationMenu;
- (void)dismissDictationPopover;
- (void)dismissDictationPopoverAndCancelDictation;
- (void)dismissDictationTip;
- (void)dismissEditingIntroductionView;
- (void)dismissEducationTip;
- (void)dismissFloatingKeyboardFromPencilKitIfNeeded;
- (void)dismissKeyboard;
- (void)dismissKeyboardFeedbackAssistantViewController;
- (void)dismissKeyboardPopover:(id)a3 beforeCleanup:(BOOL)a4 completion:(id)a5;
- (void)dismissMultilingualKeyboardTip;
- (void)dismissMultilingualSettingTip;
- (void)dismissStickerEditor:(BOOL)a3;
- (void)displayAutoFillPopoverIfAutoFillModeDetected;
- (void)documentStateDidChange;
- (void)enableTransientInputDelegateSelectionMode;
- (void)enableTransientSelectionMode;
- (void)endAcceptingInlineCompletionByDirectTap;
- (void)endObservingInputOverlayContainerFrame;
- (void)fadeAutocorrectPrompt;
- (void)finishLayoutChangeWithArguments:(id)a3;
- (void)finishLayoutToCurrentInterfaceOrientation;
- (void)finishSplitTransitionWithProgress:(double)a3;
- (void)forwardDictationEvent_cancelDictation;
- (void)forwardDictationEvent_handleDictationShouldPause:(BOOL)a3 withNewDelagate:(BOOL)a4;
- (void)forwardDictationEvent_handleTip:(id)a3 title:(id)a4;
- (void)forwardDictationEvent_movePopoverView:(id)a3;
- (void)forwardDictationEvent_resumeDictation;
- (void)forwardDictationEvent_setDisambiguationActive:(BOOL)a3 maxOptions:(unint64_t)a4;
- (void)forwardDictationEvent_startDictation;
- (void)forwardDictationEvent_stopDictation:(BOOL)a3;
- (void)forwardDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)forwardDictationEvent_switchToDictationInputModeWithOptions:(id)a3;
- (void)forwardDictationEvent_switchToDictationLanguage:(id)a3;
- (void)forwardDictationEvent_updateIdleDetection:(int64_t)a3;
- (void)forwardEmojiGenerationControllerWithInputString:(id)a3;
- (void)forwardKeyboardCameraEvent_selfDestruct;
- (void)forwardKeyboardCameraEvent_startCameraInput:(id)a3;
- (void)forwardKeyboardCameraEvent_updatePreviewText:(id)a3 asMarkedText:(BOOL)a4;
- (void)forwardStickerEvent_presentCard;
- (void)geometryChangeDone:(BOOL)a3;
- (void)handleDictationForResponderChange;
- (void)handleGrammarCorrectionEntries:(id)a3;
- (void)handleObserverCallback;
- (void)handleRemoteDictationEvent_cancelDictation;
- (void)handleRemoteDictationEvent_handleTip:(id)a3;
- (void)handleRemoteDictationEvent_movePopoverView:(id)a3;
- (void)handleRemoteDictationEvent_resumeDictation;
- (void)handleRemoteDictationEvent_setEditMenuFrame:(id)a3;
- (void)handleRemoteDictationEvent_startDictation;
- (void)handleRemoteDictationEvent_stopDictation:(BOOL)a3;
- (void)handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)handleRemoteDictationEvent_switchToDictationInputModeWithOptions:(id)a3;
- (void)handleRemoteDictationEvent_switchToDictationLanguage:(id)a3;
- (void)handleRemoteDictationEvent_updateIdleDetection:(int64_t)a3;
- (void)handleRemoteKeyboardCameraEvent_startCameraInput:(id)a3;
- (void)handleStickerEvent_presentCard;
- (void)handleTraitChangeObserver:(id)a3 newResponder:(id)a4 updateTraitCollection:(id)a5;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)hardwareKeyboardAvailabilityDidChange:(id)a3;
- (void)hideDictationMenuIfNeeded:(BOOL)a3;
- (void)hideInternationalKeyIntroductionIfNeeded;
- (void)hideKeyboardIgnoringHardwareLayouts:(BOOL)a3;
- (void)hideKeyboardWithoutPreflightChecks;
- (void)jumpToCompositions;
- (void)keyboardDidHide:(id)a3;
- (void)layoutSubviews;
- (void)moveCursorByAmount:(int64_t)a3;
- (void)moveCursorLeftShifted:(BOOL)a3;
- (void)moveCursorRightShifted:(BOOL)a3;
- (void)movePhraseBoundaryToDirection:(int64_t)a3 granularity:(int64_t)a4;
- (void)nonDestructivelyDismissKeyboard;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)optOutASPInTextField;
- (void)pasteOperation;
- (void)pauseDictationForResponderChange;
- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)a3;
- (void)performHitTestForTouchEvent:(id)a3 executionContextPassingNSNumber:(id)a4;
- (void)performSendCurrentLocation;
- (void)playDeleteKeyFeedbackIfNecessaryRepeat:(BOOL)a3 rapid:(BOOL)a4 deleteCount:(int64_t)a5;
- (void)playDeleteKeyFeedbackRepeat:(BOOL)a3 rapid:(BOOL)a4 deleteCount:(int64_t)a5;
- (void)playInputCandidateFeedback:(int64_t)a3 atLocation:(CGPoint)a4;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)postInputResponderCapabilitiesChangedNotification;
- (void)postInputViewControllerShouldUpdateNotification:(id)a3;
- (void)prepareForFloatingTransition:(BOOL)a3;
- (void)prepareForGeometryChange;
- (void)prepareLayoutForInterfaceOrientation:(int64_t)a3;
- (void)presentContinuousPathIntroductionView;
- (void)presentDictationMenuTip:(id)a3;
- (void)presentDictationMenuTipWithTitle:(id)a3 description:(id)a4;
- (void)presentDictationMenuWithAnimationStyle:(int64_t)a3;
- (void)presentDictationPopover;
- (void)presentEditingIntroductionView;
- (void)presentEducationTipWithTitle:(id)a3 description:(id)a4;
- (void)presentEmojiPopoverViaTrigger:(id)a3 completion:(id)a4;
- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)a3;
- (void)presentKeyboardMenu:(int)a3;
- (void)presentKeyboardPopoverWithType:(int)a3 keyString:(id)a4 completion:(id)a5;
- (void)presentMultilingualKeyboardTip:(id)a3;
- (void)presentMultilingualSettingTip:(id)a3;
- (void)presentStickerEditorWithStickerIdentifier:(id)a3 sourceRect:(CGRect)a4;
- (void)presentTextChoicePromptForRange:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)prewarmEmojiKeyboardIfNeeded;
- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3;
- (void)refreshRivenPreferences;
- (void)reinitializeAfterInputModeSwitch:(BOOL)a3;
- (void)releaseEmojiKeyboardPrewarmingAssertion;
- (void)releaseInputManagerIfInactive;
- (void)remoteControlReceivedWithEvent:(id)a3;
- (void)removeAutocorrectPrompt;
- (void)removeFromSuperview;
- (void)removeTextChoicePrompt;
- (void)removeTextChoicePromptAndAutocorrection;
- (void)removeTextChoicePromptWithUnderline;
- (void)removeTextChoiceUnderlines;
- (void)removeTextChoiceUnderlinesInRange:(id)a3;
- (void)reportSmartRepliesConcern;
- (void)reportSmartReplyFeedbackUIWasPresented;
- (void)representDictationMenu;
- (void)resetIsPhysicallyAttachedHardwareKeyboard;
- (void)resumeDictationForResponderChange;
- (void)revealHiddenCandidates;
- (void)saveInputModesPreference:(id)a3;
- (void)scheduleReplacementsWithOptions:(unint64_t)a3;
- (void)scribbleWillBeginWriting:(id)a3;
- (void)selectionScrolling:(id)a3;
- (void)sendCallbacksForPostCorrectionsRemoval;
- (void)sendCallbacksForPreCorrectionsDisplay;
- (void)sendKeyboardDismissalNotification;
- (void)setAutomaticMinimizationEnabled:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)a3;
- (void)setCandidateDisplayIsExtended:(BOOL)a3;
- (void)setCapsLockIfNeeded;
- (void)setCapsLockIfNeededForPhysicalKeyboardEvent:(id)a3;
- (void)setCapsLockSign;
- (void)setCaretBlinks:(BOOL)a3;
- (void)setCaretVisible:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEditMenuFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHardWareKeyboardAttached:(BOOL)a3;
- (void)setHardwareKeyboardIsSeen:(BOOL)a3;
- (void)setInSplitKeyboardMode:(BOOL)a3;
- (void)setInputModeAssertionWithReason:(id)a3;
- (void)setKeyboardMinimizedByDictation:(BOOL)a3;
- (void)setLabel:(id)a3 forKey:(id)a4;
- (void)setLayoutRenderConfig:(id)a3;
- (void)setNeedsAutocorrectionRectsUpdate;
- (void)setRemoteDictationPopover:(id)a3;
- (void)setReturnKeyEnabled:(BOOL)a3;
- (void)setRivenSplitLock:(BOOL)a3;
- (void)setShowsCandidateBar:(BOOL)a3;
- (void)setShowsCandidateInline:(BOOL)a3;
- (void)setSplit:(BOOL)a3 animated:(BOOL)a4;
- (void)setSplitProgress:(double)a3;
- (void)showDictationMenuIfNeeded;
- (void)showInternationalKeyIntroductionIfNeededWithPreviousInputMode:(id)a3;
- (void)showKeyboardIfNeeded;
- (void)showKeyboardWithoutSuppressionPolicy;
- (void)showNextCandidates;
- (void)showNextPage;
- (void)showPreviousCandidate;
- (void)showSelectionCommands;
- (void)skipHitTestForTouchEvent:(id)a3;
- (void)stickerPickerKeyboardSessionDidFinish;
- (void)textFrameChanged:(id)a3;
- (void)textSuggestionDidChange:(id)a3;
- (void)toggleShift;
- (void)toggleSoftwareKeyboard;
- (void)touchAutocorrectPromptTimer;
- (void)touchDictationMenuTimer:(BOOL)a3;
- (void)traitCollectionDidChange;
- (void)underlineCandidate:(id)a3;
- (void)updateActiveAutocorrectionRects;
- (void)updateAssistantView;
- (void)updateAssistantViewInfo:(id)a3;
- (void)updateAutocorrectContainerWithAutocorrection:(id)a3 parentView:(id)a4 correctionRects:(id)a5;
- (void)updateAutocorrectPrompt:(id)a3;
- (void)updateAutocorrectPrompt:(id)a3 correctionRects:(id)a4;
- (void)updateAutocorrectPrompt:(id)a3 executionContext:(id)a4;
- (void)updateCandidateDisplay;
- (void)updateDictationButtonForDelegate:(id)a3;
- (void)updateDictationIgnoreKeyboardDidHideNotification;
- (void)updateDictationPopoverLocationForCandidateInlineView:(id)a3 yOffset:(double)a4;
- (void)updateDictationPopoverLocationIfNeeded;
- (void)updateForHandBiasChange;
- (void)updateFromTextInputTraits;
- (void)updateHardwareKeyboardLayout:(BOOL)a3;
- (void)updateInputAssistantButtonItems;
- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)a3 preserveIfPossible:(BOOL)a4;
- (void)updateIsAttachedHardwareKeyboard;
- (void)updateKeyboardStateForReplacingText:(id)a3 withText:(id)a4;
- (void)updateLayout;
- (void)updateLayoutAndSetShift;
- (void)updateLayoutIfNecessary;
- (void)updateLayoutIfNeeded;
- (void)updateLayoutToCurrentInterfaceOrientation;
- (void)updateLegacyAutocorrectPromptWithAutocorrection:(id)a3 parentView:(id)a4 correctionRects:(id)a5;
- (void)updateNoContentViews;
- (void)updateObserverState;
- (void)updateReturnKey:(BOOL)a3;
- (void)updateShowCandidateBar;
- (void)updateStylingTraitsIfNeeded;
- (void)updateTextCandidateView;
- (void)updateTextInputKeyboardSource:(id)a3;
- (void)willDismissEditMenu;
- (void)willMoveToWindow:(id)a3;
- (void)writingToolsDidEnd;
@end

@implementation UIKeyboardImpl

- (void)refreshRivenPreferences
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  [UIKeyboardImpl refreshRivenStateWithTraits:v2 isKeyboard:1];
}

- (BOOL)canPresentNumberpadPopover
{
  if (+[UIInputWindowController numberpadPopoverEnabled](UIInputWindowController, "numberpadPopoverEnabled") && (-[UIKeyboardImpl inputDelegate](self, "inputDelegate"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3) && (-[UIKeyboardImpl textInputTraits](self, "textInputTraits"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 allowsNumberPadPopover], v4, v5) && (-[UIKeyboardImpl inputDelegate](self, "inputDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[UIKeyboardImpl _textInputSourceForDelegate:](self, "_textInputSourceForDelegate:", v6), v6, v7 != 3) && !-[_UIKeyboardStateManager numberpadPopoverHasBeenShown](self->_keyboardStateManager, "numberpadPopoverHasBeenShown") && !-[UIKeyboardImpl isNumberpadPopoverPresented](self, "isNumberpadPopoverPresented"))
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v10 existingContainerRootController];

    v12 = [v11 placement];
    v13 = [v11 inputViewSet];
    v14 = [v13 isCustomInputView];

    v15 = [v12 isMemberOfClass:objc_opt_class()];
    v16 = [(UIKeyboardImpl *)self isInHardwareKeyboardMode];
    v17 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v18 = [v17 isSecureTextEntry];

    v19 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v20 = [v19 keyboardType];

    if ((v20 > 0xB || ((1 << v20) & 0x930) == 0) && v20 != 127)
    {
      v16 = 1;
    }

    v8 = (v16 | v14 | v15 | v18) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

+ (id)keyboardScreen
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 delegateAsResponder];
  v4 = [v3 _responderWindow];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 window];
  }

  v7 = v6;

  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v9 = [v8 keyboardScreen];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [objc_opt_self() mainScreen];
  }

  v12 = v11;

  v13 = [v7 screen];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  return v15;
}

- (UIKeyInput)delegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 keyInputDelegate];

  return v3;
}

- (void)resetIsPhysicallyAttachedHardwareKeyboard
{
  isAttachedHardwareKeyboard = self->_isAttachedHardwareKeyboard;
  self->_isAttachedHardwareKeyboard = 0;
}

- (BOOL)shouldShowCandidateBar
{
  if ([(UIKeyboardImpl *)self shouldShowLongPredictionList])
  {
    return 1;
  }

  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager receivedCandidatesInCurrentInputMode];

  return [(UIKeyboardImpl *)self shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:v4 ignoreHidePredictionTrait:0];
}

- (BOOL)_shouldSuppressSoftwareKeyboard
{
  if ([(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByDictation])
  {
    return 1;
  }

  if ([(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByOneness])
  {
    return 1;
  }

  v3 = +[UIKeyboardCameraSession activeSession];
  v4 = [v3 shouldSuppressSoftwareKeyboard];

  if (v4)
  {
    return 1;
  }

  return [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:0];
}

- (BOOL)_shouldSuppressSoftwareKeyboardByDictation
{
  v2 = +[UIDictationController activeInstance];
  v3 = [v2 shouldSuppressSoftwareKeyboard];

  return v3;
}

- (void)_updateShouldSuppressAssistantBar
{
  if (!+[UIKeyboard isInputSystemUI]&& ![(UIKeyboardImpl *)self showingEmojiSearch])
  {
    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v4 = [v3 wantsAssistantWhileSuppressingKeyboard];

    if ((v4 & 1) == 0)
    {
      v5 = +[UIKeyboard suppressionPolicyDelegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = +[UIKeyboard suppressionPolicyDelegate];
        v7 = [(UIKeyboardImpl *)self inputDelegate];
        v8 = [v6 _shouldSuppressAssistantBarForDelegate:v7];
      }

      else
      {
        v8 = 0;
      }

      if (self->m_shouldSuppressAssistantBar != v8)
      {
        self->m_shouldSuppressAssistantBar = v8;
        if (!self->m_dismissingFloatingKeyboard)
        {
          self->m_dismissingFloatingKeyboard = 1;
          +[UIAssistantBarButtonItemProvider dismissFloatingKeyboardFromPencilKitIfNeeded];
          self->m_dismissingFloatingKeyboard = 0;
        }
      }
    }
  }
}

+ (BOOL)isFloating
{
  v3 = [a1 activeInstance];
  v4 = [v3 remoteTextInputPartner];
  v5 = [v4 rtiInputSourceState];

  if (v5)
  {
    v6 = [a1 activeInstance];
    v7 = [v6 remoteTextInputPartner];
    v8 = [v7 rtiInputSourceState];
    v9 = [v8 floating];

    LOBYTE(v10) = v9;
  }

  else if (byte_1ED498A08 == 1)
  {
    v10 = [a1 supportsFloating];
    if (v10)
    {
      if ([qword_1ED498A10 isMinimized] && (objc_msgSend(qword_1ED498A10, "isFloatingLocked") & 1) == 0)
      {
        v11 = qword_1ED498A10;

        LOBYTE(v10) = [v11 maximizing];
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (id)_applicationClientComponent
{
  v2 = [a1 keyboardWindow];
  v3 = [v2 windowScene];
  v4 = [v3 _settingsScene];
  v5 = [v4 _keyboardClientComponent];

  return v5;
}

- (BOOL)isMinimized
{
  v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];
  if (v4)
  {
    v5 = v4;
    v6 = +[UIKeyboard usesLocalKeyboard];

    if (!v6)
    {
      v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
      v8 = [v7 rtiInputSourceState];
      LOBYTE(v9) = [v8 minimized];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  v10 = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->m_geometryDelegate);
    v13 = [v12 isMinimized];
LABEL_7:

    goto LABEL_13;
  }

  if (v10)
  {
    if ([UIApp _isSpringBoard])
    {
      v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v14 = [v12 preferencesActions];
      v13 = [v14 automaticMinimizationEnabled];

      goto LABEL_7;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  v9 = v13 & ![(UIKeyboardImpl *)self floatingForced];
  if (![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard])
  {
    v15 = +[UIKeyboardInputModeController sharedInputModeController];
    v16 = [v15 currentInputMode];
    v9 &= [v16 showSWLayoutWithHWKeyboard] ^ 1;
  }

  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if ([v7 wantsAssistantWhileSuppressingKeyboard])
  {
    v8 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v9 |= [v8 disableBecomeFirstResponder];
    goto LABEL_17;
  }

LABEL_18:

  return v9;
}

- (BOOL)_shouldSuppressSoftwareKeyboardByOneness
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 hardwareKeyboardExclusivityIdentifier];
  v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardExclusivityIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)delegateAsResponder
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 delegateAsResponder];

  return v3;
}

- (id)window
{
  v4.receiver = self;
  v4.super_class = UIKeyboardImpl;
  v2 = [(UIView *)&v4 window];

  return v2;
}

- (BOOL)canShowAppConnections
{
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  v5 = [v4 beginningOfDocument];
  v6 = [(UIKeyboardImpl *)self inputDelegateManager];
  v7 = [v6 endOfDocument];
  v8 = [v3 comparePosition:v5 toPosition:v7];

  v9 = [(UIKeyboardImpl *)self textInputTraits];
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

+ (BOOL)isSplit
{
  v3 = [a1 activeInstance];
  v4 = [v3 remoteTextInputPartner];
  v5 = [v4 rtiInputSourceState];

  if (v5)
  {
    v6 = [a1 activeInstance];
    v7 = [v6 remoteTextInputPartner];
    v8 = [v7 rtiInputSourceState];
    v9 = [v8 split];

    return v9;
  }

  else
  {
    if (byte_1ED4989FC == 1 && byte_1ED4989E8 == 1)
    {
      v11 = byte_1ED498A08 ^ 1;
    }

    else
    {
      v11 = 0;
    }

    return v11 & 1;
  }
}

+ (id)keyboardWindow
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 delegateAsResponder];
  v4 = [v3 _responderWindow];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v2 window];

    if (!v5)
    {
      v5 = +[UIWindow _applicationKeyWindow];
    }
  }

  return v5;
}

- (BOOL)layoutIsResizing
{
  v2 = [(UIKeyboardImpl *)self _layout];
  v3 = [v2 isResizing];

  return v3;
}

- (BOOL)isHardwareKeyboardAttachedNow
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _isHardwareKeyboardAvailable];

  return v3;
}

+ (BOOL)isActivatingForeground
{
  v2 = [UIApp _isActivating];
  if (v2)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 scene];
    v5 = [v4 _FBSScene];
    v6 = [v5 settings];
    v7 = [v6 isForeground];

    LOBYTE(v2) = v7;
  }

  return v2;
}

+ (BOOL)showsGlobeAndDictationKeysExternally
{
  v3 = [a1 keyboardScreen];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {

    return [a1 showsGlobeAndDictationKeysExternallyForFloatingKeyboard];
  }

  else
  {
    v7 = +[UIDevice _hasHomeButton];
    v8 = [a1 _applicationClientComponent];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isKeyboardDockDisabled] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    return !v7 & v10;
  }
}

+ (BOOL)smartInsertDeleteIsEnabled
{
  v3 = qword_1ED498A10;
  if (qword_1ED498A10)
  {

    return [v3 smartInsertDeleteIsEnabled];
  }

  else
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v7 = [v6 BOOLForPreferenceKey:*MEMORY[0x1E69D9950]];

    return v7;
  }
}

- (id)inputDelegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 textInputDelegate];

  return v3;
}

- (id)returnKeyDisplayName
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([v3 emptyContentReturnKeyType] == 1)
  {
    v4 = [(UIKeyboardImpl *)self noContent];

    if (v4)
    {
      v5 = UIKeyboardLocalizedString(@"UI-Cancel", 0, 0, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v5 = UIKeyboardLocalizedReturnKeyName([v6 returnKeyType]);

LABEL_6:

  return v5;
}

- (void)hideInternationalKeyIntroductionIfNeeded
{
  v3 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];

  if (v3)
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 preferencesActions];
    [v5 didTriggerOneTimeAction:*MEMORY[0x1E69D9C28]];

    v6 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
    [v6 removeFromSuperview];

    [(UIKeyboardImpl *)self setInternationalKeyIntroductionView:0];
  }
}

- (BOOL)continuousPathUnderway
{
  v2 = [(UIKeyboardImpl *)self _layout];
  v3 = [v2 hasActiveContinuousPathInput];

  return v3;
}

+ (BOOL)shouldAccessInputManagerService
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 keyboardLayoutIsInAnotherProcess];

  return v3 ^ 1;
}

+ (double)additionalInstanceHeight
{
  v3 = +[UIKeyboard activeKeyboard];
  [a1 additionalInstanceHeightForInterfaceOrientation:objc_msgSend(v3 hasInputView:{"interfaceOrientation"), 0}];
  v5 = v4;

  return v5;
}

- (void)setCapsLockSign
{
  if (!+[UIKeyboard isCapslockIndicatorEnabled])
  {
    v37 = [(UIKeyboardImpl *)self textInputTraits];
    if ([v37 isSecureTextEntry])
    {
      v6 = [(UIKeyboardImpl *)self textInputTraits];
      if ([v6 displaySecureTextUsingPlainText])
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = [(UIKeyboardImpl *)self inputDelegateManager];
      v9 = [v8 keyInputDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }

      v11 = [(UIKeyboardImpl *)self inputDelegateManager];
      v37 = [v11 keyInputDelegate];

      v12 = [v37 rightView];
      if (v12)
      {
        v13 = v12;
        v14 = [v37 rightView];
        m_capsLockSign = self->m_capsLockSign;

        v7 = v37;
        if (v14 != m_capsLockSign)
        {
          goto LABEL_9;
        }
      }

      if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]&& self->m_isCapsLocked || [(_UIKeyboardStateManager *)self->_keyboardStateManager shiftLocked]&& [(UIKeyboardLayout *)self->m_layout isAlphabeticPlane])
      {
        v16 = [v37 font];
        [v16 pointSize];
        v18 = v17 + 6.0;

        [v37 bounds];
        if (v18 > v19)
        {
          [v37 bounds];
          v18 = v20;
        }

        v21 = self->m_capsLockSign;
        if (!v21)
        {
          v22 = [UIImageView alloc];
          v23 = _UIImageWithName(@"password-capslock.png");
          v24 = [(UIImageView *)v22 initWithImage:v23];
          v25 = self->m_capsLockSign;
          self->m_capsLockSign = v24;

          v21 = self->m_capsLockSign;
        }

        [(UIView *)v21 frame];
        v27 = v26;
        v29 = v28;
        v30 = [v37 rightView];
        if (v30)
        {
          v31 = v30;
          [(UIView *)self->m_capsLockSign frame];
          v40.origin.x = v27;
          v40.origin.y = v29;
          v40.size.width = v18;
          v40.size.height = v18;
          v32 = CGRectEqualToRect(v39, v40);

          v7 = v37;
          if (v32)
          {
            goto LABEL_9;
          }
        }

        [(UIView *)self->m_capsLockSign setFrame:v27, v29, v18, v18];
        [v37 bounds];
        [v37 _setRightViewOffset:{(v33 - v18) * -0.5, 0.0}];
        v34 = self->m_capsLockSign;
        v35 = 1;
      }

      else
      {
        v36 = [v37 rightView];

        v7 = v37;
        if (!v36)
        {
          goto LABEL_9;
        }

        v34 = 0;
        v35 = 0;
      }

      [v37 setRightView:v34];
      [v37 setRightViewMode:v35];
    }

LABEL_8:
    v7 = v37;
LABEL_9:

    return;
  }

  m_isCapsLocked = self->m_isCapsLocked;
  v4 = [(UIKeyboardImpl *)self capslockAssertion];
  v5 = v4;
  if (m_isCapsLocked)
  {

    if (v5)
    {
      return;
    }

    v37 = [(UIKeyboardImpl *)self _activeAssertionController];
    v6 = [v37 capslockAssertionWithReason:@"setCapsLockSign"];
    [(UIKeyboardImpl *)self setCapslockAssertion:v6];
    goto LABEL_7;
  }

  [v4 invalidate];

  [(UIKeyboardImpl *)self setCapslockAssertion:0];
}

+ (BOOL)shouldMergeAssistantBarWithKeyboardLayout
{
  v2 = [qword_1ED498A10 _layout];
  v3 = [v2 shouldMergeAssistantBarWithKeyboardLayout];

  return v3;
}

- (BOOL)allowsReachableKeyboard
{
  v3 = [objc_opt_self() mainScreen];
  [v3 _unjailedReferenceBounds];
  v5 = v4;

  _UIDeviceNativeUserInterfaceIdiom();
  v6 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v7 = [(UIKeyboardImpl *)self _layout];
  v8 = [v7 orientation];

  result = 0;
  if (v6 != 1 && v5 > 320.0 && (v8 - 3) >= 2)
  {
    return ![(UIKeyboardImpl *)self keyboardIsKeyPad];
  }

  return result;
}

- (BOOL)keyboardIsKeyPad
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v3 = [v2 keyboardType];
  v5 = v3 <= 0xB && ((1 << v3) & 0x930) != 0 || v3 == 127;

  return v5;
}

- (BOOL)returnKeyEnabled
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([v3 keyboardType] == 122)
  {
    v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v5 = [v4 returnKeyType];

    if (v5 == 9)
    {
      return 1;
    }
  }

  else
  {
  }

  v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([v7 enablesReturnKeyAutomatically])
  {
  }

  else
  {
    v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v9 = [v8 enablesReturnKeyOnNonWhiteSpaceContent];

    if ((v9 & 1) == 0)
    {
      v10 = [(UIKeyboardImpl *)self updatedKeyBehaviors];
      v11 = [v10 returnKeyBehavior];

      if (v11 != 9)
      {
        if (v11)
        {
          return 1;
        }
      }
    }
  }

  return (self->m_returnKeyState & 0xFFFFFFFD) == 0;
}

- (void)callLayoutUpdateReturnKey
{
  self->m_returnKeyEnabledInLayout = [(UIKeyboardImpl *)self returnKeyEnabled];
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;
    m_returnKeyEnabledInLayout = self->m_returnKeyEnabledInLayout;
    v5 = [(UIKeyboardImpl *)self returnKeyDisplayName];
    [(UIKeyboardLayout *)m_layout setReturnKeyEnabled:m_returnKeyEnabledInLayout withDisplayName:v5 withType:[(UIKeyboardImpl *)self returnKeyType]];
  }
}

- (BOOL)isPredictionViewControllerVisible
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 systemInputAssistantViewController];

  v5 = [v4 predictionViewController];
  v6 = [(UIKeyboardImpl *)self inputDelegateManager];
  v7 = [v6 keyInputDelegate];
  v8 = [v5 isVisibleForInputDelegate:v7 inputViews:0];

  LOBYTE(v6) = [v4 isEmojiSearchResultsVisible];
  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v10 = [v9 visualModeManager];
  v11 = [v10 useVisualModeWindowed];

  return v8 & ((v6 | v11) ^ 1);
}

- (void)updateObserverState
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager changedDelegate];
  if (v3)
  {
  }

  else if (![(_UIKeyboardStateManager *)self->_keyboardStateManager shiftNeedsUpdate])
  {
    return;
  }

  if (!self->m_observer)
  {
    self->m_observer = CFRunLoopObserverCreate(0, 4uLL, 0, 0, observerCallback, 0);
    Current = CFRunLoopGetCurrent();
    m_observer = self->m_observer;
    v6 = *MEMORY[0x1E695E8D0];

    CFRunLoopAddObserver(Current, m_observer, v6);
  }
}

- (void)updateCandidateDisplay
{
  if ([(UIKeyboardImpl *)self usesCandidateSelection]|| [(UIKeyboardImpl *)self usesAutocorrectionLists]&& [(UIKeyboardImpl *)self isPredictionViewControllerVisible])
  {
    if (![(_UIKeyboardStateManager *)self->_keyboardStateManager needsToDeferUpdateTextCandidateView])
    {
      [(UIKeyboardImpl *)self updateTextCandidateView];
      goto LABEL_18;
    }

    v3 = [(UIKeyboardImpl *)self autocorrectPromptTask];
    v4 = [v3 isValid];

    if (v4)
    {
      v5 = [(UIKeyboardImpl *)self autocorrectPromptTask];
      [v5 resetTimer];
LABEL_16:

      goto LABEL_18;
    }

    v5 = [(UIKeyboardImpl *)self taskQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__UIKeyboardImpl_updateCandidateDisplay__block_invoke;
    v13[3] = &unk_1E70FD058;
    v13[4] = self;
    v11 = [v5 scheduleTask:v13 timeInterval:0 repeats:0.4];
    [(UIKeyboardImpl *)self setAutocorrectPromptTask:v11];
LABEL_15:

    goto LABEL_16;
  }

  if (![(_UIKeyboardStateManager *)self->_keyboardStateManager autoDeleteOK])
  {
    [(UIKeyboardImpl *)self updateKeyboardConfigurations];
    v6 = [(UIKeyboardImpl *)self hasAutocorrectPrompt];
    v7 = [(UIKeyboardImpl *)self inputDelegateManager];
    v8 = [v7 hasAsyncCapableInputDelegate];

    if ((v8 & 1) != 0 || !v6 || (-[UIKeyboardImpl autocorrectionController](self, "autocorrectionController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasAutocorrection], v9, !v10))
    {
      [(UIKeyboardImpl *)self touchAutocorrectPromptTimer];
      goto LABEL_18;
    }

    v5 = [(UIKeyboardImpl *)self autocorrectionController];
    v11 = [v5 autocorrection];
    [(UIKeyboardImpl *)self updateAutocorrectPrompt:v11];
    goto LABEL_15;
  }

  [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
LABEL_18:
  v12 = [(UIKeyboardImpl *)self inlineTextCompletionController];
  [v12 updateTextCompletionDisplay];
}

- (BOOL)keyboardLayoutIsInAnotherProcess
{
  if (+[UIKeyboard usesInputSystemUI]&& [(UIKeyboardImpl *)self isRTIClient])
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

void __45__UIKeyboardImpl_touchAutocorrectPromptTimer__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) autocorrectionController];
  v4 = [v3 hasAutocorrection];

  if (v4)
  {
    v5 = [*(a1 + 32) autocorrectionController];
    v6 = [v5 autocorrection];

    [*(a1 + 32) updateAutocorrectPrompt:v6 executionContext:v7];
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

- (BOOL)hasAdvancedInputDelegate
{
  v3 = [(UIKeyboardImpl *)self inputDelegate];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIKeyboardImpl *)self asyncInputDelegate];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)clearAutocorrectPromptTimer
{
  v3 = [(UIKeyboardImpl *)self autocorrectPromptTask];
  [v3 invalidate];

  [(UIKeyboardImpl *)self setAutocorrectPromptTask:0];
  keyboardStateManager = self->_keyboardStateManager;

  [(_UIKeyboardStateManager *)keyboardStateManager clearDelayDeleteTimer];
}

- (void)removeAutocorrectPrompt
{
  [(UIKeyboardImpl *)self updateKeyboardConfigurations];
  [(UIKeyboardImpl *)self clearAutocorrectPromptTimer];
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [v3 updateActivePromptForCandidate:0 displayRects:0 highlightOnly:0];
  }

  v4 = [(UIView *)self->m_autocorrectPrompt superview];

  if (v4)
  {
    [(UIView *)self->m_autocorrectPrompt removeFromSuperview];
    m_autocorrectPrompt = self->m_autocorrectPrompt;
    self->m_autocorrectPrompt = 0;
  }

  else
  {
    v6 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    v7 = [v6 superview];

    if (!v7)
    {
      return;
    }

    m_autocorrectPrompt = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [m_autocorrectPrompt reset];
  }

  [(UIKeyboardImpl *)self sendCallbacksForPostCorrectionsRemoval];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"UIKeyboardCandidateCorrectionDidChangeNotification" object:0 userInfo:0];
}

- (UIKeyboardImplGeometryDelegate)geometryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);

  return WeakRetained;
}

- (BOOL)_shouldMinimizeForHardwareKeyboard
{
  if (![(UIKeyboardImpl *)self _allowMinimizeForHardwareKeyboard])
  {
    return 0;
  }

  if (!+[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
  {
    return 1;
  }

  keyboardStateManager = self->_keyboardStateManager;
  v4 = +[UIDevice currentDevice];
  -[_UIKeyboardStateManager setHardwareKeyboardAttached:](keyboardStateManager, "setHardwareKeyboardAttached:", [v4 _isHardwareKeyboardAvailable]);

  if ([(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByOneness])
  {
    return 1;
  }

  if (![(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]|| ![(UIKeyboardImpl *)self automaticMinimizationEnabled])
  {
    return 0;
  }

  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 currentInputMode];
  if ([v7 showSWLayoutWithHWKeyboard])
  {
    v5 = 0;
  }

  else
  {
    v9 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v5 = [v9 keyboardAppearance] != 127;
  }

  return v5;
}

- (void)updateLayout
{
  v64[2] = *MEMORY[0x1E69E9840];
  if (self->m_initializationDone && !self->m_updatingLayout && ![(UIKeyboardImpl *)self suppressUpdateLayout])
  {
    if ([(UIKeyboardImpl *)self keyboardLayoutIsInAnotherProcess])
    {
      m_layout = self->m_layout;
      if (m_layout)
      {
        [(UIView *)m_layout removeFromSuperview];
        v4 = self->m_layout;
        self->m_layout = 0;
      }
    }

    else
    {
      self->m_updatingLayout = 1;
      objc_storeWeak(&self->_activeLayout, 0);
      v5 = UIKeyboardGetCurrentInputMode();
      v6 = TIInputModeGetNormalizedIdentifier();
      v7 = [objc_opt_class() keyboardWindow];
      v8 = [v7 screen];
      v9 = [UIKBScreenTraits traitsWithScreen:v8 orientation:[(UIView *)self _keyboardOrientation]];

      if ([v9 idiom] == 2)
      {
        v10 = +[UIKeyboard activeKeyboard];
        if (v10)
        {
          +[UIKeyboard activeKeyboard];
          v12 = v11 = v7;
          v13 = [v12 _useLinearLayout];

          v7 = v11;
        }

        else
        {
          v13 = 0;
        }

        [v9 updateForLinearLayout:v13];
      }

      else if ([v9 idiom] == 3)
      {
        v14 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
        [v9 updateForTextInputTraits:v14 supportedInteractionModel:{-[UIKeyboardImpl requestedInteractionModel](self, "requestedInteractionModel")}];
      }

      [v9 setSupportsSplit:{+[UIKeyboardImpl supportsSplit](UIKeyboardImpl, "supportsSplit")}];
      [v9 setIsSplit:{+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit")}];
      [v9 setCenterFilled:{-[UIKeyboardImpl centerFilled](self, "centerFilled")}];
      if (![(UIKeyboardImpl *)self updatingPreferences])
      {
        v15 = [(UIKeyboardImpl *)self candidateController];
        v16 = [v15 barIsExtended];

        if (v16)
        {
          v17 = [(UIKeyboardImpl *)self candidateController];
          [v17 collapse];
        }
      }

      v18 = [(UIKeyboardImpl *)self candidateController];
      [v18 setScreenTraits:v9];

      [(UIKeyboardLayout *)self->m_layout clearTransientState];
      v19 = objc_opt_class();
      v20 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v21 = [v19 layoutClassForInputMode:v6 keyboardType:objc_msgSend(v20 screenTraits:{"keyboardType"), v9}];

      if (v21)
      {
        v60 = v7;
        v62 = v5;
        v61 = v6;
        if (![v6 isEqualToString:@"dictation"] || (-[UIView bounds](self, "bounds"), v23 = *MEMORY[0x1E695F060], *MEMORY[0x1E695F060] == v24) && (v23 = *(MEMORY[0x1E695F060] + 8), v23 == v22))
        {
          v25 = +[UIKeyboard activeKeyboard];
          v26 = [v25 interfaceOrientation];

          [UIKeyboardImpl keyboardSizeForInterfaceOrientation:v26];
          v28 = v27;
          v30 = v29;
          [UIKeyboardImpl topMarginForInterfaceOrientation:v26];
          v32 = v30 - v31;
          v33 = [(UIView *)self _keyboardOrientation];
          v34 = +[UIKeyboardInputModeController sharedInputModeController];
          v35 = [v34 currentInputMode];
          [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:v33 inputMode:v35];
          self->m_bottomPadding = v36;

          v37 = v32 + self->m_bottomPadding;
        }

        else
        {
          [(UIView *)self bounds];
          v28 = v38;
          v37 = v39;
        }

        v40 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v41 = [v40 systemInputAssistantViewController];

        v42 = [(UIView *)self traitCollection];
        [v41 preferredHeightForTraitCollection:v42];
        v44 = v43;

        [v9 setKeyboardBarHeight:v44];
        v45 = [(NSMutableDictionary *)self->m_keyedLayouts objectForKey:v21];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = v45;
          +[UIKeyboardImpl additionalInstanceHeight];
          [v46 setFrame:{0.0, v47, v28, v37}];
        }

        else
        {
          v46 = [objc_msgSend(v21 "alloc")];
          v48 = [(UIKeyboardImpl *)self taskQueue];
          [v46 setTaskQueue:v48];

          if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || _UIGetUseTwoFingerPhone())
          {
            v49 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
            v50 = [v49 addTwoFingerTextSelectionInteractionsToView:v46];
          }

          v51 = +[_UIKeyboardTextSelectionGestureController sharedInstance];
          v52 = [v51 addOneFingerTextSelectionInteractionsToView:v46];

          [(NSMutableDictionary *)self->m_keyedLayouts setObject:v46 forKey:v21];
        }

        v53 = self->m_layout;
        if (v53 && -[UIKeyboardLayout shouldFadeFromLayout](v53, "shouldFadeFromLayout") && [v46 shouldFadeToLayout])
        {
          v54 = objc_alloc(MEMORY[0x1E696AC98]);
          v64[0] = v46;
          v64[1] = v9;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
          v56 = [v54 initWithTarget:self selector:sel_finishLayoutChangeWithArguments_ object:v55];

          [(UIKeyboardLayout *)self->m_layout fadeWithInvocation:v56];
        }

        else
        {
          v63[0] = v46;
          v63[1] = v9;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
          [(UIKeyboardImpl *)self finishLayoutChangeWithArguments:v56];
        }

        if (+[UIKeyboard isKeyboardProcess])
        {
          v57 = [(UIKeyboardImpl *)self inputSystemSourceSession];
          if (v57)
          {
            v58 = [(UIKeyboardImpl *)self buildInputSourceState];
            v59 = [v57 textOperations];
            [v59 setInputSourceState:v58];

            [v57 flushOperations];
          }
        }

        self->m_updatingLayout = 0;

        v6 = v61;
        v5 = v62;
        v7 = v60;
      }

      else
      {
        self->m_updatingLayout = 0;
      }
    }
  }
}

- (BOOL)keyboardDrawsOpaque
{
  v3 = [(UIView *)self->m_layout isOpaque];
  if (v3 != [(UIView *)self isOpaque])
  {
    [(UIView *)self setOpaque:v3];
  }

  return v3;
}

- (void)removeTextChoicePrompt
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [v3 dismissIfPresented];
  }
}

- (id)_passwordRules
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(UIKeyboardImpl *)self inputSystemSourceSession];
    v4 = [v3 documentTraits];

    v5 = [v4 passwordRules];
    goto LABEL_33;
  }

  v6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  v7 = [v6 autofillGroup];
  v4 = [v7 objectForKey:@"password"];

  v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  v9 = [v8 autofillGroup];
  v10 = [v9 objectForKey:@"new-password"];

  if (v4)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4;
  if (v11 || (!v4 ? (v13 = v10 == 0) : (v13 = 1), v12 = v10, !v13))
  {
    v20 = v12;
    goto LABEL_27;
  }

  if (v4)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v15 = [v4 passwordRules];
      v16 = [v15 passwordRulesDescriptor];
      v17 = [v16 length];

      if (v17)
      {
        v18 = v4;
LABEL_20:
        v19 = [v18 passwordRules];
        v20 = 0;
        goto LABEL_30;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v21 = [v10 passwordRules];
        v22 = [v21 passwordRulesDescriptor];
        v23 = [v22 length];

        if (v23)
        {
          v18 = v10;
          goto LABEL_20;
        }
      }
    }
  }

  v20 = 0;
LABEL_27:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_32;
  }

  v19 = [v20 passwordRules];
LABEL_30:
  v5 = [v19 passwordRulesDescriptor];

LABEL_32:
LABEL_33:

  return v5;
}

- (void)clearCursorAccessory
{
  v3 = [(UIKeyboardImpl *)self capslockAssertion];
  [v3 invalidate];

  [(UIKeyboardImpl *)self setCapslockAssertion:0];
  v4 = [(UIKeyboardImpl *)self inputModeAssertion];
  [v4 invalidate];

  [(UIKeyboardImpl *)self setInputModeAssertion:0];
  [(UITextCursorAssertion *)self->m_dictationIndicatorAssertion invalidate];
  m_dictationIndicatorAssertion = self->m_dictationIndicatorAssertion;
  self->m_dictationIndicatorAssertion = 0;
}

- (void)handleObserverCallback
{
  m_observer = self->m_observer;
  if (m_observer)
  {
    CFRelease(m_observer);
    self->m_observer = 0;
  }

  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager changedDelegate];

  if (v4)
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager callChangedDelegate];
  }

  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager shiftNeedsUpdate])
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager _setShiftNeedsUpdate:0];
    [(UIKeyboardImpl *)self updateShiftState];
  }

  m_layout = self->m_layout;

  [(UIKeyboardLayout *)m_layout updateUndoKeyState];
}

- (void)dismissAutoFillPopover
{
  if (!+[UIKeyboard useAutoFillUIRTIInterfaceForIphone])
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 localAuthenticationObserver];

    if (([v4 localAuthenticationPresentedOrBeingRecoveredFrom] & 1) == 0 && getAFUIPanelClass())
    {
      [(AFUIPanel *)self->_autoFillPanel hide];
    }
  }
}

- (void)dismissEducationTip
{
  if (self->m_keyboardMenuType == 5)
  {
    self->m_keyboardMenuType = 0;
    v4 = [(UIKeyboardImpl *)self inputDelegate];
    v3 = [v4 interactionAssistant];
    [v3 dismissMenuForInputUI];
  }
}

- (void)clearLanguageIndicator
{
  m_languageIndicator = self->m_languageIndicator;
  if (m_languageIndicator)
  {
    [(UIView *)m_languageIndicator removeFromSuperview];
    v4 = self->m_languageIndicator;
    self->m_languageIndicator = 0;
  }
}

- (void)dismissContinuousPathIntroductionView
{
  continuousPathIntroductionView = self->_continuousPathIntroductionView;
  if (continuousPathIntroductionView)
  {
    [(UIContinuousPathIntroductionView *)continuousPathIntroductionView removeFromSuperview];
    v4 = self->_continuousPathIntroductionView;
    self->_continuousPathIntroductionView = 0;
  }
}

- (void)dismissDictationMenu
{
  if (!+[UIKeyboard isKeyboardProcess]|| [(UIKeyboardImpl *)self showingEmojiSearch])
  {
    if (self->m_keyboardMenuType == 3)
    {
      return;
    }

    if (self->m_dictationIndicatorAssertion)
    {
      v3 = [(UIKeyboardImpl *)self inputDelegateManager];
      v4 = [v3 selectionDisplayInteraction];
      [v4 clearInputModeCursorAssertion];

      [(UITextCursorAssertion *)self->m_dictationIndicatorAssertion invalidate];
      m_dictationIndicatorAssertion = self->m_dictationIndicatorAssertion;
      self->m_dictationIndicatorAssertion = 0;
    }

    if (self->m_editMenuInteraction)
    {
      if (self->m_keyboardMenuType == 3)
      {
        return;
      }

      v6 = [(UIKeyboardImpl *)self inputDelegate];
      v7 = [v6 textInputView];
      [v7 removeInteraction:self->m_editMenuInteraction];

      [(UIEditMenuInteraction *)self->m_editMenuInteraction dismissMenu];
      v8 = +[UIMenuController sharedMenuController];
      LODWORD(v6) = [v8 isMenuVisible];

      if (!v6)
      {
        return;
      }

      v15 = +[UIMenuController sharedMenuController];
      [v15 hideMenu];
      goto LABEL_15;
    }

    v15 = [(UIKeyboardImpl *)self inputDelegate];
    v12 = [v15 interactionAssistant];
    [v12 dismissMenuForInputUI];
LABEL_14:

LABEL_15:
    v11 = v15;
    goto LABEL_16;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 inputDelegateManager];
  v15 = [v10 inputSystemSourceSession];

  v11 = v15;
  if (v15)
  {
    v12 = [v15 textOperations];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = NSStringFromSelector(sel_dismissDictationMenu);
    [v13 setObject:v14 forKeyedSubscript:@"selector"];

    [v12 setCustomInfoType:0x1EFB7C8F0];
    [v12 setCustomInfo:v13];
    [v15 flushOperations];

    goto LABEL_14;
  }

LABEL_16:
}

- (void)dismissDictationTip
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:@"DictationCommandTipsEnabled"];

  if (v4 && self->m_keyboardMenuType == 3)
  {
    v5 = [(UIKeyboardImpl *)self inputDelegate];
    v6 = [v5 interactionAssistant];
    v7 = [v6 isDisplayingMenuForInputUI];

    if (v7)
    {
      v8 = +[UIDictationController activeInstance];
      v9 = [v8 dictationTipController];
      [v9 logDictationTipDimissialInstrumentation];
    }

    self->m_keyboardMenuType = 0;
    if (+[UIDictationController isRunning])
    {
      [(UIKeyboardImpl *)self touchDictationMenuTimer];
    }

    [(UIDictationPopoverController *)self->_dictationPopoverController dismissTip];
    [(UIKeyboardImpl *)self dismissDictationPopover];

    [(UIKeyboardImpl *)self dismissDictationMenu];
  }
}

- (void)_updateExternalDeviceInputSetting
{
  v3 = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateExternalDeviceInputSettingForWindow:v3];
}

+ (BOOL)supportsSplit
{
  v2 = +[UIKeyboardImpl activeInstance];
  if (v2)
  {
    v3 = v2;
    v4 = +[UIKeyboardImpl rivenPreference];

    if (v4)
    {
      v5 = +[UIKeyboardImpl activeInstance];
      v6 = [v5 textInputTraits];

      if (UIKeyboardTraitsCanSplit(v6))
      {
        LOBYTE(v4) = UIKeyboardSupportsSplit();
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)centerFilled
{
  v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (v4)
  {
    v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    v6 = [v5 rtiInputSourceState];
    v7 = [v6 centerFilled];
  }

  else
  {
    m_rivenCenterFilled = self->m_rivenCenterFilled;
    v9 = +[UIPeripheralHost sharedInstance];
    v5 = [v9 loadAwareInputViews];

    if ([v5 supportsSplit])
    {
      v10 = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];
    }

    else
    {
      v10 = 1;
    }

    self->m_rivenCenterFilled = v10;
    if ([v5 isEmpty])
    {
      self->m_rivenCenterFilled = m_rivenCenterFilled;
    }

    else if (m_rivenCenterFilled != self->m_rivenCenterFilled)
    {
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"UIKeyboardRivenVisualStyleDidChange" object:0 userInfo:0];

      if (objc_opt_respondsToSelector())
      {
        [(UIKeyboardLayout *)self->m_layout setKeyboardAppearance:-1];
      }
    }

    v7 = self->m_rivenCenterFilled;
  }

  return v7 & 1;
}

- (BOOL)hasAutocorrectPrompt
{
  if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(UIKeyboardImpl *)self autocorrectPrompt];
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  v3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
  if ([v3 showingAutocorrectInlinePrompt])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v5 = v4 != 0;

LABEL_6:
  return v5;
}

- (void)touchAutocorrectPromptTimer
{
  if ([(UIKeyboardImpl *)self hasAdvancedInputDelegate])
  {
    v3 = [(UIKeyboardImpl *)self autocorrectPromptTask];
    v4 = [v3 isValid];

    if (v4)
    {
      v7 = [(UIKeyboardImpl *)self autocorrectPromptTask];
      [v7 resetTimer];
    }

    else
    {
      v5 = [(UIKeyboardImpl *)self taskQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45__UIKeyboardImpl_touchAutocorrectPromptTimer__block_invoke;
      v8[3] = &unk_1E70FD058;
      v8[4] = self;
      v6 = [v5 scheduleTask:v8 timeInterval:0 repeats:0.2];
      [(UIKeyboardImpl *)self setAutocorrectPromptTask:v6];
    }
  }
}

- (void)updateStylingTraitsIfNeeded
{
  v3 = [(UIKeyboardImpl *)self responderStylingTraitsForceEditingMask:0];
  [(UIKeyboardLayout *)self->m_layout setTextEditingTraits:v3];
}

- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewController
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  v3 = [v2 shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:{+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit")}];

  return v3;
}

- (void)displayAutoFillPopoverIfAutoFillModeDetected
{
  if (+[UIKeyboard useAutoFillUIRTIInterfaceForIphone](UIKeyboard, "useAutoFillUIRTIInterfaceForIphone") || +[UIKeyboard isAlwaysBlockedAutoFillPanelClient](UIKeyboard, "isAlwaysBlockedAutoFillPanelClient") || !+[UIKeyboard isAutoFillPanelUIEnabled](UIKeyboard, "isAutoFillPanelUIEnabled") || !+[UIKeyboard isAutoFillPanelInAppsEnabled](UIKeyboard, "isAutoFillPanelInAppsEnabled") && !+[UIKeyboard isAlwaysAllowedAutoFillPanelClient](UIKeyboard, "isAlwaysAllowedAutoFillPanelClient") || !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && !+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    return;
  }

  if (+[UIKeyboard inputUIOOP])
  {
    v3 = [(UIKeyboardImpl *)self inputSystemSourceSession];
    v4 = [v3 documentTraits];
    v5 = [v4 autofillMode];
  }

  else
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager cachedAutofillMode];
  }

  if (v5 <= 7)
  {
    if ((v5 - 5) < 3)
    {

      [(UIKeyboardImpl *)self handleAutoFillContactDetected];
      return;
    }

    if (v5 != 1)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v5 != 9)
  {
    if (v5 != 8)
    {
      return;
    }

LABEL_18:

    [(UIKeyboardImpl *)self handleAutoFillPasswordDetected];
    return;
  }

  [(UIKeyboardImpl *)self handleAutoFillCreditCardDetected];
}

- (BOOL)hasCursorAssertion
{
  v2 = [(UIKeyboardImpl *)self cursorAssertion];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)showsCandidateBar
{
  v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v4 = [v3 rtiInputSourceState];

  if (!v4)
  {
    return self->m_showsCandidateBar;
  }

  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v6 = [v5 rtiInputSourceState];
  v7 = [v6 showsCandidateBar];

  return v7;
}

- (BOOL)_showsScribbleIconsInAssistantView
{
  if (+[UIKeyboard isMajelEnabled]&& ![(UIKeyboardImpl *)self _shouldSuppressAssistantBar])
  {
    v4 = [(UIKeyboardImpl *)self delegateAsResponder];
    if (([(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardForResponder:v4 ignoringPolicyDelegate:0 ignoreNumberPad:1]|| [(UIKeyboardImpl *)self floatingForced]) && +[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
    {
      if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v3 = ![(UIKeyboardImpl *)self showingEmojiSearch];
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (double)persistentSplitProgress
{
  v2 = 0.0;
  if (byte_1ED4989FC == 1)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v4 = [v3 preferencesActions];
    v5 = [v4 valueForPreferenceKey:*MEMORY[0x1E69D9C38]];
    [v5 floatValue];
    v2 = v6;
  }

  return v2;
}

- (void)delayedInit
{
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel_applicationSuspendedEventsOnly_ name:@"UIApplicationSuspendedEventsOnlyNotification" object:0];
  [v8 addObserver:self selector:sel_applicationResumedEventsOnly_ name:@"UIApplicationResumedEventsOnlyNotification" object:0];
  [v8 addObserver:self selector:sel_applicationResumed_ name:@"UIApplicationResumedNotification" object:0];
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v4 = &selRef_updateInputAssistantButtonItems;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v4 = &selRef_keyboardDidHide_;
  }

  v5 = *v4;
  v6 = &UIContentSizeCategoryDidChangeNotification;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v6 = &UIKeyboardDidHideNotification;
  }

  [v8 addObserver:self selector:v5 name:*v6 object:0];
  [v8 addObserver:self selector:sel_selectionScrolling_ name:@"UITextSelectionWillScroll" object:0];
  [v8 addObserver:self selector:sel_selectionScrolling_ name:@"UITextSelectionDidScroll" object:0];
  v7 = [(UIKeyboardImpl *)self inputDelegateManager];
  [v7 setupResponderChangeListeners];

  [v8 addObserver:self selector:sel__updateKeyboardSuppression_ name:@"UITextInputUpdateKeyboardSuppressionNotification" object:0];
  [v8 addObserver:self selector:sel__updateKeyboardLanguage_ name:@"UITextInputUpdateKeyboardLanguageNotification" object:0];
  [v8 addObserver:self selector:sel_scribbleWillBeginWriting_ name:@"_UIScribbleWillBeginWriting" object:0];
  [v8 addObserver:self selector:sel_beginObservingInputOverlayContainerFrame name:@"UIWindowSceneDidBeginLiveResizeNotification" object:0];
  [v8 addObserver:self selector:sel_endObservingInputOverlayContainerFrame name:@"UIWindowSceneDidEndLiveResizeNotification" object:0];
  [v8 addObserver:self selector:sel__dictationDidRecieveDidBeginDictationNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];
  [v8 addObserver:self selector:sel_textSelectionInteractionWillBegin_ name:@"UITextSelectionInteractionWillBegin" object:0];
}

- (void)didMoveToSuperview
{
  [(UIView *)self bounds];
  v7 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v3, v4];
  [v7 setSplitWidthsChanged:byte_1ED4989F0 != byte_1ED4989E8];
  v5 = [(UIKeyboardImpl *)self textInputTraits];
  [v7 setIsSecureTextEntry:{objc_msgSend(v5, "isSecureTextEntry")}];

  v6 = [(UIView *)self superview];
  [v6 _didChangeKeyplaneWithContext:v7];

  byte_1ED4989F0 = byte_1ED4989E8;
}

- (id)_getCurrentKeyplaneName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIKeyboardLayout *)self->m_layout keyplaneName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIKeyboardLayout)activeLayout
{
  v3 = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeLayout);
    m_layout = WeakRetained;
    if (!WeakRetained)
    {
      m_layout = self->m_layout;
    }

    v5 = m_layout;
  }

  return v5;
}

- (BOOL)globeKeyDisplaysAsEmojiKey
{
  v2 = [(UIKeyboardImpl *)self _layout];
  v3 = [v2 globeKeyDisplaysAsEmojiKey];

  return v3;
}

- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton
{
  v2 = [(UIKeyboardImpl *)self _layout];
  v3 = [v2 showsDedicatedEmojiKeyAlongsideGlobeButton];

  return v3;
}

- (void)updateLayoutIfNecessary
{
  if (self->m_updatingLayout)
  {
    return;
  }

  v4 = +[UIPeripheralHost activeInstance];
  v5 = [v4 loadAwareInputViews];
  v24 = [v5 keyboard];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v24;
  }

  else
  {
    v7 = +[UIKeyboard activeKeyboard];

    v6 = v7;
  }

  v25 = v6;
  if (v6)
  {
    v8 = [v6 interfaceOrientation];
  }

  else
  {
    v8 = [(UIView *)self _keyboardOrientation];
  }

  v9 = v8;
  v10 = [v25 window];

  if (v10)
  {
    v11 = [v25 window];
    v12 = [v11 _screen];
    v13 = [v12 _userInterfaceIdiom];
  }

  else
  {
    if ([v25 _userInterfaceIdiom] == 3)
    {
      v13 = 3;
      goto LABEL_14;
    }

    v11 = [objc_opt_class() keyboardScreen];
    v13 = [v11 _userInterfaceIdiom];
  }

LABEL_14:
  v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v15 = [v14 visualModeManager];
  if ([v15 windowingModeEnabled])
  {
    v16 = [(UIKeyboardImpl *)self window];
    v17 = objc_opt_class();
    LODWORD(v17) = [v17 isEqual:objc_opt_class()];

    if (v17)
    {
      v18 = [(UIKeyboardImpl *)self window];
      v19 = [v18 sceneIsResizing];

      v20 = v19 ^ 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v20 = 1;
LABEL_19:
  if (![objc_opt_class() keyboardOrientation:v9 isEquivalentToOrientation:{-[UIKeyboardLayout orientation](self->m_layout, "orientation")}] || v13 != -[UIKeyboardLayout idiom](self->m_layout, "idiom") || objc_msgSend(v25, "isAutomatic") && (objc_msgSend(v25, "bounds"), v22 = v21, -[UIView bounds](self->m_layout, "bounds"), v22 != v23))
  {
    v20 = 0;
  }

  if (v13 == 8 || (v20 & 1) != 0)
  {
    if ([(UIKeyboardImpl *)self shouldShowCandidateBar])
    {
      [(UIKeyboardImpl *)self setShowsCandidateBar:1];
    }
  }

  else
  {
    [(UIKeyboardImpl *)self updateLayout];
    if ([(UIKeyboardImpl *)self showInputModeIndicator]&& self->m_languageIndicator)
    {
      [(UIKeyboardImpl *)self updateInputModeIndicatorOnSingleKeyOnly:0];
    }
  }
}

- (void)updateAssistantView
{
  if (![(UIKeyboardImpl *)self suppressUpdateAssistantView])
  {
    v3 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v3 setUpdateAssistantView:1];
    [(UIKeyboardImpl *)self _didChangeKeyplaneWithContext:v3];
  }
}

- (void)documentStateDidChange
{
  if (getAFUIPanelClass() && !+[UIKeyboard useAutoFillUIRTIInterfaceForIphone])
  {
    v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager _rtiDocumentStateForAutoFillPopover];
    [(AFUIPanel *)self->_autoFillPanel documentStateChanged:v3];
  }
}

- (id)layoutState
{
  if (self->m_layout)
  {
    v3 = objc_opt_new();
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentSystemInputMode];
    v6 = [v5 identifier];
    [v3 setInputMode:v6];

    [v3 setHasCandidateKey:{-[UIKeyboardLayout hasCandidateKeys](self->m_layout, "hasCandidateKeys")}];
    [v3 setHasAccentKey:{-[UIKeyboardLayout hasAccentKey](self->m_layout, "hasAccentKey")}];
    [v3 setCanMultitap:{-[UIKeyboardLayout canMultitap](self->m_layout, "canMultitap")}];
    v7 = ![(UIKeyboardImpl *)self isMinimized]&& [(UIKeyboardLayout *)self->m_layout isAlphabeticPlane];
    [v3 setIsAlphabeticPlane:v7];
    [v3 setIsKanaPlane:{-[UIKeyboardLayout isKanaPlane](self->m_layout, "isKanaPlane")}];
    [v3 setDiacriticForwardCompose:{-[UIKeyboardLayout diacriticForwardCompose](self->m_layout, "diacriticForwardCompose")}];
    v8 = [(UIKeyboardLayout *)self->m_layout layoutTag];
    [v3 setLayoutTag:v8];

    v9 = [objc_opt_class() keyboardScreen];
    v10 = [UIKBScreenTraits traitsWithScreen:v9 orientation:[(UIView *)self _keyboardOrientation]];

    v11 = [v10 idiom];
    v12 = v11;
    if ((v11 - 2) >= 3 && v11)
    {
      if (v11 == 1)
      {
        if (+[UIKeyboardImpl isFloating])
        {
          v12 = 0;
        }

        else
        {
          v12 = +[UIKeyboardImpl isSplit]^ 1;
        }
      }

      else
      {
        v12 = -1;
      }
    }

    [v3 setUserInterfaceIdiom:v12];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)showsGlobeAndDictationKeysExternallyForFloatingKeyboard
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 colorAdaptiveKeyboardEnabled];

  if (!v4 || !+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    return 0;
  }

  return +[UIKeyboardImpl isFloating];
}

- (BOOL)accessibilityUsesExtendedKeyboardPredictionsEnabled
{
  if (![(UIKeyboardImpl *)self canShowPredictionBar]|| [(UIKeyboardImpl *)self keyboardIsKeyPad])
  {
    return 0;
  }

  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  v3 = ([v4 usesCandidateSelection] & 1) == 0 && -[_UIKeyboardStateManager isDefaultPrediction](self->_keyboardStateManager, "isDefaultPrediction") && _AXSExtendedKeyboardPredictionsEnabled() != 0;

  return v3;
}

- (BOOL)isUsingDictationLayout
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  if ([v3 isExtensionInputMode])
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldShowInternationalKey
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"autofillsignup"];

  if (v6)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  if ([objc_opt_class() canShowInternationalKey])
  {
    v8 = [(UIKeyboardImpl *)self textInputTraits];
    if ([v8 isSecureTextEntry])
    {
      HasMultipleActiveSecureInputModes = UIKeyboardHasMultipleActiveSecureInputModes();

      if ((HasMultipleActiveSecureInputModes & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ([UIKeyboardActiveUserSelectableInputModes count] < 2)
    {
      v10 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v11 = [v10 keyboardType];

      if (v11 != 122)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    LOBYTE(v7) = 1;
    return v7;
  }

LABEL_11:
  v7 = UIKeyboardHas10KeyChineseKeyboard();
  if (v7)
  {
    v12 = UIKeyboardGetCurrentInputMode();
    v13 = TIInputModeGetLanguage();
    v14 = [v13 isEqualToString:@"zh"];

    LOBYTE(v7) = v14 ^ 1;
  }

  return v7;
}

+ (CGPoint)normalizedPersistentOffset
{
  if ((byte_1ED498A00 & 1) == 0 && !+[UIKeyboardImpl isFloating])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v4 = [v3 remoteKeyboardUndocked];

    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!+[UIKeyboardImpl isFloating])
  {
    if (byte_1ED4989F8)
    {
      [a1 normalizedPersistentOffsetIgnoringState];
      goto LABEL_9;
    }

LABEL_8:
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    goto LABEL_9;
  }

  +[UIKeyboardImpl floatingNormalizedPersistentOffset];
LABEL_9:
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 inputDelegateManager];
  v5 = [v4 keyInputDelegate];

  if (([v5 __isKindOfUIResponder] & 1) == 0)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 delegateAsResponder];

    v5 = v7;
  }

  if (v5)
  {
    v8 = (objc_opt_respondsToSelector() & 1) == 0 || [v5 keyboardAppearance] == 10;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(UIView *)self traitCollection];
  v10 = [v9 userInterfaceStyle];

  if (v8)
  {
    v11 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];

    if (v11)
    {
      v12 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v14 = v12;
      if (v10 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      [v12 setKeyboardAppearance:v13];
    }
  }
}

- (BOOL)_isBackdropVisible
{
  v3 = [objc_opt_class() keyboardScreen];
  v4 = [UIKBScreenTraits traitsWithScreen:v3 orientation:[(UIView *)self _keyboardOrientation]];

  v5 = [(UIKeyboardImpl *)self textInputTraits];
  v6 = [v5 keyboardAppearance];

  if (v6 == 127)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[UIKeyboard keyboardBundleIdentifier];
    if (([v8 isEqualToString:@"com.apple.Spotlight"] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"com.apple.SpotlightTest"))
    {
      goto LABEL_9;
    }

    v9 = [(UIKeyboardImpl *)self textInputTraits];
    v10 = [v9 keyboardAppearance];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([v11 restoringInputViews])
    {
      v10 = [v11 restorableKeyboardAppearance];
    }

    if (v10 == 11)
    {
      v7 = 0;
    }

    else
    {
LABEL_9:
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)shouldShowDictationKey
{
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];

  if (!v4)
  {
    if (!+[UIKeyboard usesInputSystemUI])
    {
      return 0;
    }

    v6 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    v7 = [v6 rtiInputSourceState];
    v8 = [v7 showingEmojiSearch];

    if (!v8)
    {
      return 0;
    }
  }

  return +[UIDictationController fetchCurrentInputModeSupportsDictation];
}

+ (CGPoint)persistentOffset
{
  v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v4 = [qword_1ED498A10 delegate];
  if (v4)
  {
  }

  else if ([v3 isFloating])
  {
    [v3 persistentOffset];
    v6 = v5;
    v8 = v7;
    goto LABEL_13;
  }

  if (byte_1ED498A00 & 1) != 0 || +[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 remoteKeyboardUndocked], v9, (v10))
  {
    [a1 normalizedPersistentOffset];
    [a1 _screenPointFromNormalizedPoint:?];
    v12 = v11;
    v14 = v13;
    +[UIKeyboardImpl persistentSplitProgress];
    v16 = v15 == 0.0;
    v17 = 0.0;
    v18 = 6.0;
    if (!v16)
    {
      v18 = 0.0;
    }

    if (v14 >= v18)
    {
      v17 = v14;
    }

    v6 = round(v12);
    v8 = round(v17);
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

LABEL_13:

  v19 = v6;
  v20 = v8;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = UIKeyboardImpl;
  [(UIView *)&v2 layoutSubviews];
}

+ (BOOL)isFloatingForced
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 floatingForced];

  return v3;
}

- (BOOL)automaticMinimizationEnabled
{
  if (self->m_automaticMinimizationEnabled)
  {
    return 1;
  }

  else
  {
    return ![UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate:v2];
  }
}

- (void)_updateSoundPreheating
{
  v3 = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:v3];
}

- (void)prewarmEmojiKeyboardIfNeeded
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 normalizedEnabledInputModeIdentifiers];
  v5 = [v4 containsObject:@"emoji"];

  if (v5 && !self->_emojiKeyboardPrewarmingAssertion)
  {
    v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v6 = [v8 vendEmojiKeyboardPrewarmingAssertionForReason:@"Emoji keyboard"];
    emojiKeyboardPrewarmingAssertion = self->_emojiKeyboardPrewarmingAssertion;
    self->_emojiKeyboardPrewarmingAssertion = v6;
  }
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self _rootInputWindowController];
  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  [v3 setDisableUpdateMaskForSecureTextEntry:{objc_msgSend(v4, "isSecureTextEntry")}];

  if (+[UIKeyboardImpl showsGlobeAndDictationKeysExternally])
  {
    v5 = [(UIView *)self _rootInputWindowController];
    [v5 updateSupportsDockViewController];
  }

  v6 = [(UIView *)self _window];
  if (v6)
  {
    v7 = v6;
    m_bottomPadding = self->m_bottomPadding;
    v9 = [(UIView *)self _keyboardOrientation];
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:v9 inputMode:v11];
    v13 = v12;

    if (m_bottomPadding != v13)
    {

      [(UIKeyboardImpl *)self updateLayout];
    }
  }
}

- (void)presentContinuousPathIntroductionView
{
  if (([UIApp isSuspended] & 1) != 0 || -[UIKeyboardImpl isMinimized](self, "isMinimized"))
  {
    return;
  }

  v3 = [(UIView *)self->_continuousPathIntroductionView window];
  if (v3)
  {
    goto LABEL_5;
  }

  v16 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v16 keyInputDelegate];
  if (!v4)
  {
    v3 = v16;
LABEL_5:

    return;
  }

  v5 = v4;
  v6 = [(UIKeyboardImpl *)self shouldShowContinuousPathIntroductionView];

  if (v6)
  {
    if (!self->_continuousPathIntroductionView)
    {
      v7 = [UIContinuousPathIntroductionView alloc];
      v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v9 = -[UIContinuousPathIntroductionView initWithKeyboardAppearance:](v7, "initWithKeyboardAppearance:", [v8 keyboardAppearance]);
      continuousPathIntroductionView = self->_continuousPathIntroductionView;
      self->_continuousPathIntroductionView = v9;
    }

    v11 = [(UIView *)self _rootInputWindowController];
    v12 = [v11 bottomEdgeView];
    [v12 addSubview:self->_continuousPathIntroductionView];

    v13 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__UIKeyboardImpl_presentContinuousPathIntroductionView__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    v14 = MEMORY[0x1E69E96A0];
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    v15 = dispatch_time(0, 300000000000);
    dispatch_after(v15, v14, &__block_literal_global_976_0);
  }
}

- (BOOL)shouldShowContinuousPathIntroductionView
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 oneTimeActionCompleted:*MEMORY[0x1E69D9740]];

  if ((v5 & 1) != 0 || ![(UIKeyboardLayout *)self->m_layout _allowContinuousPathUI])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v6 = +[UIKeyboard keyboardBundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.purplebuddy"] ^ 1;
  }

  return v7;
}

- (BOOL)splitTransitionInProgress
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIKeyboardLayout *)self->m_layout pinchDetected];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(UIView *)self _rootInputWindowController];
  v5 = [v4 isSplitting];

  return v3 | v5;
}

+ (void)releaseSharedInstance
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED498A10)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v3 = _UIKeyboardExtendedLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(qword_1ED498A10 + 720);
        v5 = 134217984;
        v6 = v4;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "releasing shared Impl (id=%ld)", &v5, 0xCu);
      }
    }

    [qword_1ED498A10 releaseInputManager];
    [qword_1ED498A10 clearDelegate];
    [qword_1ED498A10 clearAnimations];
    [qword_1ED498A10 clearTimers];
    [qword_1ED498A10 clearLayouts];
    [qword_1ED498A10 removeFromSuperview];
    [qword_1ED498A10 detach];
    v2 = qword_1ED498A10;
    qword_1ED498A10 = 0;
  }

  loadsAddressBook = 1;
}

- (void)deactivateLayout
{
  [(UIKeyboardImpl *)self clearLanguageIndicator];
  m_layout = self->m_layout;

  [(UIKeyboardLayout *)m_layout deactivateActiveKeys];
}

- (void)dismissEditingIntroductionView
{
  editingGestureIntroductionView = self->_editingGestureIntroductionView;
  if (editingGestureIntroductionView)
  {
    [(UIView *)editingGestureIntroductionView removeFromSuperview];
    v4 = self->_editingGestureIntroductionView;
    self->_editingGestureIntroductionView = 0;
  }
}

- (void)dismissMultilingualKeyboardTip
{
  multilingualKeyboardIntroductionView = self->_multilingualKeyboardIntroductionView;
  if (multilingualKeyboardIntroductionView)
  {
    [(UIView *)multilingualKeyboardIntroductionView removeFromSuperview];
    v4 = self->_multilingualKeyboardIntroductionView;
    self->_multilingualKeyboardIntroductionView = 0;
  }
}

- (void)dismissMultilingualSettingTip
{
  multilingualSettingIntroductionView = self->_multilingualSettingIntroductionView;
  if (multilingualSettingIntroductionView)
  {
    [(UIView *)multilingualSettingIntroductionView removeFromSuperview];
    v4 = self->_multilingualSettingIntroductionView;
    self->_multilingualSettingIntroductionView = 0;
  }
}

- (void)clearInputModeAssertion
{
  v3 = [(UIKeyboardImpl *)self inputModeAssertion];
  [v3 invalidate];

  [(UIKeyboardImpl *)self setInputModeAssertion:0];
}

+ (id)sharedInstanceForCustomInputView:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED498A10)
  {
    if (!a3 && [qword_1ED498A10 forCustomInputView])
    {
      [qword_1ED498A10 setForCustomInputView:0];
      [qword_1ED498A10 setInputModeFromPreferences];
    }
  }

  else
  {
    v5 = [a1 alloc];
    v6 = [v5 initWithFrame:v3 forCustomInputView:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = qword_1ED498A10;
    qword_1ED498A10 = v6;

    [UIApp _registerForUserDefaultsChanges];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardImpl_sharedInstanceForCustomInputView___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED498A18 != -1)
  {
    dispatch_once(&qword_1ED498A18, block);
  }

  v8 = qword_1ED498A10;

  return v8;
}

void __51__UIKeyboardImpl_sharedInstanceForCustomInputView___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationDidReceiveMemoryWarning_ name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v2 addObserver:*(a1 + 32) selector:sel_switchControlStatusDidChange_ name:@"UIAccessibilitySwitchControlStatusDidChangeNotification" object:0];
}

+ (void)purgeImageCache
{
  v2 = +[UIKeyboardCache sharedInstance];
  [v2 purge];
}

+ (void)applicationWillSuspend:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 usesCandidateSelection];

  if (v4)
  {
    v5 = +[UIKeyboard activeKeyboard];
    [v5 acceptAutocorrectionWithCompletionHandler:0];
  }

  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 _layout];
  [v7 resetTouchProcessingForKeyboardChange];

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 _layout];
  [v9 clearUnusedObjects:0];

  +[UIKBRenderer clearInternalCaches];
  v10 = +[UIKeyboardCache sharedInstance];
  [v10 commitTransaction];

  v11 = +[UIKeyboardCache sharedInstance];
  [v11 clearNonPersistentCache];
}

+ (void)applicationWillResignActive:(id)a3
{
  v3 = +[UIKeyboard isSpotlight];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 dismissEmojiPopoverBeforeCleanup:v3];

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 scene];
  v7 = [v6 _effectiveUISettings];
  [v7 deactivationReasons];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 dismissAutoFillPopover];

  v9 = +[UIKeyboardCache sharedInstance];
  [v9 commitTransaction];

  v10 = +[UIKeyboardCache sharedInstance];
  [v10 clearNonPersistentCache];

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 _layout];
  [v12 clearTransientState];

  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v13 _layout];
  [v14 setCursorLocation:0];

  v15 = +[UIKeyboardImpl activeInstance];
  [v15 deactivateLayout];

  v16 = +[UIKeyboardImpl activeInstance];
  v17 = [v16 _layout];
  [v17 resetTouchProcessingForKeyboardChange];

  v18 = +[UIKeyboardImpl activeInstance];
  [v18 cancelAllKeyEvents];

  v19 = +[UIKeyboardImpl activeInstance];
  [v19 dismissEditingIntroductionView];

  v20 = +[UIKeyboardImpl activeInstance];
  [v20 dismissMultilingualKeyboardTip];

  v21 = +[UIKeyboardImpl activeInstance];
  [v21 dismissMultilingualSettingTip];

  v22 = +[UIKeyboardImpl activeInstance];
  [v22 setPreviousGlobeKeyEvent:0];

  [_UIKBFeedbackGeneratorPartner cooldownSystemSoundsForObject:qword_1ED498A10];
  v24 = +[UIKeyboardImpl activeInstance];
  v23 = [v24 inputModeIndicatorController];
  [v23 willResignActive];
}

+ (void)applicationDidBecomeActive:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 _layout];
  [v4 setCursorLocation:258];

  v6 = +[UIKeyboardImpl activeInstance];
  v5 = [v6 _layout];
  [v5 updateTouchProcessingForKeyboardChange];
}

+ (void)applicationDidEnterBackground:(id)a3
{
  v7 = +[UIKeyboardImpl activeInstance];
  v3 = [v7 _layout];
  [v3 resetTouchProcessingForKeyboardChange];

  [v7 cancelAllKeyEvents];
  [qword_1ED498A10 _updateSoundPreheatingForWindow:0];
  [v7 dismissEditingIntroductionView];
  [v7 dismissMultilingualKeyboardTip];
  [v7 dismissMultilingualSettingTip];
  [v7 dismissStickerEditor:0];
  v4 = [v7 keyboardStateManager];
  [v4 hostApplicationDidEnterBackground];

  v5 = UIKeyboardSupportsTouch;
  UIKeyboardSupportsTouch = 0;

  v6 = UIKeyboardCachedIsRightHandDrive;
  UIKeyboardCachedIsRightHandDrive = 0;
}

+ (void)applicationWillEnterForeground:(id)a3
{
  _UIKBRT_ResetSystemUptimeOnResume();
  v3 = qword_1ED498A10;
  v4 = [qword_1ED498A10 window];
  [v3 _updateSoundPreheatingForWindow:v4];

  v6 = +[UIKeyboardImpl activeInstance];
  v5 = [v6 keyboardStateManager];
  [v5 hostApplicationWillEnterForeground];
}

+ (void)applicationDidReceiveMemoryWarning:(id)a3
{
  v3 = a3;
  [UICompatibilityInputViewController applicationDidReceiveMemoryWarning:v3];
}

+ (void)switchControlStatusDidChange:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 reloadCurrentInputMode];
}

+ (Class)layoutClassForCurrentInputMode
{
  v3 = UIKeyboardGetCurrentInputMode();
  v4 = [a1 layoutClassForInputMode:v3 keyboardType:0 screenTraits:0];

  return v4;
}

+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4
{
  v5 = a4;
  v6 = [a1 keyboardScreen];
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v8 = [v7 keyboardWindow];

  v9 = [v8 rootViewController];
  v10 = [v9 bottomEdgeView];
  v80 = v9;
  v11 = [v9 placement];
  v81 = +[UIKeyboardImpl activeInstance];
  v78 = v11;
  v79 = v10;
  if (([v11 showsInputViews] & 1) != 0 || objc_msgSend(v11, "isUndocked"))
  {
    [v10 frame];
    if (v12 > 0.0)
    {
      [v10 safeAreaInsets];
LABEL_7:
      v14 = v13;
      goto LABEL_9;
    }
  }

  if (v8)
  {
    [v8 _managedSafeAreaInsets];
    goto LABEL_7;
  }

  v15 = [a1 keyboardWindow];
  [v15 _managedSafeAreaInsets];
  v14 = v16;

LABEL_9:
  [v6 _referenceBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v6 _unjailedReferenceBounds];
  v85.origin.x = v25;
  v85.origin.y = v26;
  v85.size.width = v27;
  v85.size.height = v28;
  v83.origin.x = v18;
  v83.origin.y = v20;
  v83.size.width = v22;
  v83.size.height = v24;
  if (CGRectEqualToRect(v83, v85) || (+[UIApplication _classicMode]- 5) <= 1)
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v29 = +[UIDevice currentDevice];
      v30 = v6;
      v31 = v8;
      v32 = [v29 userInterfaceIdiom];

      v33 = v32 & 0xFFFFFFFFFFFFFFFBLL;
      v8 = v31;
      v6 = v30;
      v34 = (v33 == 1) ^ ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  v35 = +[UIKeyboardImpl isFloating];
  v36 = +[UIDevice _hasHomeButton];
  v37 = a3;
  if ((v34 & 1) != 0 || v36)
  {
    goto LABEL_20;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !v35 && !+[UIKeyboardImpl isSplit])
  {
    v39 = 20.0;
LABEL_36:
    v43 = 0.0;
    goto LABEL_37;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
LABEL_20:
    SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
    v39 = 0.0;
    if ((a3 - 3) <= 1 && (SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v40 = [v5 identifier];
      if (UIKeyboardShouldAddMarginOnLandscapeLargePhoneKeyboard(v40))
      {
        [v6 _referenceBounds];
        v42 = v41;

        if (v42 >= 667.0)
        {
          v43 = 72.0;
          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    goto LABEL_36;
  }

  v43 = 0.0;
  if ((a3 - 1) >= 2)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 75.0;
  }

  if ((a3 - 3) <= 1)
  {
    v44 = v8;
    if ([v5 isExtensionInputMode])
    {
      v39 = v14;
    }

    else
    {
      v39 = v14 + -2.0;
    }

    v45 = [v5 identifier];
    v46 = [v45 hasPrefix:@"emoji"];

    if (v46)
    {
      v43 = 44.0;
    }

    else
    {
      v71 = [a1 keyboardScreen];
      v72 = [v71 traitCollection];
      v73 = [v72 userInterfaceIdiom];

      v74 = v73 == 3;
      v37 = a3;
      if (v74)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = 75.0;
      }
    }

    [v6 _referenceBounds];
    if (v75 >= 896.0)
    {
      v43 = v43 + 42.0;
    }

    v8 = v44;
  }

LABEL_37:
  if ([a1 shouldPadTopOfKeyboard])
  {
    v47 = 17.0;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = [a1 keyboardScreen];
  v49 = [v48 traitCollection];
  v50 = [v49 userInterfaceIdiom];
  if ((v37 - 1) > 1 || v50)
  {
  }

  else
  {
    v51 = +[UIKeyboardImpl activeInstance];
    v52 = [v51 _layout];
    if ([v52 isDynamicLayout])
    {
      v77 = v6;
      v53 = v8;
      v54 = [v81 _inheritedRenderConfig];
      if ([v54 colorAdaptiveBackground])
      {
        +[UIKeyboardInputModeController sharedInputModeController];
        v55 = v76 = v5;
        v56 = [v55 currentInputMode];
        v57 = [v56 isEmojiInputMode] ^ 1;

        v5 = v76;
      }

      else
      {
        v57 = 0;
      }

      v8 = v53;
      v6 = v77;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v43 = v43 + 4.5;
    }

    v37 = a3;
  }

  v58 = [a1 _applicationClientComponent];
  [v58 minimumKeyboardPadding];
  if (v60 == 0.0 && v59 == 0.0 && v62 == 0.0 && v61 == 0.0)
  {
    v63 = v43;
  }

  else
  {
    v47 = fmax(v47, v59);
    v64 = fmax(v43, v60);
    v39 = fmax(v39, v61);
    v65 = fmax(v43, v62);
    v66 = fmax(v64, v65);
    if ((v37 - 3) >= 2)
    {
      v43 = v65;
    }

    else
    {
      v43 = v66;
    }

    if ((v37 - 3) >= 2)
    {
      v63 = v64;
    }

    else
    {
      v63 = v66;
    }
  }

  v67 = v47;
  v68 = v63;
  v69 = v39;
  v70 = v43;
  result.right = v70;
  result.bottom = v69;
  result.left = v68;
  result.top = v67;
  return result;
}

+ (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4
{
  v6 = a4;
  v7 = 0.0;
  if ((_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    v8 = [v6 isExtensionInputMode];
    v9 = [objc_opt_class() keyboardScreen];
    v10 = [UIKBScreenTraits traitsWithScreen:v9 orientation:a3];

    v11 = [v10 idiom];
    [a1 deviceSpecificPaddingForInterfaceOrientation:a3 inputMode:v6];
    v13 = v12 <= 0.0 || v11 == 3;
    v14 = 17.0;
    if (v13)
    {
      v14 = 0.0;
    }

    if (v8)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v14;
    }
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = v7;
  result.right = v17;
  result.bottom = v18;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3
{
  v4 = objc_opt_class();

  [v4 defaultSizeForInterfaceOrientation:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4
{
  v5 = a4;
  [objc_opt_class() deviceSpecificStaticHitBufferForInterfaceOrientation:a3 inputMode:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)a3 inputMode:(id)a4
{
  v5 = a4;
  [objc_opt_class() deviceSpecificPaddingForInterfaceOrientation:a3 inputMode:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3
{
  v5 = [objc_opt_class() keyboardScreen];
  v6 = [UIKBScreenTraits traitsWithScreen:v5 orientation:a3];

  v7 = [objc_opt_class() activeInstance];
  v8 = [v7 textInputTraits];

  if (v8)
  {
    v9 = [v8 keyboardType];
  }

  else
  {
    v9 = 0;
  }

  if ([v6 idiom] == 2)
  {
    v10 = +[UIKeyboard activeKeyboard];
    if (v10)
    {
      v11 = +[UIKeyboard activeKeyboard];
      v12 = [v11 _useLinearLayout];
    }

    else
    {
      v12 = 0;
    }

    [v6 updateForLinearLayout:v12];
  }

  else if ([v6 idiom] == 3)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    [v6 updateForTextInputTraits:0 supportedInteractionModel:{objc_msgSend(v13, "requestedInteractionModel")}];
  }

  v14 = +[UIKeyboardInputModeController sharedInputModeController];
  v15 = [v14 currentInputMode];

  v16 = [v15 identifier];
  v17 = [a1 layoutClassForInputMode:v16 keyboardType:v9 screenTraits:v6];

  v18 = [v15 identifier];
  [v17 keyboardSizeForInputMode:v18 screenTraits:v6 keyboardType:v9];
  v20 = v19;
  v22 = v21;

  [a1 topMarginForInterfaceOrientation:a3];
  v24 = v22 + v23;
  [a1 deviceSpecificStaticHitBufferForInterfaceOrientation:a3 inputMode:v15];
  v26 = v24 + v25;

  v27 = v20;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3
{
  [a1 sizeForInterfaceOrientation:a3 ignoreInputView:0];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4
{
  v7 = +[UIPeripheralHost sharedInstance];
  v8 = [v7 loadAwareInputViews];

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 currentInputMode];
  v11 = [v10 isExtensionInputMode];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [v8 inputViewController];
  v13 = [v12 view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;

  if ([v8 isCustomInputView] && a4 || v17 <= 0.0)
  {
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    v19 = [v18 currentInputMode];
    v20 = [UICompatibilityInputViewController inputSnapshotViewForInputMode:v19 orientation:a3];

    if (v20)
    {
      [v20 bounds];
      v15 = v21;
      v17 = v22;
LABEL_13:

      goto LABEL_14;
    }

LABEL_7:
    [a1 keyboardSizeForInterfaceOrientation:a3];
    v15 = v23;
    v17 = v24;
    v25 = +[UIKeyboardImpl activeInstance];
    v20 = v25;
    if (v25)
    {
      v26 = [v25 _layout];

      if (v26)
      {
        if (a4)
        {
          v27 = 0;
        }

        else
        {
          v27 = [v8 isCustomInputView];
        }

        [a1 additionalInstanceHeightForInterfaceOrientation:a3 hasInputView:v27];
        v29 = v28;
        [a1 topMarginForInterfaceOrientation:a3];
        v17 = v17 + v29 - v30;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v31 = v15;
  v32 = v17;
  result.height = v32;
  result.width = v31;
  return result;
}

+ (BOOL)keyboardOrientation:(int64_t)a3 isEquivalentToOrientation:(int64_t)a4
{
  if (a3 && a4)
  {
    return ((a3 - 3) < 2) ^ ((a4 - 5) < 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    return a3 == a4;
  }
}

+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)a3
{
  [a1 defaultSizeForInterfaceOrientation:?];
  v6 = v5;
  v8 = v7;
  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 _layout];

  [v10 frame];
  v12 = v11;
  if (v10)
  {
    if (([v10 isDynamicLayout] & 1) == 0 && objc_msgSend(a1, "keyboardOrientation:isEquivalentToOrientation:", objc_msgSend(v10, "orientation"), a3) && objc_msgSend(v10, "isMemberOfClass:", objc_msgSend(a1, "layoutClassForCurrentInputMode")) && v6 == v12)
    {
      [v10 frame];
      v6 = v14;
LABEL_10:
      v18 = v13;
      [a1 topMarginForInterfaceOrientation:a3];
      v8 = v18 + v19;
      goto LABEL_11;
    }

    if (+[UIKeyboardImpl isSplit])
    {
      v15 = +[UIKeyboardImpl activeInstance];
      v16 = [v15 textInputTraits];
      v17 = [v16 acceptsSplitKeyboard];

      if (v17)
      {
        [v10 frame];
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  if ([v10 idiom] == 3)
  {
    v6 = v12;
  }

  v20 = v6;
  v21 = v8;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (id)normalizedInputModesFromPreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 normalizedEnabledInputModeIdentifiers];

  return v3;
}

+ (double)topMarginForInterfaceOrientation:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardImpl_topMarginForInterfaceOrientation___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED498A38 != -1)
  {
    dispatch_once(&qword_1ED498A38, block);
  }

  v5 = 0.0;
  if (([a1 isSplit] & 1) == 0 && (objc_msgSend(a1, "isFloating") & 1) == 0)
  {
    v6 = qword_1ED498A30;
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 currentInputMode];
    v9 = [v8 normalizedIdentifier];
    LOBYTE(v6) = [v6 containsObject:v9];

    if ((v6 & 1) == 0)
    {
      v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v11 = [v10 preferencesActions];
      v12 = [v11 currentInputModeSupportsCrescendo];

      if ((v12 & 1) == 0)
      {
        if ((a3 - 3) >= 2)
        {
          v13 = &qword_1ED498A20;
        }

        else
        {
          v13 = algn_1ED498A28;
        }

        return *v13;
      }
    }
  }

  return v5;
}

void __51__UIKeyboardImpl_topMarginForInterfaceOrientation___block_invoke(uint64_t a1)
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v2 = [*(a1 + 32) keyboardScreen];
    v7 = [UIKBScreenTraits traitsWithScreen:v2 orientation:1];

    if ([v7 isKeyboardMinorEdgeWidth] && (objc_msgSend(v7, "keyboardWidth"), v3 >= 1024.0))
    {
      v4 = 7.0;
      v5 = 5.0;
    }

    else
    {
      v4 = 10.0;
      v5 = 7.0;
    }

    qword_1ED498A20 = *&v5;
    *algn_1ED498A28 = v4;
    v6 = qword_1ED498A30;
    qword_1ED498A30 = &unk_1EFE2CD00;
  }
}

+ (double)additionalInstanceHeightForInterfaceOrientation:(int64_t)a3 hasInputView:(BOOL)a4
{
  if ([a1 shouldMergeAssistantBarWithKeyboardLayout])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 currentInputMode];
    v9 = [v8 isEmojiInputMode];

    if (!v9)
    {
      return 0.0;
    }
  }

  if (([qword_1ED498A10 disableInputBars] & 1) != 0 || a4)
  {
    return 0.0;
  }

  if (!a3)
  {
    a3 = +[UIKeyboardSceneDelegate interfaceOrientation];
  }

  [a1 topMarginForInterfaceOrientation:a3];
  return result;
}

+ (double)additionalTopPaddingForRoundedKeyboard
{
  v2 = [qword_1ED498A10 _layout];
  [v2 keyplanePadding];
  v4 = v3;
  v5 = 24.0 - v3;

  result = 0.0;
  if (v4 != 0.0)
  {
    return v5;
  }

  return result;
}

+ (BOOL)shouldPadTopOfKeyboard
{
  v3 = +[UIPeripheralHost sharedInstance];
  v4 = [v3 inputViews];

  v5 = [v4 inputAssistantView];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [objc_opt_class() keyboardWindow];
  v8 = [v5 isHidden];
  v9 = [v6 _inheritedRenderConfig];
  v10 = [v9 colorAdaptiveBackground];
  if (v5)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

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
    LOBYTE(v13) = 0;
    goto LABEL_26;
  }

  v14 = +[UIKeyboardSceneDelegate interfaceOrientation];
  v15 = v14 - 3;
  if ((v14 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [v6 _layout];
    if (![v8 idiom])
    {
      LOBYTE(v13) = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  if ([v4 isRemoteKeyboard] & 1) != 0 || (objc_msgSend(a1, "isFloating") & 1) != 0 || (objc_msgSend(a1, "isSplit"))
  {
    LOBYTE(v13) = 0;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v16 = [v6 _layout];
  if ([v16 isHandwritingPlane])
  {
    goto LABEL_23;
  }

  v17 = [v6 _inheritedRenderConfig];
  if ([v17 animatedBackground])
  {
LABEL_22:

LABEL_23:
    LOBYTE(v13) = 0;
    goto LABEL_24;
  }

  v18 = [v6 _layout];
  if ([v18 idiom] == 3)
  {

    goto LABEL_22;
  }

  v22 = v18;
  v21 = +[UIKeyboardInputModeController sharedInputModeController];
  v20 = [v21 currentInputMode];
  if ([v20 isEmojiInputMode])
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = [v6 showingEmojiSearch] ^ 1;
  }

LABEL_24:
  if (v15 < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_25;
  }

LABEL_26:

  return v13;
}

- (BOOL)hardwareKeyboardIsSeen
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 oneTimeActionCompleted:*MEMORY[0x1E69D9778]];

  return v4;
}

- (void)setHardwareKeyboardIsSeen:(BOOL)a3
{
  if (a3 && ![(UIKeyboardImpl *)self hardwareKeyboardIsSeen])
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v3 = [v4 preferencesActions];
    [v3 didTriggerOneTimeAction:*MEMORY[0x1E69D9778]];
  }
}

- (void)setCapsLockIfNeeded
{
  v3 = [UIApp _hardwareKeyboard:0];

  [(UIKeyboardImpl *)self _setCapsLockIfNeeded:v3 event:0];
}

- (void)setCapsLockIfNeededForPhysicalKeyboardEvent:(id)a3
{
  v4 = [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:a3 createIfNeeded:0];

  [(UIKeyboardImpl *)self _setCapsLockIfNeeded:v4 event:0];
}

- (void)_setCapsLockIfNeeded:(__GSKeyboard *)a3 event:(__IOHIDEvent *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = GSKeyboardGetModifierState() & 0x40000;
  v7 = v6 == 0;
  if (a4)
  {
    v8 = BKSHIDEventGetKeyboardAttributes();
    IsCapsLockLightOn = ([v8 GSModifierState] >> 18) & 1;
  }

  else
  {
    IsCapsLockLightOn = BKSHIDKeyboardIsCapsLockLightOn();
  }

  if (v6 >> 18 == IsCapsLockLightOn)
  {
    v7 = v6 != 0;
  }

  else
  {
    GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
    GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
    v10 = _UIHardwareKeyboardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[UIKeyboardImpl _setCapsLockIfNeeded:event:]";
      v13 = 1024;
      v14 = (v6 >> 18) ^ 1;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s, toggle capslock state to %d", buf, 0x12u);
    }
  }

  if (self->m_isCapsLocked != v7)
  {
    self->m_isCapsLocked = v7;
    if ([(UIKeyboardImpl *)self isMinimized])
    {
      [(UIKeyboardImpl *)self notifyShiftState];
    }

    else
    {
      [(UIKeyboardImpl *)self setCapsLockSign];
    }
  }
}

- (void)_resetCapsLock
{
  if (_lastUsedKeyboardSenderID)
  {
    BKSHIDKeyboardSetCapsLockActive();
  }

  [(UIKeyboardImpl *)self setCapsLockIfNeeded];
}

- (UIKeyboardImpl)initWithFrame:(CGRect)a3 forCustomInputView:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = UIKeyboardImpl;
  v5 = [(UIView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = qword_1ED498B00++;
    v5->_id = v7;
    if (os_variant_has_internal_diagnostics())
    {
      v27 = _UIKeyboardExtendedLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = "No";
        id = v6->_id;
        if (v4)
        {
          v28 = "Yes";
        }

        *buf = 136315394;
        v35 = v28;
        v36 = 2048;
        v37 = id;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "Impl init forCustomInputView:%s (id=%ld)", buf, 0x16u);
      }
    }

    objc_storeStrong(&qword_1ED498A10, v6);
    _UIKBRT_ResetSystemUptimeOnResume();
    v8 = [[_UIKeyboardStateManager alloc] initWithPresentationDelegateView:v6 forCustomInputView:v4];
    keyboardStateManager = v6->_keyboardStateManager;
    v6->_keyboardStateManager = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    m_keyedLayouts = v6->m_keyedLayouts;
    v6->m_keyedLayouts = v10;

    v12 = +[UIKeyboardCandidateController sharedInstance];
    m_candidateController = v6->m_candidateController;
    v6->m_candidateController = v12;

    [(UIKeyboardCandidateController *)v6->m_candidateController setDelegate:v6->_keyboardStateManager];
    v6->m_returnKeyState = 0;
    v6->m_animateUpdateBars = 1;
    v14 = v6->_keyboardStateManager;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __51__UIKeyboardImpl_initWithFrame_forCustomInputView___block_invoke;
    v31[3] = &unk_1E70F3590;
    v15 = v6;
    v32 = v15;
    [(_UIKeyboardStateManager *)v14 updatePreferencesWithBlock:v31];
    if ([(_UIKeyboardStateManager *)v6->_keyboardStateManager hardwareKeyboardAttached])
    {
      v16 = UIApp;
      v17 = +[UIKeyboardInputModeController sharedInputModeController];
      v18 = [v17 hardwareInputMode];
      v19 = [v18 automaticHardwareLayout];
      [v16 setHardwareKeyboardLayoutName:v19];

      [(UIKeyboardImpl *)v15 setCapsLockIfNeeded];
    }

    [(UIKeyboardImpl *)v15 updateLayout];
    objc_storeWeak(&v15->m_geometryDelegate, 0);
    v15->_shouldUpdateLayoutAutomatically = 1;
    if (!+[UIKeyboard usesInputSystemUI])
    {
      v20 = [_UIKBFeedbackGeneratorPartner feedbackGeneratorWithView:v15];
      m_feedbackGenerator = v15->m_feedbackGenerator;
      v15->m_feedbackGenerator = v20;
    }

    v15->_hideInlineCandidates = 0;
    v22 = [[_UIAssertionController alloc] initWithAssertionSubject:v15];
    assertionController = v15->_assertionController;
    v15->_assertionController = v22;

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v15 selector:sel_hardwareKeyboardAvailabilityDidChange_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

    v15->m_initializationDone = 1;
    [(UIView *)v15 _setSafeAreaInsetsFrozen:1];
    [(UIKeyboardImpl *)v15 performSelector:sel_delayedInit withObject:0 afterDelay:0.0];
    if (os_variant_has_internal_diagnostics())
    {
      v30 = objc_alloc_init(_UIInputTeletypeKeyboard);
      [(UIKeyboardImpl *)v15 setInputTeletypeKeyboard:v30];
    }

    v25 = v15;
  }

  return v6;
}

void __51__UIKeyboardImpl_initWithFrame_forCustomInputView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshRivenPreferences];
  v2 = *(a1 + 32);
  +[UIKeyboardImpl splitProgress];
  [v2 setInSplitKeyboardMode:v3 > 0.00000011920929];
  if (([*(a1 + 32) forCustomInputView] & 1) == 0)
  {
    [*(a1 + 32) setInputModeFromPreferences];
  }

  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v5 preferencesActions];
  *(*(a1 + 32) + 739) = [v4 automaticMinimizationEnabled];
}

- (void)scribbleWillBeginWriting:(id)a3
{
  v7 = a3;
  if ([(UIKeyboardImpl *)self isEmojiPopoverBeingPresented]|| [(UIKeyboardImpl *)self isEmojiPopoverPresented]&& ![(UIKeyboardImpl *)self isEmojiPopoverBeingDismissed])
  {
    v4 = [v7 object];
    v5 = [(UIViewController *)self->_emojiPopoverController view];
    v6 = [v4 isDescendantOfView:v5];

    if ((v6 & 1) == 0)
    {
      [(UIKeyboardImpl *)self dismissEmojiPopoverIfNecessaryWithCompletion:0];
    }
  }
}

- (void)keyboardDidHide:(id)a3
{
  v10 = +[UIPeripheralHost sharedInstance];
  if ([v10 isRotating])
  {
LABEL_4:

    return;
  }

  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  v5 = [v4 keyInputDelegate];
  if (v5)
  {

    goto LABEL_4;
  }

  v6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
  v7 = [v6 candidates];
  v8 = [v7 count];

  if (!v8)
  {
    keyboardStateManager = self->_keyboardStateManager;

    [(_UIKeyboardStateManager *)keyboardStateManager setReceivedCandidatesInCurrentInputMode:0];
  }
}

- (void)detach
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      *buf = 134217984;
      v11 = id;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Impl detach (id=%ld)", buf, 0xCu);
    }
  }

  [(_UIKeyboardStateManager *)self->_keyboardStateManager presentationDelegateWillDetach];
  v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v3 cancelPerformSelectorsWithTarget:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = @"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification";
  v9[1] = @"UIApplicationSuspendedEventsOnlyNotification";
  v9[2] = @"UIApplicationResumedEventsOnlyNotification";
  v9[3] = @"UIApplicationResumedNotification";
  v9[4] = @"UIKeyboardDidHideNotification";
  v9[5] = @"UIContentSizeCategoryDidChangeNotification";
  v9[6] = @"UITextSelectionWillScroll";
  v9[7] = @"UITextSelectionDidScroll";
  v9[8] = @"UITextInputUpdateKeyboardSuppressionNotification";
  v9[9] = @"UITextInputUpdateKeyboardLanguageNotification";
  v9[10] = @"_UIScribbleWillBeginWriting";
  v9[11] = @"UIWindowSceneDidBeginLiveResizeNotification";
  v9[12] = @"UIWindowSceneDidEndLiveResizeNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:13];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

  m_observer = self->m_observer;
  if (m_observer)
  {
    CFRunLoopObserverInvalidate(m_observer);
    CFRelease(self->m_observer);
    self->m_observer = 0;
  }

  if (self->m_isRotating)
  {
    [(UIKeyboardImpl *)self updateLayoutToCurrentInterfaceOrientation];
  }
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v17 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      *buf = 134217984;
      v22 = id;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Impl dealloc (id=%ld)", buf, 0xCu);
    }
  }

  self->m_inDealloc = 1;
  objc_storeWeak(&self->m_geometryDelegate, 0);
  [(UIKeyboardImpl *)self detach];
  [(UIView *)self->m_markedTextOverlay removeFromSuperview];
  [(UIView *)self->m_languageIndicator removeFromSuperview];
  [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
  [(UIKeyboardImpl *)self removeTextChoicePrompt];
  [(UIKeyboardImpl *)self removeTextChoiceUnderlines];
  [(UIKeyboardImpl *)self dismissAutoFillPopover];
  v3 = [(UIViewController *)self->_emojiPopoverController presentingViewController];
  [v3 dismissViewControllerAnimated:0 completion:0];

  emojiPopoverController = self->_emojiPopoverController;
  self->_emojiPopoverController = 0;

  v5 = [(UIViewController *)self->_dictationPopoverController presentingViewController];
  [v5 dismissViewControllerAnimated:0 completion:0];

  dictationPopoverController = self->_dictationPopoverController;
  self->_dictationPopoverController = 0;

  v7 = [(UIViewController *)self->_pressAndHoldPopoverController presentingViewController];
  [v7 dismissViewControllerAnimated:0 completion:0];

  pressAndHoldPopoverController = self->_pressAndHoldPopoverController;
  self->_pressAndHoldPopoverController = 0;

  v9 = [(UIViewController *)self->_numberpadPopoverController presentingViewController];
  [v9 dismissViewControllerAnimated:0 completion:0];

  numberpadPopoverController = self->_numberpadPopoverController;
  self->_numberpadPopoverController = 0;

  self->_emojiPopoverToRestoreAfterRotation = 0;
  self->_numberpadPopoverToRestoreAfterRotation = 0;
  isAttachedHardwareKeyboard = self->_isAttachedHardwareKeyboard;
  self->_isAttachedHardwareKeyboard = 0;

  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    v14 = [v13 layer];
    v15 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [v14 removeObserver:self forKeyPath:@"bounds" context:v15];

    objc_storeWeak(&self->_overlayContainerObserved, 0);
  }

  v16 = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];

  if (v16)
  {
    [(UIKeyboardImpl *)self dismissKeyboardFeedbackAssistantViewController];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v19 = [(UIKeyboardImpl *)self inputTeletypeKeyboard];
    [v19 invalidate];

    [(UIKeyboardImpl *)self setInputTeletypeKeyboard:0];
  }

  v20.receiver = self;
  v20.super_class = UIKeyboardImpl;
  [(UIView *)&v20 dealloc];
}

- (void)clearLayouts
{
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(UIKeyboardImpl *)self autocorrectionController];
  v7 = [v6 autocorrection];
  if (v7)
  {
  }

  else
  {
    v8 = [(UIKeyboardImpl *)self _hasMarkedText];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [(UIKeyboardImpl *)self acceptAutocorrectionWithCompletionHandler:0];
LABEL_7:
  [(UIKeyboardImpl *)self clearInput];
  [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
  [(UIView *)self->m_layout removeFromSuperview];
  m_layout = self->m_layout;
  self->m_layout = 0;

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  m_keyedLayouts = self->m_keyedLayouts;
  self->m_keyedLayouts = v10;
}

- (void)removeFromSuperview
{
  [(_UIKeyboardStateManager *)self->_keyboardStateManager presentationDelegateWillRemoveFromSuperview];
  [(UIKeyboardImpl *)self clearTimers];
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(UIKeyboardImpl *)self deactivateLayout];
    [(UIKeyboardLayout *)self->m_layout resetTouchProcessingForKeyboardChange];
  }

  [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
  v4.receiver = self;
  v4.super_class = UIKeyboardImpl;
  [(UIView *)&v4 removeFromSuperview];
}

- (void)applicationSuspendedEventsOnly:(id)a3
{
  [(UIKeyboardImpl *)self setCaretBlinks:0];
  if (qword_1ED498A40 != -1)
  {
    dispatch_once(&qword_1ED498A40, &__block_literal_global_384);
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 scene];
  v6 = [v5 _effectiveUISettings];
  v7 = [v6 deactivationReasons];

  v8 = -262184;
  if (!_MergedGlobals_73)
  {
    v8 = -1;
  }

  if ((v8 & v7) != 0)
  {
    if ([(UIKeyboardImpl *)self usesCandidateSelection])
    {
      [(UIKeyboardImpl *)self acceptAutocorrectionWithCompletionHandler:0];
    }

    [(UIKeyboardImpl *)self clearChangeTimeAndCount];
  }
}

- (void)applicationResumedEventsOnly:(id)a3
{
  [(UIKeyboardImpl *)self applicationResumed:a3];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
  {
    v4 = UIApp;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 hardwareInputMode];
    v7 = [v6 automaticHardwareLayout];
    [v4 setHardwareKeyboardLayoutName:v7];

    [(UIKeyboardImpl *)self setCapsLockIfNeeded];
  }
}

- (void)_forwardScrollEventToUIHost:(SEL)a3 scrollView:(id)a4
{
  v6 = a4;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.a = *MEMORY[0x1E695EFD0];
  *&v28.c = v7;
  *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v27.a = *&v28.a;
  *&v27.c = v7;
  *&v27.tx = *&v28.tx;
  v8 = [(UIKeyboardImpl *)self contentScrollInitialContentOffset];

  if (v8)
  {
    v9 = [(UIKeyboardImpl *)self contentScrollInitialContentOffset];
    [v9 CGPointValue];
    v11 = v10;
    v13 = v12;

    [v6 contentOffset];
    CGAffineTransformMakeTranslation(&v28, v11 - v14, v13 - v15);
  }

  v16 = [(UIKeyboardImpl *)self environmentScrollInitialContentOffset];

  if (v16)
  {
    v17 = [(UIKeyboardImpl *)self environmentScrollInitialContentOffset];
    [v17 CGPointValue];
    v19 = v18;
    v21 = v20;

    [v6 contentOffset];
    CGAffineTransformMakeTranslation(&v27, v19 - v22, v21 - v23);
  }

  v24 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v26 = v28;
  v25 = v27;
  [v24 forwardScrollEventToUIHost:a3 contentTransform:&v26 environmentTransform:&v25];
}

- (void)selectionScrolling:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"UITextSelectionWillScroll"];

  v8 = [v4 object];

  if (+[UIKeyboard usesInputSystemUI])
  {
    if (v6)
    {
      v7 = sel_textSelectionWillScroll;
    }

    else
    {
      v7 = sel_textSelectionDidScroll;
    }

    [(UIKeyboardImpl *)self _forwardScrollEventToUIHost:v7 scrollView:v8];
  }

  else
  {
    [(UIKeyboardImpl *)self _selectionScrolling:v6 scroller:v8];
  }
}

- (void)_selectionScrolling:(BOOL)a3 scroller:(id)a4
{
  v4 = a3;
  v59 = a4;
  v6 = [(UIKeyboardImpl *)self inputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(UIKeyboardImpl *)self inputDelegate];
    v8 = [v7 textInputView];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[UIKeyboard isKeyboardProcess];
  if (!v59 && v9)
  {
    v59 = v8;
  }

  v10 = [(UIKeyboardImpl *)self window];
  if (!v10 || !v8)
  {
    goto LABEL_50;
  }

  v11 = [v8 isDescendantOfView:v59];

  if (!v11)
  {
    goto LABEL_51;
  }

  m_scrolling = self->m_scrolling;
  self->m_scrolling = v4;
  v13 = [(UIKeyboardImpl *)self keyboardState];
  if (![v13 autofillMode] || !+[UIKeyboard isAutoFillPanelUIEnabled](UIKeyboard, "isAutoFillPanelUIEnabled") || +[UIKeyboard isAlwaysBlockedAutoFillPanelClient](UIKeyboard, "isAlwaysBlockedAutoFillPanelClient"))
  {
    goto LABEL_19;
  }

  if (+[UIKeyboard isAlwaysAllowedAutoFillPanelClient])
  {
    v14 = 0;
  }

  else
  {
    v14 = !+[UIKeyboard isAutoFillPanelInAppsEnabled];
  }

  if (m_scrolling != v4 && (v14 & 1) == 0)
  {
    v13 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v13 documentStateChanged];
LABEL_19:
  }

  v15 = [(UIView *)self->m_autocorrectPrompt superview];

  if (v15)
  {
    v16 = self->m_autocorrectPrompt;
LABEL_24:
    v10 = v16;
    goto LABEL_25;
  }

  v17 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v18 = [v17 superview];

  if (v18)
  {
    v16 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    goto LABEL_24;
  }

  v10 = 0;
LABEL_25:
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    if (m_scrolling != v4 && self->m_scrolling && !+[UIKeyboard usesInputSystemUI])
    {
      v19 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v19 textWillBeginScrolling];
    }

    if (self->m_scrolling || !+[UIKeyboard usesInputSystemUI])
    {
      v20 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v20 updateActivePromptForCandidate:0 displayRects:0 highlightOnly:0];

      v21 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v21 dismissIfPresented];
    }

    if (m_scrolling != v4 && !self->m_scrolling && !+[UIKeyboard usesInputSystemUI])
    {
      v22 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v22 textDidEndScrolling];
    }
  }

  if (!v10)
  {
    goto LABEL_50;
  }

  if (self->m_scrolling)
  {
    v23 = [v10 window];
    v24 = [v23 _isTextEffectsWindow];

    if (v24)
    {
      v25 = [v10 window];
      [v10 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = [v10 superview];
      [v25 convertRect:v34 fromView:{v27, v29, v31, v33}];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = [v10 window];
      [v43 convertRect:v59 toView:{v36, v38, v40, v42}];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      [v10 removeFromSuperview];
      [v10 setFrame:{v45, v47, v49, v51}];
      [v59 addSubview:v10];
    }

    goto LABEL_50;
  }

  v52 = [v10 superview];
  if (v52 == v59)
  {
    goto LABEL_47;
  }

  v53 = [v10 superview];
  v54 = [(UIKeyboardImpl *)self inputDelegate];
  v55 = [v54 textInputView];
  v56 = v55;
  if (v53 == v55)
  {

LABEL_47:
LABEL_48:
    [v10 removeFromSuperview];
    if (!+[UIKeyboard isKeyboardProcess])
    {
      [(UIKeyboardImpl *)self updateCandidateDisplay];
    }

    goto LABEL_50;
  }

  v57 = [v10 window];
  v58 = [v57 _isTextEffectsWindow];

  if (v58)
  {
    goto LABEL_48;
  }

LABEL_50:

LABEL_51:
}

- (void)didCompleteUpdateDefaults
{
  v4 = +[UIPeripheralHost sharedInstance];
  v5 = [v4 isOnScreen];
  if ((v5 & 1) == 0)
  {
    v2 = +[UIPeripheralHost sharedInstance];
    if (([v2 isUndocked] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  if (![v6 keyboardActive])
  {

    if (v5)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = +[UIKeyboard usesInputSystemUI];

  if ((v5 & 1) == 0)
  {
  }

  if (!v7)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 moveToPersistentOffset];
LABEL_10:
  }

  [objc_opt_class() suppressSetPersistentOffset:0];

  [(UIKeyboardImpl *)self updateInputAssistantButtonItems];
}

- (CGRect)frameForKeylayoutName:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v6 = [v5 rtiInputSourceState];

  if (!v6)
  {
    goto LABEL_7;
  }

  if (![v4 isEqualToString:@"split-left"])
  {
    if ([v4 isEqualToString:@"split-right"])
    {
      [v6 rightSplitFrame];
      goto LABEL_6;
    }

LABEL_7:
    v15 = [(NSMutableDictionary *)self->m_keyedLayouts objectForKey:objc_opt_class()];
    [v15 frameForKeylayoutName:v4];
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;

    goto LABEL_8;
  }

  [v6 leftSplitFrame];
LABEL_6:
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
LABEL_8:

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)dragGestureRectInView:(id)a3
{
  m_layout = self->m_layout;
  v5 = a3;
  if (m_layout)
  {
    [(UIKeyboardLayout *)m_layout dragGestureRectInView:v5];
  }

  else
  {
    [(UIView *)self bounds];
    [(UIView *)self convertRect:v5 toView:v10 + v11 + -80.0, v12 + v13 + -80.0, 80.0, 80.0];
  }

  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (void)refreshRivenStateWithTraits:(id)a3 isKeyboard:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v6 = v21;
  byte_1ED4989F2 = (SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v21 && (byte_1ED4989F8 = UIKeyboardTraitsCanSplit(v21), (byte_1ED4989F2 & 1) == 0))
    {
      v9 = 0;
      byte_1ED4989FC = 0;
    }

    else
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v8 = [v7 preferencesActions];
      byte_1ED4989FC = [v8 BOOLForPreferenceKey:*MEMORY[0x1E69D9940]];

      v9 = byte_1ED4989FC;
    }

    byte_1ED498A00 = v9;
    byte_1ED4989F8 = UIKeyboardDeviceSupportsSplit();
    byte_1ED4989FC &= byte_1ED4989F8;
    +[UIKeyboardImpl persistentSplitProgress];
    byte_1ED4989E8 = 1.0 - v10 < 0.00000011920929;
    if (v4)
    {
      byte_1ED4989FC &= UIKeyboardSupportsSplit();
    }

    if (v21)
    {
      v11 = [v21 acceptsSplitKeyboard];
      byte_1ED4989FC &= v11;
      byte_1ED4989FC &= UIKeyboardTraitsCanSplit(v21);
      v12 = [v21 acceptsFloatingKeyboard];
      byte_1ED498A00 &= v12;
      byte_1ED498A00 &= UIKeyboardTraitsCanSplit(v21);
      [v21 floatingKeyboardEdgeInsets];
      qword_1ED498A48 = v13;
      unk_1ED498A50 = v14;
      qword_1ED498A58 = v15;
      unk_1ED498A60 = v16;
    }

    v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v18 = [v17 preferencesActions];
    v19 = [v18 BOOLForPreferenceKey:*MEMORY[0x1E69D9858]];

    v20 = (v19 & 1) != 0 || +[UIKeyboardImpl isFloatingForced];
    byte_1ED498A08 = v20;
    v6 = v21;
  }
}

- (BOOL)rivenSplitLock
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x1E69D9C30]];

  return v4;
}

- (void)setRivenSplitLock:(BOOL)a3
{
  v3 = a3;
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v6 = [v5 handlingRemoteEvent];

  if ((v6 & 1) == 0)
  {
    v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v7 = [v9 preferencesActions];
    v8 = [(UIKeyboardImpl *)self keyboardState];
    [v7 updateKeyboardIsSplit:objc_msgSend(v8 locked:{"splitKeyboardMode"), v3}];
  }
}

+ (BOOL)supportsFloating
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 isKeyboardOnEmbeddedScreen];

  v4 = qword_1ED498A68++;
  if (v4 < 1)
  {
    v7 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    --qword_1ED498A68;
    if ((v7 & v3) != 1)
    {
      return 0;
    }
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    --qword_1ED498A68;
    if ((((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1) & v3) == 0)
    {
      return 0;
    }
  }

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v9 = [v8 preferencesActions];
  v10 = [v9 BOOLForPreferenceKey:*MEMORY[0x1E69D9840]];

  if (!v10)
  {
    return 0;
  }

  v11 = [qword_1ED498A10 textInputTraits];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 acceptsSplitKeyboard];
  }

  else
  {
    v13 = 1;
  }

  if ([v12 keyboardAppearance] == 127 || objc_msgSend(v12, "keyboardType") == 12 || objc_msgSend(v12, "keyboardType") == 125)
  {
    v13 = 0;
  }

  return v13;
}

+ (UIEdgeInsets)requestedFloatingInsets
{
  v2 = *&qword_1ED498A48;
  v3 = unk_1ED498A50;
  v4 = *&qword_1ED498A58;
  v5 = unk_1ED498A60;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (void)performWithoutFloatingLock:(id)a3
{
  v3 = qword_1ED498A10;
  v4 = a3;
  v5 = [v3 isFloatingLocked];
  [qword_1ED498A10 setLockFloating:0];
  v4[2](v4);

  v6 = qword_1ED498A10;

  [v6 setLockFloating:v5];
}

+ (void)setFloating:(BOOL)a3
{
  v3 = a3;
  if ([a1 supportsFloating])
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v6 = [v5 keyboardActive];

    if (v6)
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v8 = [v7 preferencesActions];
      [v8 updateKeyboardIsFloating:v3];

      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v10 = [v9 preferencesActions];
      [v10 synchronizePreferences];
    }

    v11 = byte_1ED498A08;
    byte_1ED498A08 = v3;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    [v13 synchronizePreferences];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v14 = +[UIKeyboardImpl activeInstance];
      v15 = [v14 remoteTextInputPartner];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [v15 forwardKeyboardOperation:a2 object:v16];
    }

    if (v11 != v3)
    {
      v17 = +[UIKeyboardImpl activeInstance];
      [v17 acceptHandwritingCandidate];

      v18 = +[UIKeyboardImpl activeInstance];
      v19 = [v18 isUsingDictationLayout];

      if ((v19 & 1) == 0)
      {
        v20 = +[UIKeyboardImpl activeInstance];
        [v20 recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
      }

      v21 = +[UIKeyboardImpl activeInstance];
      [v21 updateDictationIgnoreKeyboardDidHideNotification];

      v22 = +[UIKeyboardImpl activeInstance];
      [v22 notifyInputSourceStateChangeIfNeeded];
    }

    v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v30 = [v23 systemInputAssistantViewController];

    [v30 prepareForFloating:v3];
    v24 = +[UIKeyboardImpl sharedInstance];
    [v24 updateLayout];

    v25 = +[UIKeyboardImpl activeInstance];
    v26 = [v25 keyboardStateManager];
    [v26 refreshAutofillModeIfNecessary];

    v27 = +[UIKeyboardImpl activeInstance];
    [v27 syncInputManagerToKeyboardState];

    v28 = +[UIKeyboardImpl activeInstance];
    v29 = [v28 keyboardStateManager];
    [v29 refreshSecureCandidatesIfNecessary];
  }
}

+ (void)setFloating:(BOOL)a3 positionedAtDefaultOffsetAnimated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    +[UIKeyboardImpl floatingPersistentOffset];
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [a1 setFloating:v5 positionedAtOffset:v4 animated:{v7, v8}];
}

+ (void)setFloating:(BOOL)a3 positionedAtOffset:(CGPoint)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  [UIKeyboardImpl setFloating:a3];
  v8 = +[UIPeripheralHost sharedInstance];
  [v8 setUndockedWithOffset:v5 animated:{x, y}];
}

+ (double)floatingWidth
{
  if ([a1 floatingIdiom] != 1)
  {
    return 320.0;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 _pointsPerInch];

  v3 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(v3);
  v5 = v4;

  return v5;
}

+ (double)floatingHeight
{
  if ([a1 floatingIdiom] != 1)
  {
    return -1.0;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 _pointsPerInch];

  v3 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(v3);
  v5 = v4;

  return v5;
}

+ (double)floatingScreenWidthToEmulate
{
  if ([a1 floatingIdiom] != 1)
  {
    return 320.0;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 _referenceBounds];
  v4 = v3;

  return v4;
}

+ (double)keyboardWidthForScreen:(id)a3 withOrientation:(int64_t)a4
{
  v6 = a3;
  if ([a1 isFloating])
  {
    [a1 floatingWidth];
    v8 = v7;
  }

  else
  {
    [v6 _boundsForInterfaceOrientation:a4];
    v8 = v9;
  }

  return v8;
}

- (void)beginFloatingTransitionFromPanGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self window];
  if (v5)
  {
    v9 = self;
  }

  else
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v6 inputViews];
    v9 = [v7 inputView];
  }

  v8 = [(UIView *)v9 _rootInputWindowController];
  [v8 beginFloatingTransitionFromPanGestureRecognizer:v4];
}

- (BOOL)shouldAllowTwoFingerSelectionGestureOnView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v4 == self || [(UIView *)v4 isDescendantOfView:self]|| [(UIView *)self isDescendantOfView:v5]))
  {
    v6 = !+[UIKeyboardImpl isFloating];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)setInSplitKeyboardMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardImpl *)self keyboardState];
  [v5 setSplitKeyboardMode:v3];

  v6 = +[UIKeyboardImpl isSplit];
  v7 = [(UIKeyboardLayout *)self->m_layout screenTraits];
  [v7 setIsSplit:v6];
}

- (void)setSplitProgress:(double)a3
{
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout setSplitProgress:a3];
  }
}

+ (void)setPersistentSplitProgress:(double)a3
{
  byte_1ED4989E8 = a3 > 0.5;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v5 = [v4 keyboardActive];

  if (v5)
  {
    v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v7 = [v6 preferencesActions];
    [v7 updateKeyboardIsSplit:a3 > 0.00000011920929 locked:0];
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 setInSplitKeyboardMode:a3 > 0.00000011920929];

  v9 = +[UIKeyboardImpl activeInstance];
  [v9 syncInputManagerToKeyboardState];
}

+ (CGPoint)_normalizedScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [objc_opt_self() mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;

  v10 = +[UIKeyboardSceneDelegate interfaceOrientation];
  if ((v10 - 3) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if ((v10 - 3) >= 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = fmin(fmax(x / v12, 0.0), 1.0);
  v14 = fmin(fmax(fabs(y) / v11, 0.0), 1.0);
  result.y = v14;
  result.x = v13;
  return result;
}

+ (CGPoint)_screenPointFromNormalizedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [objc_opt_self() mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;

  v10 = +[UIKeyboardSceneDelegate interfaceOrientation];
  v11 = fmin(fmax(x, 0.0), 1.0);
  v12 = fmin(fmax(y, 0.0), 1.0);
  if ((v10 - 3) >= 2)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if ((v10 - 3) >= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  v15 = v11 * v13;
  v16 = v12 * v14;
  result.y = v16;
  result.x = v15;
  return result;
}

+ (void)setPersistentOffset:(CGPoint)a3
{
  if ((byte_1ED498A02 & 1) == 0)
  {
    y = a3.y;
    x = a3.x;
    [a1 normalizedPersistentOffset];
    if (v7 != x || v6 != y)
    {
      +[UIKeyboardImpl persistentSplitProgress];
      if (fabs(y) < 6.0 && v9 == 0.0)
      {
        y = 0.0;
      }

      v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v12 = [v11 keyboardActive];

      if (v12)
      {
        if (+[UIKeyboardImpl isFloating])
        {
          [UIKeyboardImpl setFloatingPersistentOffset:x, y];
        }

        else if (byte_1ED4989F8 == 1)
        {
          [a1 _normalizedScreenPoint:{x, y}];
          v14 = v13;
          v16 = v15;
          v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v18 = [v17 preferencesActions];
          [v18 setKeyboardPosition:{v14, v16}];

          v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v20 = [v19 preferencesActions];
          [v20 synchronizePreferences];
        }
      }

      if (y == 0.0 && ([a1 isSplit] & 1) == 0)
      {
        v21 = +[UIKeyboardImpl activeInstance];
        [v21 setRivenSplitLock:0];
      }
    }
  }
}

+ (CGPoint)normalizedPersistentOffsetIgnoringState
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  [v3 keyboardPosition];
  v5 = v4;
  v7 = v6;

  if (v7 >= 0.001)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = v5;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (CGPoint)defaultUndockedOffsetForFloating:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 30.0;
  }

  v4 = 70.0;
  result.y = v4;
  result.x = v3;
  return result;
}

+ (CGPoint)floatingNormalizedPersistentOffset
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 floatingKeyboardPosition];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x1E695EFF8] && v8 == *(MEMORY[0x1E695EFF8] + 8))
  {
    [a1 defaultUndockedOffsetForFloating:1];

    [a1 _normalizedScreenPoint:?];
  }

  else
  {
    v10 = v6;
    v11 = v8;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

+ (CGPoint)floatingPersistentOffset
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 floatingKeyboardPosition];
  v6 = v5;
  v8 = v7;

  [a1 _screenPointFromNormalizedPoint:{v6, v8}];
  result.y = v10;
  result.x = v9;
  return result;
}

+ (void)setFloatingPersistentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v7 = [v6 keyboardActive];

  if (v7)
  {
    [a1 _normalizedScreenPoint:{x, y}];
    v9 = v8;
    v11 = v10;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    [v13 floatingKeyboardPosition];
    v15 = v14;
    v17 = v16;

    if (v15 != v9 || v17 != v11)
    {
      v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v20 = [v19 preferencesActions];
      [v20 setFloatingKeyboardPosition:{v9, v11}];

      v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v21 = [v22 preferencesActions];
      [v21 synchronizePreferences];
    }
  }
}

- (BOOL)hideAccessoryViewsDuringSplit
{
  v3 = +[UIPeripheralHost sharedInstance];
  v4 = [v3 inputViews];
  v5 = [v4 supportsSplit];

  if (v5)
  {
    return 1;
  }

  if (objc_opt_respondsToSelector())
  {
    return [(UIKeyboardLayout *)self->m_layout pinchSplitGestureEnabled]^ 1;
  }

  return 0;
}

- (void)cancelSplitTransition
{
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout showSplitTransitionView:0];
  }
}

- (BOOL)keyboardIsInPencilTextInputMode
{
  v3 = [(UIKeyboardImpl *)self delegateAsResponder];
  if ([v3 _suppressSoftwareKeyboard])
  {
    v4 = [(UIKeyboardImpl *)self _textInputSourceForDelegate:v3]== 3;
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

- (void)_updateTextInputPencilSource
{
  v2 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  [v2 updateEventSource:3 options:5];
}

- (void)updateTextInputKeyboardSource:(id)a3
{
  v10 = a3;
  v4 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  v5 = [v10 objectForKeyedSubscript:@"inputSource"];
  v6 = [v5 intValue];
  v7 = [v10 objectForKeyedSubscript:@"options"];
  [v4 updateEventSource:v6 options:{objc_msgSend(v7, "intValue")}];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 remoteTextInputPartner];
    [v9 forwardKeyboardOperation:a2 object:v10];
  }
}

- (BOOL)_shouldLoadPredictionsBasedOnCurrentTraits
{
  if ([(UIKeyboardImpl *)self predictionFromPreference])
  {
    v5 = [(UIKeyboardImpl *)self prewarmsPredictiveCandidates];
    if (v5)
    {
LABEL_3:
      v6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v7 = [v6 autocorrectionType];

      if (!v5)
      {
      }

      if (v7 == 1)
      {
        goto LABEL_6;
      }

      v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v8 = [v2 isSecureTextEntry] ^ 1;
LABEL_12:

      return v8;
    }

    v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (([v2 disablePrediction] & 1) == 0)
    {
      v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      if (![v3 hidePrediction])
      {
        goto LABEL_3;
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_12;
  }

LABEL_6:
  LOBYTE(v8) = 0;
  return v8;
}

- (id)keyboardViewController
{
  v2 = [(UIView *)self superview];
  v3 = [v2 superview];
  v4 = [(UIView *)v3 __viewDelegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (BOOL)keyboardsExpandedPreference
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x1E69D96F0]];

  return v4;
}

- (void)setAutomaticMinimizationEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIKeyboardImpl *)self automaticMinimizationEnabled]!= a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
    if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->m_geometryDelegate), v8 = [v7 shouldSaveMinimizationState], v7, v6, v8))
    {
      self->m_automaticMinimizationEnabled = v3;
      v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v10 = [v9 handlingRemoteEvent];

      if ((v10 & 1) == 0)
      {
        v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v11 = [v12 preferencesActions];
        [v11 setAutomaticMinimizationEnabled:v3];
      }
    }
  }
}

- (void)saveInputModesPreference:(id)a3
{
  v3 = a3;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v5 preferencesActions];
  [v4 saveInputModes:v3];
}

- (id)inputModePreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 activeInputModeIdentifiers];

  return v3;
}

- (id)inputModeLastUsedPreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputModeInPreference];
  v4 = [v3 identifier];

  return v4;
}

- (void)postInputViewControllerShouldUpdateNotification:(id)a3
{
  v10 = a3;
  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  v5 = [v4 keyInputDelegate];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    if (v10)
    {
      [v6 setObject:v10 forKey:@"UICompatibilityInputViewControllerInputModeKey"];
    }

    v7 = [objc_opt_class() keyboardWindow];
    v8 = [v7 screen];

    if (v8)
    {
      [v6 setObject:v8 forKey:@"UICompatibilityInputViewControllerScreenKey"];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"UICompatibilityInputViewControllerShouldUpdateNotification" object:0 userInfo:v6];
  }
}

- (void)updateForHandBiasChange
{
  if ([(UIKeyboardImpl *)self showsCandidateBar])
  {
    v3 = [(UIKeyboardImpl *)self candidateController];
    [v3 updateStates];
  }
}

- (void)reinitializeAfterInputModeSwitch:(BOOL)a3
{
  v3 = a3;
  if ([(UIKeyboardImpl *)self isMinimized]&& ![(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if ([v5 isSecureTextEntry])
    {
    }

    else
    {
      v6 = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];

      if (!v6)
      {
        self->m_updateLayoutOnShowKeyboard = 1;
        if (!v3)
        {
          return;
        }

        goto LABEL_7;
      }
    }
  }

  [(UIKeyboardImpl *)self _updateLayoutAndLocalizedKeys];
  [(UIKeyboardImpl *)self updateShowCandidateBar];
  if (!v3)
  {
    return;
  }

LABEL_7:

  [(UIKeyboardImpl *)self updateInputModeIndicatorOnSingleKeyOnly:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  emojiPopoverController = self->_emojiPopoverController;
  v6 = [v4 presentedViewController];

  if (emojiPopoverController == v6 && (-[UIKeyboardEmojiPopoverController layout](self->_emojiPopoverController, "layout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasActiveKeys], v7, v8) && !+[UIKeyboard isRemoteEmojiCollectionViewEnabled](UIKeyboard, "isRemoteEmojiCollectionViewEnabled"))
  {
    v36 = MEMORY[0x1E69E58C0];
    v37 = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
    [v36 cancelPreviousPerformRequestsWithTarget:v37 selector:sel_deactivateActiveKeys object:0];

    v38 = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
    [v38 performSelector:sel_deactivateActiveKeys withObject:0 afterDelay:0.0];

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  numberpadPopoverController = self->_numberpadPopoverController;
  v11 = [v4 presentedViewController];
  if (numberpadPopoverController != v11)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v4 _dismissalInteractionLocation];
    v15 = v14;
    v16 = v13;
    if (v14 != 1.79769313e308 || v13 != 1.79769313e308)
    {
      v18 = [(UIKeyboardImpl *)self inputDelegateManager];
      v11 = [v18 textInputView];

      [(UIKeyboardNumberpadPopoverController *)v11 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [objc_opt_class() keyboardWindow];
      [(UIKeyboardNumberpadPopoverController *)v11 convertRect:v27 toView:v20, v22, v24, v26];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v41.origin.x = v29;
      v41.origin.y = v31;
      v41.size.width = v33;
      v41.size.height = v35;
      v40.x = v15;
      v40.y = v16;
      if (CGRectContainsPoint(v41, v40))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__UIKeyboardImpl_presentationControllerShouldDismiss___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

LABEL_6:
    }
  }

  return v9;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = a3;
  v4 = [v9 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 presentedViewController];
    if (self->_dictationPopoverController == v7)
    {
      v8 = +[UIDictationController activeInstance];
      [v8 stopDictation];
    }

    [(UIKeyboardImpl *)self cleanupKeyboardPopover:v7];

    v6 = v9;
  }
}

- (BOOL)isEmojiPopoverVisibleOrDismissing
{
  v2 = [(UIViewController *)self->_emojiPopoverController presentingViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canPresentEmojiPopover
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByOneness]|| ![(UIKeyboardImpl *)self isMinimized])
  {
    return 0;
  }

  v3 = [(UIKeyboardImpl *)self inputDelegate];
  if (v3 && UIKeyboardIsEmojiInputModeActive() && (_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    if (_UIApplicationIsEmojiPoster())
    {
      v4 = +[UIKeyboard isEmojiSearchEnabledInEmojiPoster];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPresentOrDismissEmojiPopover
{
  v3 = [(UIKeyboardImpl *)self isMinimized];
  if (v3)
  {
    v3 = [(UIKeyboardImpl *)self isCurrentEditResponderInEditingMode];
    if (v3)
    {
      if (UIKeyboardIsEmojiInputModeActive())
      {
        LOBYTE(v3) = 1;
      }

      else
      {

        LOBYTE(v3) = [(UIKeyboardImpl *)self isEmojiPopoverPresented];
      }
    }
  }

  return v3;
}

- (void)presentEmojiPopoverViaTrigger:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else if ([(UIKeyboardImpl *)self canPresentEmojiPopover])
  {
    [(UIKeyboardImpl *)self dismissDictationPopoverAndCancelDictation];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__UIKeyboardImpl_presentEmojiPopoverViaTrigger_completion___block_invoke;
    v18[3] = &unk_1E70F0F78;
    v19 = v7;
    [(UIKeyboardImpl *)self presentKeyboardPopoverWithType:0 keyString:0 completion:v18];
    v8 = [(UIKeyboardImpl *)self inputDelegate];
    if (v8)
    {
      v9 = [(UIKeyboardImpl *)self inputDelegateManager];
      v10 = [v9 selectedTextRange];
      v11 = [v10 start];

      v12 = [v8 tokenizer];
      v13 = [v12 positionFromPosition:v11 toBoundary:0 inDirection:1];

      if (v13)
      {
        v14 = [v8 textRangeFromPosition:v13 toPosition:v11];
        v15 = [(UIKeyboardImpl *)self inputDelegateManager];
        v16 = [v15 textInRange:v14];

        v17 = [v16 _containsEmoji];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    [UIKBAnalyticsDispatcher emojiPopoverSummoned:v6 appendsEmoji:v17];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

uint64_t __59__UIKeyboardImpl_presentEmojiPopoverViaTrigger_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_handleAutoFillPopoverCommandWithType:(int)a3 action:(SEL)a4
{
  v5 = *&a3;
  if ((a3 - 3) >= 7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIKeyboardImpl.m" lineNumber:3212 description:{@"Invalid parameter not satisfying: %@", @"isAutoFillKeyboardPopoverType(type)"}];
  }

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v7 assertNeedsAutofillUI];

    v19 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v19 forwardInputDestinationEventToUIHost:a4];
  }

  else if (!+[UIKeyboard useAutoFillUIRTIInterfaceForIphone])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v9 = [v8 localAuthenticationObserver];

    if (([v9 localAuthenticationPresentedOrBeingRecoveredFrom] & 1) == 0)
    {
      objc_initWeak(&location, self);
      if (getAFUIPanelClass())
      {
        if (!self->_autoFillPanel)
        {
          v10 = objc_alloc_init(getAFUIPanelClass());
          autoFillPanel = self->_autoFillPanel;
          self->_autoFillPanel = v10;
        }

        if (+[UIKeyboard inputUIOOP])
        {
          v12 = [(UIKeyboardImpl *)self inputSystemSourceSession];
          v13 = [v12 documentTraits];
          v14 = [v13 copy];
        }

        else
        {
          v14 = [MEMORY[0x1E69C6F40] currentRTIDocumentTraitsForAutoFillPanel];
        }

        v15 = [(_UIKeyboardStateManager *)self->_keyboardStateManager _rtiDocumentStateForAutoFillPopover];
        [v14 setAutofillMode:{-[UIKeyboardImpl _autoFillModeForPopoverType:](self, "_autoFillModeForPopoverType:", v5)}];
        [v14 setExplicitAutoFillMode:{-[UIKeyboardImpl _isAutoFillPopoverTypeExplicit:](self, "_isAutoFillPopoverTypeExplicit:", v5)}];
        v16 = self->_autoFillPanel;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __63__UIKeyboardImpl__handleAutoFillPopoverCommandWithType_action___block_invoke;
        v20[3] = &unk_1E7116BF0;
        objc_copyWeak(&v21, &location);
        [(AFUIPanel *)v16 displayForDocumentTraits:v14 documentState:v15 textOperationsHandler:v20];
        objc_destroyWeak(&v21);
      }

      objc_destroyWeak(&location);
    }
  }
}

void __63__UIKeyboardImpl__handleAutoFillPopoverCommandWithType_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained keyboardStateManager];
  [v4 _performTextOperationsForAutoFill:v3];

  [WeakRetained dismissAutoFillPopover];
}

- (int64_t)_autoFillModeForPopoverType:(int)a3
{
  if ((a3 - 4) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18A680238[a3 - 4];
  }
}

- (void)cleanupKeyboardPopover:(id)a3
{
  v19 = a3;
  v4 = [(UIKeyboardImpl *)self inputDelegate];
  v5 = [v4 textInputView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 keyboardSceneDelegate];
    [v7 destroyKeyboardWindowIfNecessary];
  }

  dictationPopoverController = self->_dictationPopoverController;
  if (dictationPopoverController == v19)
  {
    self->_dictationPopoverController = 0;

    v12 = *(MEMORY[0x1E695F050] + 16);
    self->m_editMenuFrame.origin = *MEMORY[0x1E695F050];
    self->m_editMenuFrame.size = v12;
    if (![(UIKeyboardImpl *)self isDictationMenuPresented])
    {
      if (+[UIDictationController isRunning])
      {
        v13 = +[UIDictationController sharedInstance];
        v14 = [v13 isDictationPaused];

        if ((v14 & 1) == 0)
        {
          v15 = +[UIDictationController sharedInstance];
          [v15 stopDictation];
        }
      }
    }

    v16 = +[UIDictationView activeInstance];
    [v16 returnToKeyboard];

    goto LABEL_13;
  }

  v9 = 880;
  pressAndHoldPopoverController = self->_pressAndHoldPopoverController;
  if (pressAndHoldPopoverController == v19)
  {
    goto LABEL_7;
  }

  emojiPopoverController = self->_emojiPopoverController;
  if (emojiPopoverController != v19)
  {
    v9 = 584;
    pressAndHoldPopoverController = self->_numberpadPopoverController;
    if (pressAndHoldPopoverController != v19)
    {
LABEL_13:
      [(UIKeyboardImpl *)self _requestInputManagerSync];
      goto LABEL_14;
    }

LABEL_7:
    *(&self->super.super.super.isa + v9) = 0;

    goto LABEL_13;
  }

  self->_emojiPopoverController = 0;

  v17 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v18 = [v17 keyboardType];

  if (v18 != 124)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIKeyboardLayout *)self->m_layout reloadCurrentKeyplane];
    }

    [(UIKeyboardImpl *)self dismissDictationPopoverAndCancelDictation];
    [(UIKeyboardImpl *)self dismissPressAndHoldPopover];
    [(UIKeyboardImpl *)self dismissInputModeIndicator];
    goto LABEL_13;
  }

  [v4 resignFirstResponder];
LABEL_14:
}

- (void)representDictationMenu
{
  [(UIDelayedAction *)self->m_dictationMenuAction cancel];
  m_dictationMenuAction = self->m_dictationMenuAction;
  self->m_dictationMenuAction = 0;

  [(UIKeyboardImpl *)self touchDictationMenuTimer:0];
  v4 = [(UIKeyboardImpl *)self candidateController];
  v7 = [v4 loadInlineCandidateView];

  if ((!v7 || [v7 isHidden]) && !self->m_autocorrectPrompt)
  {
    v5 = [(UIKeyboardImpl *)self inlineTextCompletionController];
    v6 = [v5 hasPrompt];

    if ((v6 & 1) == 0)
    {
      [(UIKeyboardImpl *)self _presentDictationMenuIfAllowed];
    }
  }
}

- (void)_presentDictationMenuIfAllowed
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(UIKeyboardImpl *)self inputDelegateManager];
    v5 = [v3 inputSystemSourceSession];

    if (v5)
    {
      v4 = [v5 textOperations];
      [v4 setEditingActionSelector:sel__presentDictationMenuIfAllowed];
      [v5 flushOperations];
    }
  }

  else if ([(UIKeyboardImpl *)self canPresentDictationMenuWithAnimationStyle:2])
  {

    [(UIKeyboardImpl *)self presentDictationMenuWithAnimationStyle:2];
  }
}

- (void)_clearDictationMenuTimer:(BOOL)a3
{
  v3 = a3;
  [(UIDelayedAction *)self->m_dictationMenuAction cancel];
  m_dictationMenuAction = self->m_dictationMenuAction;
  self->m_dictationMenuAction = 0;

  if (v3)
  {
    v6 = [(UIKeyboardImpl *)self _editMenuAssistant];
    [v6 hideSelectionCommands];
  }

  if (self->m_presentingKeyboardMenuType != 2)
  {

    [(UIKeyboardImpl *)self dismissDictationMenu];
  }
}

- (void)touchDictationMenuTimer:(BOOL)a3
{
  v3 = a3;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    if (v3)
    {
      [(UIKeyboardImpl *)self dismissDictationMenu];
    }

    if (+[UIDictationController isRunning])
    {
      m_dictationMenuAction = self->m_dictationMenuAction;
      if (m_dictationMenuAction)
      {

        [(UIDelayedAction *)m_dictationMenuAction touch];
      }

      else
      {
        v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v7 = [v6 preferencesActions];
        v8 = [v7 valueForPreferenceKey:@"DictationMenuReturnPauseInterval"];
        [v8 floatValue];
        v10 = v9;

        v11 = [[UIDelayedAction alloc] initWithTarget:self action:sel_representDictationMenu userInfo:0 delay:v10];
        v12 = self->m_dictationMenuAction;
        self->m_dictationMenuAction = v11;
      }
    }
  }
}

- (void)showDictationMenuIfNeeded
{
  if (+[UIDictationController isListening])
  {

    [(UIKeyboardImpl *)self touchDictationMenuTimer];
  }
}

- (void)hideDictationMenuIfNeeded:(BOOL)a3
{
  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    if (+[UIDictationController isRunning])
    {

      [(UIKeyboardImpl *)self clearDictationMenuTimer];
    }

    else if (!a3 && self->m_presentingKeyboardMenuType == 2)
    {

      [(UIKeyboardImpl *)self dismissDictationMenu];
    }
  }
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v5 = [(UIKeyboardImpl *)self keyboardMenuElements:a3];
  v6 = [UIMenu menuWithChildren:v5];

  return v6;
}

- (id)stopDictationMenuElementsForTextInputView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self inputDelegate];
  v6 = [v5 textInputView];

  if (v6 == v4)
  {
    v7 = [(UIKeyboardImpl *)self stopDictationMenuElementsShowingTitle:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)stopDictationMenuElementsShowingTitle:(BOOL)a3
{
  v3 = a3;
  v12[2] = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    if (v3)
    {
      v4 = _UINSLocalizedStringWithDefaultValue(@"Stop", @"Stop");
    }

    else
    {
      v4 = &stru_1EFB14550;
    }

    v6 = _UIImageWithName(@"mic_badge_xmark");
    v7 = [UIAction actionWithTitle:v4 image:v6 identifier:0 handler:&__block_literal_global_266_0];

    [v7 setAccessibilityIdentifier:@"stopDictationMenuElementIdentifier"];
    [v7 setAccessibilityLabel:@"stopDictationMenuElement"];
    [v7 _setPreferredDisplayMode:1];
    if (+[UIDictationUtilities shouldAddDeleteMenuElement])
    {
      v8 = _UIImageWithName(@"delete_landscape");
      v9 = [UIAction actionWithTitle:&stru_1EFB14550 image:v8 identifier:0 handler:&__block_literal_global_278_0];

      [v9 setAccessibilityIdentifier:@"deleteSelectedTextMenuElementIdentifier"];
      [v9 setAccessibilityLabel:@"deleteSelectedTextMenuElement"];
      v12[0] = v7;
      v12[1] = v9;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    }

    else
    {
      v11 = v7;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __56__UIKeyboardImpl_stopDictationMenuElementsShowingTitle___block_invoke()
{
  v0 = +[UIDictationController sharedInstance];
  [v0 setReasonType:29];

  v1 = +[UIDictationController activeInstance];
  [v1 stopDictation];
}

void __56__UIKeyboardImpl_stopDictationMenuElementsShowingTitle___block_invoke_2()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 deleteBackward];
}

- (void)updateDictationIgnoreKeyboardDidHideNotification
{
  if (+[UIDictationController isRunning])
  {
    v2 = +[UIDictationController activeInstance];
    [v2 setIgnoreKeyboardDidHideNotification:1];
  }
}

- (void)willDismissEditMenu
{
  v4 = +[UIDictationController activeInstance];
  if ([v4 shouldSuppressSoftwareKeyboard] && -[UIKeyboardImpl isDictationMenuPresented](self, "isDictationMenuPresented"))
  {
    m_presentingKeyboardMenuType = self->m_presentingKeyboardMenuType;

    if (m_presentingKeyboardMenuType != 2)
    {
      return;
    }

    v4 = +[UIDictationController activeInstance];
    [v4 resignFirstResponderWhenIdleIfNeeded];
  }
}

- (id)keyboardMenuElements
{
  v35 = *MEMORY[0x1E69E9840];
  m_keyboardMenuType = self->m_keyboardMenuType;
  if (m_keyboardMenuType == 4)
  {
    if (+[UIDictationController isRunning])
    {
      v20 = _UINSLocalizedStringWithDefaultValue(@"Undo", @"Undo");
      v21 = [UIImage systemImageNamed:@"arrow.uturn.backward"];
      v22 = [UIAction actionWithTitle:v20 image:v21 identifier:0 handler:&__block_literal_global_299_0];

      [v22 _setPreferredDisplayMode:1];
      v32 = v22;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];

      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (m_keyboardMenuType == 2)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    v12 = [v11 enabledDictationLanguages];

    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      v4 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = UIKeyboardLocalizedDictationDisplayName(*(*(&v27 + 1) + 8 * i));
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_2;
          v26[3] = &unk_1E70F4708;
          v26[4] = self;
          v18 = [UIAction actionWithTitle:v17 image:0 identifier:0 handler:v26];

          if (v4)
          {
            v19 = [v4 arrayByAddingObject:v18];

            v4 = v19;
          }

          else
          {
            v33 = v18;
            v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v14);
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    if ([v4 count])
    {
      v23 = self->m_keyboardMenuType;
      goto LABEL_28;
    }

LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  if (m_keyboardMenuType != 1)
  {
LABEL_20:
    v4 = MEMORY[0x1E695E0F0];
    goto LABEL_29;
  }

  if (+[UIDictationController isRunning])
  {
    v4 = [(UIKeyboardImpl *)self stopDictationMenuElementsShowingTitle:0];
    v5 = [(UIKeyboardImpl *)self activeDictationLanguage];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(UIKeyboardImpl *)self activeDictationLanguage];
      v8 = UIKeyboardLocalizedDictationDisplayName(v7);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __38__UIKeyboardImpl_keyboardMenuElements__block_invoke;
      v31[3] = &unk_1E70F4708;
      v31[4] = self;
      v9 = [UIAction actionWithTitle:v8 image:0 identifier:0 handler:v31];

      v10 = [v4 arrayByAddingObject:v9];

      v4 = v10;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  if (![v4 count])
  {
    goto LABEL_27;
  }

  v23 = self->m_keyboardMenuType;
LABEL_28:
  self->m_presentingKeyboardMenuType = v23;
LABEL_29:

  return v4;
}

void __38__UIKeyboardImpl_keyboardMenuElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 664) = 2;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, v4);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__132;
  v21 = __Block_byref_object_dispose__132;
  v22 = 0;
  v5 = objc_loadWeakRetained(&location);
  v6 = [MEMORY[0x1E696ADC8] mainQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_286;
  v13 = &unk_1E7116C18;
  v14 = *(a1 + 32);
  objc_copyWeak(&v16, &location);
  v15 = &v17;
  v7 = [v5 addObserverForName:@"UIDictationControllerDictationDidFinish" object:0 queue:v6 usingBlock:&v10];
  v8 = v18[5];
  v18[5] = v7;

  v9 = [UIDictationController activeInstance:v10];
  [v9 cancelDictation];

  _Block_object_dispose(&v17, 8);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_286(uint64_t a1)
{
  [*(a1 + 32) presentKeyboardMenu:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 enabledDictationLanguages];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_3;
  v19[3] = &unk_1E710DCF0;
  v6 = v3;
  v20 = v6;
  v7 = [v5 indexOfObjectPassingTest:v19];

  v8 = [*(a1 + 32) _editMenuAssistant];
  [v8 hideSelectionCommands];

  [*(a1 + 32) dismissDictationMenu];
  v9 = +[UIDictationController sharedInstance];
  [v9 setReasonType:28];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = +[UIDictationController sharedInstance];
    v16 = +[UIKeyboardInputModeController sharedInputModeController];
    v17 = [v16 enabledDictationLanguages];
    v18 = [v17 objectAtIndexedSubscript:v7];
    [v12 switchToDictationLanguage:v18];

    goto LABEL_7;
  }

  v10 = +[UIDictationController activeInstance];
  [v10 startDictation];

  if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v13 = [v6 title];
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 enabledDictationLanguages];
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Something goes wrong, could not find dictation lauguage (%@) from enabledDictationLanguages: %@", buf, 0x16u);
    goto LABEL_5;
  }

  v11 = *(__UILogGetCategoryCachedImpl("Assert", &kbLineSeparator_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = [v6 title];
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 enabledDictationLanguages];
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Something goes wrong, could not find dictation lauguage (%@) from enabledDictationLanguages: %@", buf, 0x16u);
LABEL_5:

LABEL_7:
  }
}

uint64_t __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 title];
  v5 = UIKeyboardLocalizedDictationDisplayName(v3);

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __38__UIKeyboardImpl_keyboardMenuElements__block_invoke_297()
{
  v0 = +[UIDictationController activeInstance];
  [v0 _performDictationUndo];
}

- (void)presentDictationMenuTip:(id)a3
{
  v4 = a3;
  v6 = [v4 objectForKeyedSubscript:@"title"];
  v5 = [v4 objectForKeyedSubscript:@"description"];

  [(UIKeyboardImpl *)self presentDictationMenuTipWithTitle:v6 description:v5];
}

- (void)presentDictationMenuTipWithTitle:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIKeyboard isKeyboardProcess]&& ![(UIKeyboardImpl *)self showingEmojiSearch])
  {
    v17 = +[UIKeyboardImpl activeInstance];
    v18 = [v17 inputDelegateManager];
    v19 = [v18 inputSystemSourceSession];

    if (v19)
    {
      v20 = [v19 textOperations];
      v21 = [MEMORY[0x1E695DF90] dictionary];
      v22 = NSStringFromSelector(sel_presentDictationMenuTip_);
      [v21 setObject:v22 forKeyedSubscript:@"selector"];

      [v21 setObject:v6 forKeyedSubscript:@"title"];
      [v21 setObject:v7 forKeyedSubscript:@"description"];
      [v20 setCustomInfoType:0x1EFB7C8F0];
      [v20 setCustomInfo:v21];
      [v19 flushOperations];
    }
  }

  else
  {
    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v9 = [v8 preferencesActions];
    v10 = [MEMORY[0x1E695DF00] date];
    [v9 updateDictationTipLastShownDate:v10];

    v11 = [(UIKeyboardImpl *)self _editMenuAssistant];
    [v11 hideSelectionCommands];

    [(UIKeyboardImpl *)self dismissDictationMenu];
    objc_initWeak(&location, self);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __63__UIKeyboardImpl_presentDictationMenuTipWithTitle_description___block_invoke;
    v26 = &unk_1E70F7450;
    objc_copyWeak(&v27, &location);
    v12 = [UIAction actionWithHandler:&v23];
    [(UIKeyboardImpl *)self configureTipViewWithTitle:v6 description:v7 closeButtonAction:v12, v23, v24, v25, v26];

    v13 = [(UIKeyboardImpl *)self inputDelegate];
    v14 = [v13 interactionAssistant];
    v15 = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
    [v14 presentMenuForInputUI:v15 preferredArrowDirection:0];

    self->m_keyboardMenuType = 3;
    m_tipView = self->m_tipView;
    self->m_tipView = 0;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __63__UIKeyboardImpl_presentDictationMenuTipWithTitle_description___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissDictationTip];
    WeakRetained = v2;
  }
}

- (void)presentEducationTipWithTitle:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIKeyboard isInlineTextCompletionEducationUIEnabled](UIKeyboard, "isInlineTextCompletionEducationUIEnabled") && !+[UIKeyboard isKeyboardProcess])
  {
    v8 = [(UIKeyboardImpl *)self _editMenuAssistant];
    [v8 hideSelectionCommands];

    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__UIKeyboardImpl_presentEducationTipWithTitle_description___block_invoke;
    v17 = &unk_1E70F7450;
    objc_copyWeak(&v18, &location);
    v9 = [UIAction actionWithHandler:&v14];
    [(UIKeyboardImpl *)self configureTipViewWithTitle:v6 description:v7 closeButtonAction:v9, v14, v15, v16, v17];

    v10 = [(UIKeyboardImpl *)self inputDelegate];
    v11 = [v10 interactionAssistant];
    v12 = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
    [v11 presentMenuForInputUI:v12 preferredArrowDirection:1];

    self->m_keyboardMenuType = 5;
    m_tipView = self->m_tipView;
    self->m_tipView = 0;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __59__UIKeyboardImpl_presentEducationTipWithTitle_description___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissEducationTip];
    WeakRetained = v2;
  }
}

- (CGRect)overrideEditMenuTargetRectForConfiguration:(id)a3
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  v8 = [a3 identifier];
  v9 = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = +[UIDictationController sharedInstance];
    v12 = [v11 dictationTipController];
    v13 = [v12 activeTipType];

    if (v13 == 7)
    {
      v17 = [(UIKeyboardImpl *)self inputDelegate];
      v19 = [v17 textInputView];
      [v19 bounds];
      v4 = v27;
      v6 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_6;
    }

    if (v13 == 3)
    {
      v14 = [(UIKeyboardImpl *)self textInteractionAssistant];
      v15 = [v14 activeSelection];
      v16 = [v15 selectedRange];
      v17 = [v16 start];

      v18 = [(UIKeyboardImpl *)self inputDelegate];
      v19 = [v18 positionFromPosition:v17 inDirection:3 offset:1];

      v20 = [(UIKeyboardImpl *)self inputDelegate];
      v21 = [v20 textRangeFromPosition:v19 toPosition:v17];

      v22 = [(UIKeyboardImpl *)self inputDelegate];
      [v22 firstRectForRange:v21];
      v4 = v23;
      v5 = v24;
      v7 = v25;
      v6 = v26;

LABEL_6:
    }
  }

  v28 = v4;
  v29 = v5;
  v30 = v7;
  v31 = v6;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)configureTipViewWithTitle:(id)a3 description:(id)a4 closeButtonAction:(id)a5
{
  v66[12] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  [v10 setFont:v11];

  [v10 setNumberOfLines:0];
  [v10 setText:v9];

  [v10 setTextAlignment:0];
  [v10 setPreferredMaxLayoutWidth:180.0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = objc_opt_new();
  v13 = +[UIColor secondaryLabelColor];
  [v12 setTextColor:v13];

  v14 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  [v12 setFont:v14];

  [v12 setNumberOfLines:0];
  [v12 setText:v8];

  [v12 setTextAlignment:0];
  [v12 setPreferredMaxLayoutWidth:180.0];
  v15 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_opt_new();
  [v16 addAction:v7 forControlEvents:0x2000];

  v17 = [UIImage systemImageNamed:@"xmark"];
  v18 = +[UIColor quaternaryLabelColor];
  v19 = [v17 imageWithTintColor:v18 renderingMode:1];
  v20 = [UIImageSymbolConfiguration configurationWithWeight:6];
  v64 = [v19 imageByApplyingSymbolConfiguration:v20];

  [v16 setImage:v64 forState:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = objc_opt_new();
  [(UIView *)v63 setLayoutMargins:14.0, 13.0, 16.0, 13.0];
  [(UIView *)v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v63 addSubview:v10];
  [(UIView *)v63 addSubview:v15];
  [(UIView *)v63 addSubview:v16];
  v21 = [(UIView *)v63 layoutMarginsGuide];
  v47 = MEMORY[0x1E69977A0];
  v62 = [v10 topAnchor];
  v61 = [v21 topAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v66[0] = v60;
  v59 = [v10 leadingAnchor];
  v58 = [v21 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v66[1] = v57;
  v56 = [v10 widthAnchor];
  v55 = [v15 widthAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:-18.0];
  v66[2] = v54;
  v53 = [v16 topAnchor];
  v51 = [v10 topAnchor];
  v50 = [v53 constraintEqualToAnchor:v51];
  v66[3] = v50;
  v49 = [v16 leftAnchor];
  v48 = [v10 rightAnchor];
  v46 = [v49 constraintEqualToAnchor:v48];
  v66[4] = v46;
  v45 = [v16 heightAnchor];
  v44 = [v45 constraintEqualToConstant:18.0];
  v66[5] = v44;
  v41 = [v16 widthAnchor];
  v52 = v16;
  v40 = [v16 heightAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v66[6] = v39;
  v22 = v21;
  v42 = v21;
  v38 = [v21 trailingAnchor];
  v37 = [v16 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v66[7] = v36;
  v35 = [v15 topAnchor];
  v34 = [v10 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:4.0];
  v66[8] = v33;
  v43 = v15;
  v23 = [v15 leadingAnchor];
  v24 = [v10 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v66[9] = v25;
  v26 = [v10 widthAnchor];
  v27 = [v26 constraintGreaterThanOrEqualToConstant:180.0];
  v66[10] = v27;
  v28 = [v22 bottomAnchor];
  v29 = [v15 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v66[11] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:12];
  [v47 activateConstraints:v31];

  m_tipView = self->m_tipView;
  self->m_tipView = v63;
}

- (void)presentKeyboardMenu:(int)a3
{
  self->m_keyboardMenuType = a3;
  [(UIKeyboardImpl *)self touchDictationMenuTimer:0];
  v4 = [(UIKeyboardImpl *)self inputDelegate];
  v5 = [v4 interactionAssistant];
  v6 = [v5 _editMenuAssistant];
  v7 = [v6 _selectionView];
  v8 = [v7 window];

  if (v8)
  {
    v9 = [(UIKeyboardImpl *)self inputDelegate];
    v10 = [v9 interactionAssistant];
    [v10 presentMenuForInputUI:0 preferredArrowDirection:0];

    m_editMenuInteraction = self->m_editMenuInteraction;
    self->m_editMenuInteraction = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (self->m_editMenuInteraction || (v12 = [[UIEditMenuInteraction alloc] initWithDelegate:self], v13 = self->m_editMenuInteraction, self->m_editMenuInteraction = v12, v13, [(UIEditMenuInteraction *)self->m_editMenuInteraction setPresentsContextMenuAsSecondaryAction:0], self->m_editMenuInteraction))
  {
    v14 = [(UIKeyboardImpl *)self inputDelegate];
    v15 = [v14 textInputView];
    [v15 addInteraction:self->m_editMenuInteraction];

    v16 = [(UIKeyboardImpl *)self inputDelegateManager];
    v17 = [(UIKeyboardImpl *)self inputDelegateManager];
    v18 = [v17 selectedTextRange];
    v19 = [v18 start];
    [v16 caretRectForPosition:v19];
    v22 = v21 + v20 * 0.5;
    v25 = v24 + v23 * 0.5;

    m_editMenuInteraction = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v22, v25];
    [m_editMenuInteraction set_ignoresPassthroughInView:1];
    [(UIEditMenuInteraction *)self->m_editMenuInteraction presentEditMenuWithConfiguration:m_editMenuInteraction];
    goto LABEL_6;
  }

LABEL_7:
  self->m_keyboardMenuType = 0;
}

- (void)presentDictationPopover
{
  if (+[UIKeyboard isMajelEnabled])
  {
    [(UIKeyboardImpl *)self dismissInputModeIndicator];

    [(UIKeyboardImpl *)self presentKeyboardPopoverWithType:1 keyString:0 completion:0];
  }
}

- (BOOL)canPresentDictationMenuWithAnimationStyle:(int64_t)a3
{
  if (!+[UIDictationController isRunning])
  {
    LOBYTE(v21) = 0;
    return v21;
  }

  v5 = [(UIKeyboardImpl *)self textInteractionAssistant];
  v6 = [v5 _caretView];

  v7 = [v6 window];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 bounds];
  [v6 convertRect:0 toView:?];
  v32.origin.x = v16;
  v32.origin.y = v17;
  v32.size.width = v18;
  v32.size.height = v19;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  if (CGRectIntersectsRect(v31, v32))
  {
    v20 = 0;
  }

  else
  {
    v20 = !+[UIKeyboard isInlineDictationIndicatorEnabled];
  }

  if (self->m_editMenuInteraction)
  {
    v22 = +[UIMenuController sharedMenuController];
    v23 = [v22 isMenuVisible];

    m_editMenuInteraction = self->m_editMenuInteraction;
    if (m_editMenuInteraction)
    {
      v25 = [(UIEditMenuInteraction *)m_editMenuInteraction isDisplayingMenu];
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 0;
  }

  v26 = [(UIKeyboardImpl *)self inputDelegate];
  v27 = [v26 interactionAssistant];
  v25 = [v27 isDisplayingMenu];

LABEL_11:
  if (v20 & 1) != 0 || self->m_dictationIndicatorAssertion || (v28 = a3 != 1, (([(UIKeyboardImpl *)self hasAutocorrectPrompt]| v28 & (v25 | v23))) || +[UIKeyboard isInlineDictationIndicatorEnabled]&& [(UIKeyboardImpl *)self inputModeSwitcherVisible])
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v30 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    v21 = [v30 showingPromptsIncludingDictationChoices] ^ 1;
  }

  return v21;
}

- (void)presentDictationMenuWithAnimationStyle:(int64_t)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (self->m_keyboardMenuType != 3)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Dictation Menu should not be presented in keyboard process", v15, 2u);
      }
    }

    else if (+[UIKeyboard isInlineDictationIndicatorEnabled](UIKeyboard, "isInlineDictationIndicatorEnabled") && (-[UIKeyboardImpl inputDelegateManager](self, "inputDelegateManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 selectionDisplayInteraction], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isActivated"), v6, v5, v7))
    {
      if ([(UIKeyboardImpl *)self canPresentDictationMenuWithAnimationStyle:a3])
      {
        v8 = [(UIKeyboardImpl *)self inputDelegateManager];
        v9 = [v8 selectionDisplayInteraction];
        [v9 _setGlowViewMode:1];

        v10 = [(UIKeyboardImpl *)self _activeAssertionController];
        v16 = @"_UITextCursorAnimationStyleUserInfoKey";
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        v17[0] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v13 = [v10 dictationIndicatorAssertionWithReason:@"Starting dictation" userInfo:v12];
        m_dictationIndicatorAssertion = self->m_dictationIndicatorAssertion;
        self->m_dictationIndicatorAssertion = v13;
      }
    }

    else
    {

      [(UIKeyboardImpl *)self presentKeyboardMenu:1];
    }
  }
}

- (void)_dictationDidRecieveDidBeginDictationNotification:(id)a3
{
  if (!+[UIKeyboard isKeyboardProcess])
  {
    if (!+[UIKeyboard isRedesignedTextCursorEnabled](UIKeyboard, "isRedesignedTextCursorEnabled") || +[UIKeyboard isInlineDictationIndicatorEnabled](UIKeyboard, "isInlineDictationIndicatorEnabled") && (-[UIKeyboardImpl inputDelegateManager](self, "inputDelegateManager"), v4 = objc_claimAutoreleasedReturnValue(), [v4 selectionDisplayInteraction], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isActivated"), v5, v4, (v6 & 1) == 0))
    {
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 presentDictationMenu];
    }
  }
}

- (void)setRemoteDictationPopover:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKeyedSubscript:@"appear"];
  v5 = [v4 BOOLValue];

  dictationPopoverController = self->_dictationPopoverController;
  if (v5)
  {
    if (!dictationPopoverController)
    {
      v7 = +[UIDictationView sharedInstance];
      v8 = [UIDictationPopoverController alloc];
      [v7 frame];
      v10 = v9;
      v12 = v11;
      v13 = [(UIKeyboardImpl *)self inputDelegate];
      v14 = [(UIDictationPopoverController *)v8 initWithContentView:v7 contentSize:v13 inputDelegate:v10, v12];
      v15 = self->_dictationPopoverController;
      self->_dictationPopoverController = v14;

      dictationPopoverController = self->_dictationPopoverController;
    }

    [(UIDictationPopoverController *)dictationPopoverController setRemoteDictationPopover:v16];
  }

  else
  {
    self->_dictationPopoverController = 0;
  }
}

- (BOOL)isDictationPopoverPresented
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    LOBYTE(v3) = self->_dictationPopoverController != 0;
  }

  else
  {
    v3 = +[UIKeyboard isMajelEnabled];
    if (v3)
    {
      dictationPopoverController = self->_dictationPopoverController;

      LOBYTE(v3) = [(UIKeyboardPopoverController *)dictationPopoverController isPresented];
    }
  }

  return v3;
}

- (BOOL)isDictationMenuPresented
{
  m_editMenuInteraction = self->m_editMenuInteraction;
  if (m_editMenuInteraction)
  {
    v4 = [(UIEditMenuInteraction *)m_editMenuInteraction isDisplayingMenu];
    v5 = +[UIKeyboard isRedesignedTextCursorEnabled];
    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v7 = [(UIKeyboardImpl *)self inputDelegate];
    v8 = [v7 interactionAssistant];
    v9 = [v8 isDisplayingMenuForInputUI];

    v5 = +[UIKeyboard isRedesignedTextCursorEnabled];
    if (v9)
    {
      return 1;
    }
  }

  v10 = 36;
  if (v5)
  {
    v10 = 41;
  }

  return *(&self->super.super.super.isa + OBJC_IVAR___UIKeyboardImpl__id[v10]) != 0;
}

+ (BOOL)isDictationPopoverEnabled
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 preferencesActions];
    v6 = [v5 valueForPreferenceKey:@"DictationDisableInlinePopoverUI"];

    v2 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (void)dismissDictationPopoverAndCancelDictation
{
  if (self->m_keyboardMenuType != 3)
  {
    v4 = +[UIDictationController activeInstance];
    [v4 cancelDictation];

    [(UIKeyboardImpl *)self dismissDictationPopover];
  }
}

- (void)dismissDictationPopover
{
  if ([(UIKeyboardImpl *)self isDictationPopoverPresented])
  {
    dictationPopoverController = self->_dictationPopoverController;

    [(UIKeyboardImpl *)self dismissKeyboardPopover:dictationPopoverController beforeCleanup:1 completion:0];
  }
}

- (void)setInputModeAssertionWithReason:(id)a3
{
  v4 = a3;
  v6 = [(UIKeyboardImpl *)self _activeAssertionController];
  v5 = [v6 activeInputModeAssertionWithReason:v4];

  [(UIKeyboardImpl *)self setInputModeAssertion:v5];
}

- (void)presentKeyboardPopoverWithType:(int)a3 keyString:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  if ([(UIKeyboardImpl *)self isSettingDelegate])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke;
    aBlock[3] = &unk_1E7116C40;
    aBlock[4] = self;
    v97 = v6;
    v95 = v8;
    v96 = v9;
    v10 = _Block_copy(aBlock);
    if (+[UIKeyboard isKeyboardProcess])
    {
      v11 = [(UIKeyboardImpl *)self inputSystemSourceSession];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 documentState];
        [v13 clientFrameInWindow];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v98.origin.x = v15;
        v98.origin.y = v17;
        v98.size.width = v19;
        v98.size.height = v21;
        if (CGRectIsEmpty(v98))
        {
          v22 = dispatch_time(0, 500000000);
          dispatch_after(v22, MEMORY[0x1E69E96A0], v10);

LABEL_14:
          goto LABEL_53;
        }
      }
    }

    dispatch_async(MEMORY[0x1E69E96A0], v10);
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    if (([objc_opt_class() isDictationPopoverEnabled] & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_18:
    v23 = [(UIKeyboardImpl *)self inputDelegate];
    v24 = [v23 textInputView];
    v25 = [v24 keyboardSceneDelegate];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }

    v28 = v27;

    if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
    {
      v29 = ((v6 != 1) & [(UIKeyboardImpl *)self isDictationPopoverPresented]) == 0;
      v30 = 17;
      if (!v29)
      {
        v30 = 23;
      }

      v31 = OBJC_IVAR___UIKeyboardImpl__id[v30];
    }

    else
    {
      if (!v6)
      {
        if (-[UIKeyboardImpl _showsScribbleIconsInAssistantView](self, "_showsScribbleIconsInAssistantView") || ([v28 visualModeManager], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "shouldShowWithinAppWindow"), v56, v57))
        {
          v32 = [v28 containerRootController];
LABEL_29:
          v33 = v32;
          if (v32)
          {
            goto LABEL_30;
          }

LABEL_43:
          if (os_variant_has_internal_diagnostics())
          {
            v65 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v65, OS_LOG_TYPE_FAULT, "Why don't we have a view controller for the keyboard popover?", buf, 2u);
            }
          }

          else
          {
            v59 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498A70) + 8);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_ERROR, "Why don't we have a view controller for the keyboard popover?", buf, 2u);
            }
          }

LABEL_30:
          v34 = [v33 presentedViewController];

          if (v34)
          {
            v35 = [v33 presentedViewController];
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_342;
            v90[3] = &unk_1E7116C40;
            v90[4] = self;
            v93 = v6;
            v91 = v8;
            v92 = v9;
            [v35 dismissViewControllerAnimated:0 completion:v90];

            v36 = v91;
LABEL_52:

            goto LABEL_53;
          }

          v71 = v24;
          v69 = v28;
          if (!v6 && self->_emojiPopoverController && [(UIKeyboardImpl *)self isEmojiPopoverPresented])
          {
            if (os_variant_has_internal_diagnostics())
            {
              v66 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, v66, OS_LOG_TYPE_FAULT, "We're being asked to present the Emoji Popover when it's already presented.", buf, 2u);
              }
            }

            else
            {
              v64 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498A78) + 8);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v64, OS_LOG_TYPE_ERROR, "We're being asked to present the Emoji Popover when it's already presented.", buf, 2u);
              }
            }
          }

          v37 = [(UIKeyboardImpl *)self inputDelegateManager];
          v38 = [v37 selectedTextRange];

          v39 = [(UIKeyboardImpl *)self inputDelegateManager];
          v40 = [v39 selectionRectsForRange:v38];
          v41 = [v40 firstObject];
          v70 = [v41 isVertical];

          v42 = [(UIKeyboardImpl *)self inputDelegateManager];
          v68 = v38;
          v43 = [v38 start];
          [v42 caretRectForPosition:v43];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v23;
            [v52 bounds];
            Height = CGRectGetHeight(v99);
            v100.origin.x = v45;
            v100.origin.y = v47;
            v100.size.width = v49;
            v100.size.height = v51;
            v24 = v71;
            if (Height <= CGRectGetHeight(v100))
            {
              v55 = 1;
            }

            else
            {
              [v52 bounds];
              Width = CGRectGetWidth(v101);
              v102.origin.x = v45;
              v102.origin.y = v47;
              v102.size.width = v49;
              v102.size.height = v51;
              v55 = Width <= CGRectGetWidth(v102);
            }

            if ([v52 isScrollEnabled])
            {
              [v52 bounds];
              v104.origin.x = v45;
              v104.origin.y = v47;
              v104.size.width = v49;
              v104.size.height = v51;
              if (!CGRectIntersectsRect(v103, v104) && !v55)
              {
                *buf = 0;
                v85 = buf;
                v86 = 0x3032000000;
                v87 = __Block_byref_object_copy__132;
                v88 = __Block_byref_object_dispose__132;
                v89 = 0;
                v60 = [MEMORY[0x1E696AD88] defaultCenter];
                v67 = [MEMORY[0x1E696ADC8] mainQueue];
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v72[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_345;
                v72[3] = &unk_1E7116C68;
                v77 = buf;
                v72[4] = self;
                v82 = v6;
                v73 = v8;
                v74 = v33;
                v75 = v71;
                v78 = v45;
                v79 = v47;
                v80 = v49;
                v81 = v51;
                v83 = v70;
                v76 = v9;
                v61 = [v60 addObserverForName:@"UITextSelectionDidScroll" object:v52 queue:v67 usingBlock:v72];
                v62 = *(v85 + 5);
                *(v85 + 5) = v61;

                v63 = [v52 interactionAssistant];
                [v63 scrollSelectionToVisible];

                _Block_object_dispose(buf, 8);
                goto LABEL_51;
              }
            }
          }

          else
          {
            v24 = v71;
          }

          [(UIKeyboardImpl *)self _presentKeyboardPopoverWithType:v6 keyString:v8 popoverController:v33 textInputView:v24 caretRect:v70 isVerticalText:v9 completion:v45, v47, v49, v51];
LABEL_51:
          v36 = v68;
          v28 = v69;
          goto LABEL_52;
        }
      }

      if (![(UIKeyboardImpl *)self isDictationPopoverPresented])
      {
        v58 = [v28 forceCreateKeyboardWindow];
        v33 = [v58 rootViewController];

        if (v33)
        {
          goto LABEL_30;
        }

        goto LABEL_43;
      }

      v31 = 576;
    }

    v32 = *(&self->super.super.super.isa + v31);
    goto LABEL_29;
  }

  if (v6 == 10)
  {
    if (![(UIKeyboardImpl *)self canPresentNumberpadPopover])
    {
      goto LABEL_53;
    }

    goto LABEL_18;
  }

  if (v6 != 2 || ![(UIKeyboardImpl *)self isPressAndHoldPopoverPresented]|| ![(UIPressAndHoldPopoverController *)self->_pressAndHoldPopoverController isSamePressAndHoldPopoverForKeyString:v8])
  {
    goto LABEL_18;
  }

LABEL_53:
}

uint64_t __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canPresentEmojiPopover];
  v3 = *(a1 + 56);
  if ((result & 1) != 0 || (v3 != 10 ? (v4 = v3 == 1) : (v4 = 1), v4))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v5 presentKeyboardPopoverWithType:v3 keyString:v6 completion:v7];
  }

  return result;
}

void __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_342(uint64_t a1)
{
  v2 = [*(a1 + 32) inputDelegate];

  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v4 presentKeyboardPopoverWithType:v3 keyString:v5 completion:v6];
  }
}

uint64_t __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_345(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 72) + 8) + 40)];

  v3 = *(a1 + 112);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 116);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);

  return [v4 _presentKeyboardPopoverWithType:v3 keyString:v5 popoverController:v6 textInputView:v7 caretRect:v8 isVerticalText:v9 completion:{v10, v11, v12, v13}];
}

- (void)_presentKeyboardPopoverWithType:(int)a3 keyString:(id)a4 popoverController:(id)a5 textInputView:(id)a6 caretRect:(CGRect)a7 isVerticalText:(BOOL)a8 completion:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v23 = [(UIKeyboardImpl *)self inputDelegate];

  if (v23)
  {
    v171 = width;
    v174 = v20;
    v24 = [v20 view];
    v25 = [v24 window];

    [v21 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(UIKeyboardImpl *)self showingEmojiSearch];
    if (+[UIKeyboard isKeyboardProcess]&& !v34)
    {
      v36 = [(UIKeyboardImpl *)self inputSystemSourceSession];
      v37 = v36;
      if (v36)
      {
        v38 = [v36 documentState];
        [v38 clientFrameInWindow];
        v27 = v39;
        v29 = v40;
        v31 = v41;
        v33 = v42;
      }

      v35 = height;
    }

    else
    {
      v35 = height;
    }

    v183.origin.x = v27;
    v183.origin.y = v29;
    v183.size.width = v31;
    v183.size.height = v33;
    MinX = CGRectGetMinX(v183);
    v184.origin.x = v27;
    v184.origin.y = v29;
    v184.size.width = v31;
    v184.size.height = v33;
    v44 = fmax(MinX, fmin(x, CGRectGetMaxX(v184)));
    v185.origin.x = v27;
    v185.origin.y = v29;
    v185.size.width = v31;
    v185.size.height = v33;
    MinY = CGRectGetMinY(v185);
    v186.origin.x = v27;
    v186.origin.y = v29;
    v186.size.width = v31;
    v186.size.height = v33;
    v46 = fmax(MinY, fmin(y, CGRectGetMaxY(v186)));
    v173 = a3;
    v167 = a8;
    v47 = v44;
    v48 = v46;
    if (a8)
    {
      v49 = v171;
      v50 = v171;
      v51 = v35;
      if (CGRectGetWidth(*&v47) > 100.0)
      {
        v187.origin.x = v44;
        v187.origin.y = v46;
        v187.size.width = v171;
        v187.size.height = v35;
        v44 = CGRectGetMaxX(v187) + -1.0;
        v49 = 1.0;
      }

      v52 = 12;
    }

    else
    {
      v49 = v171;
      v53 = v171;
      v54 = v35;
      if (CGRectGetHeight(*&v47) > 100.0)
      {
        v188.origin.x = v44;
        v188.origin.y = v46;
        v188.size.width = v171;
        v188.size.height = v35;
        v46 = CGRectGetMaxY(v188) + -1.0;
        v35 = 1.0;
      }

      v52 = 3;
    }

    v55 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v56 = [v55 visualModeManager];
    v57 = [v56 shouldShowWithinAppWindow];

    v172 = v57;
    v58 = 15;
    if (!v57)
    {
      v58 = v52;
    }

    v170 = v58;
    v59 = [v21 keyboardSceneDelegate];
    if (v59)
    {
      [v21 keyboardSceneDelegate];
    }

    else
    {
      +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }
    v60 = ;
    v61 = [v60 containerWindow];

    if ([v61 _isHostedInAnotherProcess] && (objc_msgSend(v61, "_isFullscreen") & 1) == 0)
    {
      if (v173)
      {
        [v61 convertRect:v21 fromView:{v44, v46, v49, v35}];
        v63 = v103;
        v65 = v104;
        v67 = v105;
        v69 = v106;
        v107 = v61;

        v108 = [v107 rootViewController];

        v25 = v107;
        v174 = v108;
      }

      else
      {
        v133 = [v21 window];
        [v21 convertRect:v133 toView:{v44, v46, v49, v35}];
        v135 = v134;
        v137 = v136;
        v139 = v138;
        v141 = v140;

        v142 = [v21 window];
        [v61 convertRect:v142 fromWindow:{v135, v137, v139, v141}];
        v63 = v143;
        v65 = v144;
        v67 = v145;
        v69 = v146;
      }
    }

    else
    {
      [v61 convertRect:v21 fromView:{v44, v46, v49, v35}];
      [v61 convertRect:v25 toView:?];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
    }

    if (v25)
    {
      v70 = [v61 screen];
      v71 = [v25 screen];

      v169 = v19;
      if (v70 != v71)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v165 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v165, OS_LOG_TYPE_FAULT, "The input view is on a different screen than the popover window; popover will have the wrong frame.", buf, 2u);
          }
        }

        else
        {
          v163 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498A80) + 8);
          if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v163, OS_LOG_TYPE_ERROR, "The input view is on a different screen than the popover window; popover will have the wrong frame.", buf, 2u);
          }
        }
      }

      v168 = v69;
      v72 = v67;
      [v61 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      [v25 frame];
      v204.origin.x = v81;
      v204.origin.y = v82;
      v204.size.width = v83;
      v204.size.height = v84;
      v189.origin.x = v74;
      v189.origin.y = v76;
      v189.size.width = v78;
      v189.size.height = v80;
      if (!CGRectEqualToRect(v189, v204))
      {
        if (os_variant_has_internal_diagnostics())
        {
          v166 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v166, OS_LOG_TYPE_FAULT, "The input view's window has a different frame than the popover window; popover may have the wrong frame.", buf, 2u);
          }
        }

        else
        {
          v164 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498A88) + 8);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v164, OS_LOG_TYPE_ERROR, "The input view's window has a different frame than the popover window; popover may have the wrong frame.", buf, 2u);
          }
        }
      }

      [v25 bounds];
      v85 = v190.origin.x;
      v86 = v190.origin.y;
      v87 = v190.size.width;
      v88 = v190.size.height;
      v89 = CGRectGetMinX(v190);
      v191.origin.x = v85;
      v191.origin.y = v86;
      v191.size.width = v87;
      v191.size.height = v88;
      v90 = fmax(v89, fmin(v63, CGRectGetMaxX(v191)));
      v192.origin.x = v85;
      v192.origin.y = v86;
      v192.size.width = v87;
      v192.size.height = v88;
      v91 = CGRectGetMinY(v192);
      v193.origin.x = v85;
      v193.origin.y = v86;
      v193.size.width = v87;
      v193.size.height = v88;
      v92 = fmax(v91, fmin(v65, CGRectGetMaxY(v193)));
      v93 = v173;
      if (v173 == 1)
      {
        [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_dictationPopoverController beforeCleanup:1 completion:0];
        v112 = +[UIDictationView sharedInstance];
        v113 = [UIDictationPopoverController alloc];
        [v112 frame];
        v115 = v114;
        v117 = v116;
        v118 = [(UIKeyboardImpl *)self inputDelegate];
        v119 = v113;
        v120 = v112;
        v121 = [(UIDictationPopoverController *)v119 initWithContentView:v112 contentSize:v118 inputDelegate:v115, v117];
        dictationPopoverController = self->_dictationPopoverController;
        self->_dictationPopoverController = v121;

        v102 = self->_dictationPopoverController;
        [v112 frame];
        v123 = CGRectGetHeight(v194);
        [v25 safeAreaInsets];
        v125 = v123 + v124;
        [(objc_class *)+[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView arrowHeight];
        v127 = v125 + v126;
        v111 = v170;
        v94 = v72;
        v95 = v168;
        if (!v167)
        {
          v195.origin.x = v90;
          v195.origin.y = v92;
          v195.size.width = v94;
          v195.size.height = v168;
          if (CGRectGetMinY(v195) > v127)
          {
            v111 = 2;
          }
        }

        p_m_editMenuFrame = &self->m_editMenuFrame;
        if (!CGRectIsEmpty(self->m_editMenuFrame))
        {
          v196.origin.x = p_m_editMenuFrame->origin.x;
          v196.origin.y = self->m_editMenuFrame.origin.y;
          v196.size.width = self->m_editMenuFrame.size.width;
          v196.size.height = self->m_editMenuFrame.size.height;
          MidY = CGRectGetMidY(v196);
          v197.origin.x = v90;
          v197.origin.y = v92;
          v197.size.width = v94;
          v197.size.height = v168;
          if (MidY >= CGRectGetMidY(v197))
          {
            v201.origin.x = v90;
            v201.origin.y = v92;
            v201.size.width = v94;
            v201.size.height = v168;
            v152 = CGRectGetMinX(v201);
            v202.origin.x = p_m_editMenuFrame->origin.x;
            v202.origin.y = self->m_editMenuFrame.origin.y;
            v202.size.width = self->m_editMenuFrame.size.width;
            v202.size.height = self->m_editMenuFrame.size.height;
            MaxY = CGRectGetMaxY(v202);
            v203.origin.x = v90;
            v203.origin.y = v92;
            v203.size.width = v94;
            v203.size.height = v168;
            v92 = MaxY - CGRectGetHeight(v203);
            v111 = 1;
            v90 = v152;
          }

          else
          {
            v198.origin.x = p_m_editMenuFrame->origin.x;
            v198.origin.y = self->m_editMenuFrame.origin.y;
            v198.size.width = self->m_editMenuFrame.size.width;
            v198.size.height = self->m_editMenuFrame.size.height;
            if (CGRectGetMinY(v198) <= v127)
            {
              v111 = 1;
            }

            else
            {
              v199.origin.x = v90;
              v199.origin.y = v92;
              v199.size.width = v94;
              v199.size.height = v168;
              v90 = CGRectGetMinX(v199);
              v200.origin.x = p_m_editMenuFrame->origin.x;
              v200.origin.y = self->m_editMenuFrame.origin.y;
              v200.size.width = self->m_editMenuFrame.size.width;
              v200.size.height = self->m_editMenuFrame.size.height;
              v92 = CGRectGetMinY(v200);
            }
          }

          [(UIDictationPopoverController *)self->_dictationPopoverController movePopoverViewForEditMenuFrame:p_m_editMenuFrame->origin.x, self->m_editMenuFrame.origin.y, self->m_editMenuFrame.size.width, self->m_editMenuFrame.size.height];
        }

        v93 = 1;
      }

      else
      {
        v94 = v72;
        if (v173 == 2)
        {
          [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_pressAndHoldPopoverController beforeCleanup:1 completion:0];
          v109 = [[UIPressAndHoldPopoverController alloc] initWithKeyString:v19];
          pressAndHoldPopoverController = self->_pressAndHoldPopoverController;
          self->_pressAndHoldPopoverController = v109;

          v102 = self->_pressAndHoldPopoverController;
          v111 = v170;
          v95 = v168;
        }

        else
        {
          v95 = v168;
          if (v173 == 10)
          {
            [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_numberpadPopoverController beforeCleanup:1 completion:0];
            v96 = +[UIKeyboardInputModeController sharedInputModeController];
            v97 = [v96 currentInputMode];

            v98 = [UIKeyboardNumberpadPopoverController alloc];
            v99 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
            v100 = [(UIKeyboardNumberpadPopoverController *)v98 initWithTextInputTraits:v99 keyboardInputMode:v97];
            numberpadPopoverController = self->_numberpadPopoverController;
            self->_numberpadPopoverController = v100;

            v93 = 10;
            v102 = self->_numberpadPopoverController;
            [(_UIKeyboardStateManager *)self->_keyboardStateManager setNumberpadPopoverHasBeenShown:1];
          }

          else
          {
            if (qword_1ED498B18 != -1)
            {
              dispatch_once(&qword_1ED498B18, &__block_literal_global_2571);
            }

            v130 = [MEMORY[0x1E69D9680] sharedPreferencesController];
            v131 = [v130 valueForPreferenceKey:@"VerticalScrollingInEmojiPopover"];

            if ([v131 BOOLValue])
            {
              v132 = 1;
            }

            else
            {
              v132 = _os_feature_enabled_impl();
            }

            [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_emojiPopoverController beforeCleanup:1 completion:0];
            v147 = [UIKeyboardEmojiPopoverController alloc];
            v148 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
            v149 = [(UIKeyboardImpl *)self taskQueue];
            v150 = [(UIKeyboardEmojiPopoverController *)v147 initWithTextInputTraits:v148 taskQueue:v149 scrollingDirection:v132 window:v25 caretRect:v90, v92, v94, v168];
            emojiPopoverController = self->_emojiPopoverController;
            self->_emojiPopoverController = v150;

            v102 = self->_emojiPopoverController;
            v93 = v173;
          }

          v111 = v170;
        }
      }

      [(UIViewController *)v102 setModalPresentationStyle:7];
      v154 = [(UIViewController *)v102 traitCollection];
      if ([v154 userInterfaceIdiom])
      {
      }

      else
      {
        v155 = [(UIViewController *)v102 traitCollection];
        v156 = [v155 verticalSizeClass];

        v157 = v156 == 1;
        v93 = v173;
        if (v157)
        {
          v111 = 15;
        }
      }

      v158 = [(UIViewController *)v102 popoverPresentationController];
      [(UIKeyboardPopoverController *)v102 configurePopoverPresentationController:v158];
      [v158 setDelegate:self];
      [v158 setSourceView:v25];
      [v158 setSourceRect:{v90, v92, v94, v95}];
      [v158 setPermittedArrowDirections:v111];
      [v158 setCanOverlapSourceViewRect:v172];
      if (v93 == 1)
      {
        [v158 setPopoverLayoutMargins:{-5.0, 19.0, 10.0, 19.0}];
        [v158 _setIgnoresKeyboardNotifications:1];
      }

      else if (v93 == 2)
      {
        [v158 setPopoverBackgroundViewClass:objc_opt_class()];
        v159 = [(UIView *)self traitCollection];
        if ([v159 userInterfaceStyle] == 2)
        {
          +[UIColor tertiarySystemFillColor];
        }

        else
        {
          +[UIColor whiteColor];
        }
        v160 = ;
        [v158 setBackgroundColor:v160];

        v93 = v173;
      }

      v175[0] = MEMORY[0x1E69E9820];
      v175[1] = 3221225472;
      v175[2] = __128__UIKeyboardImpl__presentKeyboardPopoverWithType_keyString_popoverController_textInputView_caretRect_isVerticalText_completion___block_invoke;
      v175[3] = &unk_1E7116C90;
      v176 = v102;
      v177 = v174;
      v178 = self;
      v179 = v158;
      v181 = v93;
      v180 = v22;
      v161 = v158;
      v162 = v102;
      [v177 presentViewController:v162 animated:1 completion:v175];

      v19 = v169;
    }

    else if (v22)
    {
      v22[2](v22);
    }

    v20 = v174;
  }

  else if (v22)
  {
    v22[2](v22);
  }
}

uint64_t __128__UIKeyboardImpl__presentKeyboardPopoverWithType_keyString_popoverController_textInputView_caretRect_isVerticalText_completion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) wantsDimmingView] & 1) == 0 && *(a1 + 40) == *(*(a1 + 48) + 568))
  {
    v2 = [*(a1 + 56) dimmingView];
    [v2 removeFromSuperview];

    v3 = [*(a1 + 56) shadowView];
    v4 = [v3 layer];
    [v4 setAllowsHitTesting:0];
  }

  if ((*(a1 + 72) - 1) <= 1)
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 systemInputAssistantViewController];
    [v6 setNeedsValidation];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 48) + 752) reloadCurrentKeyplane];
    }

    [*(a1 + 48) _requestInputManagerSync];
  }

  result = *(a1 + 64);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  dictationPopoverController = self->_dictationPopoverController;
  v8 = a3;
  v9 = [(UIViewController *)dictationPopoverController popoverPresentationController];

  if (v9 == v8)
  {
    [(UIDictationPopoverController *)self->_dictationPopoverController sourceRect];
    a4->origin.x = v10;
    a4->origin.y = v11;
    a4->size.width = v12;
    a4->size.height = v13;
  }
}

- (void)updateDictationPopoverLocationIfNeeded
{
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 hasAsyncCapableInputDelegate];

  if (v4)
  {
    v5 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__UIKeyboardImpl_updateDictationPopoverLocationIfNeeded__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    dictationPopoverController = self->_dictationPopoverController;

    [(UIDictationPopoverController *)dictationPopoverController movePopoverViewToCurrentCareLocation];
  }
}

- (void)setEditMenuFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22[1] = *MEMORY[0x1E69E9840];
  if (!CGRectIsEmpty(a3))
  {
LABEL_5:
    p_m_editMenuFrame = &self->m_editMenuFrame;
    self->m_editMenuFrame.origin.x = x;
    self->m_editMenuFrame.origin.y = y;
    self->m_editMenuFrame.size.width = width;
    self->m_editMenuFrame.size.height = height;
    if (+[UIKeyboard usesInputSystemUI])
    {
      v12 = [(UIKeyboardImpl *)self remoteTextInputPartner];
      v21 = @"editMenuFrame";
      v13 = [MEMORY[0x1E696B098] valueWithRect:{p_m_editMenuFrame->origin.x, self->m_editMenuFrame.origin.y, self->m_editMenuFrame.size.width, self->m_editMenuFrame.size.height}];
      v22[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      [v12 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_setEditMenuFrame_ withOptionalObject:v14];

      v24.origin.x = p_m_editMenuFrame->origin.x;
      v24.origin.y = self->m_editMenuFrame.origin.y;
      v24.size.width = self->m_editMenuFrame.size.width;
      v24.size.height = self->m_editMenuFrame.size.height;
      if (CGRectIsEmpty(v24))
      {
        [(UIKeyboardImpl *)self updateDictationPopoverLocationIfNeeded];
      }
    }

    else
    {
      dictationPopoverController = self->_dictationPopoverController;
      v16 = p_m_editMenuFrame->origin.x;
      v17 = self->m_editMenuFrame.origin.y;
      v18 = self->m_editMenuFrame.size.width;
      v19 = self->m_editMenuFrame.size.height;

      [(UIDictationPopoverController *)dictationPopoverController movePopoverViewForEditMenuFrame:v16, v17, v18, v19];
    }

    return;
  }

  v8 = [(UIKeyboardImpl *)self candidateController];
  v20 = [v8 loadInlineCandidateView];

  v9 = v20;
  if (!v20 || (v10 = [v20 isHidden], v9 = v20, v10))
  {

    goto LABEL_5;
  }
}

- (void)updateDictationPopoverLocationForCandidateInlineView:(id)a3 yOffset:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v18 = v6;
    if ([v6 isHidden])
    {
      [(UIKeyboardImpl *)self setEditMenuFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }

    else
    {
      v7 = [(UIKeyboardImpl *)self inputDelegate];
      v8 = [v7 textInputView];
      v9 = [v8 keyboardSceneDelegate];
      if (v9)
      {
        v10 = [(UIKeyboardImpl *)self inputDelegate];
        v11 = [v10 textInputView];
        v12 = [v11 keyboardSceneDelegate];
        v13 = [v12 containerWindow];
      }

      else
      {
        v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v10 containerWindow];
      }

      v14 = [(UIViewController *)self->_dictationPopoverController view];
      v15 = [v14 window];

      [v18 bounds];
      [v13 convertRect:v18 fromView:?];
      if (v13 != v15)
      {
        [v13 convertRect:v15 toView:?];
      }

      [(UIKeyboardImpl *)self setEditMenuFrame:v16 + 0.0, v17 + a4];
    }

    v6 = v18;
  }
}

- (void)dismissKeyboardPopover:(id)a3 beforeCleanup:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 presentingViewController];
    if (v10)
    {
      if (v6)
      {
        [(UIKeyboardImpl *)self cleanupKeyboardPopover:v8];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __66__UIKeyboardImpl_dismissKeyboardPopover_beforeCleanup_completion___block_invoke;
      v11[3] = &unk_1E70F3798;
      v14 = v6;
      v11[4] = self;
      v12 = v8;
      v13 = v9;
      [v10 dismissViewControllerAnimated:1 completion:v11];
    }

    else
    {
      [(UIKeyboardImpl *)self cleanupKeyboardPopover:v8];
      if (v9)
      {
        (*(v9 + 2))(v9, 0);
      }
    }
  }
}

uint64_t __66__UIKeyboardImpl_dismissKeyboardPopover_beforeCleanup_completion___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) cleanupKeyboardPopover:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)didPresentMemojiCard
{
  emojiPopoverController = self->_emojiPopoverController;
  if (emojiPopoverController)
  {
    v3 = [(UIViewController *)emojiPopoverController popoverPresentationController];
    v4 = [v3 containerView];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UIKeyboardImpl_didPresentMemojiCard__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v4;
    v5 = v4;
    [UIView animateWithDuration:v6 animations:0.2];
  }
}

- (void)didDismissMemojiCard
{
  if (self->_emojiPopoverController)
  {
    [(UIKeyboardImpl *)self dismissEmojiPopoverBeforeCleanup:0];
  }
}

- (void)dismissCursorAccessory
{
  [(UIKeyboardImpl *)self dismissDictationPopoverAndCancelDictation];
  v2 = +[UIInputSwitcher activeInstance];
  [v2 hideSwitcherIfNeeded];
}

- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)a3 preserveIfPossible:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->m_showInputModeIndicator = 0;
  if (![(UIKeyboardLayout *)self->m_layout shouldShowIndicator]|| [(UIKeyboardImpl *)self isTrackpadMode]|| v5)
  {

    [(UIKeyboardImpl *)self clearLanguageIndicator];
  }

  else
  {
    v7 = [(UIKeyboardLayout *)self->m_layout activationIndicatorView];
    if (!v4 || (-[UIView frame](self->m_languageIndicator, "frame"), v9 = v8, v11 = v10, v13 = v12, v15 = v14, [v7 frame], v35.origin.x = v16, v35.origin.y = v17, v35.size.width = v18, v35.size.height = v19, v34.origin.x = v9, v34.origin.y = v11, v34.size.width = v13, v34.size.height = v15, !CGRectEqualToRect(v34, v35)))
    {
      [(UIKeyboardImpl *)self clearLanguageIndicator];
      objc_storeStrong(&self->m_languageIndicator, v7);
      m_layout = self->m_layout;
      if (!m_layout)
      {
        m_layout = self;
      }

      m_languageIndicator = self->m_languageIndicator;
      v22 = m_layout;
      [(UIView *)m_languageIndicator setAutoresizingMask:8];
      [v22 addSubview:self->m_languageIndicator];

      v23 = [(UIView *)self->m_languageIndicator subviews];
      v24 = [v23 lastObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = self->m_languageIndicator;

        v24 = v25;
      }

      [(UIKeyboardLayout *)self->m_layout setHideKeysUnderIndicator:1];
      v26 = self->m_languageIndicator;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __77__UIKeyboardImpl_updateInputModeIndicatorOnSingleKeyOnly_preserveIfPossible___block_invoke;
      v31[3] = &unk_1E70F3590;
      v32 = v24;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __77__UIKeyboardImpl_updateInputModeIndicatorOnSingleKeyOnly_preserveIfPossible___block_invoke_2;
      v29[3] = &unk_1E70F3C60;
      v29[4] = self;
      v30 = v26;
      v27 = v26;
      v28 = v24;
      [UIView animateWithDuration:0 delay:v31 options:v29 animations:0.25 completion:0.75];
      [(UIKeyboardLayout *)self->m_layout fadeActivationIndicatorWithDuration:0.25 withDelay:0.75];
    }
  }
}

void *__77__UIKeyboardImpl_updateInputModeIndicatorOnSingleKeyOnly_preserveIfPossible___block_invoke_2(void *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result[4] + 752) setHideKeysUnderIndicator:0];
    result = v2[4];
    if (v2[5] == result[51])
    {

      return [result clearLanguageIndicator];
    }
  }

  return result;
}

- (BOOL)shouldShowInternationalKeyIntroduction
{
  if ([(UIKeyboardLayout *)self->m_layout idiom]== 3)
  {
    return 0;
  }

  if (+[UIKeyboardImpl isFloating])
  {
    return 0;
  }

  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v4 = [v3 isSecureTextEntry];

  if (v4)
  {
    return 0;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    v5 = [(UIKeyboardImpl *)self textInputTraits];
    v6 = [v5 keyboardType];
    if (v6 <= 0xB && ((1 << v6) & 0x930) != 0 || v6 == 127)
    {

      return 0;
    }
  }

  v8 = UIKeyboardActiveUserSelectableInputModes;
  v9 = [v8 count];

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 normalizedEnabledInputModeIdentifiers];
  v12 = [v11 containsObject:@"emoji"];

  if (v12 && ([(UIKeyboardImpl *)self showsDedicatedEmojiKeyAlongsideGlobeButton]|| (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(UIKeyboardImpl *)self globeKeyDisplaysAsEmojiKey]))
  {
    --v9;
  }

  return v9 > 2;
}

- (CGRect)keyboardIntroductionFrame
{
  v3 = [(UIView *)self _rootInputWindowController];
  v4 = [v3 bottomEdgeView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v14 = [v13 systemInputAssistantViewController];

  v15 = 0.0;
  if (([v14 shouldBeShownForInputDelegate:0 inputViews:0] & 1) == 0)
  {
    v16 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v17 = [v16 hidePrediction];

    if ((v17 & 1) == 0)
    {
      v18 = [(UIView *)self traitCollection];
      [v14 preferredHeightForTraitCollection:v18];
      v15 = v19 + 0.0;
    }
  }

  v20 = v6;
  v21 = v8 - v15;
  v22 = v10 + 0.0;
  v23 = v12 + v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)showInternationalKeyIntroductionIfNeededWithPreviousInputMode:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardImpl *)self shouldShowInternationalKeyIntroduction])
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v7 = [v6 oneTimeActionCompleted:*MEMORY[0x1E69D9C28]];

    if ((v7 & 1) == 0)
    {
      [(UIKeyboardImpl *)self keyboardIntroductionFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];

      if (!v16)
      {
        objc_initWeak(&location, self);
        v17 = [UIKeyboardGlobeKeyIntroductionView alloc];
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __80__UIKeyboardImpl_showInternationalKeyIntroductionIfNeededWithPreviousInputMode___block_invoke;
        v26 = &unk_1E70F5A28;
        objc_copyWeak(&v27, &location);
        v18 = [(UIKeyboardGlobeKeyIntroductionView *)v17 initWithFrame:&v23 completion:v9, v11, v13, v15];
        [(UIKeyboardImpl *)self setInternationalKeyIntroductionView:v18, v23, v24, v25, v26];

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      v19 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
      [v19 setFrame:{v9, v11, v13, v15}];

      v20 = [(UIView *)self _rootInputWindowController];
      v21 = [v20 bottomEdgeView];
      v22 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
      [v21 addSubview:v22];
    }
  }
}

void __80__UIKeyboardImpl_showInternationalKeyIntroductionIfNeededWithPreviousInputMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideInternationalKeyIntroductionIfNeeded];
}

- (BOOL)shouldShowModelessInputTip
{
  if (!+[UIKeyboard isModelessActive])
  {
    goto LABEL_6;
  }

  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  if ([v3 oneTimeActionCompleted:*MEMORY[0x1E69D9900]])
  {

LABEL_6:
    v8 = 0;
    return v8 & 1;
  }

  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v5 = [v4 BOOLForPreferenceKey:@"DictationCommandTipsEnabled"];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = +[UIDictationController activeInstance];
  v7 = [v6 shouldSuppressSoftwareKeyboard];

  v8 = v7 ^ 1;
  return v8 & 1;
}

- (void)_updateSoundPreheatingForWindow:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    goto LABEL_12;
  }

  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  v5 = [v4 keyInputDelegate];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  if ([WeakRetained isMinimized] && !-[UIKeyboardImpl isPredictionViewControllerVisible](self, "isPredictionViewControllerVisible"))
  {

LABEL_11:
    goto LABEL_12;
  }

  if (![UIApp isSuspended] || +[UIKeyboardImpl isActivatingForeground](UIKeyboardImpl, "isActivatingForeground"))
  {

    goto LABEL_8;
  }

  v8 = [v9 _isHostedInAnotherProcess];

  if (v8)
  {
LABEL_8:
    [_UIKBFeedbackGeneratorPartner preheatSystemSoundsForObject:self];
    if (([(_UIKBFeedbackGenerating *)self->m_feedbackGenerator isActive]& 1) == 0)
    {
      [(_UIKBFeedbackGenerating *)self->m_feedbackGenerator activateWithCompletionBlock:0];
    }

    goto LABEL_15;
  }

LABEL_12:
  if ([(_UIKBFeedbackGenerating *)self->m_feedbackGenerator isActive])
  {
    [(_UIKBFeedbackGenerating *)self->m_feedbackGenerator deactivate];
  }

  [_UIKBFeedbackGeneratorPartner cooldownSystemSoundsForObject:self];
LABEL_15:
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (_UIApplicationIsFirstPartyStickers())
  {
    v9.receiver = self;
    v9.super_class = UIKeyboardImpl;
    [(UIView *)&v9 setFrame:x, y, width, height];
  }

  else
  {
    [(UIView *)self frame];
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectEqualToRect(v10, v11))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __27__UIKeyboardImpl_setFrame___block_invoke;
      v8[3] = &unk_1E70F3B20;
      *&v8[5] = x;
      *&v8[6] = y;
      *&v8[7] = width;
      *&v8[8] = height;
      v8[4] = self;
      [UIView performWithoutAnimation:v8];
      if ([(UIKeyboardImpl *)self shouldUpdateLayoutAutomatically])
      {
        [(UIKeyboardImpl *)self updateLayoutIfNecessary];
      }
    }
  }
}

id __27__UIKeyboardImpl_setFrame___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = UIKeyboardImpl;
  return objc_msgSendSuper2(&v2, sel_setFrame_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v8 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = CGRectGetWidth(v12);
  v10.receiver = self;
  v10.super_class = UIKeyboardImpl;
  [(UIView *)&v10 setBounds:x, y, width, height];
  if (!self->m_updatingLayout && v8 != v9)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (!CGRectIsEmpty(v13) && ([(UIKeyboardImpl *)self shouldUpdateLayoutAutomatically]|| _UIApplicationIsFirstPartyStickers()))
    {
      [(UIKeyboardImpl *)self updateLayoutIfNecessary];
    }
  }
}

- (void)prepareLayoutForInterfaceOrientation:(int64_t)a3
{
  if (self->m_isRotating)
  {
    [(UIKeyboardImpl *)self updateLayoutToCurrentInterfaceOrientation];
  }

  self->m_isRotating = 1;
  [(UIKeyboardImpl *)self hideDictationMenuIfNeeded:0];
  [(UIKeyboardImpl *)self updateDictationIgnoreKeyboardDidHideNotification];
  if (+[UIKeyboard isRedesignedTextCursorEnabled](UIKeyboard, "isRedesignedTextCursorEnabled") && (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || !+[UIKeyboard inputUIOOP]))
  {
    [(UIKeyboardImpl *)self updateIdleDetection:8];
  }

  if ((a3 - 3) < 2 != ([(UIKeyboardLayout *)self->m_layout orientation]- 3) < 2 || +[UIKeyboard resizable])
  {
    self->m_preRotateShift = [(_UIKeyboardStateManager *)self->_keyboardStateManager shifted];
    self->m_preRotateShiftLocked = [(_UIKeyboardStateManager *)self->_keyboardStateManager shiftLocked];
    [(UIKeyboardImpl *)self acceptHandwritingCandidate];
    [(UIKeyboardImpl *)self prepareForGeometryChange];
    if (objc_opt_respondsToSelector())
    {
      [(UIKeyboardLayout *)self->m_layout willRotate:a3];
    }

    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];

    if (v5)
    {
      v6 = [(UIKeyboardImpl *)self candidateController];
      if ([v6 barIsExtended])
      {
        v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        [v7 setUIKeyboardCandidateListDelegate:0];

        [v6 collapse];
      }
    }

    if ([(UIKeyboardImpl *)self usesCandidateSelection])
    {
      v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
      v9 = [v8 slottedCandidatesCount];

      if (v9)
      {
        [(UIKeyboardImpl *)self setCandidates:0];
      }
    }

    emojiPopoverController = self->_emojiPopoverController;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__UIKeyboardImpl_prepareLayoutForInterfaceOrientation___block_invoke;
    v13[3] = &unk_1E70F5AC0;
    v13[4] = self;
    [(UIKeyboardImpl *)self dismissKeyboardPopover:emojiPopoverController beforeCleanup:0 completion:v13];
    if ([(UIKeyboardImpl *)self isDictationPopoverPresented])
    {
      [(UIKeyboardImpl *)self dismissDictationPopoverAndCancelDictation];
    }

    numberpadPopoverController = self->_numberpadPopoverController;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__UIKeyboardImpl_prepareLayoutForInterfaceOrientation___block_invoke_2;
    v12[3] = &unk_1E70F5AC0;
    v12[4] = self;
    [(UIKeyboardImpl *)self dismissKeyboardPopover:numberpadPopoverController beforeCleanup:0 completion:v12];
    if (self->m_presentingKeyboardMenuType == 2 && ![(UIKeyboardImpl *)self isDictationMenuPresented])
    {
      self->m_presentingKeyboardMenuType = 0;
    }

    [(_UIKeyboardStateManager *)self->_keyboardStateManager setKeyboardDelegateStateNeedsRefresh:1];
  }
}

- (void)updateLayoutToCurrentInterfaceOrientation
{
  if (objc_opt_respondsToSelector())
  {
    [(UIKeyboardLayout *)self->m_layout didRotate];
  }

  if (self->m_preRotateShiftLocked)
  {
    [(UIKeyboardImpl *)self setShiftLocked:1];
  }

  else
  {
    [(UIKeyboardImpl *)self setShift:self->m_preRotateShift];
  }

  [(UIKeyboardImpl *)self updateStylingTraitsIfNeeded];
  self->m_isRotating = 0;
  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    [(UIKeyboardImpl *)self showDictationMenuIfNeeded];
  }

  [(UIKeyboardImpl *)self syncInputManagerToKeyboardState];
}

- (void)finishLayoutToCurrentInterfaceOrientation
{
  [(UIKeyboardImpl *)self geometryChangeDone:1];
  if (self->_emojiPopoverToRestoreAfterRotation)
  {
    if ([(UIKeyboardImpl *)self isInHardwareKeyboardMode])
    {
      [(UIKeyboardImpl *)self presentKeyboardPopoverWithType:0 keyString:0 completion:0];
    }

    self->_emojiPopoverToRestoreAfterRotation = 0;
  }

  if (self->_numberpadPopoverToRestoreAfterRotation)
  {
    if ([(UIKeyboardImpl *)self canPresentNumberpadPopover])
    {
      [(UIKeyboardImpl *)self presentNumberpadPopover];
    }

    self->_numberpadPopoverToRestoreAfterRotation = 0;
  }

  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    if (+[UIDictationController isRunning])
    {

      [(UIKeyboardImpl *)self presentDictationMenu];
    }

    else if (self->m_presentingKeyboardMenuType == 2)
    {

      [(UIKeyboardImpl *)self presentKeyboardMenu:2];
    }
  }
}

- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager keyboardState];
  [v4 setCanSuggestSupplementalItemsForCurrentSelection:v3];
}

- (void)setLayoutRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self activeLayout];
  [v5 setRenderConfig:v4];
}

- (void)_postInputResponderChangedNotification
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 keyInputDelegate];
  if (v4)
  {
    v9 = @"UITextInputResponderCapabilitiesChangedInputResponderKey";
    v5 = [(UIKeyboardImpl *)self inputDelegateManager];
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

- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)a3 selectionChanged:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"UITextInputResponderCapabilitiesChangedKeyboardOutputKey"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v5 setObject:v6 forKeyedSubscript:@"UITextInputResponderCapabilitiesChangedSelectionDidChangeKey"];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"UITextInputResponderCapabilitiesChangedNotification" object:0 userInfo:v5];
}

- (void)postInputResponderCapabilitiesChangedNotification
{
  v3 = [(UIKeyboardImpl *)self textInteractionAssistant];
  v7 = [v3 activeSelection];

  if (v7)
  {
    v4 = [v7 selectedRange];
    if (v4)
    {
      v5 = [v7 selectedRange];
      if ([v5 _isRanged])
      {
        v6 = [v7 isCommitting] ^ 1;
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

  else
  {
    v6 = 0;
  }

  [(UIKeyboardImpl *)self _postInputResponderCapabilitiesChangedNotificationWithOutput:0 selectionChanged:v6];
}

- (id)asyncInputDelegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 asyncInputDelegate];

  return v3;
}

- (id)webInputDelegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 webInputDelegate];

  return v3;
}

- (id)asyncCapableInputDelegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 asyncCapableInputDelegate];

  return v3;
}

- (BOOL)hasAsyncCapableInputDelegate
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  v3 = [v2 hasAsyncCapableInputDelegate];

  return v3;
}

- (void)dismissFloatingKeyboardFromPencilKitIfNeeded
{
  if (![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard])
  {

    +[UIAssistantBarButtonItemProvider dismissFloatingKeyboardFromPencilKitIfNeeded];
  }
}

- (void)setDelegate:(id)a3
{
  if (self->m_initializationDone)
  {
    [(UIKeyboardImpl *)self setDelegate:a3 force:0];
  }
}

- (void)updateDictationButtonForDelegate:(id)a3
{
  v7 = a3;
  v4 = [(UIView *)self _rootInputWindowController];
  v5 = [v4 placement];
  if ([v5 isFloatingAssistantView])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v4 systemInputAssistantViewController];
    [v5 setInputAssistantButtonItemsForResponder:v7];
  }

LABEL_5:
}

- (void)releaseEmojiKeyboardPrewarmingAssertion
{
  emojiKeyboardPrewarmingAssertion = self->_emojiKeyboardPrewarmingAssertion;
  if (emojiKeyboardPrewarmingAssertion)
  {
    [(_UIAssertion *)emojiKeyboardPrewarmingAssertion _invalidate];
    v4 = self->_emojiKeyboardPrewarmingAssertion;
    self->_emojiKeyboardPrewarmingAssertion = 0;
  }
}

- (BOOL)imageSuggestionEnabled
{
  if ([(UIKeyboardImpl *)self usesCandidateSelection])
  {
    v3 = [(UIKeyboardImpl *)self candidateController];
    v4 = [v3 activeCandidateViewType];

    if ((v4 & 4) != 0)
    {
      return 0;
    }
  }

  return [(UIKeyboardImpl *)self delegateSupportsImagePaste];
}

- (void)textSuggestionDidChange:(id)a3
{
  v4 = a3;
  if (qword_1ED498A98 != -1)
  {
    dispatch_once(&qword_1ED498A98, &__block_literal_global_378);
  }

  v5 = [(UIKeyboardImpl *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UIKeyboardImpl_textSuggestionDidChange___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED498A90;
  v7 = v4;
  [v5 addTask:v8 breadcrumb:v6];
}

void __42__UIKeyboardImpl_textSuggestionDidChange___block_invoke()
{
  v0 = [&__block_literal_global_381_1 copy];
  v1 = qword_1ED498A90;
  qword_1ED498A90 = v0;
}

void __42__UIKeyboardImpl_textSuggestionDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 textDidChange:v3];
  [v4 returnExecutionToParent];
}

- (void)handleTraitChangeObserver:(id)a3 newResponder:(id)a4 updateTraitCollection:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 != v9 && v8 && self->_traitChangeObserver)
  {
    v11 = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke(v8);
    [v11 unregisterForTraitChanges:self->_traitChangeObserver];

    traitChangeObserver = self->_traitChangeObserver;
    self->_traitChangeObserver = 0;
  }

  if (v9 && (v8 != v9 || !self->_traitChangeObserver))
  {
    v10[2](v10, 0);
    v13 = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke(v9);
    v19[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke_2;
    v17[3] = &unk_1E71092D0;
    v18 = v10;
    v15 = [v13 registerForTraitChanges:v14 withHandler:v17];
    v16 = self->_traitChangeObserver;
    self->_traitChangeObserver = v15;
  }
}

id __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 responderForKeyboardAppearance];
  }

  else if ([v1 conformsToProtocol:&unk_1EFE41758])
  {
    v5 = v1;
  }

  else
  {
    v5 = [v1 _responderWindow];
  }

  v6 = v5;

  return v6;
}

void __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 traitCollection];
  v6 = [v8 userInterfaceStyle];
  v7 = [v5 userInterfaceStyle];

  if (v6 != v7)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)keyplaneView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIKeyboardLayout *)self->m_layout currentKeyplaneView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)prepareForFloatingTransition:(BOOL)a3
{
  v3 = a3;
  if (!a3 && [(UIKeyboardImpl *)self isUsingDictationLayout])
  {
    v5 = +[UIDictationView sharedInstance];
    v6 = +[UIDictationController sharedInstance];
    [v5 setState:{objc_msgSend(v6, "state")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyboardLayout *)self->m_layout prepareForFloatingTransition:v3];
  }

  if (v3)
  {

    [(UIKeyboardImpl *)self clearLanguageIndicator];
  }

  else
  {
    [(UIKeyboardImpl *)self forceShiftUpdate];

    [(UIKeyboardImpl *)self setCaretBlinks:1];
  }
}

- (BOOL)isTrackpadMode
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  m_layout = self->m_layout;

  return [(UIKeyboardLayout *)m_layout isTrackpadMode];
}

- (void)assertCursorForForSelectionChange
{
  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager _activeAssertionController];
  v3 = [v4 nonBlinkingAssertionWithReason:@"UIKeyboardImpl selection change"];
  [(UIKeyboardImpl *)self setCursorAssertion:v3];
}

- (void)clearCursorAssertion
{
  v3 = [(UIKeyboardImpl *)self cursorAssertion];

  if (v3)
  {
    v4 = [(UIKeyboardImpl *)self cursorAssertion];
    [v4 invalidate];

    [(UIKeyboardImpl *)self setCursorAssertion:0];
  }
}

- (id)physicalKeyboardEventWithInput:(id)a3 inputFlags:(int)a4
{
  v5 = [UIPhysicalKeyboardEvent _eventWithInput:a3 inputFlags:*&a4];
  [v5 setSource:{-[_UIKeyboardStateManager textInputSource](self->_keyboardStateManager, "textInputSource")}];

  return v5;
}

- (void)optOutASPInTextField
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  [v3 didOptOutOfAutofillSignup];

  v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  [v4 optOutASPInTextField];
}

- (BOOL)callShouldInsertText:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [v5 keyInputDelegate];

  LOBYTE(v5) = [(UIKeyboardImpl *)self callShouldInsertText:v4 onDelegate:v6];
  v7 = [(UIKeyboardImpl *)self inputDelegateManager];
  v8 = [v7 keyInputDelegate];
  LOBYTE(v4) = v6 == v8;

  return v4 & v5;
}

- (BOOL)insertTextIfShould:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self callShouldInsertText:v4];
  if (v5)
  {
    v6 = [(UIKeyboardImpl *)self inputDelegateManager];
    [v6 insertText:v4];
  }

  return v5;
}

- (BOOL)performSendAction
{
  v2 = [UIPhysicalKeyboardEvent _eventWithInput:@"\r" inputFlags:0];
  mach_absolute_time();
  [v2 _setHIDEvent:IOHIDEventCreateKeyboardEvent() keyboard:{objc_msgSend(UIApp, "_hardwareKeyboard")}];
  v3 = [UIApp _handleKeyboardShortcutForKeyboardEvent:v2 allowsRepeat:0];

  return v3;
}

- (void)textFrameChanged:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self inputDelegate];
  v6 = [v5 _textSelectingContainer];

  if (v6 != v4)
  {
    return;
  }

  v7 = [(UIView *)self->m_autocorrectPrompt superview];
  v8 = [(UIView *)self->m_autocorrectPrompt window];
  v9 = v8;
  if (v7 == v8)
  {
    v10 = [(UIView *)self->m_autocorrectPrompt window];
    v11 = [v10 _isTextEffectsWindow];

    if (v11)
    {
LABEL_7:
      v12 = [(UIKeyboardImpl *)self autocorrectionController];
      v17 = [v12 autocorrection];
      [(UIKeyboardImpl *)self updateAutocorrectPrompt:v17];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    v15 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    v16 = [v15 window];

    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  v18 = [(UIKeyboardImpl *)self candidateController];
  v19 = [v18 inlineCandidateView];
  v23 = [v19 superview];

  v20 = v23;
  if (v23)
  {
    v21 = +[UIPeripheralHost sharedInstance];
    v22 = [v21 transformedContainerView];

    v20 = v23;
    if (v23 == v22)
    {
      [(UIKeyboardImpl *)self updateTextCandidateView];
      v20 = v23;
    }
  }
}

- (id)_targetForResponderCommand:(SEL)a3
{
  v4 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [v4 _responderForEditing];
  v6 = _UIResponderTargetForAction(v5, a3, 0);

  return v6;
}

- (BOOL)_canHandleResponderCommand:(SEL)a3
{
  v4 = [(UIKeyboardImpl *)self _targetForResponderCommand:?];
  LOBYTE(a3) = [v4 canPerformAction:a3 withSender:0];

  return a3;
}

- (BOOL)_cancelOperation:(BOOL)a3 testOnly:(BOOL)a4
{
  if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
  {
    [(UIKeyboardImpl *)self dismissEmojiPopoverBeforeCleanup:0];
LABEL_21:
    LOBYTE(v23) = 1;
    return v23;
  }

  v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];

    if (![(UIKeyboardImpl *)self liveConversionEnabled])
    {
      if (!v9)
      {
        v10 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        if ([v10 hasCandidates])
        {
          v11 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
          v12 = [v11 hasCandidates];

          if (v12)
          {
            v13 = [(UIKeyboardImpl *)self keyboardState];
            v14 = [v13 inputForMarkedText];
            v15 = [v14 length];

            if (!v15)
            {
              [(UIKeyboardImpl *)self clearInput];
              [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
              goto LABEL_21;
            }

            v16 = [(UIKeyboardImpl *)self _markedText];
            v17 = [(UIKeyboardImpl *)self inputDelegateManager];
            v18 = [v17 callShouldReplaceExtendedRange:objc_msgSend(v16 withText:"length") includeMarkedText:{&stru_1EFB14550, 1}];

            if (v18)
            {
              [(UIKeyboardImpl *)self clearInput];
              [(UIKeyboardImpl *)self unmarkText:&stru_1EFB14550];
              [(UIKeyboardImpl *)self updateReturnKey];
            }

            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      goto LABEL_19;
    }
  }

  else if (![(UIKeyboardImpl *)self liveConversionEnabled])
  {
    goto LABEL_19;
  }

  v19 = [(UIKeyboardImpl *)self keyboardState];
  v20 = [v19 inputForMarkedText];
  v21 = [v20 length];

  if (v21)
  {
    v22 = [(UIKeyboardImpl *)self keyboardState];
    [v22 setUserSelectedCurrentCandidate:0];

    if (a4)
    {
      goto LABEL_21;
    }

    if (qword_1ED498AA8 != -1)
    {
      dispatch_once(&qword_1ED498AA8, &__block_literal_global_411_0);
    }

    v16 = [(UIKeyboardImpl *)self taskQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke_3;
    v28[3] = &unk_1E70FD058;
    v28[4] = self;
    [v16 performSingleTask:v28 breadcrumb:qword_1ED498AA0];
LABEL_17:

    goto LABEL_21;
  }

LABEL_19:
  if ([(UIKeyboardImpl *)self hasAutocorrectPrompt])
  {
    [(UIKeyboardImpl *)self fadeAutocorrectPrompt];
    goto LABEL_21;
  }

  if (a3 || ([(UIKeyboardImpl *)self delegateAsResponder], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v26 = v25;
    v23 = [(UIKeyboardImpl *)self _canHandleResponderCommand:sel__cancelOperation_];

    if (v23 && !a4)
    {
      v27 = [(UIKeyboardImpl *)self _targetForResponderCommand:sel__cancelOperation_];
      [v27 _cancelOperation:0];
    }
  }

  return v23;
}

void __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke()
{
  v0 = [&__block_literal_global_413_1 copy];
  v1 = qword_1ED498AA0;
  qword_1ED498AA0 = v0;
}

void __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D95F8];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setString:@"\x1B"];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke_4;
  v8[3] = &unk_1E70FD058;
  v8[4] = v6;
  v7 = [v4 childWithContinuation:v8];

  [v6 handleKeyboardInput:v5 executionContext:v7];
}

void __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) generateCandidates];
  if ([*(a1 + 32) delayedCandidateList])
  {
    v3 = [*(a1 + 32) candidateController];
    v4 = [v3 inlineCandidateView];

    if (v4)
    {
      [*(a1 + 32) removeCandidateList];
    }
  }

  [v5 returnExecutionToParent];
}

- (BOOL)inputModeSwitcherVisible
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    return self->m_inputModeSwitcherVisible;
  }

  v4 = +[UIInputSwitcher sharedInstance];
  v5 = [v4 isVisible];

  return v5;
}

- (void)dismissKeyboardFeedbackAssistantViewController
{
  v3 = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  [(UIKeyboardImpl *)self setKeyboardFeedbackAssistantViewController:0];
}

- (void)updateLayoutIfNeeded
{
  if (!self->m_layout)
  {
    [(UIKeyboardImpl *)self updateLayout];
  }
}

- (void)prepareForGeometryChange
{
  [(UIKeyboardImpl *)self setGeometryIsChanging:1];
  [(UIKeyboardImpl *)self updateLayoutIfNeeded];
  [(UIKeyboardImpl *)self removeAutocorrectPrompt];
  self->m_originalOrientation = [(UIKeyboardLayout *)self->m_layout orientation];
  self->m_suppressUpdateCandidateView = 1;

  [(UIKeyboardImpl *)self performSelector:sel_releaseSuppressUpdateCandidateView withObject:0 afterDelay:0.5];
}

- (void)geometryChangeDone:(BOOL)a3
{
  self->m_suppressUpdateCandidateView = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

  [(UIKeyboardImpl *)self clearLongPressTimer];
  if (![(UIKeyboardImpl *)self showsCandidateBar])
  {
    v4 = [(UIKeyboardImpl *)self inputDelegateManager];
    v5 = [v4 keyInputDelegate];

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  [(UIKeyboardImpl *)self updateCandidateDisplay];
  if ([(UIKeyboardImpl *)self isPredictionViewControllerVisible]&& [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType])
  {
    v6 = [(UIKeyboardImpl *)self autocorrectionController];
    [v6 setNeedsAutocorrection];
  }

  if ([(UIKeyboardImpl *)self usesCandidateSelection])
  {
    v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    if ([v7 slottedCandidatesCount])
    {
    }

    else
    {
      v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];

      if (v8)
      {
        goto LABEL_12;
      }
    }

    [(UIKeyboardImpl *)self generateCandidates];
  }

LABEL_12:
  m_originalOrientation = self->m_originalOrientation;
  if (m_originalOrientation == -[UIKeyboardLayout orientation](self->m_layout, "orientation") && [UIKeyboardActiveUserSelectableInputModes count] >= 2)
  {
    [(UIKeyboardImpl *)self updateInputModeIndicatorOnSingleKeyOnly:1];
  }

LABEL_15:

  [(UIKeyboardImpl *)self setGeometryIsChanging:0];
}

- (CGRect)subtractKeyboardFrameFromRect:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(UIKeyboardImpl *)self window];

  if (v10)
  {
    v11 = +[UIPeripheralHost sharedInstance];
    v12 = [v11 transformedContainerView];

    v41 = height;
    [v12 convertRect:v9 fromView:{x, y, width, height}];
    v39 = v14;
    v40 = v13;
    v42 = v15;
    v17 = v16;
    v18 = *(MEMORY[0x1E695F058] + 8);
    v43 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 16);
    v20 = *(MEMORY[0x1E695F058] + 24);
    if (!+[UIKeyboardImpl isSplit])
    {
      v21 = +[UIPeripheralHost sharedInstance];
      v22 = [v21 isUndocked];

      if ((v22 & 1) == 0)
      {
        v23 = self;
        v24 = [(UIKeyboardImpl *)v23 window];
        v25 = [v12 window];

        if (v24 != v25)
        {
          v26 = [v12 window];
          v27 = [v26 rootViewController];
          v28 = [v27 inputViewSet];
          v29 = [v28 inputView];

          v23 = v29;
        }

        [(UIView *)v23 bounds];
        [v12 convertRect:v23 fromView:?];
        v43 = v30;
        v18 = v31;
        v19 = v32;
        v20 = v33;
      }
    }

    v44.size.width = v39;
    v44.origin.x = v40;
    v46.origin.x = v43;
    v44.origin.y = v42;
    v44.size.height = v17;
    v46.origin.y = v18;
    v46.size.width = v19;
    v46.size.height = v20;
    if (CGRectIntersectsRect(v44, v46))
    {
      v34 = v42 + v17 - v18;
      height = v41;
      if (v34 > 0.0)
      {
        height = v41 - v34;
        if (v41 - v34 < 0.0)
        {
          height = 0.0;
        }
      }
    }

    else
    {
      height = v41;
    }
  }

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:(BOOL)a3 ignoreHidePredictionTrait:(BOOL)a4
{
  v4 = a4;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v8 = [v7 inputViews];

  if (([v8 isCustomInputView] & 1) == 0 && (!-[UIKeyboardImpl _allowMinimizeForHardwareKeyboard](self, "_allowMinimizeForHardwareKeyboard") ? (v9 = -[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode")) : (v9 = -[UIKeyboardImpl isMinimized](self, "isMinimized")), ((v10 = v9, (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) || (-[UIView _keyboardOrientation](self, "_keyboardOrientation") - 3) < 2 || a3 || (UIKeyboardAlwaysShowCandidateBarForCurrentInputMode() & 1) != 0 || -[UIKeyboardImpl canShowAppConnections](self, "canShowAppConnections")) && -[UIKeyboardImpl usesCandidateSelection](self, "usesCandidateSelection") && self->m_layout && !-[UIKeyboardImpl isUsingDictationLayout](self, "isUsingDictationLayout") && !-[UIKeyboardLayout isResized](self->m_layout, "isResized")))
  {
    v11 = [(UIKeyboardLayout *)self->m_layout candidateList];
    if (v11 || [(UIKeyboardLayout *)self->m_layout hasCandidateKeys])
    {
      v12 = 0;
    }

    else
    {
      v14 = [(UIKeyboardImpl *)self dynamicCaretList];
      v12 = !v14 && ([(UIKeyboardImpl *)self canUseCandidateBarAsSupplementToInlineView]|| (!v10 || self->m_maximizing) && ![(UIKeyboardImpl *)self showsCandidateInline]) && [(UIKeyboardImpl *)self currentKeyboardTraitsAllowCandidateBarWhileIgnoringHidePredictionTrait:v4];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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

- (void)finishLayoutChangeWithArguments:(id)a3
{
  v45 = a3;
  v9 = [v45 count] == 2;
  v4 = v45;
  if (v9)
  {
    v5 = [v45 objectAtIndex:0];
    v6 = [v45 objectAtIndex:1];
    v7 = self->m_layout;
    objc_storeStrong(&self->m_layout, v5);
    m_layout = self->m_layout;
    if (v7)
    {
      v9 = v7 == m_layout;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [(UIView *)v7 removeFromSuperview];
      m_layout = self->m_layout;
    }

    [(UIKeyboardLayout *)m_layout setSizeDelegate:self];
    [(UIView *)self addSubview:self->m_layout];
    if (+[UIKeyboard resizable])
    {
      [(UIView *)self->m_layout setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [(UIView *)self->m_layout topAnchor];
      v11 = [(UIView *)self topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v12 setActive:1];

      v13 = [(UIView *)self->m_layout bottomAnchor];
      v14 = [(UIView *)self bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];

      v16 = [(UIView *)self->m_layout leadingAnchor];
      v17 = [(UIView *)self leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [(UIView *)self->m_layout trailingAnchor];
      v20 = [(UIView *)self trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v21 setActive:1];
    }

    [(UIKeyboardImpl *)self setShouldSkipCandidateSelection:0];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setOriginalShouldSkipCandidateSelection:0];
    if (+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v22 = objc_claimAutoreleasedReturnValue(), [v22 textInputTraits], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "acceptsSplitKeyboard"), v23, v22, v24))
    {
      v25 = [(UIKeyboardLayout *)v7 currentKeyplane];
      [v25 frameForKeylayoutName:@"split-left"];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [v25 frameForKeylayoutName:@"split-right"];
      v38 = [UIKBSplitTraits traitsWithLeftFrame:-1 rightFrame:v27 corners:v29, v31, v33, v34, v35, v36, v37];
    }

    else
    {
      v38 = 0;
    }

    v39 = [(_UIKeyboardStateManager *)self->_keyboardStateManager updatingPreferences];
    v40 = self->m_layout;
    v41 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (v39)
    {
      [(UIKeyboardLayout *)v40 reloadKeyboardWithInputTraits:v41 screenTraits:v6 splitTraits:v38];
    }

    else
    {
      [(UIKeyboardLayout *)v40 showKeyboardWithInputTraits:v41 screenTraits:v6 splitTraits:v38];
    }

    [(UIKeyboardImpl *)self updateShiftState];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager _setShiftNeedsUpdate:0];
    v42 = [MEMORY[0x1E696AD88] defaultCenter];
    [v42 postNotificationName:@"UIKeyboardLayoutDidChangedNotification" object:0];

    [(UIKeyboardImpl *)self callLayoutUpdateReturnKey];
    [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
    if ([(UIKeyboardImpl *)self floatingForced])
    {
      v43 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
      v44 = [v43 usesContinuousPath];

      if (v44)
      {
        [(UIKeyboardImpl *)self performSelector:sel_presentContinuousPathIntroductionView withObject:0 afterDelay:0.0];
      }
    }

    v4 = v45;
  }
}

- (void)_updateLayoutAndLocalizedKeys
{
  if (byte_1ED4989F2 == 1)
  {
    [(UIKeyboardImpl *)self refreshRivenPreferences];
  }

  [(UIKeyboardImpl *)self updateLayout];

  [(UIKeyboardImpl *)self callLayoutUpdateLocalizedKeys];
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v10 = [(UIKeyboardImpl *)self inputDelegate];
  if (v10 && !self->m_isRotating)
  {
    v12 = [(UIKeyboardImpl *)self textInputTraits];
    v13 = [v12 isSecureTextEntry];

    if (v13 & 1) != 0 || -[UIKeyboardImpl usesCandidateSelection](self, "usesCandidateSelection") && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && (-[UIKeyboardImpl candidateController](self, "candidateController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 activeCandidateViewType], v15, (v16 & 2) != 0) && (-[UIKeyboardImpl candidateController](self, "candidateController"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "barIsExtended"), v17, (v18) || !-[UIKeyboardImpl keyboardLayoutIsInAnotherProcess](self, "keyboardLayoutIsInAnotherProcess") && ((m_layout = self->m_layout) == 0 || !-[UIKeyboardLayout shouldAllowSelectionGestures:atPoint:toBegin:](m_layout, "shouldAllowSelectionGestures:atPoint:toBegin:", v8, v5, x, y)))
    {
      LOBYTE(v11) = 0;
      return v11;
    }

    v10 = [(UIView *)self _rootInputWindowController];
    v11 = [v10 isTransitioningBetweenFloatingStates] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_updateExternalDeviceInputSettingForWindow:(id)a3
{
  if (a3)
  {
    v6 = [a3 screen];
    v4 = [(UIKeyboardImpl *)self inputDelegateManager];
    v5 = [v4 keyInputDelegate];
    [v6 _setExternalDeviceShouldInputText:v5 != 0];
  }

  else
  {
    v6 = [(UIKeyboardImpl *)self window];
    v4 = [v6 screen];
    [v4 _setExternalDeviceShouldInputText:0];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  [(UIKeyboardImpl *)self _updateExternalDeviceInputSettingForWindow:v4];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:v4];

  if (!v4)
  {
    [(UIKeyboardImpl *)self dismissContinuousPathIntroductionView];
    [(UIKeyboardImpl *)self dismissMultilingualKeyboardTip];
    [(UIKeyboardImpl *)self dismissMultilingualSettingTip];

    [(UIKeyboardImpl *)self dismissStickerEditor:0];
  }
}

- (void)updateInputAssistantButtonItems
{
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v5 systemInputAssistantViewController];
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 responder];
  [v2 setInputAssistantButtonItemsForResponder:v4];
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self textInputTraits];
  [v4 setIsSecureTextEntry:{objc_msgSend(v5, "isSecureTextEntry")}];

  if ([v4 sizeDidChange])
  {
    [v4 size];
    v7 = v6;
    v9 = v8;
    +[UIKeyboardImpl additionalInstanceHeight];
    v11 = v10;
    v12 = v9 + v10;
    [(UIView *)self bounds];
    if (v7 != v14 || v12 != v13)
    {
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && (-[_UIKeyboardStateManager textInputTraits](self->_keyboardStateManager, "textInputTraits"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 keyboardType], v15, v16 == 127))
      {
        [(UIKeyboardImpl *)self setFrame:0.0, 0.0, v7, v9];
      }

      else
      {
        [(UIView *)self->m_layout setFrame:0.0, v11, v7, v9];
        [(UIKeyboardImpl *)self setFrame:0.0, 0.0, v7, v12];
        if ([(UIKeyboardImpl *)self showsCandidateBar])
        {
          [(UIKeyboardImpl *)self setShowsCandidateBar:1];
        }
      }

      [(UIView *)self bounds];
      if (v7 != v19 || v12 != v18)
      {
        [(UIView *)self bounds];
        if (v20 > 0.0)
        {
          [(UIView *)self bounds];
          if (v21 > 0.0)
          {
            [(UIView *)self bounds];
            v7 = v22;
            v12 = v23;
          }
        }
      }
    }

    [(UIView *)self->m_layout frame];
    if (v11 != v24 || ([(UIView *)self->m_layout frame], v25 != 0.0))
    {
      v26 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v27 = [v26 preferencesActions];
      if ([v27 currentInputModeSupportsCrescendo])
      {
      }

      else
      {
        v28 = +[UIKeyboard resizable];

        if (!v28)
        {
          [(UIView *)self->m_layout frame];
          [(UIView *)self->m_layout setFrame:0.0, v11];
        }
      }
    }

    [v4 setSize:{v7, v12}];
    v29 = self;
    v17 = &v29;
  }

  else
  {
    v30 = self;
    v17 = &v30;
  }

  v17[1] = UIKeyboardImpl;
  objc_msgSendSuper2(v17, sel__didChangeKeyplaneWithContext_, v4, v29);
}

- (unint64_t)_clipCornersOfView:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardImpl *)self splitTransitionInProgress];
  if (v4)
  {
    if ([(UIKeyboardImpl *)self centerFilled])
    {
      v6 = 0;
      goto LABEL_20;
    }

    [(UIView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v4 bounds];
    [(UIView *)self convertRect:v4 fromView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v39.origin.x = v12;
    v39.origin.y = v14;
    v39.size.width = v16;
    v39.size.height = v18;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    if (MaxY == CGRectGetMaxY(v40))
    {
      v28 = 12;
    }

    else
    {
      v28 = 0;
    }

    if ([(UIKeyboardImpl *)self shouldShowCandidateBar])
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 | 3;
    }

    v30 = [(UIKeyboardImpl *)self window];
    if (v30)
    {
    }

    else
    {
      v32 = +[UIKeyboard activeKeyboard];

      if (v32)
      {
        v33 = +[UIPeripheralHost sharedInstance];
        v31 = [v33 _clipCornersOfView:v4];

        goto LABEL_19;
      }
    }

    v35.receiver = self;
    v35.super_class = UIKeyboardImpl;
    v31 = [(UIView *)&v35 _clipCornersOfView:v4];
LABEL_19:
    v6 = v31 & v29;
    goto LABEL_20;
  }

  v7 = v5;
  v36.receiver = self;
  v36.super_class = UIKeyboardImpl;
  v6 = [(UIView *)&v36 _clipCornersOfView:0];
  if (v7)
  {
    [(UIView *)self frame];
    v8 = CGRectGetMaxY(v37);
    v9 = [(UIView *)self superview];
    [v9 bounds];
    v10 = CGRectGetMaxY(v38);

    if (v8 == v10)
    {
      v6 |= 0xCuLL;
    }
  }

LABEL_20:

  return v6;
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
    [v20 addAttribute:*off_1E70ECAD8 value:&unk_1EFE31C18 range:{0, v10}];
    if (length)
    {
      [v20 addAttribute:v12 value:&unk_1EFE31C30 range:{location, length}];
    }

    [v11 addObject:v12];
    v13 = [(UIKeyboardImpl *)self inputDelegateManager];
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

- (id)markedTextOverlay
{
  m_markedTextOverlay = self->m_markedTextOverlay;
  if (!m_markedTextOverlay)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->m_markedTextOverlay;
    self->m_markedTextOverlay = v5;

    m_markedTextOverlay = self->m_markedTextOverlay;
  }

  return m_markedTextOverlay;
}

- (void)deleteHandwritingStrokesAtIndexes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyboardLayout *)self->m_layout deleteHandwritingStrokesAtIndexes:v4];
  }
}

- (void)showSelectionCommands
{
  v2 = [(UIKeyboardImpl *)self _editMenuAssistant];
  [v2 showSelectionCommands];
}

- (void)setLabel:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 isEqualToString:@"UI-Nothing"];
  m_layout = self->m_layout;
  if (v7)
  {
    [(UIKeyboardLayout *)m_layout restoreDefaultsForKey:v6];
  }

  else
  {
    [(UIKeyboardLayout *)m_layout setLabel:v9 forKey:v6];
  }
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

    [(UIKeyboardImpl *)self skipHitTestForTouchEvents:v6, v7, v8];
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

  [(UIKeyboardImpl *)self performHitTestForTouchEvents:v9 executionContextPassingNSNumber:v7, v10, v11];
}

- (void)releaseInputManagerIfInactive
{
  v3 = [(UIKeyboardImpl *)self delegate];

  if (!v3)
  {

    [(UIKeyboardImpl *)self releaseInputManager];
  }
}

- (BOOL)shouldUseCarPlayModes
{
  if ([UIApp _isSpringBoard])
  {
    return 0;
  }

  v3 = [objc_opt_class() keyboardWindow];
  v4 = [v3 screen];
  v5 = [UIKBScreenTraits traitsWithScreen:v4 orientation:0];

  v2 = [v5 idiom] == 3;
  return v2;
}

+ (id)uniqueNumberPadInputModesFromInputModes:(id)a3 forKeyboardType:(int64_t)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = !+[UIKeyboardImpl isFloating];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (![v5 count] || (a4 > 0xB || ((1 << a4) & 0x930) == 0) && a4 != 127)
  {
    goto LABEL_11;
  }

  v7 = v6 ^ 1;
  if (a4 == 127)
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
LABEL_11:
    v8 = v5;
    goto LABEL_12;
  }

  if ([v5 count] == 1)
  {
    v10 = [v5 firstObject];
    if ([v10 isExtensionInputMode])
    {
      v11 = +[UIKeyboardInputMode intlInputMode];
      v8 = [v5 arrayByAddingObject:v11];
    }

    else
    {
      v8 = v5;
    }

    goto LABEL_12;
  }

  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = objc_opt_new();
  v71 = v12;
  [v13 setLocale:v12];
  [v13 setNumberStyle:0];
  v69 = v13;
  v63 = [v13 stringFromNumber:&unk_1EFE31C48];
  v14 = [MEMORY[0x1E695DFA8] set];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = +[UIKeyboardImpl activeInstance];
  v17 = [v16 isInHardwareKeyboardMode];

  if (v17)
  {
    v60 = BKSHIDServicesGetHardwareKeyboardLanguage();
    v66 = UIKeyboardGetInputModesSupportingHardwareKeyboard();
  }

  else
  {
    v60 = &stru_1EFB14550;
    v66 = MEMORY[0x1E695E0F0];
  }

  v68 = v14;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v61 = v5;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v80 objects:v86 count:16];
  obj = v18;
  v62 = v15;
  if (v19)
  {
    v20 = v19;
    v59 = a4;
    v64 = 0;
    v21 = 0;
    v22 = *v81;
    v23 = v66;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v81 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v80 + 1) + 8 * i);
        if ([v25 isExtensionInputMode])
        {
          __74__UIKeyboardImpl_uniqueNumberPadInputModesFromInputModes_forKeyboardType___block_invoke(v25);
        }

        else
        {
          [v25 identifier];
        }
        v26 = ;
        if (UIKeyboardInputModeLanguageMatchesLocaleLanguage(v26, v71))
        {
          if (!v21 || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v27 = objc_claimAutoreleasedReturnValue(), [v27 currentInputMode], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v25, "isEqual:", v28), v28, v23 = v66, v27, v29))
          {
            v30 = v25;

            v21 = v30;
          }
        }

        if (v17)
        {
          if ([v23 count])
          {
            v31 = [v25 normalizedIdentifier];
            v32 = [v23 containsObject:v31];

            if (v32)
            {
              v33 = @"Automatic";

              v64 = v33;
            }
          }
        }
      }

      v34 = obj;
      v20 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v20);

    v35 = v21 == 0;
    if (v59 == 127)
    {
      v15 = v62;
      if (v21)
      {
        v36 = 0;
        v37 = v64;
        goto LABEL_70;
      }

      v37 = v64;
      v34 = obj;
    }

    else
    {
      v15 = v62;
      v37 = v64;
    }
  }

  else
  {

    v21 = 0;
    v34 = v18;
    v37 = 0;
    v35 = 1;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v38 = v34;
  v39 = [v38 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v39)
  {
    v40 = v39;
    v65 = v37;
    v67 = 0;
    v41 = *v77;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v77 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v76 + 1) + 8 * j);
        if (v43 != v21)
        {
          if ([*(*(&v76 + 1) + 8 * j) isExtensionInputMode])
          {
            __74__UIKeyboardImpl_uniqueNumberPadInputModesFromInputModes_forKeyboardType___block_invoke(v43);
          }

          else
          {
            [v43 identifier];
          }
          v44 = ;
          v45 = UIKeyboardInputModeGetNumericLocale(v44);
          [v69 setLocale:v45];

          v46 = [v69 stringFromNumber:&unk_1EFE31C48];
          v47 = v46;
          if ((v35 || ([v46 isEqualToString:v63] & 1) == 0) && (objc_msgSend(v68, "containsObject:", v47) & 1) == 0)
          {
            [v62 addObject:v43];
            [v68 addObject:v47];
            v67 |= [v43 isExtensionInputMode] ^ 1;
          }
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v40);

    v37 = v65;
    if (v35)
    {
      v21 = 0;
      v15 = v62;
      if (v67)
      {
        goto LABEL_86;
      }

      goto LABEL_73;
    }

    v15 = v62;
    v36 = v67;
    goto LABEL_70;
  }

  if (!v35)
  {
    v36 = 0;
LABEL_70:
    if (v37)
    {
      v48 = [v21 identifier];
      v49 = UIKeyboardInputModeWithNewHWLayout(v48, v37);
      v50 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v49];

      v21 = v50;
    }

    [v15 insertObject:v21 atIndex:0];
    if (v36 & 1 | (([v21 isExtensionInputMode] & 1) == 0))
    {
      goto LABEL_86;
    }

    goto LABEL_73;
  }

  v21 = 0;
LABEL_73:
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v51 = obj;
  v52 = [v51 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v73;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v72 + 1) + 8 * k);
        if (([v57 isExtensionInputMode] & 1) == 0)
        {
          [v15 addObject:v57];
          v54 = 1;
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v53);

    if (v54)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v58 = +[UIKeyboardInputMode intlInputMode];
  [v15 addObject:v58];

LABEL_86:
  v8 = v15;

  v5 = v61;
LABEL_12:

  return v8;
}

id __74__UIKeyboardImpl_uniqueNumberPadInputModesFromInputModes_forKeyboardType___block_invoke(void *a1)
{
  v1 = [a1 primaryLanguage];
  v2 = TIGetDefaultInputModesForLanguage();
  v3 = [v2 firstObject];

  if (!v3)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 defaultEnabledInputModesForCurrentLocale:1];
    v3 = [v5 firstObject];
  }

  return v3;
}

- (void)recomputeActiveInputModesWithExtensions:(BOOL)a3
{
  v3 = a3;
  keyboardStateManager = self->_keyboardStateManager;
  v5 = [(_UIKeyboardStateManager *)keyboardStateManager textInputTraits];
  -[_UIKeyboardStateManager recomputeActiveInputModesWithExtensions:allowNonLinguisticInputModes:](keyboardStateManager, "recomputeActiveInputModesWithExtensions:allowNonLinguisticInputModes:", v3, [v5 acceptsInitialEmojiKeyboard]);
}

- (id)responderStylingTraitsForceEditingMask:(BOOL)a3
{
  if (a3)
  {
    v4 = 6;
  }

  else
  {
    v4 = [(UIKeyboardLayout *)self->m_layout textEditingKeyMask];
  }

  v5 = [(UIKeyboardImpl *)self delegateAsResponder];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    v8 = [v7 isEditable];

    if (!v8)
    {
      v4 &= ~1uLL;
    }
  }

  v9 = [(UIKeyboardImpl *)self delegateAsResponder];
  v10 = [v9 _responderForEditing];
  v11 = [UIKBTextEditingTraits traitsWithResponder:v10 keyMaskFlags:v4];

  return v11;
}

- (void)cutOperation
{
  v3 = [(UIKeyboardImpl *)self delegateAsResponder];
  v4 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [v3 canPerformAction:sel_cut_ withSender:v4];

  if (v5)
  {
    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    v6 = [(UIKeyboardImpl *)self delegateAsResponder];
    [v7 cut:v6];
  }
}

- (void)copyOperation
{
  v3 = [(UIKeyboardImpl *)self delegateAsResponder];
  v4 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [v3 canPerformAction:sel_copy_ withSender:v4];

  if (v5)
  {
    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    v6 = [(UIKeyboardImpl *)self delegateAsResponder];
    [v7 copy:v6];
  }
}

- (void)pasteOperation
{
  v3 = [(UIKeyboardImpl *)self delegateAsResponder];
  v4 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [v3 canPerformAction:sel_paste_ withSender:v4];

  if (v5)
  {
    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    v6 = [(UIKeyboardImpl *)self delegateAsResponder];
    [v7 paste:v6];
  }
}

- (void)toggleShift
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager shifted]^ 1;

  [(UIKeyboardImpl *)self setShift:v3 autoshift:0];
}

- (void)updateShowCandidateBar
{
  v3 = [(UIKeyboardImpl *)self shouldShowCandidateBar];

  [(UIKeyboardImpl *)self setShowsCandidateBar:v3];
}

- (void)playDeleteKeyFeedbackIfNecessaryRepeat:(BOOL)a3 rapid:(BOOL)a4 deleteCount:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autoDeleteTask];

  if (v9)
  {
    if ([(UIKeyboardLayout *)self->m_layout idiom]== 3)
    {
      v11 = +[UIDevice currentDevice];
      [v11 _playSystemSound:1123];
    }

    else
    {
      if (+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled])
      {
        v10 = !v7;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {

        [(UIKeyboardImpl *)self playDeleteKeyFeedbackRepeat:v7 rapid:v6 deleteCount:a5];
      }
    }
  }
}

- (void)playDeleteKeyFeedbackRepeat:(BOOL)a3 rapid:(BOOL)a4 deleteCount:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(UIKeyboardLayout *)self->m_layout currentKeyplane];
  v19 = [v9 firstCachedKeyWithName:@"Delete-Key"];

  [v19 frame];
  MidX = CGRectGetMidX(v21);
  [v19 frame];
  MidY = CGRectGetMidY(v22);
  v12 = [(UIKeyboardImpl *)self textInputTraits];
  v13 = [v12 isSecureTextEntry];

  if (v13)
  {
    m_feedbackGenerator = self->m_feedbackGenerator;
    v15 = 1;
  }

  else
  {
    v16 = 4;
    if (v6)
    {
      v16 = 5;
    }

    if (v7)
    {
      v17 = v16;
    }

    else
    {
      v17 = 3;
    }

    v18 = objc_opt_respondsToSelector();
    m_feedbackGenerator = self->m_feedbackGenerator;
    v15 = v17;
    if (v18)
    {
      [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:v17 textLength:a5 atLocation:MidX, MidY];
      goto LABEL_11;
    }
  }

  [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:v15 atLocation:MidX, MidY];
LABEL_11:
}

- (void)playInputCandidateFeedback:(int64_t)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = objc_opt_respondsToSelector();
  m_feedbackGenerator = self->m_feedbackGenerator;
  if (v8)
  {

    [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:10 textLength:a3 atLocation:x, y];
  }

  else
  {

    [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:10 atLocation:x, y];
  }
}

- (void)completeDelete
{
  [(UIKeyboardImpl *)self generateCandidates];
  [(UIKeyboardImpl *)self updateCandidateDisplay];
  [(UIKeyboardImpl *)self updateReturnKey];

  [(UIKeyboardImpl *)self updateNoContentViews];
}

- (void)becomeFirstResponderAndMakeVisible:(BOOL)a3
{
  v5 = [(UIKeyboardImpl *)self delegateAsResponder];
  v9 = v5;
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
    v7 = [(UIKeyboardImpl *)self delegate];

    if (v6 != v7)
    {
      v8 = [(UIKeyboardImpl *)self textInputTraits];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTraitsForPreviousDelegate:v8];

      [v6 _becomeFirstResponderAndMakeVisible];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTraitsForPreviousDelegate:0];
    }
  }
}

- (void)updateKeyboardStateForReplacingText:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(UIKeyboardImpl *)self documentState];
  v8 = [v9 documentStateAfterReplacingText:v7 withText:v6];

  [(UIKeyboardImpl *)self setDocumentState:v8];
}

- (void)moveCursorByAmount:(int64_t)a3
{
  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  [v4 _moveCurrentSelection:a3];
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

  [(UIKeyboardImpl *)self addInputString:a3 withFlags:v4];
}

- (void)movePhraseBoundaryToDirection:(int64_t)a3 granularity:(int64_t)a4
{
  if ([(UIKeyboardImpl *)self hasEditableMarkedText]&& [(UIKeyboardImpl *)self phraseBoundary]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1ED498AB8 != -1)
    {
      dispatch_once(&qword_1ED498AB8, &__block_literal_global_473);
    }

    v7 = [(UIKeyboardImpl *)self taskQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__UIKeyboardImpl_movePhraseBoundaryToDirection_granularity___block_invoke_3;
    v8[3] = &unk_1E70FDA90;
    v8[4] = self;
    v8[5] = a3;
    v8[6] = a4;
    [v7 performTask:v8 breadcrumb:qword_1ED498AB0];
  }
}

void __60__UIKeyboardImpl_movePhraseBoundaryToDirection_granularity___block_invoke()
{
  v0 = [&__block_literal_global_475_0 copy];
  v1 = qword_1ED498AB0;
  qword_1ED498AB0 = v0;
}

- (void)updateLayoutAndSetShift
{
  [(UIKeyboardImpl *)self updateLayout];

  [(UIKeyboardImpl *)self setShift:1];
}

- (BOOL)nextCharacterIsWordCharacter
{
  v3 = [(UIKeyboardImpl *)self inputDelegate];
  v4 = [v3 _characterAfterCaretSelection];

  v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
    v8 = [MEMORY[0x1E696AEC0] _stringWithUnichar:v4];
    v9 = [v7 stringEndsWord:v8] ^ 1;
  }

  return v9;
}

- (void)collapseSelection
{
  v2 = [(UIKeyboardImpl *)self inputDelegateManager];
  [v2 collapseSelectionAndAdjustByOffset:0];
}

- (BOOL)_shouldAcceptAutocorrectionOnSelectionChange
{
  v3 = [(UIKeyboardImpl *)self autocorrectionController];
  if ([v3 requestedAutocorrection])
  {
    v4 = [(UIKeyboardImpl *)self _hasMarkedText];
  }

  else
  {
    v5 = [(UIKeyboardImpl *)self autocorrectionController];
    v6 = [v5 autocorrection];
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(UIKeyboardImpl *)self _hasMarkedText];
    }
  }

  return v4;
}

- (void)acceptInlineCompletionWithCompletionHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[UIKeyboardImpl acceptInlineCompletionWithCompletionHandler:]";
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s Initiating accept inline completion", buf, 0xCu);
  }

  [(UIKeyboardImpl *)self beginAcceptingInlineCompletionByDirectTap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__UIKeyboardImpl_acceptInlineCompletionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E70FE248;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(UIKeyboardImpl *)self acceptAutocorrectionWithCompletionHandler:v7];
}

uint64_t __62__UIKeyboardImpl_acceptInlineCompletionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) endAcceptingInlineCompletionByDirectTap];
  v4 = _UIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIKeyboardImpl acceptInlineCompletionWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed accept inline completion", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)beginAcceptingInlineCompletionByDirectTap
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_beginAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    v3 = [(UIKeyboardImpl *)self inlineTextCompletionController];
    [v3 setCurrentlyAcceptingInlineCompletionByDirectTap:1];
  }
}

- (void)endAcceptingInlineCompletionByDirectTap
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_endAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    v3 = [(UIKeyboardImpl *)self inlineTextCompletionController];
    [v3 setCurrentlyAcceptingInlineCompletionByDirectTap:0];
  }
}

- (BOOL)insertsSpaceAfterPredictiveInput
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  v3 = [v2 insertsSpaceAfterPredictiveInput];

  return v3;
}

- (void)acceptHandwritingCandidate
{
  if ([(UIKeyboardLayout *)self->m_layout isHandwritingPlane])
  {
    v3 = [(UIKeyboardImpl *)self acceptCurrentCandidate];
  }
}

- (void)showNextCandidates
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [v2 showCandidateInForwardDirection:1 granularity:0];
}

- (void)showPreviousCandidate
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [v2 showCandidateInForwardDirection:0 granularity:0];
}

- (void)showNextPage
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [v2 showCandidateInForwardDirection:1 granularity:2];
}

- (void)jumpToCompositions
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    [v5 jumpToCompositions];
  }
}

- (void)revealHiddenCandidates
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    [v5 revealHiddenCandidates];
  }
}

- (void)clearRecentInput
{
  v2 = MEMORY[0x1E69D9690];
  v5 = [(UIKeyboardImpl *)self keyboardState];
  v3 = [v5 textInputTraits];
  v4 = [v3 recentInputIdentifier];
  [v2 clearRecentInputForIdentifier:v4];
}

- (void)clearAnimations
{
  v3 = [(UIView *)self layer];
  [v3 removeAllAnimations];

  m_layout = self->m_layout;

  [(UIKeyboardLayout *)m_layout deactivateActiveKeys];
}

- (void)deferReplaceTextActionToSystem:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIKeyboardImpl.m" lineNumber:7813 description:@"Expected argument to be of class UITextReplacement"];
  }

  [(UIKeyboardImpl *)self replaceText:v6];
}

- (void)scheduleReplacementsWithOptions:(unint64_t)a3
{
  v5 = [(UIKeyboardImpl *)self inputDelegate];
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

    v7 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    v8 = [(UIKeyboardImpl *)self inputDelegate];
    v9 = [(UIKeyboardImpl *)self inputDelegateManager];
    v10 = [v9 selectedTextRange];
    [v7 showAutocorrectReplacementChoicesIfNeeded:v8 forRange:v10];
  }

  v6 = v11;
LABEL_6:
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
        v14 = [&unk_1EFE2CD18 containsObject:v13];

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

  v15 = [(UIKeyboardImpl *)self predictionFromPreference];
  if (v15)
  {
    v15 = [(UIKeyboardImpl *)self continuousPathUnderway];
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
  v4 = [(UIKeyboardImpl *)self candidateController];
  [v4 setIsExtended:v3];
}

void __40__UIKeyboardImpl_updateCandidateDisplay__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 updateTextCandidateView];
  [v3 returnExecutionToParent];
}

- (BOOL)canUseCandidateBarAsSupplementToInlineView
{
  v3 = [(UIView *)self _rootInputWindowController];
  v4 = [v3 placement];

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 visualModeManager];
  if ([v6 useVisualModeWindowed])
  {
    v7 = [v5 visualModeManager];
    if ([v7 windowingModeEnabled])
    {
      v8 = [v4 showsKeyboard] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && (![objc_opt_class() isFloating] || objc_msgSend(v4, "isFloatingAssistantView")))
  {
    v9 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (([v9 autocorrectionType] == 1) | v8 & 1)
    {
      v10 = [(UIKeyboardImpl *)self autocorrectionController];
      v11 = [v10 hasAutofillCandidates];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setShowsCandidateInline:(BOOL)a3
{
  if (-[UIKeyboardImpl isPredictionViewControllerVisible](self, "isPredictionViewControllerVisible") || (-[UIKeyboardImpl textInputTraits](self, "textInputTraits"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSecureTextEntry], v5, v6))
  {
    self->m_showsCandidateInline = 0;
  }

  else
  {
    self->m_showsCandidateInline = a3;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
LABEL_5:
  v7 = ([(UIKeyboardLayout *)self->m_layout orientation]- 3) < 2;
  v8 = ([(UIView *)self _keyboardOrientation]- 3) < 2;
  if (self->m_layout && ((v7 ^ v8) & 1) == 0)
  {
    [(UIKeyboardImpl *)self prepareForGeometryChange];
    [(UIKeyboardImpl *)self setShowsCandidateBar:[(UIKeyboardImpl *)self shouldShowCandidateBar]];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager _setCandidateList:0];

    [(UIKeyboardImpl *)self geometryChangeDone:1];
  }
}

- (void)setShowsCandidateBar:(BOOL)a3
{
  if (self->m_showsCandidateBar != a3)
  {
    v3 = a3;
    self->m_showsCandidateBar = a3;
    [(UIKeyboardImpl *)self _postInputResponderChangedNotification];
    v5 = [(UIView *)self _rootInputWindowController];
    [v5 updateInputAssistantViewForInputViewSet:0];

    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v6 existingContainerRootController];
    [v7 updateInputAssistantViewForInputViewSet:0];

    if (v3)
    {
      v8 = [(UIKeyboardImpl *)self candidateController];
      [v8 setActiveCandidateViewType:2];

      v9 = [(UIKeyboardImpl *)self candidateController];
      v10 = [(UIView *)self _inheritedRenderConfig];
      [v9 _setRenderConfig:v10];
    }

    if (+[UIKeyboard isInputSystemUI])
    {
      v11 = [(UIKeyboardImpl *)self inputSystemSourceSession];
      if (v11)
      {
        v14 = v11;
        v12 = [v11 textOperations];
        [v12 setCustomInfoType:0x1EFB7CA70];
        v13 = [(UIKeyboardImpl *)self buildInputSourceState];
        [v12 setInputSourceState:v13];

        [v14 flushOperations];
        v11 = v14;
      }
    }
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

  v8 = [(UIKeyboardImpl *)self textInputTraits];
  v9 = [v8 supplementalLexiconAmbiguousItemIcon];

  if (v9)
  {
    v5 = [(UIKeyboardImpl *)self textInputTraits];
    v6 = [v5 supplementalLexiconAmbiguousItemIcon];
    goto LABEL_7;
  }

  v7 = [UIImage systemImageNamed:@"questionmark.circle"];
LABEL_8:

  return v7;
}

- (void)removeTextChoicePromptWithUnderline
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [v3 removeActivePromptAndUnderline];

    v5 = [(UIKeyboardImpl *)self inputDelegateManager];
    v4 = [v5 selectedTextRange];
    [(UIKeyboardImpl *)self removeTextChoiceUnderlinesInRange:v4];
  }
}

- (void)removeTextChoicePromptAndAutocorrection
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {

    [(UIKeyboardImpl *)self removeTextChoicePrompt];
  }

  else
  {

    [(UIKeyboardImpl *)self removeAutocorrection];
  }
}

- (void)removeTextChoiceUnderlines
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [v3 removeAllUnderlines];
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
    v7 = [(UIKeyboardImpl *)self _textChoicesAssistant];
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

- (void)presentTextChoicePromptForRange:(id)a3
{
  v5 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v4 forwardInputDestinationEventToUIHost:sel_presentTextChoicePromptForRange_];
  }

  else
  {
    v4 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [v4 presentIfNeededForRange:v5];
  }
}

- (void)setReturnKeyEnabled:(BOOL)a3
{
  m_returnKeyState = self->m_returnKeyState;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  self->m_returnKeyState = v5;
  [(UIKeyboardImpl *)self callLayoutUpdateReturnKey];
  if (+[UIKeyboard usesInputSystemUI]&& self->m_returnKeyState != m_returnKeyState)
  {
    v6 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v6 documentTraitsChanged];
  }
}

- (void)updateReturnKey:(BOOL)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (!self->m_inDealloc)
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v6 = [v5 emptyContentReturnKeyType];

    if (v6)
    {
LABEL_25:
      [(UIKeyboardImpl *)self callLayoutUpdateReturnKey];
      v28[0] = @"UITextInputReturnKeyStateChangedDisplayStringKey";
      v24 = [(UIKeyboardImpl *)self returnKeyDisplayName];
      v29[0] = v24;
      v28[1] = @"UITextInputReturnKeyStateChangedStateKey";
      v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardImpl returnKeyEnabled](self, "returnKeyEnabled")}];
      v29[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v27 = [MEMORY[0x1E696AD88] defaultCenter];
      [v27 postNotificationName:@"UITextInputReturnKeyStateChangedNotification" object:0 userInfo:v26];

      return;
    }

    v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if ([v7 enablesReturnKeyAutomatically])
    {
    }

    else
    {
      v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v9 = [v8 enablesReturnKeyOnNonWhiteSpaceContent];

      if (!v9)
      {
        if (self->m_returnKeyEnabledInLayout != [(UIKeyboardImpl *)self returnKeyEnabled])
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    m_returnKeyState = self->m_returnKeyState;
    v11 = [(UIKeyboardImpl *)self noContent];
    v12 = [(UIKeyboardImpl *)self inputDelegate];
    if (v12 && !v11)
    {
      v13 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v14 = [v13 enablesReturnKeyOnNonWhiteSpaceContent];

      if (!v14 || [(UIKeyboardImpl *)self _hasMarkedText])
      {
        v11 = 0;
LABEL_15:
        v18 = [(UIKeyboardImpl *)self inputDelegateManager];
        v19 = [v18 keyInputDelegate];
        v20 = v19 == 0 || v11;

        if (!v20 && m_returnKeyState == 1 || !v20 && (m_returnKeyState | 2) == 3)
        {
          v21 = 0;
LABEL_20:
          self->m_returnKeyState = v21;
          goto LABEL_25;
        }

        if (v11 && (m_returnKeyState | 2) == 2)
        {
          v22 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
          v23 = [v22 emptyContentReturnKeyType];

          if (!v23)
          {
            v21 = 1;
            goto LABEL_20;
          }
        }

LABEL_24:
        if (!a3)
        {
          return;
        }

        goto LABEL_25;
      }

      v12 = [(UIKeyboardImpl *)self inputDelegate];
      v15 = [v12 _fullText];
      v16 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v17 = [v15 stringByTrimmingCharactersInSet:v16];
      v11 = [v17 length] == 0;
    }

    goto LABEL_15;
  }
}

- (void)_handleKeyBehavior:(unint64_t)a3 forKeyType:(id)a4
{
  v6 = a4;
  v28 = v6;
  if (a3 == 1)
  {
    [(UIKeyboardLayout *)self->m_layout restoreDefaultsForKey:v6];
    [(UIKeyboardLayout *)self->m_layout setTarget:self forKey:v28];
    [(UIKeyboardLayout *)self->m_layout setAction:sel__nop forKey:v28];
    goto LABEL_53;
  }

  if (!a3)
  {
    [(UIKeyboardLayout *)self->m_layout restoreDefaultsForKey:v6];
    goto LABEL_53;
  }

  v7 = a3;
  if (a3 == 8)
  {
    v8 = [v6 isEqualToString:@"_keyid_space_"];
    v9 = 56;
    if (v8)
    {
      v9 = 55;
    }

    v7 = *(&self->super.super.super.isa + OBJC_IVAR___UIKeyboardImpl__id[v9]);
  }

  [(UIKeyboardLayout *)self->m_layout setTarget:self forKey:v28];
  [(UIKeyboardLayout *)self->m_layout setLongPressAction:0 forKey:v28];
  if (v7 > 6)
  {
    if (v7 <= 10)
    {
      if (v7 != 7)
      {
        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_45;
          }

          [(UIKeyboardLayout *)self->m_layout setLabel:@"UI-Confirm" forKey:v28];
          m_layout = self->m_layout;
          v11 = sel_performKeyBehaviorCommitInline;
          goto LABEL_44;
        }

        v18 = self->m_layout;
        v19 = [(UIKeyboardImpl *)self returnKeyDisplayName];
        [(UIKeyboardLayout *)v18 setLabel:v19 forKey:v28];

        goto LABEL_42;
      }

      v12 = self->m_layout;
      v13 = UIKeyboardStringSpace;
LABEL_41:
      [(UIKeyboardLayout *)v12 setLabel:*v13 forKey:v28];
LABEL_42:
      m_layout = self->m_layout;
      v11 = 0;
      goto LABEL_44;
    }

    if (v7 == 11)
    {
      m_layout = self->m_layout;
      v11 = sel_performKeyBehaviorCommitInlineWithSpace;
      goto LABEL_44;
    }

    if (v7 != 12)
    {
      if (v7 != 100)
      {
        goto LABEL_45;
      }

      v12 = self->m_layout;
      v13 = UIKeyboardStringZhuyinFirstTone;
      goto LABEL_41;
    }

    v20 = @"UI-IdeographicSpace";
    v21 = [(UIKeyboardImpl *)self keyboardState];
    v22 = [v21 layoutState];
    if ([v22 isAlphabeticPlane])
    {
      v23 = [(UIKeyboardImpl *)self keyboardState];
      v24 = [v23 shiftState];

      if (v24 != 1)
      {
LABEL_37:
        [(UIKeyboardLayout *)self->m_layout setLabel:v20 forKey:v28];
        [(UIKeyboardLayout *)self->m_layout setAction:0 forKey:v28];

        goto LABEL_45;
      }

      v21 = [(UIKeyboardImpl *)self keyboardState];
      v25 = [v21 shouldOutputFullwidthSpace];
      v26 = UIKeyboardStringHalfwidthSpace;
      if (!v25)
      {
        v26 = UIKeyboardStringFullwidthSpace;
      }

      v22 = v20;
      v20 = *v26;
    }

    goto LABEL_37;
  }

  if (v7 <= 3)
  {
    if (v7 == 2)
    {
      v16 = [(UIKeyboardImpl *)self usesCandidateSelection];
      v17 = UIKeyboardStringConfirmCandidate;
      if (!v16)
      {
        v17 = UIKeyboardStringConfirm;
      }

      [(UIKeyboardLayout *)self->m_layout setLabel:*v17 forKey:v28];
      m_layout = self->m_layout;
      v11 = sel_performKeyBehaviorConfirm;
      goto LABEL_44;
    }

    if (v7 != 3)
    {
      goto LABEL_45;
    }

    v14 = self->m_layout;
    v15 = UIKeyboardStringSelectFirstCandidate;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 != 5)
      {
        [(UIKeyboardLayout *)self->m_layout setLabel:@"UI-NextPage" forKey:v28];
        [(UIKeyboardLayout *)self->m_layout setAction:sel_showNextPage forKey:v28];
        [(UIKeyboardLayout *)self->m_layout setLongPressAction:sel_jumpToCompositions forKey:@"_keyid_space_"];
        goto LABEL_45;
      }

      [(UIKeyboardLayout *)self->m_layout setLabel:@"UI-Confirm-Candidate" forKey:v28];
      m_layout = self->m_layout;
      v11 = sel_performKeyBehaviorConfirmFirstCandidate;
      goto LABEL_44;
    }

    v14 = self->m_layout;
    v15 = UIKeyboardStringSelectNextCandidate;
  }

  [(UIKeyboardLayout *)v14 setLabel:*v15 forKey:v28];
  m_layout = self->m_layout;
  v11 = sel_showNextCandidates;
LABEL_44:
  [(UIKeyboardLayout *)m_layout setAction:v11 forKey:v28];
LABEL_45:
  if (a3 == 8)
  {
    [(UIKeyboardLayout *)self->m_layout setAction:sel__nop forKey:v28];
  }

  else
  {
    if ([v28 isEqualToString:@"_keyid_space_"])
    {
      v27 = 480;
    }

    else
    {
      v27 = 488;
    }

    *(&self->super.super.super.isa + v27) = v7;
  }

  if ([v28 isEqualToString:@"_keyid_return_"])
  {
    [(UIKeyboardImpl *)self updateReturnKey:0];
  }

LABEL_53:
}

- (BOOL)callLayoutIsShiftKeyBeingHeld
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  m_layout = self->m_layout;

  return [(UIKeyboardLayout *)m_layout isShiftKeyBeingHeld];
}

- (void)callLayoutUpdateLocalizedKeys
{
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout updateLocalizedKeys:0];
  }
}

- (void)callLayoutUpdateAllLocalizedKeys
{
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout updateLocalizedKeys:1];
  }
}

- (void)callLayoutUpdateRecentInputs
{
  m_recentInputs = self->m_recentInputs;
  if (m_recentInputs)
  {
    self->m_recentInputs = 0;
  }

  v4 = [(UIKeyboardImpl *)self textInputTraits];
  v5 = [v4 isSecureTextEntry];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69D9690];
    v7 = [(UIKeyboardImpl *)self keyboardState];
    v8 = [v7 textInputTraits];
    v9 = [v8 recentInputIdentifier];
    v10 = [v6 recentInputForIdentifier:v9];

    v11 = [UILexicon _lexiconWithTILexicon:v10];
    v12 = self->m_recentInputs;
    self->m_recentInputs = v11;
  }

  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;
    v14 = self->m_recentInputs;

    [(UIKeyboardLayout *)m_layout setRecentInputs:v14];
  }
}

- (BOOL)callLayoutIsGeometricShiftOrMoreKeyForTouch:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIKeyboardLayout *)self->m_layout isGeometricShiftOrMoreKeyForTouch:v4];

  return v5;
}

- (id)inlineCandidateView
{
  v2 = [(UIKeyboardImpl *)self candidateController];
  v3 = [v2 inlineCandidateView];

  return v3;
}

- (CGRect)correctionRect
{
  [(UIKeyboardImpl *)self getCorrectionRectIsVertical:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)getCorrectionRectIsVertical:(BOOL *)a3
{
  [(_UIKeyboardStateManager *)self->_keyboardStateManager getCorrectionRectIsVertical:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)updateTextCandidateView
{
  if (self->m_suppressUpdateCandidateView)
  {
    return;
  }

  v3 = [(UIKeyboardImpl *)self inputDelegate];

  if (!v3)
  {
    return;
  }

  v4 = [(UIKeyboardImpl *)self inputDelegateManager];
  v5 = [v4 shouldSuppressUpdateCandidateView];

  if (v5)
  {
    return;
  }

  v6 = [(UIKeyboardImpl *)self candidateController];
  v7 = [v6 inLineCandidateViewIsHosted];

  if (v7)
  {

    [(UIKeyboardImpl *)self updateHostedInlineCandidateView];
    return;
  }

  if ([(UIKeyboardImpl *)self usesCandidateSelection]&& [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType]== 4)
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setPredictionType:2];
  }

  if (![(UIKeyboardImpl *)self isPredictionViewControllerVisible])
  {
    [(UIKeyboardImpl *)self clearAutocorrectPromptTimer];
    if (![(_UIKeyboardStateManager *)self->_keyboardStateManager _isSelecting]|| [(UIKeyboardImpl *)self hasEditableMarkedText])
    {
      v172 = 0;
      [(UIKeyboardImpl *)self getCorrectionRectIsVertical:&v172];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = v172;
      v17 = [(UIKeyboardImpl *)self candidateController];
      [v17 setInlineRectIsVertical:v16];

      v18 = [objc_opt_class() keyboardScreen];
      v19 = [UIKBScreenTraits traitsWithScreen:v18 orientation:[(UIView *)self _keyboardOrientation]];

      v20 = [(UIKeyboardImpl *)self candidateController];
      [v20 setScreenTraits:v19];

      v21 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      if (!v21)
      {
        if (-[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode") && (WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate), v23 = [WeakRetained isMinimized], WeakRetained, (v23 & 1) != 0) || (v24 = self->_keyboardStateManager, -[UIKeyboardLayout candidateList](self->m_layout, "candidateList"), v25 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardStateManager _setCandidateList:](v24, "_setCandidateList:", v25), v25, -[_UIKeyboardStateManager candidateList](self->_keyboardStateManager, "candidateList"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
        {
LABEL_21:
          v27 = [(UIKeyboardImpl *)self candidateController];
          v28 = [v27 activeCandidateViewType];

          v29 = [(UIKeyboardImpl *)self candidateController];
          v30 = v29;
          if (v28)
          {
            v32 = [v29 candidateKey];
          }

          else
          {
            v31 = [v29 activeCandidateViewType];

            if ((v31 & 4) == 0)
            {
              goto LABEL_26;
            }

            v30 = [(UIKeyboardImpl *)self candidateController];
            v32 = [v30 inlineCandidateView];
          }

          v33 = v32;
          v34 = [v32 superview];

          if (v34)
          {
LABEL_27:
            v35 = [(UIKeyboardImpl *)self shouldShowCandidateBar];
            if (!-[UIKeyboardImpl floatingForced](self, "floatingForced") || -[UIKeyboardImpl _shouldSuppressAssistantBar](self, "_shouldSuppressAssistantBar") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v36 = objc_claimAutoreleasedReturnValue(), [v36 currentInputMode], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "identifier"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "containsString:", @"HWR"), v38, v37, v36, v39))
            {
              v40 = [(UIKeyboardImpl *)self delegateAsResponder];
              v41 = [v40 _responderForEditing];
              v42 = [v41 _alwaysRequireInlineCandidateView];
            }

            else
            {
              v42 = 1;
            }

            v43 = [(UIKeyboardImpl *)self inputStringFromPhraseBoundary];
            v44 = [v43 length];
            if ([(UIKeyboardImpl *)self _allowMinimizeForHardwareKeyboard])
            {
              if (![(UIKeyboardImpl *)self isMinimized])
              {
LABEL_36:
                v45 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                if (v45 || ![(UIKeyboardImpl *)self showsCandidateInline])
                {

                  if (!v42)
                  {
                    v46 = 0;
LABEL_44:
                    if ((v35 | v46))
                    {
                      keyboardStateManager = self->_keyboardStateManager;
                      v48 = [(UIKeyboardImpl *)self candidateController];
                      [(_UIKeyboardStateManager *)keyboardStateManager _setCandidateList:v48];

                      v49 = 4;
                      if (!v46)
                      {
                        v49 = 0;
                      }

                      if (v35)
                      {
                        v50 = v49 | 2;
                      }

                      else
                      {
                        v50 = v49;
                      }

                      v51 = [(UIKeyboardImpl *)self candidateController];
                      [v51 setActiveCandidateViewType:v50];

                      if (v35)
                      {
                        v169 = v15;
                        v52 = v13;
                        v53 = v11;
                        v54 = [(UIKeyboardImpl *)self candidateController];
                        v55 = [v54 loadCandidateBar];
                        v56 = [v55 isHidden];

                        if (v56)
                        {
                          v57 = [(UIKeyboardImpl *)self candidateController];
                          v58 = [v57 candidateBar];
                          [v58 setHidden:0];
                        }

                        v59 = v9;
                        if (![(UIKeyboardImpl *)self showsCandidateBar])
                        {
                          [(UIKeyboardImpl *)self setShowsCandidateBar:1];
                        }

                        v60 = [(UIKeyboardImpl *)self candidateController];
                        v61 = [v60 loadCandidateBar];

                        [v61 frame];
                        v63 = v62;
                        v65 = v64;
                        v67 = v66;
                        v69 = v68;
                        v70 = [(UIKeyboardImpl *)self candidateController];
                        [v70 candidateBarHeightForOrientation:{-[UIKeyboardLayout orientation](self->m_layout, "orientation")}];
                        v72 = v71;

                        if (v69 != v72)
                        {
                          v73 = [(UIKeyboardImpl *)self candidateController];
                          v74 = [v73 isExtendedList];

                          if ((v74 & 1) == 0)
                          {
                            [v61 setFrame:{v63, v65, v67, v72}];
                          }
                        }

                        v9 = v59;
                        v11 = v53;
                        v13 = v52;
                        v15 = v169;
                      }

                      else
                      {
                        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
                      }

                      if (v46)
                      {
                        v78 = [(UIKeyboardImpl *)self candidateController];
                        v79 = [v78 loadInlineCandidateView];
                      }

                      else
                      {
                        v79 = 0;
                      }

                      v80 = [(UIKeyboardImpl *)self candidateController];
                      [v80 updateStates];

                      if (v79)
                      {
                        v170 = v44;
                        v81 = [(UIKeyboardImpl *)self inputOverlayContainerForCandidateView:1];
                        v82 = [(UIKeyboardImpl *)self candidateController];
                        [v82 maximumSizeForInlineView];
                        v84 = v83;
                        v86 = v85;

                        if (!self->m_scrolling)
                        {
                          v87 = [(UIViewController *)self->_emojiPopoverController popoverPresentationController];
                          v88 = [v87 containerView];
                          if (v81 != v88)
                          {
                            [v81 bounds];
                            if (v89 >= v84 && ([v81 bounds], v90 >= v86 + v86))
                            {
                              objc_opt_class();
                              isKindOfClass = objc_opt_isKindOfClass();

                              if ((isKindOfClass & 1) == 0)
                              {
                                goto LABEL_73;
                              }
                            }

                            else
                            {
                            }

                            v87 = +[UIPeripheralHost sharedInstance];
                            [v87 transformedContainerView];
                            v81 = v88 = v81;
                          }
                        }

LABEL_73:
                        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v79 isFloating] & 1) == 0)
                        {
                          v91 = [v79 superview];
                          v92 = v91;
                          if (v81 == v91)
                          {
                          }

                          else
                          {
                            v93 = [v79 superview];

                            if (v93)
                            {
                              [v79 frame];
                              v95 = v94;
                              v97 = v96;
                              v99 = v98;
                              v101 = v100;
                              v102 = [v79 superview];
                              [v81 convertPoint:v102 fromView:{v95, v97}];
                              v104 = v103;
                              v106 = v105;

                              [v79 setFrame:{v104, v106, v99, v101}];
                              [v81 addSubview:v79];
                              v107 = v81;
                              goto LABEL_84;
                            }
                          }
                        }

                        v108 = [v79 superview];

                        if (!v108)
                        {
                          v44 = v170;
                          goto LABEL_86;
                        }

                        v107 = [v79 superview];
LABEL_84:
                        v109 = v107;
                        v44 = v170;

                        v34 = v109;
LABEL_86:
                      }
                    }

                    else
                    {
                      v75 = [(UIKeyboardImpl *)self dynamicCaretList];

                      if (v75)
                      {
                        v76 = self->_keyboardStateManager;
                        v77 = [(UIKeyboardImpl *)self dynamicCaretList];
                        [(_UIKeyboardStateManager *)v76 _setCandidateList:v77];
                      }

                      else if ([(UIKeyboardImpl *)self showsCandidateBar])
                      {
                        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
                      }
                    }

                    v110 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];

                    if (v110)
                    {
                      v111 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                      v112 = [v111 candidates];
                      v113 = [v112 count];

                      if (!v113)
                      {
                        goto LABEL_94;
                      }

                      v114 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                      v115 = [v114 hasCandidates];

                      v116 = self->_keyboardStateManager;
                      if (v115)
                      {
                        v117 = [(_UIKeyboardStateManager *)v116 candidateResultSet];
                        v118 = [v117 candidates];
                        v119 = [v118 firstObject];

                        if ([v119 isSmartReply])
                        {
                          v120 = 1;
                        }

                        else
                        {
                          v120 = [v119 isSmartAction];
                        }

                        if ((v44 || (([(UIKeyboardImpl *)self suppliesCompletions]| v120) & 1) != 0 || [(UIKeyboardImpl *)self usesAutocorrectionLists]|| [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType]== 2 || [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType]== 4) && (!v46 || (v174.origin.x = v9, v174.origin.y = v11, v174.size.width = v13, v174.size.height = v15, !CGRectIsNull(v174)) && v34 && [(UIKeyboardImpl *)self delegateSupportsCorrectionUI]))
                        {
                          if ([(UIKeyboardImpl *)self geometryIsChanging])
                          {
                            v123 = [(UIKeyboardImpl *)self keyboardState];
                            v124 = [v123 currentCandidate];
                          }

                          else
                          {
                            v124 = 0;
                          }

                          v125 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                          v126 = [(UIKeyboardImpl *)self keyboardStateManager];
                          [v125 setUIKeyboardCandidateListDelegate:v126];

                          v127 = [(UIKeyboardImpl *)self inputDelegate];
                          v128 = [v127 textInputView];

                          v171 = v128;
                          [(UIKeyboardImpl *)self convertRectToAutocorrectRect:v128 delegateView:v34 container:v9, v11, v13, v15];
                          v130 = v129;
                          v132 = v131;
                          v134 = v133;
                          v136 = v135;
                          v137 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                          v138 = objc_opt_respondsToSelector();

                          if (v138)
                          {
                            v139 = [(UIKeyboardImpl *)self promptTypeForInputString:v43];
                            [v34 bounds];
                            v142 = v140 + v141;
                            v143 = +[UIKeyboardImpl sharedInstance];
                            v144 = [v143 isInHardwareKeyboardMode];

                            if (v144)
                            {
                              if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(UIKeyboardImpl *)self isEmojiPopoverPresented])
                              {
                                v166 = +[UIPeripheralHost sharedInstance];
                                v145 = [v166 transformedContainerView];
                                v146 = [v145 window];
                                [v146 actualSceneBounds];
                                v147 = CGRectGetMaxX(v175) + -15.0;

                                if (v142 >= v147)
                                {
                                  v142 = v147;
                                }
                              }
                            }

                            v148 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            v149 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            [v148 setCandidates:v149 type:v139 inlineText:v43 inlineRect:1 maxX:v130 layout:{v132, v134, v136, v142}];
                          }

                          else
                          {
                            v148 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            v149 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            [v34 bounds];
                            [v148 setCandidates:v149 inlineText:v43 inlineRect:1 maxX:v130 layout:{v132, v134, v136, v150 + v151}];
                          }

                          if ([(UIKeyboardImpl *)self shouldShowLongPredictionList])
                          {
                            v167 = v119;
                            v152 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            v153 = [v152 candidates];
                            v154 = [v153 firstObject];
                            v155 = [MEMORY[0x1E695DFB0] null];

                            if (v154 != v155)
                            {
                              v156 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                              v157 = [v156 candidates];
                              v158 = [v157 firstObject];

                              v124 = v158;
                            }

                            v119 = v167;
                          }

                          if (!v124 || (-[_UIKeyboardStateManager candidateList](self->_keyboardStateManager, "candidateList"), v159 = objc_claimAutoreleasedReturnValue(), v160 = [v159 showCandidate:v124], v159, (v160 & 1) == 0))
                          {
                            v161 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            v162 = [v161 currentCandidate];

                            if (!v162)
                            {
                              v163 = [(UIKeyboardImpl *)self liveConversionEnabled];
                              v164 = [(UIKeyboardImpl *)self candidateController];
                              v165 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                              [v164 showCandidateAtIndex:objc_msgSend(v165 animated:"initialSelectedIndex") scrollPosition:{0, v163}];
                            }
                          }

                          [(UIKeyboardImpl *)self setUserSelectedCurrentCandidate:0];
                          [(UIKeyboardImpl *)self updateKeyboardConfigurations];
                        }

                        else
                        {
                          [(UIKeyboardImpl *)self removeCandidateList];
                        }

                        goto LABEL_127;
                      }

                      v121 = [(_UIKeyboardStateManager *)v116 candidateList];
                      v122 = [v121 hasCandidates];

                      if ((v122 & 1) == 0)
                      {
LABEL_94:
                        [(UIKeyboardImpl *)self removeCandidateList];
                      }
                    }

                    else
                    {
                      [(UIKeyboardImpl *)self setShowsCandidateBar:0];
                    }

LABEL_127:

                    return;
                  }
                }

LABEL_39:
                v46 = ![(UIKeyboardImpl *)self keyboardIsInPencilTextInputMode];
                goto LABEL_44;
              }
            }

            else if (![(UIKeyboardImpl *)self isInHardwareKeyboardMode])
            {
              goto LABEL_36;
            }

            if (![(UIKeyboardImpl *)self isPredictionViewControllerVisible])
            {
              goto LABEL_39;
            }

            goto LABEL_36;
          }

LABEL_26:
          v34 = [(UIKeyboardImpl *)self inputOverlayContainerForCandidateView:1];
          goto LABEL_27;
        }

        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
        v21 = [(UIKeyboardImpl *)self candidateController];
        [v21 setActiveCandidateViewType:1];
      }

      goto LABEL_21;
    }

    [(UIKeyboardImpl *)self removeCandidateList];
  }
}

- (int)promptTypeForInputString:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  v6 = [v5 supportsSetPhraseBoundary];

  if (v6)
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
    if (![v4 length])
    {
      v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
      v9 = [v8 suppressCompletionsForFieldEditor];

      if (v9)
      {
        v7 = 7;
      }

      else
      {
        v7 = 5;
      }
    }
  }

  return v7;
}

- (void)beginObservingInputOverlayContainerFrame
{
  obj = [(UIKeyboardImpl *)self inputOverlayContainerForCandidateView:1];
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  v4 = obj;
  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_overlayContainerObserved);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_overlayContainerObserved);
      v7 = [v6 layer];
      v8 = objc_loadWeakRetained(&self->_overlayContainerObserved);
      [v7 removeObserver:self forKeyPath:@"bounds" context:v8];
    }

    v9 = objc_storeWeak(&self->_overlayContainerObserved, obj);
    v10 = [obj layer];
    v11 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [v10 addObserver:self forKeyPath:@"bounds" options:0 context:v11];

    v4 = obj;
  }
}

- (void)endObservingInputOverlayContainerFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    v5 = [v4 layer];
    v6 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [v5 removeObserver:self forKeyPath:@"bounds" context:v6];

    [(UIKeyboardImpl *)self updateInputOverlayForContainerFrameChange];

    objc_storeWeak(&self->_overlayContainerObserved, 0);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_overlayContainerObserved);

    if (v10 == a6)
    {

      [(UIKeyboardImpl *)self updateInputOverlayForContainerFrameChange];
    }
  }
}

- (CGRect)convertRectToAutocorrectRect:(CGRect)a3 delegateView:(id)a4 container:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11 != v10)
  {
    v13 = [v11 window];
    if (v13)
    {
      v14 = [v10 window];
      if (v14)
      {
        v15 = [v12 window];
        v16 = [v10 window];
        v17 = v15 != v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = [v12 window];
    v19 = [v18 _shouldTextEffectsWindowBeHostedForView:v10];

    if ((v19 & 1) == 0 && !v17)
    {
      [v12 convertRect:v10 fromView:{x, y, width, height}];
      v59 = CGRectIntegral(v58);
LABEL_11:
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
      goto LABEL_16;
    }

    v20 = [v12 window];
    [v20 convertRect:v10 fromView:{x, y, width, height}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [v12 window];
    [v29 convertRect:v12 toView:{v22, v24, v26, v28}];
    x = v30;
    y = v31;
    width = v32;
    height = v33;

    v34 = [v12 window];
    [v34 windowLevel];
    v36 = v35;
    v37 = [v10 window];
    [v37 windowLevel];
    v39 = v38;

    if (v36 < v39)
    {
      v40 = [v10 _rootInputWindowController];
      [v40 visibleFrame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v66.origin.x = v42;
      v66.origin.y = v44;
      v66.size.width = v46;
      v66.size.height = v48;
      v61 = CGRectIntersection(v60, v66);
      v49 = v61.origin.x;
      v50 = v61.origin.y;
      v51 = v61.size.width;
      v52 = v61.size.height;
      if (!CGRectIsNull(v61))
      {
        v62.origin.x = v49;
        v62.origin.y = v50;
        v62.size.width = v51;
        v62.size.height = v52;
        if (CGRectGetHeight(v62) > 0.0)
        {
          v63.origin.x = v49;
          v63.origin.y = v50;
          v63.size.width = v51;
          v63.size.height = v52;
          v53 = -CGRectGetHeight(v63);
          v64.origin.x = x;
          v64.origin.y = y;
          v64.size.width = width;
          v64.size.height = height;
          v59 = CGRectOffset(v64, 0.0, v53);
          goto LABEL_11;
        }
      }
    }
  }

LABEL_16:

  v54 = x;
  v55 = y;
  v56 = width;
  v57 = height;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v54;
  return result;
}

- (void)sendCallbacksForPreCorrectionsDisplay
{
  v3 = [(UIKeyboardImpl *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKeyboardImpl *)self inputDelegate];
    [v5 _willShowCorrections];
  }
}

- (void)sendCallbacksForPostCorrectionsRemoval
{
  v3 = [(UIKeyboardImpl *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKeyboardImpl *)self inputDelegate];
    [v5 _didHideCorrections];
  }
}

- (void)updateAutocorrectPrompt:(id)a3
{
  v4 = a3;
  if (qword_1ED498AC8 != -1)
  {
    dispatch_once(&qword_1ED498AC8, &__block_literal_global_580);
  }

  v5 = [(UIKeyboardImpl *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UIKeyboardImpl_updateAutocorrectPrompt___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = v4;
  v6 = qword_1ED498AC0;
  v7 = v4;
  [v5 performSingleTask:v8 breadcrumb:v6];
}

void __42__UIKeyboardImpl_updateAutocorrectPrompt___block_invoke()
{
  v0 = [&__block_literal_global_582_1 copy];
  v1 = qword_1ED498AC0;
  qword_1ED498AC0 = v0;
}

- (void)updateAutocorrectPrompt:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 candidate];
  v9 = [v6 input];
  if (![(UIKeyboardImpl *)self hasAdvancedInputDelegate])
  {
    goto LABEL_12;
  }

  [(UIKeyboardImpl *)self clearAutocorrectPromptTimer];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager _isSelecting])
  {
    goto LABEL_11;
  }

  v10 = [(UIKeyboardImpl *)self inputDelegateManager];
  v11 = [v10 selectedTextRange];
  v12 = [v11 isEmpty];

  if ((v12 & 1) == 0 || ![v8 length] || !-[UIKeyboardImpl delegateSupportsCorrectionUI](self, "delegateSupportsCorrectionUI") || -[UIKeyboardImpl autocorrectionPreferenceForTraits](self, "autocorrectionPreferenceForTraits") == 2)
  {
    goto LABEL_11;
  }

  if ([v8 isEqualToString:v9])
  {
    if (self->m_autocorrectPrompt)
    {
      v13 = UIKeyboardGetCurrentInputMode();
      v14 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v13);

      [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt usageTrackingMask];
      TIStatisticScalarIncrementAutocorrectionKey();
    }

    goto LABEL_11;
  }

  if ([(UIKeyboardImpl *)self showingEmojiSearch])
  {
LABEL_11:
    [(UIKeyboardImpl *)self removeAutocorrectPrompt];
LABEL_12:
    [v7 returnExecutionToParent];
    goto LABEL_13;
  }

  if ([(UIKeyboardImpl *)self hasAsyncCapableInputDelegate])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke;
    aBlock[3] = &unk_1E70FD208;
    aBlock[4] = self;
    v19 = v6;
    v20 = v9;
    v15 = _Block_copy(aBlock);
    if (qword_1ED498AE8 != -1)
    {
      dispatch_once(&qword_1ED498AE8, &__block_literal_global_591_0);
    }

    v16 = [(UIKeyboardImpl *)self taskQueue];
    [v16 addTask:v15 breadcrumb:qword_1ED498AE0];

    [v7 returnExecutionToParent];
  }

  else
  {
    v17 = [(UIKeyboardImpl *)self autocorrectPromptRectsForInput:v9];
    [(UIKeyboardImpl *)self updateAutocorrectPrompt:v6 correctionRects:v17];
    [v7 returnExecutionToParent];
  }

LABEL_13:
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_2;
  aBlock[3] = &unk_1E7116CB8;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) asyncInputDelegate];
  if (v8)
  {

LABEL_4:
    v10 = [*(a1 + 32) inputDelegateManager];
    v11 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_6;
    v17[3] = &unk_1E70FDA40;
    v12 = &v18;
    v18 = v7;
    [v10 requestTextRectsForString:v11 withCompletionHandler:v17];
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) webInputDelegate];

  if (v9)
  {
    goto LABEL_4;
  }

  v13 = [*(a1 + 32) asyncWebKitInteractionDelegate];

  if (!v13)
  {
    goto LABEL_6;
  }

  v10 = [*(a1 + 32) asyncWebKitInteractionDelegate];
  v14 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_7;
  v15[3] = &unk_1E70FDA68;
  v12 = &v16;
  v16 = v7;
  [v10 requestAutocorrectionRectsForString:v14 withCompletionHandler:v15];
LABEL_5:

LABEL_6:
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_2(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (qword_1ED498AD8 != -1)
  {
    dispatch_once(&qword_1ED498AD8, &__block_literal_global_584);
  }

  v18 = a1[4];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_5;
  v20[3] = &unk_1E70FD9F0;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v19 = a1[6];
  v20[4] = a1[5];
  v21 = v19;
  [v18 transferExecutionToMainThreadWithTask:v20 breadcrumb:qword_1ED498AD0];
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_3()
{
  v0 = [&__block_literal_global_586 copy];
  v1 = qword_1ED498AD0;
  qword_1ED498AD0 = v0;
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = a2;
  v11.origin.x = v3;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  if (CGRectIsEmpty(v11) && CGRectIsEmpty(*(a1 + 80)))
  {
    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) autocorrectPromptRectsFromFirstDelegateRect:*(a1 + 48) lastDelegateRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  }

  v9 = v8;
  [*(a1 + 32) updateAutocorrectPrompt:*(a1 + 40) correctionRects:v8];
  [v7 returnExecutionToParent];
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v17 = [v3 firstObject];
  [v17 rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 lastObject];

  [v12 rect];
  (*(v2 + 16))(v2, v5, v7, v9, v11, v13, v14, v15, v16);
}

uint64_t __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 firstRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 lastRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = *(v2 + 16);
  v21.n128_u64[0] = v5;
  v22.n128_u64[0] = v7;
  v23.n128_u64[0] = v9;
  v24.n128_u64[0] = v11;
  v25.n128_u64[0] = v13;
  v26.n128_u64[0] = v15;
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return v20(v2, v21, v22, v23, v24, v25, v26, v27, v28);
}

void __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke_8()
{
  v0 = [&__block_literal_global_593_0 copy];
  v1 = qword_1ED498AE0;
  qword_1ED498AE0 = v0;
}

- (id)autocorrectPromptRectsForInput:(id)a3
{
  v4 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:a3];
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v7 = [(UIKeyboardImpl *)self inputDelegate];
    [v7 firstRectForRange:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(UIKeyboardImpl *)self inputDelegate];
    [v16 _lastRectForRange:v5];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v6 = [(UIKeyboardImpl *)self autocorrectPromptRectsFromFirstDelegateRect:v9 lastDelegateRect:v11, v13, v15, v18, v20, v22, v24];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNeedsAutocorrectionRectsUpdate
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateActiveAutocorrectionRects object:0];

  [(UIKeyboardImpl *)self performSelector:sel_updateActiveAutocorrectionRects withObject:0 afterDelay:0.0];
}

- (void)updateActiveAutocorrectionRects
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v10 = [(UIKeyboardImpl *)self _textChoicesAssistant];
    if ([v10 autocorrectInlinePromptIsVisible])
    {
      v3 = [(UIKeyboardImpl *)self autocorrectionController];
      v4 = [v3 hasAutocorrection];

      if (!v4)
      {
        return;
      }

      v5 = [(UIKeyboardImpl *)self autocorrectionController];
      v10 = [v5 autocorrection];

      v6 = [v10 input];
      v7 = [(UIKeyboardImpl *)self autocorrectPromptRectsForInput:v6];

      if ([v7 count])
      {
        v8 = [(UIKeyboardImpl *)self _textChoicesAssistant];
        v9 = [v10 candidate];
        [v8 updateActivePromptForCandidate:v9 displayRects:v7 highlightOnly:1];
      }
    }
  }
}

- (void)updateAutocorrectPrompt:(id)a3 correctionRects:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [v28 candidate];
  v8 = [v28 input];
  if (![v6 count] || (objc_msgSend(v6, "lastObject"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "rect"), v11 = v10, v13 = v12, v15 = v14, v17 = v16, v9, v30.origin.x = v11, v30.origin.y = v13, v30.size.width = v15, v30.size.height = v17, CGRectIsEmpty(v30)))
  {
    [(UIKeyboardImpl *)self removeAutocorrectPrompt];
    goto LABEL_15;
  }

  v18 = [(UIKeyboardImpl *)self inputOverlayContainer];
  if (v18 && [(UIKeyboardImpl *)self delegateSupportsCorrectionUI])
  {
    [(UIKeyboardImpl *)self updateKeyboardConfigurations];
    v19 = [(UIKeyboardImpl *)self inlineTextCompletionController];
    v20 = [v19 hasPrompt];

    if (!v20)
    {
      if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
      {
        v21 = +[UIDevice currentDevice];
        v22 = [v21 userInterfaceIdiom];

        if (![(UIKeyboardImpl *)self isMinimized]|| v22)
        {
          v22 = [(UIKeyboardImpl *)self isPredictionViewControllerVisible]|| [(UIKeyboardImpl *)self accessibilityUsesExtendedKeyboardPredictionsEnabled];
        }

        v24 = [(UIKeyboardImpl *)self _textChoicesAssistant];
        v25 = [v28 candidate];
        [v24 updateActivePromptForCandidate:v25 displayRects:v6 highlightOnly:v22];
      }

      else
      {
        [(UIKeyboardImpl *)self updateLegacyAutocorrectPromptWithAutocorrection:v28 parentView:v18 correctionRects:v6];
      }

      if ([v7 length])
      {
        [(UIKeyboardImpl *)self sendCallbacksForPreCorrectionsDisplay];
        v26 = [MEMORY[0x1E696AD88] defaultCenter];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"correction"];
        [v26 postNotificationName:@"UIKeyboardCandidateCorrectionDidChangeNotification" object:0 userInfo:v27];
      }

      goto LABEL_14;
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
    v23 = [(UIKeyboardImpl *)self inputDelegate];
    [v23 _replaceCurrentWordWithText:v7];

    [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
  }

  [(UIKeyboardImpl *)self removeAutocorrectPrompt];
LABEL_14:

LABEL_15:
}

- (void)updateLegacyAutocorrectPromptWithAutocorrection:(id)a3 parentView:(id)a4 correctionRects:(id)a5
{
  v40 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v40 candidate];
  v11 = [v40 input];
  m_autocorrectPrompt = self->m_autocorrectPrompt;
  if (!m_autocorrectPrompt)
  {
    v14 = [UIAutocorrectInlinePrompt alloc];
    v15 = [(UIAutocorrectInlinePrompt *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v16 = self->m_autocorrectPrompt;
    self->m_autocorrectPrompt = v15;

    goto LABEL_5;
  }

  v13 = [(UIView *)m_autocorrectPrompt superview];

  if (v13 != v8)
  {
LABEL_5:
    [v8 addSubview:self->m_autocorrectPrompt];
  }

  v17 = self->m_autocorrectPrompt;
  v18 = [(UIKeyboardImpl *)self inputDelegate];
  v19 = [v18 textInputView];
  [v19 _convertVisualAltitude:self->m_autocorrectPrompt toView:0.0];
  [(UIView *)v17 _setVisualAltitude:?];

  [(UIKeyboardImpl *)self trackUsageForPromptedCorrection:v10 inputString:v11 previousPrompt:self->m_autocorrectPrompt];
  -[UIAutocorrectInlinePrompt setUsageTrackingMask:](self->m_autocorrectPrompt, "setUsageTrackingMask:", [v40 usageTrackingMask]);
  v20 = [v9 lastObject];
  [v20 rect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v8 bounds];
  v31 = v29 + v30;
  if (v29 + v30 == 0.0)
  {
    v32 = [v8 superview];
    [v32 bounds];
    v31 = v33 + v34;
  }

  [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt setCorrection:v10 typedText:v11 inRect:v22 maxX:v24, v26, v28, v31];
  [(UIView *)self->m_autocorrectPrompt setSize:v26, v28];
  v35 = [v9 count];
  v36 = v35 - 1;
  if (v35 != 1)
  {
    v37 = 0;
    do
    {
      v38 = self->m_autocorrectPrompt;
      v39 = [v9 objectAtIndex:v37];
      [v39 rect];
      [(UIAutocorrectInlinePrompt *)v38 addTypedTextRect:?];

      ++v37;
    }

    while (v36 != v37);
  }
}

- (void)updateAutocorrectContainerWithAutocorrection:(id)a3 parentView:(id)a4 correctionRects:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];

  if (!v11)
  {
    v12 = objc_alloc_init(UIAutocorrectBubbleContainer);
    [(UIKeyboardImpl *)self setAutocorrectBubbleContainer:v12];
  }

  v13 = [v9 superview];
  v14 = [v13 subviews];
  v15 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v16 = [v14 containsObject:v15];

  if ((v16 & 1) == 0)
  {
    v17 = [v9 superview];
    v18 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [v17 addSubview:v18];

    v19 = [v9 superview];
    v20 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [v19 bringSubviewToFront:v20];
  }

  v21 = [v10 lastObject];
  [v21 rect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v9;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v31 = [v30 subviews];
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v32)
  {
    v33 = *v50;
    while (2)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v35;
          goto LABEL_15;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v36 = [v30 superview];
  [v36 convertRect:v32 fromView:{v23, v25, v27, v29}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v46 = [v8 candidate];
  v47 = [v8 input];
  v48 = [v30 superview];
  [v45 updateWithAutocorrectionText:v46 typedText:v47 referenceTextView:v48 referenceRect:{v38, v40, v42, v44}];
}

- (void)animateAutocorrectionToText:(id)a3 fromRect:(CGRect)a4
{
  v18 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:a3];
  if (self->m_autocorrectPrompt)
  {
    v5 = [(UIKeyboardImpl *)self inputOverlayContainer];
    v6 = [(UIKeyboardImpl *)self inputDelegate];
    v7 = [v6 textInputView];

    if (v18)
    {
      v8 = [(UIKeyboardImpl *)self inputDelegate];
      [v8 firstRectForRange:v18];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v10 = *MEMORY[0x1E695F050];
      v12 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v16 = *(MEMORY[0x1E695F050] + 24);
    }

    [(UIKeyboardImpl *)self convertRectToAutocorrectRect:v7 delegateView:v5 container:v10, v12, v14, v16];
    [UIKeyboardImpl animateAutocorrectionToRect:"animateAutocorrectionToRect:fromRect:" fromRect:?];
  }

  else
  {
    v17 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];

    if (!v17)
    {
      goto LABEL_9;
    }

    v5 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [v5 animateAutocorrectionAccepted];
  }

LABEL_9:
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
  if (![(UIKeyboardImpl *)self isPredictionViewControllerVisible]&& ![(UIKeyboardImpl *)self shouldShowLongPredictionList])
  {
    [(UIView *)self->m_autocorrectPrompt setFrame:x, y, width, height];
    if ([(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt prepareForAnimation:v11, v10, v9, v8])
    {
      v13 = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt typedTextView];
      v14 = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionView];
      v15 = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionAnimationView];
      v16 = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionShadowView];
      [v13 frame];
      v18 = v17;
      v20 = v19;
      [(UIView *)self->m_autocorrectPrompt bounds];
      v22 = round(v21 * 0.5);
      [v13 bounds];
      v24 = v20 + v22 - round(v23 * 0.5);
      v25 = self->m_autocorrectPrompt;
      m_autocorrectPrompt = self->m_autocorrectPrompt;
      self->m_autocorrectPrompt = 0;

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __55__UIKeyboardImpl_animateAutocorrectionToRect_fromRect___block_invoke;
      v33[3] = &unk_1E7103E40;
      v37 = v18;
      v38 = v24;
      v34 = v14;
      v35 = v15;
      v36 = v16;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__UIKeyboardImpl_animateAutocorrectionToRect_fromRect___block_invoke_2;
      v31[3] = &unk_1E70F3C60;
      v31[4] = self;
      v32 = v25;
      v27 = v25;
      v28 = v16;
      v29 = v15;
      v30 = v14;
      [UIView animateWithDuration:0 delay:v33 options:v31 animations:0.15 completion:0.0];
    }
  }
}

uint64_t __55__UIKeyboardImpl_animateAutocorrectionToRect_fromRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:{v2, v3}];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  [*(a1 + 40) frame];
  [*(a1 + 40) setFrame:{v4, v5}];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [*(a1 + 48) frame];
  [*(a1 + 48) setFrame:{v6, v7}];
  v8 = *(a1 + 48);

  return [v8 setAlpha:0.0];
}

- (void)fadeAutocorrectPrompt
{
  v3 = [(UIKeyboardImpl *)self inputDelegate];

  if (v3 && [(UIKeyboardImpl *)self hasAutocorrectPrompt])
  {
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v4);

    [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt usageTrackingMask];
    TIStatisticScalarIncrementAutocorrectionKey();
    v6 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
    m_autocorrectPrompt = self->m_autocorrectPrompt;
    if (v6)
    {
      if (m_autocorrectPrompt)
      {
        [(UIView *)m_autocorrectPrompt setAlpha:0.0];
        v8 = self->m_autocorrectPrompt;
        self->m_autocorrectPrompt = 0;
      }

      v9 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v9 dismissWithoutSelection];
    }

    else
    {
      v10 = m_autocorrectPrompt;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__UIKeyboardImpl_fadeAutocorrectPrompt__block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__UIKeyboardImpl_fadeAutocorrectPrompt__block_invoke_2;
      v12[3] = &unk_1E70F3C60;
      v12[4] = self;
      v13 = v10;
      v11 = v10;
      [UIView animateWithDuration:0 delay:v14 options:v12 animations:0.1 completion:0.0];
    }

    [(_UIKeyboardStateManager *)self->_keyboardStateManager rejectAutocorrectionForPromptFade];
    [(UIKeyboardImpl *)self setAutocorrection:0];
    [(UIKeyboardImpl *)self updateKeyboardConfigurations];
  }
}

void __39__UIKeyboardImpl_fadeAutocorrectPrompt__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  *(v2 + 416) = 0;
}

- (void)autocorrectionAnimationDidStopWithAutocorrectionView:(id)a3
{
  v6 = a3;
  v4 = [v6 superview];

  if (v4)
  {
    [v6 removeFromSuperview];
  }

  v5 = [(UIKeyboardImpl *)self cursorAssertion];
  [v5 invalidate];

  [(UIKeyboardImpl *)self setCursorAssertion:0];
}

- (void)underlineCandidate:(id)a3
{
  v12 = a3;
  v4 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
  v5 = v12;
  if (v12 && v4)
  {
    if ([(UIKeyboardImpl *)self shouldUnderlineCandidate:v12])
    {
      v6 = [v12 candidate];
      v7 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:v6];

      if ([v12 isAutocorrection])
      {
        v8 = [(UIKeyboardImpl *)self inputDelegateManager];
        v9 = [v12 input];
        [v8 correctedTypedText:v9 rangeOfReplacement:v7];
      }

      v10 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v10 addUnderlineForCandidate:v12 range:v7];
    }

    else
    {
      v11 = +[UIKeyboard usesInputSystemUI];
      v5 = v12;
      if (!v11)
      {
        goto LABEL_10;
      }

      v7 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [v7 setNeedsUnderlineUpdate];
    }

    v5 = v12;
  }

LABEL_10:
}

- (BOOL)shouldUnderlineCandidate:(id)a3
{
  v3 = a3;
  if ([v3 confidence])
  {
    v4 = [v3 confidence] != 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)delegateSuggestionsForCurrentInput
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v4 = [v3 textSuggestionDelegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_34:
    v30 = 1;
    goto LABEL_35;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 hasCurrentSuggestions])
  {
    v5 = [(UIKeyboardImpl *)self inputDelegate];
    v6 = [v5 _fullText];

    v7 = [(UIKeyboardImpl *)self inputDelegate];
    v8 = [v7 _selectedNSRange];

    v9 = [v4 suggestionsForString:v6 inputIndex:v8];
    v11 = v10;
    v12 = v9;
    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 length];
    if (v14)
    {
      v15 = v14;
      if ([v6 isEqualToString:v13])
      {
LABEL_28:
        if ([v12 count] < 2)
        {
          v34 = 0;
        }

        else
        {
          v32 = [v12 objectAtIndex:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v34 = [v12 objectAtIndex:1];
          }

          else
          {
            v35 = MEMORY[0x1E69D95F0];
            v36 = [v12 objectAtIndex:1];
            v34 = [v35 candidateWithCandidate:v36 forInput:v6];
          }
        }

        [(UIKeyboardImpl *)self setAutocorrection:v34];
        [(UIKeyboardImpl *)self syncInputManagerToKeyboardState];

        goto LABEL_34;
      }

      if (!delegateSuggestionsForCurrentInput_nbspString_0)
      {
        v16 = [MEMORY[0x1E696AEC0] _stringWithUnichar:160];
        v17 = delegateSuggestionsForCurrentInput_nbspString_0;
        delegateSuggestionsForCurrentInput_nbspString_0 = v16;
      }

      v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v13];
      [v18 replaceOccurrencesOfString:@" " withString:delegateSuggestionsForCurrentInput_nbspString_0 options:2 range:{0, v15}];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
      v19 = [(UIKeyboardImpl *)self inputDelegate];
      [v19 _selectAll];

      [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      v20 = [(UIKeyboardImpl *)self inputDelegateManager];
      [v20 insertText:v18 updateInputSource:0];

      if (v11 >= v15)
      {
        v21 = v15;
      }

      else
      {
        v21 = v11;
      }

      if (v15 > v11)
      {
        v22 = (v21 - v15);
        v38 = v21;
        [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
        v23 = [(UIKeyboardImpl *)self inputDelegate];
        [v23 _moveCurrentSelection:v22];

        v24 = [(UIKeyboardImpl *)self inputDelegate];
        LOBYTE(v23) = objc_opt_respondsToSelector();

        if (v23)
        {
          v25 = [v13 _isNaturallyRTL];
          if (v38 > 5 || (v25 & 1) != 0)
          {
            v31 = v25 ^ 1;
            if (v38 < v15 - 5)
            {
              v31 = 1;
            }

            if (v31)
            {
              goto LABEL_26;
            }

            v26 = [(UIKeyboardImpl *)self inputDelegate];
            v27 = v26;
            v28 = v15 - 1;
          }

          else
          {
            v26 = [(UIKeyboardImpl *)self inputDelegate];
            v27 = v26;
            v28 = 0;
          }

          [v26 _scrollRangeToVisible:v28 animated:{0, 0}];
        }

LABEL_26:
        [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
        [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      }
    }

    else
    {
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
      v29 = [(UIKeyboardImpl *)self inputDelegate];
      [v29 _selectAll];

      [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      v18 = [(UIKeyboardImpl *)self inputDelegateManager];
      [v18 insertText:&stru_1EFB14550 updateInputSource:0];
    }

    goto LABEL_28;
  }

  v30 = 0;
LABEL_35:

  return v30;
}

- (BOOL)_isShowingSuggestionForKeyboardCamera
{
  v2 = [(UIKeyboardImpl *)self autocorrectionController];
  v3 = [v2 textSuggestionList];
  v4 = [v3 isShowingSuggestionForKeyboardCamera];

  return v4;
}

- (void)_generateTextSuggestionForKeyboardCamera
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardImpl *)self delegate];
  v4 = [UIAction _textFromCameraTitleForResponder:v3];
  v5 = [UITextSuggestionWithAction textSuggestionWithInputText:v4];
  [v5 setTarget:v3];
  [v5 setAction:sel_captureTextFromCamera_];
  v6 = +[UIAction _textFromCameraImage];
  [v5 setImage:v6];

  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(UIKeyboardImpl *)self setSuggestions:v7];
}

- (void)clearTimers
{
  if (pthread_main_np())
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager clearTimers];
    [(UIKeyboardImpl *)self clearAutocorrectPromptTimer];

    [(UIKeyboardImpl *)self clearDetachHardwareKeyboardAction];
  }

  else
  {

    [(UIKeyboardImpl *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)updateHardwareKeyboardLayout:(BOOL)a3
{
  v3 = a3;
  v5 = UIApp;
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 hardwareInputMode];
  v8 = [v7 automaticHardwareLayout];
  [v5 setHardwareKeyboardLayoutName:v8 forceRebuild:v3];

  [(UIKeyboardImpl *)self setCapsLockIfNeeded];

  [(UIKeyboardImpl *)self callLayoutUpdateAllLocalizedKeys];
}

- (void)clearDetachHardwareKeyboardAction
{
  [(UIDelayedAction *)self->m_detachHardwareKeyboardAction cancel];
  [(UIDelayedAction *)self->m_detachHardwareKeyboardAction setTarget:0];
  m_detachHardwareKeyboardAction = self->m_detachHardwareKeyboardAction;
  self->m_detachHardwareKeyboardAction = 0;
}

- (void)detachHardwareKeyboard
{
  v12 = *MEMORY[0x1E69E9840];
  [(UIKeyboardImpl *)self clearDetachHardwareKeyboardAction];
  v3 = +[UIDevice currentDevice];
  -[_UIKeyboardStateManager setHardwareKeyboardAttached:](self->_keyboardStateManager, "setHardwareKeyboardAttached:", [v3 _isHardwareKeyboardAvailable]);

  v4 = _UIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
    v8 = 136315394;
    v9 = "[UIKeyboardImpl detachHardwareKeyboard]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s hardwareKeyboardAttached = %d", &v8, 0x12u);
  }

  [(UIKeyboardImpl *)self setInHardwareKeyboardMode:[(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]];
  [(UIKeyboardImpl *)self setCapsLockSign];
  [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:0];
  v6 = +[UIInputSwitcher activeInstance];
  [v6 hideSwitcherIfNeeded];
  v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputModeIndicatorController];
  [v7 hardwareKeyboardDettached];

  if ([(UIKeyboardImpl *)self canPresentNumberpadPopover])
  {
    [(UIKeyboardImpl *)self presentNumberpadPopover];
  }
}

- (void)hardwareKeyboardAvailabilityDidChange:(id)a3
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 inputViews];
  v6 = [v5 inputView];

  if (v6)
  {

    [(UIKeyboardImpl *)self hardwareKeyboardAvailabilityChanged];
  }
}

- (void)hardwareKeyboardAvailabilityChanged
{
  v24 = *MEMORY[0x1E69E9840];
  [(_UIKeyboardStateManager *)self->_keyboardStateManager updateHardwareKeyboardExclusivityIdentifier];
  v3 = +[UIDevice currentDevice];
  v4 = [v3 _isHardwareKeyboardAvailable];

  if (v4)
  {
    if (self->m_detachHardwareKeyboardAction && ([(UIKeyboardImpl *)self clearDetachHardwareKeyboardAction], [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]))
    {
      [(UIKeyboardImpl *)self setCapsLockIfNeeded];

      [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:0];
    }

    else
    {
      [(UIKeyboardImpl *)self setAutomaticMinimizationEnabled:1];
      if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
      {
        [(UIKeyboardImpl *)self updateHardwareKeyboardLayout];
      }

      else
      {
        [(_UIKeyboardStateManager *)self->_keyboardStateManager setHardwareKeyboardAttached:1];
        v12 = _UIKeyboardLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315138;
          v23 = "[UIKeyboardImpl hardwareKeyboardAvailabilityChanged]";
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s hardwareKeyboardAttached = YES", &v22, 0xCu);
        }
      }

      [(UIKeyboardImpl *)self setInHardwareKeyboardMode:1 forceRebuild:0];
      [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:0];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager unsetDidUpdateCapsLockLanguageSwitchSetting];
      v13 = +[UIDictationController activeInstance];
      [v13 prepareStartDictationKeyboardGestures];

      [(UIKeyboardImpl *)self dismissNumberpadPopover];
    }

    return;
  }

  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [v5 keyInputDelegate];
  if (v6)
  {
    v7 = v6;
    if (([UIApp isSuspended] & 1) == 0)
    {

      goto LABEL_23;
    }

    v8 = +[UIPeripheralHost sharedInstance];
    v9 = [v8 containerWindow];
    v10 = [v9 _isHostedInAnotherProcess];

    if (v10)
    {
LABEL_23:
      m_detachHardwareKeyboardAction = self->m_detachHardwareKeyboardAction;
      if (m_detachHardwareKeyboardAction)
      {

        [(UIDelayedAction *)m_detachHardwareKeyboardAction touch];
      }

      else if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
      {
        v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v16 = [v15 preferencesActions];
        v17 = [v16 valueForPreferenceKey:@"DetachHardwareKeyboardDelayInterval"];
        [v17 floatValue];
        v19 = v18;

        [(UIKeyboardImpl *)self cancelAllKeyEvents];
        [UIApp _deliverRemainingKeyUpEvents];
        if (v19 <= 0.0)
        {

          [(UIKeyboardImpl *)self detachHardwareKeyboard];
        }

        else
        {
          v20 = [[UIDelayedAction alloc] initWithTarget:self action:sel_detachHardwareKeyboard userInfo:0 delay:v19];
          v21 = self->m_detachHardwareKeyboardAction;
          self->m_detachHardwareKeyboardAction = v20;
        }
      }

      return;
    }
  }

  else
  {
  }

  [(UIKeyboardImpl *)self cancelAllKeyEvents];
  [UIApp _deliverRemainingKeyUpEvents];
  [(UIKeyboardImpl *)self detachHardwareKeyboard];
  keyboardStateManager = self->_keyboardStateManager;

  [(_UIKeyboardStateManager *)keyboardStateManager unsetDidUpdateCapsLockLanguageSwitchSetting];
}

- (void)hideKeyboardWithoutPreflightChecks
{
  [(UIKeyboardImpl *)self prepareForGeometryChange];
  [(UIKeyboardImpl *)self removeCandidateList];
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  [WeakRetained setMinimized:1];

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  v6 = [v5 isExtensionInputMode];

  if (v6)
  {
    v7 = +[UIPeripheralHost sharedInstance];
    [v7 minimize];
  }

  [(UIKeyboardImpl *)self deactivateLayout];
  [(UIKeyboardLayout *)self->m_layout resetTouchProcessingForKeyboardChange];
  [(UIKeyboardImpl *)self notifyShiftState];
  v8 = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:v8];

  [(UIKeyboardImpl *)self geometryChangeDone:1];
  [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
  [(UIKeyboardImpl *)self dismissContinuousPathIntroductionView];
  [(UIKeyboardImpl *)self dismissEditingIntroductionView];
  [(UIKeyboardImpl *)self dismissMultilingualKeyboardTip];
  [(UIKeyboardImpl *)self dismissMultilingualSettingTip];

  [(UIKeyboardImpl *)self dismissStickerEditor:0];
}

- (void)hideKeyboardIgnoringHardwareLayouts:(BOOL)a3
{
  if (a3 || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentInputMode], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "showSWLayoutWithHWKeyboard"), v5, v4, (v6 & 1) == 0))
  {
    if (![(UIKeyboardImpl *)self showingEmojiSearch])
    {

      [(UIKeyboardImpl *)self hideKeyboardWithoutPreflightChecks];
    }
  }
}

- (void)showKeyboardWithoutSuppressionPolicy
{
  [(UIKeyboardImpl *)self setHardwareKeyboardIsSeen:1];
  [(UIKeyboardImpl *)self setAutomaticMinimizationEnabled:0];
  [(UIKeyboardImpl *)self _showKeyboardIgnoringPolicyDelegate:1];

  [(UIKeyboardImpl *)self updateTextInputKeyboardSource];
}

- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIDictationController activeInstance];
  v6 = [v5 shouldSuppressSoftwareKeyboard];

  if ((v6 & 1) == 0)
  {
    v7 = +[UIKeyboardCameraSession activeSession];
    v8 = [v7 shouldSuppressSoftwareKeyboard];

    if ((v8 & 1) == 0 && +[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate]&& ![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:v3])
    {
      self->m_maximizing = 1;
      if (self->m_updateLayoutOnShowKeyboard || +[UIKeyboardImpl isFloating])
      {
        [(UIKeyboardImpl *)self _updateLayoutAndLocalizedKeys];
        self->m_updateLayoutOnShowKeyboard = 0;
      }

      if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
      {
        [(UIKeyboardImpl *)self dismissEmojiPopoverBeforeCleanup:0];
      }

      if ([(_UIKeyboardStateManager *)self->_keyboardStateManager numberpadPopoverHasBeenShown])
      {
        [(_UIKeyboardStateManager *)self->_keyboardStateManager setNumberpadPopoverHasBeenShown:0];
        v9 = [(UIView *)self _rootInputWindowController];
        [v9 invalidateInputView];
      }

      WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
      [WeakRetained setMinimized:0];

      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v12 = [v11 currentInputMode];
      v13 = [v12 isExtensionInputMode];

      if (v13)
      {
        v14 = +[UIPeripheralHost sharedInstance];
        [v14 maximize];
      }

      [(UIView *)self->m_layout setAlpha:1.0];
      v15 = [(UIKeyboardImpl *)self window];
      [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:v15];

      [(UIKeyboardImpl *)self prepareForGeometryChange];
      [(UIKeyboardImpl *)self removeCandidateList];
      v16 = [(UIKeyboardImpl *)self autocorrectionPreferenceForTraits]!= 0;
      v17 = [(UIKeyboardImpl *)self keyboardState];
      [v17 setAutocorrectionEnabled:v16];

      v18 = [(UIKeyboardImpl *)self keyboardStateManager];
      v19 = [v18 isInlineCompletionEnabled];
      v20 = [(UIKeyboardImpl *)self keyboardState];
      [v20 setInlineCompletionEnabled:v19];

      [(UIKeyboardImpl *)self updateForChangedSelection];
      [(UIKeyboardImpl *)self setShowsCandidateBar:[(UIKeyboardImpl *)self shouldShowCandidateBar]];
      v21 = +[UIKeyboardInputModeController sharedInputModeController];
      v22 = [v21 currentInputMode];
      [(UIKeyboardImpl *)self setKeyboardInputMode:v22 userInitiated:0];

      if ([(UIKeyboardImpl *)self showsCandidateBar])
      {
        [(UIKeyboardImpl *)self generateCandidates];
      }

      [(UIKeyboardImpl *)self geometryChangeDone:1];
      self->m_maximizing = 0;
    }
  }
}

- (void)nonDestructivelyDismissKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  v4 = [WeakRetained canDismiss];

  if (!v4)
  {
    return;
  }

  v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v13 ignoresPinning];
  [v13 setIgnoresPinning:1];
  [(UIKeyboardImpl *)self setGeometryIsChanging:1];
  [(UIKeyboardImpl *)self clearForwardingInputDelegateAndResign:1];
  if (+[UIKeyboard isKeyboardProcess])
  {
    v6 = [(UIKeyboardImpl *)self inputSystemSourceSession];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 textOperations];
      [v8 setEditingActionSelector:sel_cancelOperation_];

      v9 = [(UIKeyboardImpl *)self buildInputSourceState];
      v10 = [v7 textOperations];
      [v10 setInputSourceState:v9];

      [v7 flushOperations];
    }
  }

  else
  {
    v11 = [(UIKeyboardImpl *)self delegateAsResponder];
    v12 = [v11 isFirstResponder];

    if (!v12)
    {
      [v13 _reloadInputViewsForResponder:0];
      goto LABEL_10;
    }

    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    [v7 resignFirstResponder];
  }

LABEL_10:
  [(UIKeyboardImpl *)self setGeometryIsChanging:0];
  [v13 setIgnoresPinning:v5];
  [(UIKeyboardImpl *)self sendKeyboardDismissalNotification];
}

- (void)sendKeyboardDismissalNotification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__UIKeyboardImpl_sendKeyboardDismissalNotification__block_invoke;
  aBlock[3] = &unk_1E70FD058;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (qword_1ED498AF8 != -1)
  {
    dispatch_once(&qword_1ED498AF8, &__block_literal_global_622);
  }

  v4 = [(UIKeyboardImpl *)self taskQueue];
  [v4 addTask:v3 breadcrumb:qword_1ED498AF0];
}

void __51__UIKeyboardImpl_sendKeyboardDismissalNotification__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) inputDelegateManager];
  v4 = [v3 callKeyboardWillDismiss];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"UIKeyboardPrivateDidRequestDismissalNotification" object:0];
  }

  [v6 returnExecutionToParent];
}

void __51__UIKeyboardImpl_sendKeyboardDismissalNotification__block_invoke_2()
{
  v0 = [&__block_literal_global_624 copy];
  v1 = qword_1ED498AF0;
  qword_1ED498AF0 = v0;
}

- (void)dismissKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  v4 = [WeakRetained canDismiss];

  if (v4)
  {
    v5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v6 = [v5 keyboardAppearance];

    if (v6 == 127 || !-[_UIKeyboardStateManager hardwareKeyboardAttached](self->_keyboardStateManager, "hardwareKeyboardAttached") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 currentInputMode], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "showSWLayoutWithHWKeyboard"), v8, v7, (v9 & 1) != 0))
    {
      [(UIKeyboardImpl *)self nonDestructivelyDismissKeyboard];
    }

    else
    {
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
      }

      [(UIKeyboardImpl *)self prepareForGeometryChange];
      v10 = objc_loadWeakRetained(&self->m_geometryDelegate);
      [v10 setMinimized:1];

      [(UIKeyboardImpl *)self geometryChangeDone:0];
      [(UIKeyboardImpl *)self setAutomaticMinimizationEnabled:1];
    }

    [(UIKeyboardImpl *)self sendKeyboardDismissalNotification];
  }
}

- (BOOL)canToggleSoftwareKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  if ([WeakRetained isActive])
  {
    v4 = objc_loadWeakRetained(&self->m_geometryDelegate);
    if ([v4 isAutomatic])
    {
      v5 = +[UIKeyboardInputModeController sharedInputModeController];
      v6 = [v5 currentInputMode];
      v7 = ([v6 showSWLayoutWithHWKeyboard] & 1) == 0 && -[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode");
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

- (void)toggleSoftwareKeyboard
{
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  if ([WeakRetained isActive])
  {
    v3 = objc_loadWeakRetained(&self->m_geometryDelegate);
    v4 = [v3 isAutomatic];

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->m_geometryDelegate);
      -[UIKeyboardImpl setAutomaticMinimizationEnabled:](self, "setAutomaticMinimizationEnabled:", [v5 isMinimized] ^ 1);

      v6 = objc_loadWeakRetained(&self->m_geometryDelegate);
      v7 = [v6 isMinimized];

      if (v7)
      {

        [(UIKeyboardImpl *)self showKeyboard];
      }

      else
      {

        [(UIKeyboardImpl *)self hideKeyboard];
      }
    }
  }

  else
  {
  }
}

- (void)updateIsAttachedHardwareKeyboard
{
  v34 = *MEMORY[0x1E69E9840];
  cf = IOHIDEventSystemClientCreateWithType();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = IOHIDEventSystemClientCopyServices(cf);
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v20 = v2;
    v17 = *v29;
    do
    {
      v6 = 0;
      v18 = v4;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        service = *(*(&v28 + 1) + 8 * v6);
        v7 = IOHIDServiceClientCopyProperty(service, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v6;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v24 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v13 objectForKey:@"DeviceUsagePage"];
                  v15 = [v13 objectForKey:@"DeviceUsage"];
                  if ([v14 isEqual:&unk_1EFE31C78] && objc_msgSend(v15, "isEqual:", &unk_1EFE31C90))
                  {
                    v16 = IOHIDServiceClientCopyProperty(service, @"Transport");
                    if (([v16 isEqualToString:@"AID"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"USB"))
                    {
                      [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:MEMORY[0x1E695E118]];
                      CFRelease(cf);

                      v2 = v20;
                      goto LABEL_27;
                    }
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v6 = v19;
          v2 = v20;
          v5 = v17;
          v4 = v18;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:MEMORY[0x1E695E110]];
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_27:
}

- (void)setKeyboardMinimizedByDictation:(BOOL)a3
{
  [(_UIKeyboardStateManager *)self->_keyboardStateManager setKeyboardMinimizedByDictation:?];
  if (!a3 && self->m_updateLayoutOnShowKeyboard)
  {
    [(UIKeyboardImpl *)self _updateLayoutAndLocalizedKeys];
    self->m_updateLayoutOnShowKeyboard = 0;
  }
}

- (void)showKeyboardIfNeeded
{
  if (+[UIDictationController isRunningInTypeAndTalkMode])
  {
    v3 = +[UIDictationController activeInstance];
    if ([v3 shouldSuppressSoftwareKeyboard] && -[UIKeyboardImpl isMinimized](self, "isMinimized"))
    {
      v4 = ![(UIKeyboardImpl *)self isInHardwareKeyboardMode];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if ([(UIKeyboardImpl *)self hardwareKeyboardIsSeen]&& !v4 || ![(UIKeyboardImpl *)self isMinimized]|| [(UIKeyboardImpl *)self isEmojiPopoverPresented]|| [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByOneness])
  {
    return;
  }

  v5 = [(UIKeyboardImpl *)self isAttachedHardwareKeyboard];

  if (!v5)
  {
    [(UIKeyboardImpl *)self updateIsAttachedHardwareKeyboard];
  }

  v9 = [(UIKeyboardImpl *)self isAttachedHardwareKeyboard];
  if (![v9 BOOLValue])
  {

LABEL_21:
    v7 = +[UIDictationController activeInstance];
    v8 = [v7 shouldSuppressSoftwareKeyboard];

    if (v8)
    {
      [(UIKeyboardImpl *)self setKeyboardMinimizedByDictation:0];
    }

    [(UIKeyboardImpl *)self toggleSoftwareKeyboard];
    return;
  }

  if (v4)
  {
    v6 = [(UIKeyboardImpl *)self isMinimized];

    if (!v6)
    {
      return;
    }

    goto LABEL_21;
  }
}

- (void)remoteControlReceivedWithEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 2)
  {
    [(UIResponder *)self->m_layout remoteControlReceivedWithEvent:v4];
  }
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 7)
  {
    [(UIResponder *)self->m_layout _wheelChangedWithEvent:v4];
  }
}

- (void)_moveWithEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 5 && -[UIKeyboardLayout canHandleEvent:](self->m_layout, "canHandleEvent:", v4))
  {
    [(UIKeyboardImpl *)self clearLanguageIndicator];
    [(UIResponder *)self->m_layout _moveWithEvent:v4];
  }
}

- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4
{
  m_layout = self->m_layout;
  if (m_layout)
  {
    LOBYTE(m_layout) = [(UIKeyboardLayout *)m_layout canHandlePresses:a3 withEvent:a4];
  }

  return m_layout;
}

- (void)setCaretBlinks:(BOOL)a3
{
  v6 = [(UIKeyboardImpl *)self textInteractionAssistant];
  if (a3)
  {
    v5 = [(UIKeyboardImpl *)self _activeAssertionController];
    [v6 setCursorBlinks:{objc_msgSend(v5, "_isNonBlinking") ^ 1}];
  }

  else
  {
    [v6 setCursorBlinks:0];
  }
}

- (void)setCaretVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIKeyboardImpl *)self textInteractionAssistant];
  [v4 setCursorVisible:v3];
}

- (BOOL)caretBlinks
{
  v2 = [(UIKeyboardImpl *)self textInteractionAssistant];
  v3 = [v2 cursorBlinks];

  return v3;
}

- (BOOL)caretVisible
{
  v2 = [(UIKeyboardImpl *)self textInteractionAssistant];
  v3 = [v2 cursorVisible];

  return v3;
}

- (id)dynamicCaretList
{
  v2 = [(UIKeyboardImpl *)self textInteractionAssistant];
  v3 = [v2 _legacySelectionView];
  v4 = [v3 dynamicCaretList];

  return v4;
}

- (void)updateNoContentViews
{
  v3 = [(UIKeyboardImpl *)self dynamicCaretList];

  if (v3)
  {
    v5 = [(UIKeyboardImpl *)self textInteractionAssistant];
    v4 = [v5 _legacySelectionView];
    [v4 updateDocumentHasContent:{-[UIKeyboardImpl noContent](self, "noContent") ^ 1}];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = -[UIKeyboardImpl pointInside:forEvent:](self, "pointInside:forEvent:", [v7 _gsEvent], x, y) || -[UIView pointInside:withEvent:](self->m_layout, "pointInside:withEvent:", v7, x, y);

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  if (![(UIKeyboardImpl *)self isMinimized])
  {
    [(UIView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UIKeyboardLayout *)self->m_layout hitBuffer];
    v18 = v17;
    v19 = -v17;
    v35.origin.x = v10;
    v35.origin.y = v12;
    v35.size.width = v14;
    v35.size.height = v16;
    v36 = CGRectInset(v35, 0.0, v19);
    v20 = v36.origin.x;
    v21 = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v24 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
    continuousPathIntroductionView = v24;
    if (v24 || (continuousPathIntroductionView = self->_continuousPathIntroductionView) != 0 || (continuousPathIntroductionView = self->_editingGestureIntroductionView) != 0 || (continuousPathIntroductionView = self->_multilingualKeyboardIntroductionView) != 0)
    {
      v26 = continuousPathIntroductionView;
    }

    else
    {
      v26 = self->_multilingualSettingIntroductionView;
      if (!v26)
      {
        goto LABEL_11;
      }
    }

    [(UIView *)v26 convertPoint:self fromView:x, y];
    if ([(UIView *)v26 pointInside:a4 forEvent:?])
    {
      v8 = 1;
LABEL_24:

      return v8;
    }

LABEL_11:
    v37.origin.x = v20;
    v37.origin.y = v21;
    v37.size.width = width;
    v37.size.height = height;
    v34.x = x;
    v34.y = y;
    v27 = CGRectContainsPoint(v37, v34);
    m_layout = self->m_layout;
    [(UIView *)self convertPoint:m_layout toView:x, y];
    v8 = [(UIView *)m_layout pointInside:a4 forEvent:?];
    v29 = v18 != 0.0 || !v27;
    if (v29 || !+[UIKeyboardImpl isSplit]|| [(UIKeyboardImpl *)self centerFilled])
    {
      v8 |= v27;
    }

    if ([(UIKeyboardImpl *)self showsCandidateBar])
    {
      v30 = [(UIKeyboardImpl *)self candidateController];
      v31 = [v30 candidateBar];

      if ([v31 isHiddenOrHasHiddenAncestor])
      {
        LOBYTE(HasAlphaHittable) = 0;
      }

      else
      {
        HasAlphaHittable = [(UIView *)v31 _isAlphaHittableAndHasAlphaHittableAncestors];
        if (HasAlphaHittable)
        {
          [(UIView *)self convertPoint:v31 toView:x, y];
          LOBYTE(HasAlphaHittable) = [v31 pointInside:a4 forEvent:?];
        }
      }

      v8 |= HasAlphaHittable;
    }

    goto LABEL_24;
  }

  return 0;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
  continuousPathIntroductionView = v8;
  if (v8 || (continuousPathIntroductionView = self->_continuousPathIntroductionView) != 0 || (continuousPathIntroductionView = self->_editingGestureIntroductionView) != 0 || (continuousPathIntroductionView = self->_multilingualKeyboardIntroductionView) != 0)
  {
    v10 = continuousPathIntroductionView;
  }

  else
  {
    v10 = self->_multilingualSettingIntroductionView;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  [(UIView *)v10 convertPoint:self fromView:x, y];
  v11 = [(UIView *)v10 hitTest:v7 withEvent:?];
  if (v11)
  {
    goto LABEL_34;
  }

LABEL_7:
  if ([(UIKeyboardImpl *)self showsCandidateBar])
  {
    v12 = [(UIKeyboardImpl *)self candidateController];
    v13 = [v12 candidateBar];

    [(UIView *)self convertPoint:v13 toView:x, y];
    v15 = v14;
    v17 = v16;
    if ([v13 isHiddenOrHasHiddenAncestor] & 1) == 0 && -[UIView _isAlphaHittableAndHasAlphaHittableAncestors](v13) && (objc_msgSend(v13, "pointInside:withEvent:", v7, v15, v17))
    {
      v11 = [v13 hitTest:v7 withEvent:{v15, v17}];
LABEL_25:

      goto LABEL_34;
    }
  }

  m_layout = self->m_layout;
  [(UIView *)m_layout convertPoint:self fromView:x, y];
  v19 = [(UIView *)m_layout hitTest:v7 withEvent:?];
  v20 = self->m_layout;

  if (v19 != v20)
  {
    if ([(UIKeyboardImpl *)self showsCandidateBar])
    {
LABEL_32:
      v35.receiver = self;
      v35.super_class = UIKeyboardImpl;
      v22 = [(UIView *)&v35 hitTest:v7 withEvent:x, y];
      goto LABEL_33;
    }

    v13 = [(UIKeyboardLayout *)self->m_layout candidateList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = [(UIKeyboardImpl *)self candidateController];
        v32 = [v31 activeCandidateViewType];

        if (v32)
        {
          v33 = [(UIKeyboardImpl *)self candidateController];
          v23 = [v33 candidateKey];

          if (v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_31;
      }

      v21 = [v13 view];
    }

    v23 = v21;
    if (v21)
    {
LABEL_21:
      if (([v23 isHidden] & 1) == 0)
      {
        v24 = [(UIKeyboardImpl *)self candidateController];
        v25 = [v24 candidateResultSet];
        v26 = [v25 hasCandidates];

        if (v26)
        {
          [(UIView *)self convertPoint:v23 toView:x, y];
          v28 = v27;
          v30 = v29;
          if ([v23 pointInside:v7 withEvent:?])
          {
            v11 = [v23 hitTest:v7 withEvent:{v28, v30}];

            goto LABEL_25;
          }
        }
      }
    }

LABEL_31:

    goto LABEL_32;
  }

  v22 = self->m_layout;
LABEL_33:
  v11 = v22;
LABEL_34:

  return v11;
}

- (id)responderForSendCurrentLocation
{
  v2 = [(UIKeyboardImpl *)self inputDelegate];
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

- (void)performSendCurrentLocation
{
  v5 = [(UIKeyboardImpl *)self inputDelegate];
  v3 = [(UIKeyboardImpl *)self responderForSendCurrentLocation];
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
  v4[2] = __59__UIKeyboardImpl_enableTransientInputDelegateSelectionMode__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)enableTransientSelectionMode
{
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 delegateRespectingForwardingDelegate:0];
  [(UIKeyboardImpl *)self _setTransientSelectionModeEnabled:1 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(UIKeyboardImpl *)self inputDelegateManager];
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
  v3 = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [v3 delegateRespectingForwardingDelegate:0];
  [(UIKeyboardImpl *)self _setTransientSelectionModeEnabled:0 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(UIKeyboardImpl *)self inputDelegateManager];
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
  if ([(UIKeyboardImpl *)self _hasMarkedText])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v5 = [(UIKeyboardImpl *)self inputDelegateManager];
      v6 = [v5 forwardingInputDelegate];

      if (v6)
      {
        v7 = [(UIKeyboardImpl *)self inputDelegateManager];
        [v7 unmarkText];
      }
    }
  }

  v8 = [(UIKeyboardImpl *)self inputDelegateManager];
  [v8 clearForwardingInputDelegateAndResign:v3];

  v9 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [v9 forwardClearForwardingInputDelegateAndResign:v3];
}

- (void)didChangeForwardingInputDelegate:(id)a3
{
  [(UIKeyboardImpl *)self takeTextInputTraitsFromDelegate];
  if (a3)
  {
    v5 = [(UIKeyboardImpl *)self inputDelegateManager];
    v6 = [v5 forwardingInputDelegate];
    v7 = [v6 keyboardType];

    if (v7 == 122)
    {

      [(UIKeyboardImpl *)self recomputeActiveInputModesWithExtensions:0 allowNonLinguisticInputModes:1];
    }
  }

  else
  {
    [(UIKeyboardImpl *)self disableTransientSelectionMode];
    [(UIKeyboardImpl *)self recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 updateRenderConfigForCurrentResponder];

    [(UIKeyboardImpl *)self reinitializeAfterInputModeSwitch:0];
    if (objc_opt_respondsToSelector())
    {
      m_layout = self->m_layout;

      [(UIKeyboardLayout *)m_layout didTriggerDestructiveRenderConfigChange];
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

- (id)buildInputSourceState
{
  v3 = objc_alloc_init(MEMORY[0x1E69C6F50]);
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  v6 = [v5 identifier];
  [v3 setInputMode:v6];

  [v3 setMinimized:{-[UIKeyboardImpl isMinimized](self, "isMinimized")}];
  [v3 setHardwareKeyboardMode:{-[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode")}];
  [v3 setCenterFilled:{-[UIKeyboardImpl centerFilled](self, "centerFilled")}];
  [v3 setSplit:{objc_msgSend(objc_opt_class(), "isSplit")}];
  if ([v3 split])
  {
    [(UIKeyboardImpl *)self frameForKeylayoutName:@"split-left"];
    [v3 setLeftSplitFrame:?];
    [(UIKeyboardImpl *)self frameForKeylayoutName:@"split-right"];
    [v3 setRightSplitFrame:?];
  }

  [v3 setFloating:{objc_msgSend(objc_opt_class(), "isFloating")}];
  [v3 setShowingEmojiSearch:{-[UIKeyboardImpl showingEmojiSearch](self, "showingEmojiSearch")}];
  [v3 setUsesCandidateSelection:{-[UIKeyboardImpl usesCandidateSelection](self, "usesCandidateSelection")}];
  [v3 setShowsCandidateBar:{-[UIKeyboardImpl showsCandidateBar](self, "showsCandidateBar")}];
  v7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  [v3 setSupportsSetPhraseBoundary:{objc_msgSend(v7, "supportsSetPhraseBoundary")}];

  return v3;
}

- (void)updateAssistantViewInfo:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 systemInputAssistantViewController];

  [v5 setRemoteAssistantViewInfo:v3];
}

- (void)applyAssistantItem:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 systemInputAssistantViewController];

  [v6 applyRemoteAssistantItem:v4];
  [(UIKeyboardImpl *)self updateInputAssistantButtonItems];
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
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_switchToDictationInputModeWithOptions____s_category_0) + 8);
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
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_switchToDictationLanguage____s_category_0) + 8);
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
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_startDictation___s_category_0) + 8);
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_stopDictation____s_category_0) + 8);
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_cancelDictation___s_category_0) + 8);
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
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_handleTip____s_category_0) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpected event handling", v12, 2u);
    }
  }

  dictationPopoverController = self->_dictationPopoverController;
  if (v4)
  {
    v8 = [v4 objectForKeyedSubscript:@"text"];
    v9 = [v4 objectForKeyedSubscript:@"title"];
    [(UIDictationPopoverController *)dictationPopoverController presentTip:v8 tipDescription:v9];
  }

  else
  {
    [(UIDictationPopoverController *)dictationPopoverController dismissTip];
  }
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
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_movePopoverView____s_category_0) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Unexpected event handling", v16, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self inputDelegate];
  v8 = [v7 _window];
  v9 = [(UIKeyboardImpl *)self window];

  if (v8 != v9)
  {
    dictationPopoverController = self->_dictationPopoverController;
    v11 = [v4 objectForKeyedSubscript:@"sourceRect"];
    [v11 rectValue];
    [(UIDictationPopoverController *)dictationPopoverController movePopoverView:?];

    v12 = [v4 objectForKeyedSubscript:@"editMenuFrame"];
    v13 = v12;
    if (v12)
    {
      [v12 rectValue];
      [(UIKeyboardImpl *)self setEditMenuFrame:?];
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
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unexpected event handling", buf, 2u);
      }
    }
  }

  else if (!v6)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_setEditMenuFrame____s_category_0) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unexpected event handling", v13, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self inputDelegate];
  v8 = [v7 _window];
  v9 = [(UIKeyboardImpl *)self window];

  if (v8 != v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"editMenuFrame"];
    [v10 rectValue];
    [(UIKeyboardImpl *)self setEditMenuFrame:?];
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
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_updateIdleDetection____s_category_0) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected event handling", v9, 2u);
    }
  }

  [(UIKeyboardImpl *)self updateIdleDetection:a3];
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
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases___s_category_0) + 8);
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
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteDictationEvent_resumeDictation___s_category_0) + 8);
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
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &handleRemoteKeyboardCameraEvent_startCameraInput____s_category_0) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unexpected event handling", v11, 2u);
    }
  }

  v7 = +[UIKeyboardCameraSession sharedSession];
  v8 = [(UIKeyboardImpl *)self inputDelegate];
  [v7 showForResponder:v8 sender:0 rtiConfiguration:v4];
}

- (void)pauseDictationForResponderChange
{
  if (+[UIDictationController isRunning])
  {
    v3 = _UIDictationControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "UIDictationController pauseDictationForResponderChange", v7, 2u);
    }

    v4 = +[UIDictationController sharedInstance];
    [v4 pauseDictation];

    [(UIKeyboardImpl *)self dismissDictationPopover];
    v5 = +[UIDictationLandingView activeInstance];
    LODWORD(v4) = [v5 canStopLanding];

    if (v4)
    {
      v6 = +[UIDictationLandingView activeInstance];
      [v6 stopLanding];
    }
  }
}

- (void)handleDictationForResponderChange
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    v3 = [(UIKeyboardImpl *)self textInputTraits];
    v4 = [UIDictationController checkTraitsSupportDictation:v3];

    v5 = _UIDictationControllerLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "UIDictationController resumeDictationForResponderChange", &v17, 2u);
      }

      v7 = +[UIDictationController sharedInstance];
      [v7 resumeDictation];

      if (!+[UIKeyboard isRedesignedTextCursorEnabled]&& ![(UIKeyboardImpl *)self isDictationMenuPresented])
      {
        [(UIKeyboardImpl *)self presentDictationMenu];
      }
    }

    else
    {
      if (v6)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "UIDictationController resumeDictationForResponderChange cancelDictation instead -> new responder does not support dictation", &v17, 2u);
      }

      v10 = +[UIDictationController sharedInstance];
      [v10 setReasonType:20];

      v11 = +[UIDictationController sharedInstance];
      [v11 cancelDictation];
    }

    v12 = +[UIDictationController sharedInstance];
    [v12 setSkipAutomaticResumeDictation:0];

    v13 = _UIDictationControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[UIDictationController sharedInstance];
      v15 = [v14 skipAutomaticResumeDictation];
      v17 = 136315394;
      v18 = "[UIKeyboardImpl handleDictationForResponderChange]";
      v19 = 1024;
      v20 = v15;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s, set skipAutomaticResumeDictation=%d", &v17, 0x12u);
    }

    m_resumeDictationForResponderChange = self->m_resumeDictationForResponderChange;
    self->m_resumeDictationForResponderChange = 0;
  }

  else
  {
    v8 = +[UIDictationController sharedInstance];
    [v8 setShouldResumeDictation:0];

    v9 = self->m_resumeDictationForResponderChange;
    self->m_resumeDictationForResponderChange = 0;
  }
}

- (void)resumeDictationForResponderChange
{
  if (+[UIDictationController isRunning](UIDictationController, "isRunning") && (+[UIDictationController sharedInstance](UIDictationController, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isDictationPaused], v3, v4))
  {
    m_resumeDictationForResponderChange = self->m_resumeDictationForResponderChange;
    if (m_resumeDictationForResponderChange)
    {

      [(UIDelayedAction *)m_resumeDictationForResponderChange touch];
    }

    else
    {
      v10 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleDictationForResponderChange userInfo:0 delay:0.5];
      v11 = self->m_resumeDictationForResponderChange;
      self->m_resumeDictationForResponderChange = v10;
    }
  }

  else
  {
    v6 = +[UIDictationController sharedInstance];
    v7 = [v6 shouldResumeDictation];

    if (v7)
    {
      v8 = +[UIDictationController sharedInstance];
      [v8 setShouldResumeDictation:0];

      v9 = self->m_resumeDictationForResponderChange;
      self->m_resumeDictationForResponderChange = 0;
    }
  }
}

- (void)assertTextForDictation
{
  v3 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  if (v3)
  {
    v13 = v3;
    v4 = +[UIKeyboard isKeyboardProcess];
    v3 = v13;
    if (!v4)
    {
      v5 = [(UIKeyboardImpl *)self documentState];
      v6 = [v5 contextBeforeInput];
      v7 = [v6 length];
      v8 = [v5 selectedText];
      v9 = [v8 length];

      v10 = [v5 fullString];
      v11 = [v13 textOperations];
      [v11 setTextToAssert:v10];

      v12 = [v13 textOperations];
      [v12 setSelectionRangeToAssert:{v7, v9}];

      [v13 flushOperations];
      v3 = v13;
    }
  }
}

- (void)handleGrammarCorrectionEntries:(id)a3
{
  v5 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v4 forwardGrammarCorrectionEntries:v5];
  }

  else
  {
    [UITextChecker handleGrammarCorrectionEntries:v5];
  }
}

+ (void)sendPerformanceNotification:(id)a3 userInfo:(id)a4
{
  if (kbProfilingParentTest)
  {
    v5 = MEMORY[0x1E696AD88];
    v6 = a4;
    v7 = a3;
    v8 = [v5 defaultCenter];
    [v8 postNotificationName:v7 object:0 userInfo:v6];
  }
}

- (void)updateFromTextInputTraits
{
  [(UIKeyboardImpl *)self takeTextInputTraitsFromDelegate];

  [(UIKeyboardImpl *)self updateReturnKey:1];
}

- (BOOL)_isShowingCandidateUIWithAvailableCandidates
{
  _UIDeviceNativeUserInterfaceIdiom();
  v3 = [(UIKeyboardImpl *)self showsCandidateBar];
  if (v3)
  {
    v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    v5 = [v4 hasCandidates];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)_autofillGroup
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  v3 = [v2 autofillGroup];

  return v3;
}

- (id)_fallbackAutofillGroup
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  v3 = [v2 fallbackAutofillGroup];

  return v3;
}

- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)a3
{
  keyboardStateManager = self->_keyboardStateManager;
  v4 = a3;
  v5 = [(_UIKeyboardStateManager *)keyboardStateManager autofillController];
  v6 = [v5 containsUsernamePasswordPairsInAutofillGroup:v4];

  return v6;
}

- (void)_setCandidateController:(id)a3
{
  objc_storeStrong(&self->m_candidateController, a3);
  v5 = a3;
  [(_UIKeyboardStateManager *)self->_keyboardStateManager _setCandidateList:v5];
}

- (void)_textSelectionEditMenuDidShow
{
  if (self->m_showsCandidateBar)
  {
    v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v4 = [v3 allowsTextAnimationsType];

    if (v4 == 2)
    {
      m_candidateController = self->m_candidateController;

      [(UIKeyboardCandidateController *)m_candidateController updateStates];
    }
  }
}

- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)a3
{
  v4 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v5 forwardTypologyLogURL:v4];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = qword_1ED498B20;
    v18 = qword_1ED498B20;
    if (!qword_1ED498B20)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getKFAViewControllerClass_block_invoke;
      location[3] = &unk_1E70F2F20;
      location[4] = &v15;
      __getKFAViewControllerClass_block_invoke(location);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = objc_alloc_init(v6);
    [(UIKeyboardImpl *)self setKeyboardFeedbackAssistantViewController:v8];

    v9 = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
    [v9 setDelegate:self];

    objc_initWeak(location, self);
    v10 = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UIKeyboardImpl_presentKeyboardFeedbackAssistantViewControllerForLogURL___block_invoke;
    v11[3] = &unk_1E70F8958;
    objc_copyWeak(&v13, location);
    v12 = v4;
    [v10 prepareWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

void __74__UIKeyboardImpl_presentKeyboardFeedbackAssistantViewControllerForLogURL___block_invoke(uint64_t a1, int a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained keyboardFeedbackAssistantViewController];
      v7 = [v6 sheetPresentationController];

      v8 = +[UISheetPresentationControllerDetent mediumDetent];
      v21[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v7 setDetents:v9];

      v10 = [v5 delegateAsResponder];
      v11 = [v10 _window];
      v12 = [v11 rootViewController];

      v13 = [v12 presentedViewController];

      if (v13)
      {
        do
        {
          v14 = [v12 presentedViewController];

          v15 = [v14 presentedViewController];

          v12 = v14;
        }

        while (v15);
      }

      else
      {
        v14 = v12;
      }

      [v5 hideKeyboard];
      v17 = [v5 keyboardFeedbackAssistantViewController];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__UIKeyboardImpl_presentKeyboardFeedbackAssistantViewControllerForLogURL___block_invoke_2;
      v19[3] = &unk_1E70F35B8;
      v19[4] = v5;
      v20 = *(a1 + 32);
      [v14 presentViewController:v17 animated:1 completion:v19];
    }

    else
    {
      v16 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Failed to prepare Keyboard Feedback Assistant.", v18, 2u);
      }

      [v5 setKeyboardFeedbackAssistantViewController:0];
    }
  }
}

void __74__UIKeyboardImpl_presentKeyboardFeedbackAssistantViewControllerForLogURL___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keyboardFeedbackAssistantViewController];
  [v2 setTypologyLogURL:*(a1 + 40)];
}

- (void)_tagTouchForTypingMenu:(unsigned int)a3
{
  v3 = *&a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1ED498B30;
  v11 = off_1ED498B30;
  if (!off_1ED498B30)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSBSTagTouchForTypingMenuSymbolLoc_block_invoke_0;
    v7[3] = &unk_1E70F2F20;
    v7[4] = &v8;
    __getSBSTagTouchForTypingMenuSymbolLoc_block_invoke_0(v7);
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
    [v5 handleFailureInFunction:v6 file:@"UIKeyboardImpl.m" lineNumber:295 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)clearExcessKeyboardMemory
{
  v18 = *MEMORY[0x1E69E9840];
  if ([UIApp _isSpringBoard])
  {
    v3 = [(UIKeyboardImpl *)self inputDelegateManager];
    v4 = [v3 delegateRespectingForwardingDelegate:0];

    if (!v4)
    {
      +[UIKBRenderer clearInternalCaches];
      v5 = +[UIKeyboardCache sharedInstance];
      [v5 commitTransaction];

      v6 = +[UIKeyboardCache sharedInstance];
      [v6 clearNonPersistentCache];

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = self->m_keyedLayouts;
      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(NSMutableDictionary *)self->m_keyedLayouts objectForKey:*(*(&v13 + 1) + 8 * v11), v13];
            [v12 clearUnusedObjects:1];

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    [(UIKeyboardLayout *)self->m_layout updateTouchProcessingForKeyboardChange];
  }
}

- (BOOL)_shouldSuppressSoftwareKeyboardAndAssistantView
{
  if (-[UIKeyboardImpl _shouldSuppressSoftwareKeyboardByDictation](self, "_shouldSuppressSoftwareKeyboardByDictation") || (+[UIKeyboardCameraSession activeSession](UIKeyboardCameraSession, "activeSession"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 shouldSuppressSoftwareKeyboard], v3, (v4 & 1) != 0))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard];
    if (v5)
    {
      LOBYTE(v5) = ![(UIKeyboardImpl *)self _showsScribbleIconsInAssistantView];
    }
  }

  return v5;
}

- (BOOL)_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardImpl *)self delegateAsResponder];
  LOBYTE(v3) = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardForResponder:v5 ignoringPolicyDelegate:v3 ignoreNumberPad:0];

  return v3;
}

- (BOOL)_shouldSuppressSoftwareKeyboardForResponder:(id)a3 ignoringPolicyDelegate:(BOOL)a4 ignoreNumberPad:(BOOL)a5
{
  v8 = a3;
  if (+[UIKeyboard isInputSystemUI])
  {
    m_shouldSuppressSoftwareKeyboard = self->m_shouldSuppressSoftwareKeyboard;
    goto LABEL_6;
  }

  [(UIKeyboardImpl *)self _updateShouldSuppressAssistantBar];
  v10 = +[UIKeyboard activeKeyboard];
  v11 = [v10 _overrideTextInputTraits];
  v12 = [v11 forceFloatingKeyboard];

  if (v12 & 1) != 0 || ([v8 _suppressSoftwareKeyboard])
  {
LABEL_5:
    m_shouldSuppressSoftwareKeyboard = 1;
    goto LABEL_6;
  }

  if (a5)
  {
    if (a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ([(UIKeyboardImpl *)self canPresentNumberpadPopover])
    {
      goto LABEL_5;
    }

    m_shouldSuppressSoftwareKeyboard = [(UIKeyboardImpl *)self isNumberpadPopoverPresented];
    if ((m_shouldSuppressSoftwareKeyboard & 1) != 0 || a4)
    {
      goto LABEL_6;
    }
  }

  v14 = +[UIKeyboard suppressionPolicyDelegate];
  if (!v14)
  {
LABEL_17:
    m_shouldSuppressSoftwareKeyboard = 0;
    goto LABEL_6;
  }

  v15 = v14;
  if (+[UIKeyboard isMajelEnabled]&& [(UIKeyboardImpl *)self _textInputSourceForDelegate:v8]== 2)
  {
    m_shouldSuppressSoftwareKeyboard = self->m_policyDelegateResult;
  }

  else
  {
    m_shouldSuppressSoftwareKeyboard = [v15 _shouldSuppressForDelegate:v8];
    self->m_policyDelegateResult = m_shouldSuppressSoftwareKeyboard;
  }

LABEL_6:
  return m_shouldSuppressSoftwareKeyboard & 1;
}

- (void)_updateKeyboardLanguage:(id)a3
{
  v3 = [a3 userInfo];
  v9 = [v3 objectForKey:@"UITextInputUpdateKeyboardLanguageKey"];

  if ([v9 length])
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 inputModeIdentifierLastUsedForLanguage:v9];

    v6 = UIKeyboardActiveInputModes;
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = +[UIKeyboardImpl activeInstance];
      [v8 setInputMode:v5 userInitiated:1];
    }
  }
}

- (void)_suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [v5 keyInputDelegate];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  if (([WeakRetained isActive] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = objc_loadWeakRetained(&self->m_geometryDelegate);
  v10 = [v9 isAutomatic];

  if (!v10)
  {
    goto LABEL_14;
  }

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v11 = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:v3];
  v12 = objc_loadWeakRetained(&self->m_geometryDelegate);
  v13 = [v12 isMinimized];

  if (!v13)
  {
    if (v11)
    {
      [(UIKeyboardImpl *)self hideKeyboardIgnoringHardwareLayouts:1];
    }

    goto LABEL_24;
  }

  if (v11 || [(UIKeyboardImpl *)self _shouldMinimizeForHardwareKeyboard])
  {
    if ([(UIKeyboardImpl *)self floatingForced])
    {
      goto LABEL_24;
    }

    v14 = [v5 keyboardWindow];
    v15 = [v14 rootViewController];

    v16 = [v15 placement];
    if ([v16 showsKeyboard])
    {
      v17 = [(UIKeyboardImpl *)self _shouldSuppressAssistantBar];

      if (!v17)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [v5 minimize];
LABEL_23:

    goto LABEL_24;
  }

  v18 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v19 = [v18 handlingRemoteEvent];

  if (v19)
  {
    v15 = objc_loadWeakRetained(&self->m_geometryDelegate);
    [v15 setMinimized:0];
    goto LABEL_23;
  }

  [(UIKeyboardImpl *)self _showKeyboardIgnoringPolicyDelegate:v3];
LABEL_24:
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && !v3)
  {
    goto LABEL_13;
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [v7 forwardKeyboardSuppression:v11 suppressAssistantBar:{-[UIKeyboardImpl _shouldSuppressAssistantBar](self, "_shouldSuppressAssistantBar")}];
LABEL_12:

LABEL_13:
LABEL_14:
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 postNotificationName:@"UIKeyboardSuppressionDidChange" object:0];
}

- (void)setSplit:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout setSplit:v5 animated:v4];
  }
}

- (void)traitCollectionDidChange
{
  [(UIKeyboardImpl *)self takeTextInputTraitsFromDelegate];
  v3 = [(UIKeyboardImpl *)self activeLayout];
  [v3 traitCollectionDidChange];

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    v4 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v4 documentTraitsChanged];
  }
}

- (void)finishSplitTransitionWithProgress:(double)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(UIKeyboardLayout *)self->m_layout finishSplitTransitionWithProgress:a3];
  }

  [UIKeyboardImpl setPersistentSplitProgress:a3];
}

- (void)acceptAutocorrectionAndEndComposition
{
  v3 = [(UIKeyboardImpl *)self autocorrectionController];
  v4 = [v3 autocorrection];

  if (v4)
  {

    [(UIKeyboardImpl *)self acceptAutocorrectionWithCompletionHandler:0];
  }

  else
  {

    [(UIKeyboardImpl *)self textAccepted:0];
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
    v7 = [(UIKeyboardImpl *)self _layout];
    v6 = [v7 internationalKeyDisplayStringOnEmojiKeyboard];
  }

  return v6;
}

- (id)_autofillContext
{
  v2 = [(UIKeyboardImpl *)self keyboardState];
  v3 = [v2 autofillContext];

  return v3;
}

- (id)_remoteAppId
{
  v2 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 appId];

  return v4;
}

- (id)_remoteLocalizedAppName
{
  v2 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 localizedAppName];

  return v4;
}

- (id)_remoteUnlocalizedAppName
{
  v2 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 appName];

  return v4;
}

- (id)_remoteAssociatedDomains
{
  v2 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v3 = [v2 documentTraits];
  v4 = [v3 associatedDomains];

  return v4;
}

- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)a3
{
  keyboardStateManager = self->_keyboardStateManager;
  v5 = a3;
  v6 = [(_UIKeyboardStateManager *)keyboardStateManager textInputChangesIgnored];
  [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
  v5[2](v5);

  v7 = self->_keyboardStateManager;

  [(_UIKeyboardStateManager *)v7 setTextInputChangesIgnored:v6];
}

- (void)setHardWareKeyboardAttached:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]!= a3)
  {
    v5 = _UIKeyboardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[UIKeyboardImpl setHardWareKeyboardAttached:]";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s attached = %d", &v6, 0x12u);
    }

    [(_UIKeyboardStateManager *)self->_keyboardStateManager setHardwareKeyboardAttached:v3];
  }
}

- (BOOL)isShiftKeyBeingHeld
{
  v3 = +[UIKeyboardImpl isHardwareShiftKeyBeingHeld];
  v4 = [(UIKeyboardImpl *)self callLayoutIsShiftKeyBeingHeld];
  return (v3 | v4 | [(UIKeyboardImpl *)self _mimicShiftBeingHeld]) & 1;
}

- (void)moveCursorLeftShifted:(BOOL)a3
{
  v3 = a3;
  if (![(UIKeyboardImpl *)self hasEditableMarkedText])
  {
    v7 = [(UIKeyboardImpl *)self delegateAsResponder];
    v8 = [(UIKeyboardImpl *)self arrowKeyHistory];
    v9 = [v7 _moveLeft:v3 withHistory:v8];
    [(UIKeyboardImpl *)self setArrowKeyHistory:v9];

    goto LABEL_13;
  }

  if (v3)
  {
    v5 = self;
    v6 = 0;
  }

  else
  {
    v10 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    v11 = [v10 hasCandidates];

    if (!v11)
    {
      goto LABEL_13;
    }

    if ([(UIKeyboardImpl *)self cursorIsAtEndOfMarkedText])
    {
      v12 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      if ([v12 currentIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v13 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        v14 = [v13 currentIndex];

        if (v14)
        {
          v15 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
          [v15 showCandidateInForwardDirection:0 granularity:0];

          goto LABEL_13;
        }
      }
    }

    v5 = self;
    v6 = 1;
  }

  [(UIKeyboardImpl *)v5 movePhraseBoundaryToDirection:1 granularity:v6];
LABEL_13:

  [(UIKeyboardImpl *)self updateForChangedSelection];
}

- (void)moveCursorRightShifted:(BOOL)a3
{
  v3 = a3;
  if ([(UIKeyboardImpl *)self hasEditableMarkedText])
  {
    if (v3)
    {
LABEL_3:
      [(UIKeyboardImpl *)self movePhraseBoundaryToDirection:0 granularity:0];
      goto LABEL_5;
    }

    v8 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    v9 = [v8 hasCandidates];

    if (v9)
    {
      if (![(UIKeyboardImpl *)self cursorIsAtEndOfMarkedText])
      {
        goto LABEL_3;
      }

      v10 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      [v10 showCandidateInForwardDirection:1 granularity:0];
    }
  }

  else
  {
    v5 = [(UIKeyboardImpl *)self delegateAsResponder];
    v6 = [(UIKeyboardImpl *)self arrowKeyHistory];
    v7 = [v5 _moveRight:v3 withHistory:v6];
    [(UIKeyboardImpl *)self setArrowKeyHistory:v7];
  }

LABEL_5:

  [(UIKeyboardImpl *)self updateForChangedSelection];
}

- (double)lastTouchDownTimestamp
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  m_layout = self->m_layout;

  [(UIKeyboardLayout *)m_layout lastTouchDownTimestamp];
  return result;
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
    v13 = [(UIKeyboardImpl *)self inputDelegateManager];
    v14 = [v13 selectedTextRange];
    v12 = [v11 shouldChangeTextInRange:v14 replacementText:v6];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)shouldApplyKeyboardCommandToUIHost
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
  if (v3)
  {

    LOBYTE(v3) = [(UIKeyboardImpl *)self keyboardLayoutIsInAnotherProcess];
  }

  return v3;
}

- (BOOL)isRTIClient
{
  v3 = [objc_opt_class() keyboardScreen];
  v4 = [UIKBScreenTraits traitsWithScreen:v3 orientation:[(UIView *)self _keyboardOrientation]];

  if ([v4 idiom] == 3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIKeyboardImpl *)self remoteTextInputPartnerPrivate];
    v5 = [v6 inputSystemClientEnabled];
  }

  return v5;
}

- (BOOL)playInputClick
{
  m_feedbackGenerator = self->m_feedbackGenerator;
  if (m_feedbackGenerator)
  {
    [(_UIKBFeedbackGenerating *)self->m_feedbackGenerator actionOccurred:1];
  }

  return m_feedbackGenerator != 0;
}

void __55__UIKeyboardImpl_presentContinuousPathIntroductionView__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 528) superview];

  if (v1)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v2 = [v3 preferencesActions];
    [v2 didTriggerOneTimeAction:*MEMORY[0x1E69D9740]];
  }
}

void __55__UIKeyboardImpl_presentContinuousPathIntroductionView__block_invoke_2()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 dismissContinuousPathIntroductionView];
}

- (void)presentEditingIntroductionView
{
  if ([(UIKeyboardImpl *)self shouldShowEditingIntroductionView])
  {
    if (!self->_editingGestureIntroductionView)
    {
      v3 = [UIKBEditingGesturesIntroduction alloc];
      v4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v5 = -[UIKBTutorialModalDisplay initWithKeyboardAppearance:](v3, "initWithKeyboardAppearance:", [v4 keyboardAppearance]);
      editingGestureIntroductionView = self->_editingGestureIntroductionView;
      self->_editingGestureIntroductionView = v5;
    }

    v8 = [(UIView *)self _rootInputWindowController];
    v7 = [v8 bottomEdgeView];
    [v7 addSubview:self->_editingGestureIntroductionView];
  }
}

- (void)presentStickerEditorWithStickerIdentifier:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if (self->_stickerEditorViewController)
  {
    [(UIKeyboardImpl *)self dismissStickerEditor:0];
  }

  v9 = [[UIKeyboardStickerEditorViewController alloc] initWithStickerIdentifier:v11 sourceRect:x, y, width, height];
  stickerEditorViewController = self->_stickerEditorViewController;
  self->_stickerEditorViewController = v9;

  [(UIKeyboardStickerEditorViewController *)self->_stickerEditorViewController showInKeyboard];
}

- (void)dismissStickerEditor:(BOOL)a3
{
  stickerEditorViewController = self->_stickerEditorViewController;
  if (stickerEditorViewController)
  {
    [(UIKeyboardStickerEditorViewController *)stickerEditorViewController dismissAnimated:a3];
    v5 = self->_stickerEditorViewController;
    self->_stickerEditorViewController = 0;
  }
}

- (void)presentMultilingualKeyboardTip:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = [v6 oneTimeActionCompleted:@"MultilingualKeyboardTip"];

  if ((v7 & 1) == 0)
  {
    v8 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__UIKeyboardImpl_presentMultilingualKeyboardTip___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    [(UIKeyboardImpl *)self keyboardIntroductionFrame];
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    multilingualKeyboardIntroductionView = self->_multilingualKeyboardIntroductionView;
    if (!multilingualKeyboardIntroductionView)
    {
      v18 = [[UIKBMultilingualKeyboardIntroductionView alloc] initWithInputMode:v4 frame:v9, v10, v11, v12];
      v19 = self->_multilingualKeyboardIntroductionView;
      self->_multilingualKeyboardIntroductionView = v18;

      multilingualKeyboardIntroductionView = self->_multilingualKeyboardIntroductionView;
    }

    [(UIView *)multilingualKeyboardIntroductionView setFrame:v13, v14, v15, v16];
    v20 = [(UIView *)self _rootInputWindowController];
    v21 = [v20 bottomEdgeView];
    [v21 addSubview:self->_multilingualKeyboardIntroductionView];
  }
}

void __49__UIKeyboardImpl_presentMultilingualKeyboardTip___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 552) superview];

  if (v1)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v2 = [v3 preferencesActions];
    [v2 didTriggerOneTimeAction:@"MultilingualKeyboardTip"];
  }
}

- (void)presentMultilingualSettingTip:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = [v6 oneTimeActionCompleted:@"MultilingualSettingTip"];

  if ((v7 & 1) == 0)
  {
    v8 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__UIKeyboardImpl_presentMultilingualSettingTip___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    [(UIKeyboardImpl *)self keyboardIntroductionFrame];
    if (!self->_multilingualSettingIntroductionView)
    {
      v13 = [[UIKBMultilingualSettingIntroductionView alloc] initWithInputMode:v4 frame:v9, v10, v11, v12];
      multilingualSettingIntroductionView = self->_multilingualSettingIntroductionView;
      self->_multilingualSettingIntroductionView = v13;
    }

    v15 = [(UIView *)self _rootInputWindowController];
    v16 = [v15 bottomEdgeView];
    [v16 addSubview:self->_multilingualSettingIntroductionView];
  }
}

void __48__UIKeyboardImpl_presentMultilingualSettingTip___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 560) superview];

  if (v1)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v2 = [v3 preferencesActions];
    [v2 didTriggerOneTimeAction:@"MultilingualSettingTip"];
  }
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_switchToDictationInputModeWithOptions____s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_handleDictationShouldPause_withNewDelagate____s_category_0) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v15, 2u);
    }
  }

  v9 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_switchToDictationLanguage____s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_startDictation___s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_stopDictation____s_category_0) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v11, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_cancelDictation___s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_movePopoverView____s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [v7 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_movePopoverView_ withOptionalObject:v4];
}

- (void)forwardDictationEvent_setDisambiguationActive:(BOOL)a3 maxOptions:(unint64_t)a4
{
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
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_setDisambiguationActive_maxOptions____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v15, 2u);
    }
  }

  v9 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v16[0] = @"active";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v16[1] = @"maxOptions";
  v17[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v9 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_setDisambiguationActive_maxOptions_ withOptionalObject:v12];
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
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_handleTip_title____s_category_0) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v15, 2u);
    }
  }

  v10 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_updateIdleDetection____s_category_0) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v12, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_stopDictationIgnoreFinalizePhrases___s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &forwardDictationEvent_resumeDictation___s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v8, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_startCameraInput____s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v7 = [(UIKeyboardImpl *)self remoteTextInputPartner];
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_selfDestruct___s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
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
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &forwardKeyboardCameraEvent_updatePreviewText_asMarkedText____s_category_0) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v17, 2u);
    }
  }

  v9 = [(UIKeyboardImpl *)self inputDelegateManager];
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

- (void)forwardStickerEvent_presentCard
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
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &forwardStickerEvent_presentCard___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected forwarding event", v10, 2u);
    }
  }

  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [v5 inputSystemSourceSession];

  if (v6)
  {
    v7 = [v6 textOperations];
    [v7 setEditingActionSelector:sel_handleStickerEvent_presentCard];
    [v6 flushOperations];
  }
}

- (void)handleStickerEvent_presentCard
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self->_stickerPickerSession)
  {
    v3 = objc_alloc_init(_UIStickerPickerKeyboardSession);
    stickerPickerSession = self->_stickerPickerSession;
    self->_stickerPickerSession = v3;

    [(_UIStickerPickerKeyboardSession *)self->_stickerPickerSession setDelegate:self];
  }

  v5 = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [v5 delegateRespectingForwardingDelegate:0];

  v7 = [v6 textInputView];
  if ([v6 conformsToProtocol:&unk_1EFE8B2D0])
  {
    [(_UIStickerPickerKeyboardSession *)self->_stickerPickerSession presentWithTextInput:v6 view:v7];
  }

  else
  {
    v8 = _UIKeyboardImplLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "responder %@ does not conform to UITextInput. Cannot present stickers.", &v9, 0xCu);
    }
  }
}

- (void)stickerPickerKeyboardSessionDidFinish
{
  stickerPickerSession = self->_stickerPickerSession;
  self->_stickerPickerSession = 0;
}

- (void)reportSmartReplyFeedbackUIWasPresented
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  [v2 reportFeedbackUIPresented];
}

- (void)writingToolsDidEnd
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [v3 forwardInputDestinationEventToUIHost:sel_writingToolsDidEnd];
  }

  else
  {
    v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
    [v3 reportWritingToolsPanelDismissed];
  }
}

- (void)reportSmartRepliesConcern
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  [v2 reportSmartRepliesConcern];
}

- (BOOL)shouldCollapseButtonBarForFeedbackUI
{
  v2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  v3 = [v2 willShowFeedbackUI];

  return v3;
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (!a4)
  {
    [(UIKeyboardImpl *)self setHideInlineCandidates:a3];
    [(UIKeyboardImpl *)self removeCandidateList];

    [(UIKeyboardImpl *)self generateCandidates];
  }
}

- (id)_getCurrentKeyboardName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIKeyboardLayout *)self->m_layout keyboardName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_getLocalizedInputMode
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIKeyboardLayout *)self->m_layout localizedInputMode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_getAutocorrectionList
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 systemInputAssistantViewController];
  v4 = [v3 centerViewController];
  v5 = [v4 displayedCandidates];

  return v5;
}

- (void)forwardEmojiGenerationControllerWithInputString:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 clearForwardingInputDelegateAndResign:0];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 resetInputDelegate];

  v7 = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 textOperations];
    [v9 setCustomInfoType:0x1EFB7CB70];
    [v9 setEditingActionSelector:sel_presentEmojiGenerationWithInputString_];
    v11 = @"inputString";
    v12[0] = v4;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v9 setCustomInfo:v10];

    [v8 flushOperations];
  }
}

- (UIView)overlayContainerObserved
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  return WeakRetained;
}

@end