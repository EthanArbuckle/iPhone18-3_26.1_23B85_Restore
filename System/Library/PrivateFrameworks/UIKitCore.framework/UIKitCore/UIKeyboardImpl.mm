@interface UIKeyboardImpl
+ (BOOL)isActivatingForeground;
+ (BOOL)isDictationPopoverEnabled;
+ (BOOL)isFloating;
+ (BOOL)isFloatingForced;
+ (BOOL)isSplit;
+ (BOOL)keyboardOrientation:(int64_t)orientation isEquivalentToOrientation:(int64_t)toOrientation;
+ (BOOL)shouldAccessInputManagerService;
+ (BOOL)shouldMergeAssistantBarWithKeyboardLayout;
+ (BOOL)shouldPadTopOfKeyboard;
+ (BOOL)showsGlobeAndDictationKeysExternally;
+ (BOOL)showsGlobeAndDictationKeysExternallyForFloatingKeyboard;
+ (BOOL)smartInsertDeleteIsEnabled;
+ (BOOL)supportsFloating;
+ (BOOL)supportsSplit;
+ (CGPoint)_normalizedScreenPoint:(CGPoint)point;
+ (CGPoint)_screenPointFromNormalizedPoint:(CGPoint)point;
+ (CGPoint)defaultUndockedOffsetForFloating:(BOOL)floating;
+ (CGPoint)floatingNormalizedPersistentOffset;
+ (CGPoint)floatingPersistentOffset;
+ (CGPoint)normalizedPersistentOffset;
+ (CGPoint)normalizedPersistentOffsetIgnoringState;
+ (CGPoint)persistentOffset;
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view;
+ (Class)layoutClassForCurrentInputMode;
+ (Class)layoutClassForInputMode:(id)mode keyboardType:(int64_t)type screenTraits:(id)traits;
+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode;
+ (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode;
+ (UIEdgeInsets)requestedFloatingInsets;
+ (double)additionalInstanceHeight;
+ (double)additionalInstanceHeightForInterfaceOrientation:(int64_t)orientation hasInputView:(BOOL)view;
+ (double)additionalTopPaddingForRoundedKeyboard;
+ (double)floatingHeight;
+ (double)floatingScreenWidthToEmulate;
+ (double)floatingWidth;
+ (double)keyboardWidthForScreen:(id)screen withOrientation:(int64_t)orientation;
+ (double)persistentSplitProgress;
+ (double)topMarginForInterfaceOrientation:(int64_t)orientation;
+ (id)_applicationClientComponent;
+ (id)keyboardScreen;
+ (id)keyboardWindow;
+ (id)normalizedInputModesFromPreference;
+ (id)sharedInstanceForCustomInputView:(BOOL)view;
+ (id)uniqueNumberPadInputModesFromInputModes:(id)modes forKeyboardType:(int64_t)type;
+ (void)applicationDidBecomeActive:(id)active;
+ (void)applicationDidEnterBackground:(id)background;
+ (void)applicationDidReceiveMemoryWarning:(id)warning;
+ (void)applicationWillEnterForeground:(id)foreground;
+ (void)applicationWillResignActive:(id)active;
+ (void)applicationWillSuspend:(id)suspend;
+ (void)performWithoutFloatingLock:(id)lock;
+ (void)purgeImageCache;
+ (void)refreshRivenStateWithTraits:(id)traits isKeyboard:(BOOL)keyboard;
+ (void)releaseSharedInstance;
+ (void)sendPerformanceNotification:(id)notification userInfo:(id)info;
+ (void)setFloating:(BOOL)floating;
+ (void)setFloating:(BOOL)floating positionedAtDefaultOffsetAnimated:(BOOL)animated;
+ (void)setFloating:(BOOL)floating positionedAtOffset:(CGPoint)offset animated:(BOOL)animated;
+ (void)setFloatingPersistentOffset:(CGPoint)offset;
+ (void)setPersistentOffset:(CGPoint)offset;
+ (void)setPersistentSplitProgress:(double)progress;
+ (void)switchControlStatusDidChange:(id)change;
- (BOOL)_canHandleResponderCommand:(SEL)command;
- (BOOL)_cancelOperation:(BOOL)operation testOnly:(BOOL)only;
- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)group;
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
- (BOOL)_shouldSuppressSoftwareKeyboardForResponder:(id)responder ignoringPolicyDelegate:(BOOL)delegate ignoreNumberPad:(BOOL)pad;
- (BOOL)_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:(BOOL)delegate;
- (BOOL)_showsScribbleIconsInAssistantView;
- (BOOL)accessibilityUsesExtendedKeyboardPredictionsEnabled;
- (BOOL)allowsReachableKeyboard;
- (BOOL)automaticMinimizationEnabled;
- (BOOL)callLayoutIsGeometricShiftOrMoreKeyForTouch:(id)touch;
- (BOOL)callLayoutIsShiftKeyBeingHeld;
- (BOOL)callShouldInsertText:(id)text;
- (BOOL)callShouldInsertText:(id)text onDelegate:(id)delegate;
- (BOOL)canHandlePresses:(id)presses withEvent:(id)event;
- (BOOL)canPresentDictationMenuWithAnimationStyle:(int64_t)style;
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
- (BOOL)insertTextIfShould:(id)should;
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
- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)returnKeyEnabled;
- (BOOL)rivenSplitLock;
- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin;
- (BOOL)shouldAllowTwoFingerSelectionGestureOnView:(id)view;
- (BOOL)shouldApplyKeyboardCommandToUIHost;
- (BOOL)shouldCollapseButtonBarForFeedbackUI;
- (BOOL)shouldShowCandidateBar;
- (BOOL)shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:(BOOL)mode ignoreHidePredictionTrait:(BOOL)trait;
- (BOOL)shouldShowContinuousPathIntroductionView;
- (BOOL)shouldShowDictationKey;
- (BOOL)shouldShowInternationalKey;
- (BOOL)shouldShowInternationalKeyIntroduction;
- (BOOL)shouldShowModelessInputTip;
- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewController;
- (BOOL)shouldUnderlineCandidate:(id)candidate;
- (BOOL)shouldUseCarPlayModes;
- (BOOL)showsCandidateBar;
- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton;
- (BOOL)splitTransitionInProgress;
- (CGRect)convertRectToAutocorrectRect:(CGRect)rect delegateView:(id)view container:(id)container;
- (CGRect)correctionRect;
- (CGRect)dragGestureRectInView:(id)view;
- (CGRect)frameForKeylayoutName:(id)name;
- (CGRect)getCorrectionRectIsVertical:(BOOL *)vertical;
- (CGRect)keyboardIntroductionFrame;
- (CGRect)overrideEditMenuTargetRectForConfiguration:(id)configuration;
- (CGRect)subtractKeyboardFrameFromRect:(CGRect)rect inView:(id)view;
- (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation;
- (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode;
- (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode;
- (UIKeyInput)delegate;
- (UIKeyboardImpl)initWithFrame:(CGRect)frame forCustomInputView:(BOOL)view;
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
- (id)_supplementalCandidateIcon:(id)icon;
- (id)_targetForResponderCommand:(SEL)command;
- (id)asyncCapableInputDelegate;
- (id)asyncInputDelegate;
- (id)autocorrectPromptRectsForInput:(id)input;
- (id)buildInputSourceState;
- (id)delegateAsResponder;
- (id)dynamicCaretList;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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
- (id)physicalKeyboardEventWithInput:(id)input inputFlags:(int)flags;
- (id)responderForSendCurrentLocation;
- (id)responderStylingTraitsForceEditingMask:(BOOL)mask;
- (id)returnKeyDisplayName;
- (id)stopDictationMenuElementsForTextInputView:(id)view;
- (id)stopDictationMenuElementsShowingTitle:(BOOL)title;
- (id)webInputDelegate;
- (id)window;
- (int)promptTypeForInputString:(id)string;
- (int64_t)_autoFillModeForPopoverType:(int)type;
- (int64_t)_textInputSourceForDelegate:(id)delegate;
- (unint64_t)_clipCornersOfView:(id)view;
- (void)_clearDictationMenuTimer:(BOOL)timer;
- (void)_conditionallyNotifyPredictionsAreAvailableForCandidates:(id)candidates containingProactiveTriggers:(BOOL)triggers;
- (void)_configureMarkedTextAttributesForConversion:(id)conversion selectedRange:(_NSRange)range highlightRange:(_NSRange)highlightRange;
- (void)_dictationDidRecieveDidBeginDictationNotification:(id)notification;
- (void)_didChangeKeyplaneWithContext:(id)context;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_forwardScrollEventToUIHost:(SEL)host scrollView:(id)view;
- (void)_generateTextSuggestionForKeyboardCamera;
- (void)_handleAutoFillPopoverCommandWithType:(int)type action:(SEL)action;
- (void)_handleKeyBehavior:(unint64_t)behavior forKeyType:(id)type;
- (void)_moveWithEvent:(id)event;
- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)output selectionChanged:(BOOL)changed;
- (void)_postInputResponderChangedNotification;
- (void)_presentDictationMenuIfAllowed;
- (void)_presentKeyboardPopoverWithType:(int)type keyString:(id)string popoverController:(id)controller textInputView:(id)view caretRect:(CGRect)rect isVerticalText:(BOOL)text completion:(id)completion;
- (void)_resetCapsLock;
- (void)_selectionScrolling:(BOOL)scrolling scroller:(id)scroller;
- (void)_setCandidateController:(id)controller;
- (void)_setCapsLockIfNeeded:(__GSKeyboard *)needed event:(__IOHIDEvent *)event;
- (void)_setTransientSelectionModeEnabled:(BOOL)enabled forInputDelegate:(id)delegate;
- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)delegate;
- (void)_suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:(BOOL)delegate;
- (void)_tagTouchForTypingMenu:(unsigned int)menu;
- (void)_textSelectionEditMenuDidShow;
- (void)_updateExternalDeviceInputSetting;
- (void)_updateExternalDeviceInputSettingForWindow:(id)window;
- (void)_updateKeyboardLanguage:(id)language;
- (void)_updateLayoutAndLocalizedKeys;
- (void)_updateShouldSuppressAssistantBar;
- (void)_updateSoundPreheating;
- (void)_updateSoundPreheatingForWindow:(id)window;
- (void)_updateTextInputPencilSource;
- (void)_wheelChangedWithEvent:(id)event;
- (void)acceptAutocorrectionAndEndComposition;
- (void)acceptHandwritingCandidate;
- (void)acceptInlineCompletionWithCompletionHandler:(id)handler;
- (void)addInputString:(id)string fromVariantKey:(BOOL)key;
- (void)animateAutocorrectionToRect:(CGRect)rect fromRect:(CGRect)fromRect;
- (void)animateAutocorrectionToText:(id)text fromRect:(CGRect)rect;
- (void)applicationResumedEventsOnly:(id)only;
- (void)applicationSuspendedEventsOnly:(id)only;
- (void)applyAssistantItem:(id)item;
- (void)assertCursorForForSelectionChange;
- (void)assertTextForDictation;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)autocorrectionAnimationDidStopWithAutocorrectionView:(id)view;
- (void)becomeFirstResponderAndMakeVisible:(BOOL)visible;
- (void)beginAcceptingInlineCompletionByDirectTap;
- (void)beginFloatingTransitionFromPanGestureRecognizer:(id)recognizer;
- (void)beginObservingInputOverlayContainerFrame;
- (void)callLayoutUpdateAllLocalizedKeys;
- (void)callLayoutUpdateLocalizedKeys;
- (void)callLayoutUpdateRecentInputs;
- (void)callLayoutUpdateReturnKey;
- (void)cancelSplitTransition;
- (void)cleanupKeyboardPopover:(id)popover;
- (void)clearAnimations;
- (void)clearAutocorrectPromptTimer;
- (void)clearCursorAccessory;
- (void)clearCursorAssertion;
- (void)clearDetachHardwareKeyboardAction;
- (void)clearExcessKeyboardMemory;
- (void)clearForwardingInputDelegateAndResign:(BOOL)resign;
- (void)clearInputModeAssertion;
- (void)clearLanguageIndicator;
- (void)clearLayouts;
- (void)clearRecentInput;
- (void)clearTimers;
- (void)collapseSelection;
- (void)completeDelete;
- (void)configureTipViewWithTitle:(id)title description:(id)description closeButtonAction:(id)action;
- (void)copyOperation;
- (void)cutOperation;
- (void)deactivateLayout;
- (void)dealloc;
- (void)deferReplaceTextActionToSystem:(id)system;
- (void)delayedInit;
- (void)deleteHandwritingStrokesAtIndexes:(id)indexes;
- (void)detach;
- (void)detachHardwareKeyboard;
- (void)didChangeForwardingInputDelegate:(id)delegate;
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
- (void)dismissKeyboardPopover:(id)popover beforeCleanup:(BOOL)cleanup completion:(id)completion;
- (void)dismissMultilingualKeyboardTip;
- (void)dismissMultilingualSettingTip;
- (void)dismissStickerEditor:(BOOL)editor;
- (void)displayAutoFillPopoverIfAutoFillModeDetected;
- (void)documentStateDidChange;
- (void)enableTransientInputDelegateSelectionMode;
- (void)enableTransientSelectionMode;
- (void)endAcceptingInlineCompletionByDirectTap;
- (void)endObservingInputOverlayContainerFrame;
- (void)fadeAutocorrectPrompt;
- (void)finishLayoutChangeWithArguments:(id)arguments;
- (void)finishLayoutToCurrentInterfaceOrientation;
- (void)finishSplitTransitionWithProgress:(double)progress;
- (void)forwardDictationEvent_cancelDictation;
- (void)forwardDictationEvent_handleDictationShouldPause:(BOOL)pause withNewDelagate:(BOOL)delagate;
- (void)forwardDictationEvent_handleTip:(id)tip title:(id)title;
- (void)forwardDictationEvent_movePopoverView:(id)view;
- (void)forwardDictationEvent_resumeDictation;
- (void)forwardDictationEvent_setDisambiguationActive:(BOOL)active maxOptions:(unint64_t)options;
- (void)forwardDictationEvent_startDictation;
- (void)forwardDictationEvent_stopDictation:(BOOL)dictation;
- (void)forwardDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)forwardDictationEvent_switchToDictationInputModeWithOptions:(id)options;
- (void)forwardDictationEvent_switchToDictationLanguage:(id)language;
- (void)forwardDictationEvent_updateIdleDetection:(int64_t)detection;
- (void)forwardEmojiGenerationControllerWithInputString:(id)string;
- (void)forwardKeyboardCameraEvent_selfDestruct;
- (void)forwardKeyboardCameraEvent_startCameraInput:(id)input;
- (void)forwardKeyboardCameraEvent_updatePreviewText:(id)text asMarkedText:(BOOL)markedText;
- (void)forwardStickerEvent_presentCard;
- (void)geometryChangeDone:(BOOL)done;
- (void)handleDictationForResponderChange;
- (void)handleGrammarCorrectionEntries:(id)entries;
- (void)handleObserverCallback;
- (void)handleRemoteDictationEvent_cancelDictation;
- (void)handleRemoteDictationEvent_handleTip:(id)tip;
- (void)handleRemoteDictationEvent_movePopoverView:(id)view;
- (void)handleRemoteDictationEvent_resumeDictation;
- (void)handleRemoteDictationEvent_setEditMenuFrame:(id)frame;
- (void)handleRemoteDictationEvent_startDictation;
- (void)handleRemoteDictationEvent_stopDictation:(BOOL)dictation;
- (void)handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases;
- (void)handleRemoteDictationEvent_switchToDictationInputModeWithOptions:(id)options;
- (void)handleRemoteDictationEvent_switchToDictationLanguage:(id)language;
- (void)handleRemoteDictationEvent_updateIdleDetection:(int64_t)detection;
- (void)handleRemoteKeyboardCameraEvent_startCameraInput:(id)input;
- (void)handleStickerEvent_presentCard;
- (void)handleTraitChangeObserver:(id)observer newResponder:(id)responder updateTraitCollection:(id)collection;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)hardwareKeyboardAvailabilityDidChange:(id)change;
- (void)hideDictationMenuIfNeeded:(BOOL)needed;
- (void)hideInternationalKeyIntroductionIfNeeded;
- (void)hideKeyboardIgnoringHardwareLayouts:(BOOL)layouts;
- (void)hideKeyboardWithoutPreflightChecks;
- (void)jumpToCompositions;
- (void)keyboardDidHide:(id)hide;
- (void)layoutSubviews;
- (void)moveCursorByAmount:(int64_t)amount;
- (void)moveCursorLeftShifted:(BOOL)shifted;
- (void)moveCursorRightShifted:(BOOL)shifted;
- (void)movePhraseBoundaryToDirection:(int64_t)direction granularity:(int64_t)granularity;
- (void)nonDestructivelyDismissKeyboard;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)optOutASPInTextField;
- (void)pasteOperation;
- (void)pauseDictationForResponderChange;
- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)s;
- (void)performHitTestForTouchEvent:(id)event executionContextPassingNSNumber:(id)number;
- (void)performSendCurrentLocation;
- (void)playDeleteKeyFeedbackIfNecessaryRepeat:(BOOL)repeat rapid:(BOOL)rapid deleteCount:(int64_t)count;
- (void)playDeleteKeyFeedbackRepeat:(BOOL)repeat rapid:(BOOL)rapid deleteCount:(int64_t)count;
- (void)playInputCandidateFeedback:(int64_t)feedback atLocation:(CGPoint)location;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)postInputResponderCapabilitiesChangedNotification;
- (void)postInputViewControllerShouldUpdateNotification:(id)notification;
- (void)prepareForFloatingTransition:(BOOL)transition;
- (void)prepareForGeometryChange;
- (void)prepareLayoutForInterfaceOrientation:(int64_t)orientation;
- (void)presentContinuousPathIntroductionView;
- (void)presentDictationMenuTip:(id)tip;
- (void)presentDictationMenuTipWithTitle:(id)title description:(id)description;
- (void)presentDictationMenuWithAnimationStyle:(int64_t)style;
- (void)presentDictationPopover;
- (void)presentEditingIntroductionView;
- (void)presentEducationTipWithTitle:(id)title description:(id)description;
- (void)presentEmojiPopoverViaTrigger:(id)trigger completion:(id)completion;
- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)l;
- (void)presentKeyboardMenu:(int)menu;
- (void)presentKeyboardPopoverWithType:(int)type keyString:(id)string completion:(id)completion;
- (void)presentMultilingualKeyboardTip:(id)tip;
- (void)presentMultilingualSettingTip:(id)tip;
- (void)presentStickerEditorWithStickerIdentifier:(id)identifier sourceRect:(CGRect)rect;
- (void)presentTextChoicePromptForRange:(id)range;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)prewarmEmojiKeyboardIfNeeded;
- (void)recomputeActiveInputModesWithExtensions:(BOOL)extensions;
- (void)refreshRivenPreferences;
- (void)reinitializeAfterInputModeSwitch:(BOOL)switch;
- (void)releaseEmojiKeyboardPrewarmingAssertion;
- (void)releaseInputManagerIfInactive;
- (void)remoteControlReceivedWithEvent:(id)event;
- (void)removeAutocorrectPrompt;
- (void)removeFromSuperview;
- (void)removeTextChoicePrompt;
- (void)removeTextChoicePromptAndAutocorrection;
- (void)removeTextChoicePromptWithUnderline;
- (void)removeTextChoiceUnderlines;
- (void)removeTextChoiceUnderlinesInRange:(id)range;
- (void)reportSmartRepliesConcern;
- (void)reportSmartReplyFeedbackUIWasPresented;
- (void)representDictationMenu;
- (void)resetIsPhysicallyAttachedHardwareKeyboard;
- (void)resumeDictationForResponderChange;
- (void)revealHiddenCandidates;
- (void)saveInputModesPreference:(id)preference;
- (void)scheduleReplacementsWithOptions:(unint64_t)options;
- (void)scribbleWillBeginWriting:(id)writing;
- (void)selectionScrolling:(id)scrolling;
- (void)sendCallbacksForPostCorrectionsRemoval;
- (void)sendCallbacksForPreCorrectionsDisplay;
- (void)sendKeyboardDismissalNotification;
- (void)setAutomaticMinimizationEnabled:(BOOL)enabled;
- (void)setBounds:(CGRect)bounds;
- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)selection;
- (void)setCandidateDisplayIsExtended:(BOOL)extended;
- (void)setCapsLockIfNeeded;
- (void)setCapsLockIfNeededForPhysicalKeyboardEvent:(id)event;
- (void)setCapsLockSign;
- (void)setCaretBlinks:(BOOL)blinks;
- (void)setCaretVisible:(BOOL)visible;
- (void)setDelegate:(id)delegate;
- (void)setEditMenuFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
- (void)setHardWareKeyboardAttached:(BOOL)attached;
- (void)setHardwareKeyboardIsSeen:(BOOL)seen;
- (void)setInSplitKeyboardMode:(BOOL)mode;
- (void)setInputModeAssertionWithReason:(id)reason;
- (void)setKeyboardMinimizedByDictation:(BOOL)dictation;
- (void)setLabel:(id)label forKey:(id)key;
- (void)setLayoutRenderConfig:(id)config;
- (void)setNeedsAutocorrectionRectsUpdate;
- (void)setRemoteDictationPopover:(id)popover;
- (void)setReturnKeyEnabled:(BOOL)enabled;
- (void)setRivenSplitLock:(BOOL)lock;
- (void)setShowsCandidateBar:(BOOL)bar;
- (void)setShowsCandidateInline:(BOOL)inline;
- (void)setSplit:(BOOL)split animated:(BOOL)animated;
- (void)setSplitProgress:(double)progress;
- (void)showDictationMenuIfNeeded;
- (void)showInternationalKeyIntroductionIfNeededWithPreviousInputMode:(id)mode;
- (void)showKeyboardIfNeeded;
- (void)showKeyboardWithoutSuppressionPolicy;
- (void)showNextCandidates;
- (void)showNextPage;
- (void)showPreviousCandidate;
- (void)showSelectionCommands;
- (void)skipHitTestForTouchEvent:(id)event;
- (void)stickerPickerKeyboardSessionDidFinish;
- (void)textFrameChanged:(id)changed;
- (void)textSuggestionDidChange:(id)change;
- (void)toggleShift;
- (void)toggleSoftwareKeyboard;
- (void)touchAutocorrectPromptTimer;
- (void)touchDictationMenuTimer:(BOOL)timer;
- (void)traitCollectionDidChange;
- (void)underlineCandidate:(id)candidate;
- (void)updateActiveAutocorrectionRects;
- (void)updateAssistantView;
- (void)updateAssistantViewInfo:(id)info;
- (void)updateAutocorrectContainerWithAutocorrection:(id)autocorrection parentView:(id)view correctionRects:(id)rects;
- (void)updateAutocorrectPrompt:(id)prompt;
- (void)updateAutocorrectPrompt:(id)prompt correctionRects:(id)rects;
- (void)updateAutocorrectPrompt:(id)prompt executionContext:(id)context;
- (void)updateCandidateDisplay;
- (void)updateDictationButtonForDelegate:(id)delegate;
- (void)updateDictationIgnoreKeyboardDidHideNotification;
- (void)updateDictationPopoverLocationForCandidateInlineView:(id)view yOffset:(double)offset;
- (void)updateDictationPopoverLocationIfNeeded;
- (void)updateForHandBiasChange;
- (void)updateFromTextInputTraits;
- (void)updateHardwareKeyboardLayout:(BOOL)layout;
- (void)updateInputAssistantButtonItems;
- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)only preserveIfPossible:(BOOL)possible;
- (void)updateIsAttachedHardwareKeyboard;
- (void)updateKeyboardStateForReplacingText:(id)text withText:(id)withText;
- (void)updateLayout;
- (void)updateLayoutAndSetShift;
- (void)updateLayoutIfNecessary;
- (void)updateLayoutIfNeeded;
- (void)updateLayoutToCurrentInterfaceOrientation;
- (void)updateLegacyAutocorrectPromptWithAutocorrection:(id)autocorrection parentView:(id)view correctionRects:(id)rects;
- (void)updateNoContentViews;
- (void)updateObserverState;
- (void)updateReturnKey:(BOOL)key;
- (void)updateShowCandidateBar;
- (void)updateStylingTraitsIfNeeded;
- (void)updateTextCandidateView;
- (void)updateTextInputKeyboardSource:(id)source;
- (void)willDismissEditMenu;
- (void)willMoveToWindow:(id)window;
- (void)writingToolsDidEnd;
@end

@implementation UIKeyboardImpl

- (void)refreshRivenPreferences
{
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  [UIKeyboardImpl refreshRivenStateWithTraits:textInputTraits isKeyboard:1];
}

- (BOOL)canPresentNumberpadPopover
{
  if (+[UIInputWindowController numberpadPopoverEnabled](UIInputWindowController, "numberpadPopoverEnabled") && (-[UIKeyboardImpl inputDelegate](self, "inputDelegate"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3) && (-[UIKeyboardImpl textInputTraits](self, "textInputTraits"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 allowsNumberPadPopover], v4, v5) && (-[UIKeyboardImpl inputDelegate](self, "inputDelegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[UIKeyboardImpl _textInputSourceForDelegate:](self, "_textInputSourceForDelegate:", v6), v6, v7 != 3) && !-[_UIKeyboardStateManager numberpadPopoverHasBeenShown](self->_keyboardStateManager, "numberpadPopoverHasBeenShown") && !-[UIKeyboardImpl isNumberpadPopoverPresented](self, "isNumberpadPopoverPresented"))
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerRootController = [v10 existingContainerRootController];

    placement = [existingContainerRootController placement];
    inputViewSet = [existingContainerRootController inputViewSet];
    isCustomInputView = [inputViewSet isCustomInputView];

    v15 = [placement isMemberOfClass:objc_opt_class()];
    isInHardwareKeyboardMode = [(UIKeyboardImpl *)self isInHardwareKeyboardMode];
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    isSecureTextEntry = [textInputTraits isSecureTextEntry];

    textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    keyboardType = [textInputTraits2 keyboardType];

    if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
    {
      isInHardwareKeyboardMode = 1;
    }

    v8 = (isInHardwareKeyboardMode | isCustomInputView | v15 | isSecureTextEntry) ^ 1;
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
  delegateAsResponder = [v2 delegateAsResponder];
  _responderWindow = [delegateAsResponder _responderWindow];
  v5 = _responderWindow;
  if (_responderWindow)
  {
    window = _responderWindow;
  }

  else
  {
    window = [v2 window];
  }

  v7 = window;

  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  keyboardScreen = [v8 keyboardScreen];
  v10 = keyboardScreen;
  if (keyboardScreen)
  {
    mainScreen = keyboardScreen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  v12 = mainScreen;

  screen = [v7 screen];
  v14 = screen;
  if (screen)
  {
    v15 = screen;
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
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  return keyInputDelegate;
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

  receivedCandidatesInCurrentInputMode = [(_UIKeyboardStateManager *)self->_keyboardStateManager receivedCandidatesInCurrentInputMode];

  return [(UIKeyboardImpl *)self shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:receivedCandidatesInCurrentInputMode ignoreHidePredictionTrait:0];
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
  shouldSuppressSoftwareKeyboard = [v3 shouldSuppressSoftwareKeyboard];

  if (shouldSuppressSoftwareKeyboard)
  {
    return 1;
  }

  return [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:0];
}

- (BOOL)_shouldSuppressSoftwareKeyboardByDictation
{
  v2 = +[UIDictationController activeInstance];
  shouldSuppressSoftwareKeyboard = [v2 shouldSuppressSoftwareKeyboard];

  return shouldSuppressSoftwareKeyboard;
}

- (void)_updateShouldSuppressAssistantBar
{
  if (!+[UIKeyboard isInputSystemUI]&& ![(UIKeyboardImpl *)self showingEmojiSearch])
  {
    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    wantsAssistantWhileSuppressingKeyboard = [v3 wantsAssistantWhileSuppressingKeyboard];

    if ((wantsAssistantWhileSuppressingKeyboard & 1) == 0)
    {
      v5 = +[UIKeyboard suppressionPolicyDelegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = +[UIKeyboard suppressionPolicyDelegate];
        inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
        v8 = [v6 _shouldSuppressAssistantBarForDelegate:inputDelegate];
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
  activeInstance = [self activeInstance];
  remoteTextInputPartner = [activeInstance remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];

  if (rtiInputSourceState)
  {
    activeInstance2 = [self activeInstance];
    remoteTextInputPartner2 = [activeInstance2 remoteTextInputPartner];
    rtiInputSourceState2 = [remoteTextInputPartner2 rtiInputSourceState];
    floating = [rtiInputSourceState2 floating];

    LOBYTE(supportsFloating) = floating;
  }

  else if (byte_1ED498A08 == 1)
  {
    supportsFloating = [self supportsFloating];
    if (supportsFloating)
    {
      if ([qword_1ED498A10 isMinimized] && (objc_msgSend(qword_1ED498A10, "isFloatingLocked") & 1) == 0)
      {
        v11 = qword_1ED498A10;

        LOBYTE(supportsFloating) = [v11 maximizing];
      }

      else
      {
        LOBYTE(supportsFloating) = 1;
      }
    }
  }

  else
  {
    LOBYTE(supportsFloating) = 0;
  }

  return supportsFloating;
}

+ (id)_applicationClientComponent
{
  keyboardWindow = [self keyboardWindow];
  windowScene = [keyboardWindow windowScene];
  _settingsScene = [windowScene _settingsScene];
  _keyboardClientComponent = [_settingsScene _keyboardClientComponent];

  return _keyboardClientComponent;
}

- (BOOL)isMinimized
{
  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];
  if (rtiInputSourceState)
  {
    v5 = rtiInputSourceState;
    v6 = +[UIKeyboard usesLocalKeyboard];

    if (!v6)
    {
      remoteTextInputPartner2 = [(UIKeyboardImpl *)self remoteTextInputPartner];
      rtiInputSourceState2 = [remoteTextInputPartner2 rtiInputSourceState];
      LOBYTE(v9) = [rtiInputSourceState2 minimized];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  hardwareKeyboardAttached = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->m_geometryDelegate);
    isMinimized = [v12 isMinimized];
LABEL_7:

    goto LABEL_13;
  }

  if (hardwareKeyboardAttached)
  {
    if ([UIApp _isSpringBoard])
    {
      v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v12 preferencesActions];
      isMinimized = [preferencesActions automaticMinimizationEnabled];

      goto LABEL_7;
    }

    isMinimized = 1;
  }

  else
  {
    isMinimized = 0;
  }

LABEL_13:
  v9 = isMinimized & ![(UIKeyboardImpl *)self floatingForced];
  if (![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard])
  {
    v15 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v15 currentInputMode];
    v9 &= [currentInputMode showSWLayoutWithHWKeyboard] ^ 1;
  }

  remoteTextInputPartner2 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  if ([remoteTextInputPartner2 wantsAssistantWhileSuppressingKeyboard])
  {
    rtiInputSourceState2 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v9 |= [rtiInputSourceState2 disableBecomeFirstResponder];
    goto LABEL_17;
  }

LABEL_18:

  return v9;
}

- (BOOL)_shouldSuppressSoftwareKeyboardByOneness
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  hardwareKeyboardExclusivityIdentifier = [v3 hardwareKeyboardExclusivityIdentifier];
  hardwareKeyboardExclusivityIdentifier2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardExclusivityIdentifier];
  v6 = [hardwareKeyboardExclusivityIdentifier isEqualToString:hardwareKeyboardExclusivityIdentifier2];

  return v6;
}

- (id)delegateAsResponder
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  delegateAsResponder = [inputDelegateManager delegateAsResponder];

  return delegateAsResponder;
}

- (id)window
{
  v4.receiver = self;
  v4.super_class = UIKeyboardImpl;
  window = [(UIView *)&v4 window];

  return window;
}

- (BOOL)canShowAppConnections
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
  beginningOfDocument = [inputDelegateManager2 beginningOfDocument];
  inputDelegateManager3 = [(UIKeyboardImpl *)self inputDelegateManager];
  endOfDocument = [inputDelegateManager3 endOfDocument];
  v8 = [inputDelegateManager comparePosition:beginningOfDocument toPosition:endOfDocument];

  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  textContentType = [textInputTraits textContentType];

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = textContentType == 0;
  }

  return !v11;
}

+ (BOOL)isSplit
{
  activeInstance = [self activeInstance];
  remoteTextInputPartner = [activeInstance remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];

  if (rtiInputSourceState)
  {
    activeInstance2 = [self activeInstance];
    remoteTextInputPartner2 = [activeInstance2 remoteTextInputPartner];
    rtiInputSourceState2 = [remoteTextInputPartner2 rtiInputSourceState];
    split = [rtiInputSourceState2 split];

    return split;
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
  delegateAsResponder = [v2 delegateAsResponder];
  _responderWindow = [delegateAsResponder _responderWindow];
  if (_responderWindow)
  {
    window = _responderWindow;
  }

  else
  {
    window = [v2 window];

    if (!window)
    {
      window = +[UIWindow _applicationKeyWindow];
    }
  }

  return window;
}

- (BOOL)layoutIsResizing
{
  _layout = [(UIKeyboardImpl *)self _layout];
  isResizing = [_layout isResizing];

  return isResizing;
}

- (BOOL)isHardwareKeyboardAttachedNow
{
  v2 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v2 _isHardwareKeyboardAvailable];

  return _isHardwareKeyboardAvailable;
}

+ (BOOL)isActivatingForeground
{
  _isActivating = [UIApp _isActivating];
  if (_isActivating)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v3 scene];
    _FBSScene = [scene _FBSScene];
    settings = [_FBSScene settings];
    isForeground = [settings isForeground];

    LOBYTE(_isActivating) = isForeground;
  }

  return _isActivating;
}

+ (BOOL)showsGlobeAndDictationKeysExternally
{
  keyboardScreen = [self keyboardScreen];
  traitCollection = [keyboardScreen traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {

    return [self showsGlobeAndDictationKeysExternallyForFloatingKeyboard];
  }

  else
  {
    v7 = +[UIDevice _hasHomeButton];
    _applicationClientComponent = [self _applicationClientComponent];
    v9 = _applicationClientComponent;
    if (_applicationClientComponent)
    {
      v10 = [_applicationClientComponent isKeyboardDockDisabled] ^ 1;
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
    preferencesActions = [v5 preferencesActions];
    v7 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D9950]];

    return v7;
  }
}

- (id)inputDelegate
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  textInputDelegate = [inputDelegateManager textInputDelegate];

  return textInputDelegate;
}

- (id)returnKeyDisplayName
{
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([textInputTraits emptyContentReturnKeyType] == 1)
  {
    noContent = [(UIKeyboardImpl *)self noContent];

    if (noContent)
    {
      v5 = UIKeyboardLocalizedString(@"UI-Cancel", 0, 0, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  v5 = UIKeyboardLocalizedReturnKeyName([textInputTraits2 returnKeyType]);

LABEL_6:

  return v5;
}

- (void)hideInternationalKeyIntroductionIfNeeded
{
  internationalKeyIntroductionView = [(UIKeyboardImpl *)self internationalKeyIntroductionView];

  if (internationalKeyIntroductionView)
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v4 preferencesActions];
    [preferencesActions didTriggerOneTimeAction:*MEMORY[0x1E69D9C28]];

    internationalKeyIntroductionView2 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
    [internationalKeyIntroductionView2 removeFromSuperview];

    [(UIKeyboardImpl *)self setInternationalKeyIntroductionView:0];
  }
}

- (BOOL)continuousPathUnderway
{
  _layout = [(UIKeyboardImpl *)self _layout];
  hasActiveContinuousPathInput = [_layout hasActiveContinuousPathInput];

  return hasActiveContinuousPathInput;
}

+ (BOOL)shouldAccessInputManagerService
{
  v2 = +[UIKeyboardImpl activeInstance];
  keyboardLayoutIsInAnotherProcess = [v2 keyboardLayoutIsInAnotherProcess];

  return keyboardLayoutIsInAnotherProcess ^ 1;
}

+ (double)additionalInstanceHeight
{
  v3 = +[UIKeyboard activeKeyboard];
  [self additionalInstanceHeightForInterfaceOrientation:objc_msgSend(v3 hasInputView:{"interfaceOrientation"), 0}];
  v5 = v4;

  return v5;
}

- (void)setCapsLockSign
{
  if (!+[UIKeyboard isCapslockIndicatorEnabled])
  {
    textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
    if ([textInputTraits isSecureTextEntry])
    {
      textInputTraits2 = [(UIKeyboardImpl *)self textInputTraits];
      if ([textInputTraits2 displaySecureTextUsingPlainText])
      {
LABEL_7:

        goto LABEL_8;
      }

      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      keyInputDelegate = [inputDelegateManager keyInputDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }

      inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
      textInputTraits = [inputDelegateManager2 keyInputDelegate];

      rightView = [textInputTraits rightView];
      if (rightView)
      {
        v13 = rightView;
        rightView2 = [textInputTraits rightView];
        m_capsLockSign = self->m_capsLockSign;

        v7 = textInputTraits;
        if (rightView2 != m_capsLockSign)
        {
          goto LABEL_9;
        }
      }

      if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]&& self->m_isCapsLocked || [(_UIKeyboardStateManager *)self->_keyboardStateManager shiftLocked]&& [(UIKeyboardLayout *)self->m_layout isAlphabeticPlane])
      {
        font = [textInputTraits font];
        [font pointSize];
        v18 = v17 + 6.0;

        [textInputTraits bounds];
        if (v18 > v19)
        {
          [textInputTraits bounds];
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
        rightView3 = [textInputTraits rightView];
        if (rightView3)
        {
          v31 = rightView3;
          [(UIView *)self->m_capsLockSign frame];
          v40.origin.x = v27;
          v40.origin.y = v29;
          v40.size.width = v18;
          v40.size.height = v18;
          v32 = CGRectEqualToRect(v39, v40);

          v7 = textInputTraits;
          if (v32)
          {
            goto LABEL_9;
          }
        }

        [(UIView *)self->m_capsLockSign setFrame:v27, v29, v18, v18];
        [textInputTraits bounds];
        [textInputTraits _setRightViewOffset:{(v33 - v18) * -0.5, 0.0}];
        v34 = self->m_capsLockSign;
        v35 = 1;
      }

      else
      {
        rightView4 = [textInputTraits rightView];

        v7 = textInputTraits;
        if (!rightView4)
        {
          goto LABEL_9;
        }

        v34 = 0;
        v35 = 0;
      }

      [textInputTraits setRightView:v34];
      [textInputTraits setRightViewMode:v35];
    }

LABEL_8:
    v7 = textInputTraits;
LABEL_9:

    return;
  }

  m_isCapsLocked = self->m_isCapsLocked;
  capslockAssertion = [(UIKeyboardImpl *)self capslockAssertion];
  v5 = capslockAssertion;
  if (m_isCapsLocked)
  {

    if (v5)
    {
      return;
    }

    textInputTraits = [(UIKeyboardImpl *)self _activeAssertionController];
    textInputTraits2 = [textInputTraits capslockAssertionWithReason:@"setCapsLockSign"];
    [(UIKeyboardImpl *)self setCapslockAssertion:textInputTraits2];
    goto LABEL_7;
  }

  [capslockAssertion invalidate];

  [(UIKeyboardImpl *)self setCapslockAssertion:0];
}

+ (BOOL)shouldMergeAssistantBarWithKeyboardLayout
{
  _layout = [qword_1ED498A10 _layout];
  shouldMergeAssistantBarWithKeyboardLayout = [_layout shouldMergeAssistantBarWithKeyboardLayout];

  return shouldMergeAssistantBarWithKeyboardLayout;
}

- (BOOL)allowsReachableKeyboard
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _unjailedReferenceBounds];
  v5 = v4;

  _UIDeviceNativeUserInterfaceIdiom();
  v6 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  _layout = [(UIKeyboardImpl *)self _layout];
  orientation = [_layout orientation];

  result = 0;
  if (v6 != 1 && v5 > 320.0 && (orientation - 3) >= 2)
  {
    return ![(UIKeyboardImpl *)self keyboardIsKeyPad];
  }

  return result;
}

- (BOOL)keyboardIsKeyPad
{
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  keyboardType = [textInputTraits keyboardType];
  v5 = keyboardType <= 0xB && ((1 << keyboardType) & 0x930) != 0 || keyboardType == 127;

  return v5;
}

- (BOOL)returnKeyEnabled
{
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([textInputTraits keyboardType] == 122)
  {
    textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    returnKeyType = [textInputTraits2 returnKeyType];

    if (returnKeyType == 9)
    {
      return 1;
    }
  }

  else
  {
  }

  textInputTraits3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  if ([textInputTraits3 enablesReturnKeyAutomatically])
  {
  }

  else
  {
    textInputTraits4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    enablesReturnKeyOnNonWhiteSpaceContent = [textInputTraits4 enablesReturnKeyOnNonWhiteSpaceContent];

    if ((enablesReturnKeyOnNonWhiteSpaceContent & 1) == 0)
    {
      updatedKeyBehaviors = [(UIKeyboardImpl *)self updatedKeyBehaviors];
      returnKeyBehavior = [updatedKeyBehaviors returnKeyBehavior];

      if (returnKeyBehavior != 9)
      {
        if (returnKeyBehavior)
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
    returnKeyDisplayName = [(UIKeyboardImpl *)self returnKeyDisplayName];
    [(UIKeyboardLayout *)m_layout setReturnKeyEnabled:m_returnKeyEnabledInLayout withDisplayName:returnKeyDisplayName withType:[(UIKeyboardImpl *)self returnKeyType]];
  }
}

- (BOOL)isPredictionViewControllerVisible
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v3 systemInputAssistantViewController];

  predictionViewController = [systemInputAssistantViewController predictionViewController];
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  v8 = [predictionViewController isVisibleForInputDelegate:keyInputDelegate inputViews:0];

  LOBYTE(inputDelegateManager) = [systemInputAssistantViewController isEmojiSearchResultsVisible];
  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v9 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  return v8 & ((inputDelegateManager | useVisualModeWindowed) ^ 1);
}

- (void)updateObserverState
{
  changedDelegate = [(_UIKeyboardStateManager *)self->_keyboardStateManager changedDelegate];
  if (changedDelegate)
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

    autocorrectPromptTask = [(UIKeyboardImpl *)self autocorrectPromptTask];
    isValid = [autocorrectPromptTask isValid];

    if (isValid)
    {
      autocorrectPromptTask2 = [(UIKeyboardImpl *)self autocorrectPromptTask];
      [autocorrectPromptTask2 resetTimer];
LABEL_16:

      goto LABEL_18;
    }

    autocorrectPromptTask2 = [(UIKeyboardImpl *)self taskQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__UIKeyboardImpl_updateCandidateDisplay__block_invoke;
    v13[3] = &unk_1E70FD058;
    v13[4] = self;
    autocorrection = [autocorrectPromptTask2 scheduleTask:v13 timeInterval:0 repeats:0.4];
    [(UIKeyboardImpl *)self setAutocorrectPromptTask:autocorrection];
LABEL_15:

    goto LABEL_16;
  }

  if (![(_UIKeyboardStateManager *)self->_keyboardStateManager autoDeleteOK])
  {
    [(UIKeyboardImpl *)self updateKeyboardConfigurations];
    hasAutocorrectPrompt = [(UIKeyboardImpl *)self hasAutocorrectPrompt];
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

    if ((hasAsyncCapableInputDelegate & 1) != 0 || !hasAutocorrectPrompt || (-[UIKeyboardImpl autocorrectionController](self, "autocorrectionController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasAutocorrection], v9, !v10))
    {
      [(UIKeyboardImpl *)self touchAutocorrectPromptTimer];
      goto LABEL_18;
    }

    autocorrectPromptTask2 = [(UIKeyboardImpl *)self autocorrectionController];
    autocorrection = [autocorrectPromptTask2 autocorrection];
    [(UIKeyboardImpl *)self updateAutocorrectPrompt:autocorrection];
    goto LABEL_15;
  }

  [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
LABEL_18:
  inlineTextCompletionController = [(UIKeyboardImpl *)self inlineTextCompletionController];
  [inlineTextCompletionController updateTextCompletionDisplay];
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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  if (inputDelegate)
  {
    v4 = 1;
  }

  else
  {
    asyncInputDelegate = [(UIKeyboardImpl *)self asyncInputDelegate];
    v4 = asyncInputDelegate != 0;
  }

  return v4;
}

- (void)clearAutocorrectPromptTimer
{
  autocorrectPromptTask = [(UIKeyboardImpl *)self autocorrectPromptTask];
  [autocorrectPromptTask invalidate];

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
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [_textChoicesAssistant updateActivePromptForCandidate:0 displayRects:0 highlightOnly:0];
  }

  superview = [(UIView *)self->m_autocorrectPrompt superview];

  if (superview)
  {
    [(UIView *)self->m_autocorrectPrompt removeFromSuperview];
    m_autocorrectPrompt = self->m_autocorrectPrompt;
    self->m_autocorrectPrompt = 0;
  }

  else
  {
    autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    superview2 = [autocorrectBubbleContainer superview];

    if (!superview2)
    {
      return;
    }

    m_autocorrectPrompt = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [m_autocorrectPrompt reset];
  }

  [(UIKeyboardImpl *)self sendCallbacksForPostCorrectionsRemoval];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardCandidateCorrectionDidChangeNotification" object:0 userInfo:0];
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
  currentInputMode = [v6 currentInputMode];
  if ([currentInputMode showSWLayoutWithHWKeyboard])
  {
    v5 = 0;
  }

  else
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    v5 = [textInputTraits keyboardAppearance] != 127;
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
      keyboardWindow = [objc_opt_class() keyboardWindow];
      screen = [keyboardWindow screen];
      v9 = [UIKBScreenTraits traitsWithScreen:screen orientation:[(UIView *)self _keyboardOrientation]];

      if ([v9 idiom] == 2)
      {
        v10 = +[UIKeyboard activeKeyboard];
        if (v10)
        {
          +[UIKeyboard activeKeyboard];
          v12 = v11 = keyboardWindow;
          _useLinearLayout = [v12 _useLinearLayout];

          keyboardWindow = v11;
        }

        else
        {
          _useLinearLayout = 0;
        }

        [v9 updateForLinearLayout:_useLinearLayout];
      }

      else if ([v9 idiom] == 3)
      {
        textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
        [v9 updateForTextInputTraits:textInputTraits supportedInteractionModel:{-[UIKeyboardImpl requestedInteractionModel](self, "requestedInteractionModel")}];
      }

      [v9 setSupportsSplit:{+[UIKeyboardImpl supportsSplit](UIKeyboardImpl, "supportsSplit")}];
      [v9 setIsSplit:{+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit")}];
      [v9 setCenterFilled:{-[UIKeyboardImpl centerFilled](self, "centerFilled")}];
      if (![(UIKeyboardImpl *)self updatingPreferences])
      {
        candidateController = [(UIKeyboardImpl *)self candidateController];
        barIsExtended = [candidateController barIsExtended];

        if (barIsExtended)
        {
          candidateController2 = [(UIKeyboardImpl *)self candidateController];
          [candidateController2 collapse];
        }
      }

      candidateController3 = [(UIKeyboardImpl *)self candidateController];
      [candidateController3 setScreenTraits:v9];

      [(UIKeyboardLayout *)self->m_layout clearTransientState];
      v19 = objc_opt_class();
      textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v21 = [v19 layoutClassForInputMode:v6 keyboardType:objc_msgSend(textInputTraits2 screenTraits:{"keyboardType"), v9}];

      if (v21)
      {
        v60 = keyboardWindow;
        v62 = v5;
        v61 = v6;
        if (![v6 isEqualToString:@"dictation"] || (-[UIView bounds](self, "bounds"), v23 = *MEMORY[0x1E695F060], *MEMORY[0x1E695F060] == v24) && (v23 = *(MEMORY[0x1E695F060] + 8), v23 == v22))
        {
          v25 = +[UIKeyboard activeKeyboard];
          interfaceOrientation = [v25 interfaceOrientation];

          [UIKeyboardImpl keyboardSizeForInterfaceOrientation:interfaceOrientation];
          v28 = v27;
          v30 = v29;
          [UIKeyboardImpl topMarginForInterfaceOrientation:interfaceOrientation];
          v32 = v30 - v31;
          _keyboardOrientation = [(UIView *)self _keyboardOrientation];
          v34 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode = [v34 currentInputMode];
          [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:_keyboardOrientation inputMode:currentInputMode];
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
        systemInputAssistantViewController = [v40 systemInputAssistantViewController];

        traitCollection = [(UIView *)self traitCollection];
        [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
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
          taskQueue = [(UIKeyboardImpl *)self taskQueue];
          [v46 setTaskQueue:taskQueue];

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
          inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
          if (inputSystemSourceSession)
          {
            buildInputSourceState = [(UIKeyboardImpl *)self buildInputSourceState];
            textOperations = [inputSystemSourceSession textOperations];
            [textOperations setInputSourceState:buildInputSourceState];

            [inputSystemSourceSession flushOperations];
          }
        }

        self->m_updatingLayout = 0;

        v6 = v61;
        v5 = v62;
        keyboardWindow = v60;
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
  isOpaque = [(UIView *)self->m_layout isOpaque];
  if (isOpaque != [(UIView *)self isOpaque])
  {
    [(UIView *)self setOpaque:isOpaque];
  }

  return isOpaque;
}

- (void)removeTextChoicePrompt
{
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [_textChoicesAssistant dismissIfPresented];
  }
}

- (id)_passwordRules
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
    documentTraits = [inputSystemSourceSession documentTraits];

    passwordRules = [documentTraits passwordRules];
    goto LABEL_33;
  }

  autofillController = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  autofillGroup = [autofillController autofillGroup];
  documentTraits = [autofillGroup objectForKey:@"password"];

  autofillController2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  autofillGroup2 = [autofillController2 autofillGroup];
  v10 = [autofillGroup2 objectForKey:@"new-password"];

  if (documentTraits)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = documentTraits;
  if (v11 || (!documentTraits ? (v13 = v10 == 0) : (v13 = 1), v12 = v10, !v13))
  {
    v20 = v12;
    goto LABEL_27;
  }

  if (documentTraits)
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
      passwordRules2 = [documentTraits passwordRules];
      passwordRulesDescriptor = [passwordRules2 passwordRulesDescriptor];
      v17 = [passwordRulesDescriptor length];

      if (v17)
      {
        v18 = documentTraits;
LABEL_20:
        passwordRules3 = [v18 passwordRules];
        v20 = 0;
        goto LABEL_30;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        passwordRules4 = [v10 passwordRules];
        passwordRulesDescriptor2 = [passwordRules4 passwordRulesDescriptor];
        v23 = [passwordRulesDescriptor2 length];

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
    passwordRules = 0;
    goto LABEL_32;
  }

  passwordRules3 = [v20 passwordRules];
LABEL_30:
  passwordRules = [passwordRules3 passwordRulesDescriptor];

LABEL_32:
LABEL_33:

  return passwordRules;
}

- (void)clearCursorAccessory
{
  capslockAssertion = [(UIKeyboardImpl *)self capslockAssertion];
  [capslockAssertion invalidate];

  [(UIKeyboardImpl *)self setCapslockAssertion:0];
  inputModeAssertion = [(UIKeyboardImpl *)self inputModeAssertion];
  [inputModeAssertion invalidate];

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

  changedDelegate = [(_UIKeyboardStateManager *)self->_keyboardStateManager changedDelegate];

  if (changedDelegate)
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
    localAuthenticationObserver = [v3 localAuthenticationObserver];

    if (([localAuthenticationObserver localAuthenticationPresentedOrBeingRecoveredFrom] & 1) == 0 && getAFUIPanelClass())
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
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
    [interactionAssistant dismissMenuForInputUI];
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
      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      selectionDisplayInteraction = [inputDelegateManager selectionDisplayInteraction];
      [selectionDisplayInteraction clearInputModeCursorAssertion];

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

      inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
      textInputView = [inputDelegate textInputView];
      [textInputView removeInteraction:self->m_editMenuInteraction];

      [(UIEditMenuInteraction *)self->m_editMenuInteraction dismissMenu];
      v8 = +[UIMenuController sharedMenuController];
      LODWORD(inputDelegate) = [v8 isMenuVisible];

      if (!inputDelegate)
      {
        return;
      }

      inputDelegate2 = +[UIMenuController sharedMenuController];
      [inputDelegate2 hideMenu];
      goto LABEL_15;
    }

    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate2 interactionAssistant];
    [interactionAssistant dismissMenuForInputUI];
LABEL_14:

LABEL_15:
    v11 = inputDelegate2;
    goto LABEL_16;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager2 = [v9 inputDelegateManager];
  inputDelegate2 = [inputDelegateManager2 inputSystemSourceSession];

  v11 = inputDelegate2;
  if (inputDelegate2)
  {
    interactionAssistant = [inputDelegate2 textOperations];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v14 = NSStringFromSelector(sel_dismissDictationMenu);
    [dictionary setObject:v14 forKeyedSubscript:@"selector"];

    [interactionAssistant setCustomInfoType:0x1EFB7C8F0];
    [interactionAssistant setCustomInfo:dictionary];
    [inputDelegate2 flushOperations];

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
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
    isDisplayingMenuForInputUI = [interactionAssistant isDisplayingMenuForInputUI];

    if (isDisplayingMenuForInputUI)
    {
      v8 = +[UIDictationController activeInstance];
      dictationTipController = [v8 dictationTipController];
      [dictationTipController logDictationTipDimissialInstrumentation];
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
  window = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateExternalDeviceInputSettingForWindow:window];
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
      textInputTraits = [v5 textInputTraits];

      if (UIKeyboardTraitsCanSplit(textInputTraits))
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
  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];

  if (rtiInputSourceState)
  {
    remoteTextInputPartner2 = [(UIKeyboardImpl *)self remoteTextInputPartner];
    rtiInputSourceState2 = [remoteTextInputPartner2 rtiInputSourceState];
    centerFilled = [rtiInputSourceState2 centerFilled];
  }

  else
  {
    m_rivenCenterFilled = self->m_rivenCenterFilled;
    v9 = +[UIPeripheralHost sharedInstance];
    remoteTextInputPartner2 = [v9 loadAwareInputViews];

    if ([remoteTextInputPartner2 supportsSplit])
    {
      isPredictionViewControllerVisible = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];
    }

    else
    {
      isPredictionViewControllerVisible = 1;
    }

    self->m_rivenCenterFilled = isPredictionViewControllerVisible;
    if ([remoteTextInputPartner2 isEmpty])
    {
      self->m_rivenCenterFilled = m_rivenCenterFilled;
    }

    else if (m_rivenCenterFilled != self->m_rivenCenterFilled)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIKeyboardRivenVisualStyleDidChange" object:0 userInfo:0];

      if (objc_opt_respondsToSelector())
      {
        [(UIKeyboardLayout *)self->m_layout setKeyboardAppearance:-1];
      }
    }

    centerFilled = self->m_rivenCenterFilled;
  }

  return centerFilled & 1;
}

- (BOOL)hasAutocorrectPrompt
{
  if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    autocorrectPrompt = [(UIKeyboardImpl *)self autocorrectPrompt];
    if (!autocorrectPrompt)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  autocorrectPrompt = [(UIKeyboardImpl *)self _textChoicesAssistant];
  if ([autocorrectPrompt showingAutocorrectInlinePrompt])
  {
    goto LABEL_5;
  }

LABEL_3:
  autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v5 = autocorrectBubbleContainer != 0;

LABEL_6:
  return v5;
}

- (void)touchAutocorrectPromptTimer
{
  if ([(UIKeyboardImpl *)self hasAdvancedInputDelegate])
  {
    autocorrectPromptTask = [(UIKeyboardImpl *)self autocorrectPromptTask];
    isValid = [autocorrectPromptTask isValid];

    if (isValid)
    {
      autocorrectPromptTask2 = [(UIKeyboardImpl *)self autocorrectPromptTask];
      [autocorrectPromptTask2 resetTimer];
    }

    else
    {
      taskQueue = [(UIKeyboardImpl *)self taskQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45__UIKeyboardImpl_touchAutocorrectPromptTimer__block_invoke;
      v8[3] = &unk_1E70FD058;
      v8[4] = self;
      v6 = [taskQueue scheduleTask:v8 timeInterval:0 repeats:0.2];
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
  smartReplyFeedbackManager = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  v3 = [smartReplyFeedbackManager shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:{+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit")}];

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
    inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
    documentTraits = [inputSystemSourceSession documentTraits];
    autofillMode = [documentTraits autofillMode];
  }

  else
  {
    autofillMode = [(_UIKeyboardStateManager *)self->_keyboardStateManager cachedAutofillMode];
  }

  if (autofillMode <= 7)
  {
    if ((autofillMode - 5) < 3)
    {

      [(UIKeyboardImpl *)self handleAutoFillContactDetected];
      return;
    }

    if (autofillMode != 1)
    {
      return;
    }

    goto LABEL_18;
  }

  if (autofillMode != 9)
  {
    if (autofillMode != 8)
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
  cursorAssertion = [(UIKeyboardImpl *)self cursorAssertion];
  v3 = cursorAssertion != 0;

  return v3;
}

- (BOOL)showsCandidateBar
{
  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];

  if (!rtiInputSourceState)
  {
    return self->m_showsCandidateBar;
  }

  remoteTextInputPartner2 = [(UIKeyboardImpl *)self remoteTextInputPartner];
  rtiInputSourceState2 = [remoteTextInputPartner2 rtiInputSourceState];
  showsCandidateBar = [rtiInputSourceState2 showsCandidateBar];

  return showsCandidateBar;
}

- (BOOL)_showsScribbleIconsInAssistantView
{
  if (+[UIKeyboard isMajelEnabled]&& ![(UIKeyboardImpl *)self _shouldSuppressAssistantBar])
  {
    delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
    if (([(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardForResponder:delegateAsResponder ignoringPolicyDelegate:0 ignoreNumberPad:1]|| [(UIKeyboardImpl *)self floatingForced]) && +[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
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
    preferencesActions = [v3 preferencesActions];
    v5 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9C38]];
    [v5 floatValue];
    v2 = v6;
  }

  return v2;
}

- (void)delayedInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationSuspendedEventsOnly_ name:@"UIApplicationSuspendedEventsOnlyNotification" object:0];
  [defaultCenter addObserver:self selector:sel_applicationResumedEventsOnly_ name:@"UIApplicationResumedEventsOnlyNotification" object:0];
  [defaultCenter addObserver:self selector:sel_applicationResumed_ name:@"UIApplicationResumedNotification" object:0];
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

  [defaultCenter addObserver:self selector:v5 name:*v6 object:0];
  [defaultCenter addObserver:self selector:sel_selectionScrolling_ name:@"UITextSelectionWillScroll" object:0];
  [defaultCenter addObserver:self selector:sel_selectionScrolling_ name:@"UITextSelectionDidScroll" object:0];
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  [inputDelegateManager setupResponderChangeListeners];

  [defaultCenter addObserver:self selector:sel__updateKeyboardSuppression_ name:@"UITextInputUpdateKeyboardSuppressionNotification" object:0];
  [defaultCenter addObserver:self selector:sel__updateKeyboardLanguage_ name:@"UITextInputUpdateKeyboardLanguageNotification" object:0];
  [defaultCenter addObserver:self selector:sel_scribbleWillBeginWriting_ name:@"_UIScribbleWillBeginWriting" object:0];
  [defaultCenter addObserver:self selector:sel_beginObservingInputOverlayContainerFrame name:@"UIWindowSceneDidBeginLiveResizeNotification" object:0];
  [defaultCenter addObserver:self selector:sel_endObservingInputOverlayContainerFrame name:@"UIWindowSceneDidEndLiveResizeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__dictationDidRecieveDidBeginDictationNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];
  [defaultCenter addObserver:self selector:sel_textSelectionInteractionWillBegin_ name:@"UITextSelectionInteractionWillBegin" object:0];
}

- (void)didMoveToSuperview
{
  [(UIView *)self bounds];
  v7 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v3, v4];
  [v7 setSplitWidthsChanged:byte_1ED4989F0 != byte_1ED4989E8];
  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  [v7 setIsSecureTextEntry:{objc_msgSend(textInputTraits, "isSecureTextEntry")}];

  superview = [(UIView *)self superview];
  [superview _didChangeKeyplaneWithContext:v7];

  byte_1ED4989F0 = byte_1ED4989E8;
}

- (id)_getCurrentKeyplaneName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyplaneName = [(UIKeyboardLayout *)self->m_layout keyplaneName];
  }

  else
  {
    keyplaneName = 0;
  }

  return keyplaneName;
}

- (UIKeyboardLayout)activeLayout
{
  layout = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
  v4 = layout;
  if (layout)
  {
    v5 = layout;
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
  _layout = [(UIKeyboardImpl *)self _layout];
  globeKeyDisplaysAsEmojiKey = [_layout globeKeyDisplaysAsEmojiKey];

  return globeKeyDisplaysAsEmojiKey;
}

- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton
{
  _layout = [(UIKeyboardImpl *)self _layout];
  showsDedicatedEmojiKeyAlongsideGlobeButton = [_layout showsDedicatedEmojiKeyAlongsideGlobeButton];

  return showsDedicatedEmojiKeyAlongsideGlobeButton;
}

- (void)updateLayoutIfNecessary
{
  if (self->m_updatingLayout)
  {
    return;
  }

  v4 = +[UIPeripheralHost activeInstance];
  loadAwareInputViews = [v4 loadAwareInputViews];
  keyboard = [loadAwareInputViews keyboard];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = keyboard;
  }

  else
  {
    v7 = +[UIKeyboard activeKeyboard];

    v6 = v7;
  }

  v25 = v6;
  if (v6)
  {
    interfaceOrientation = [v6 interfaceOrientation];
  }

  else
  {
    interfaceOrientation = [(UIView *)self _keyboardOrientation];
  }

  v9 = interfaceOrientation;
  window = [v25 window];

  if (window)
  {
    window2 = [v25 window];
    _screen = [window2 _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];
  }

  else
  {
    if ([v25 _userInterfaceIdiom] == 3)
    {
      _userInterfaceIdiom = 3;
      goto LABEL_14;
    }

    window2 = [objc_opt_class() keyboardScreen];
    _userInterfaceIdiom = [window2 _userInterfaceIdiom];
  }

LABEL_14:
  v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v14 visualModeManager];
  if ([visualModeManager windowingModeEnabled])
  {
    window3 = [(UIKeyboardImpl *)self window];
    v17 = objc_opt_class();
    LODWORD(v17) = [v17 isEqual:objc_opt_class()];

    if (v17)
    {
      window4 = [(UIKeyboardImpl *)self window];
      sceneIsResizing = [window4 sceneIsResizing];

      v20 = sceneIsResizing ^ 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v20 = 1;
LABEL_19:
  if (![objc_opt_class() keyboardOrientation:v9 isEquivalentToOrientation:{-[UIKeyboardLayout orientation](self->m_layout, "orientation")}] || _userInterfaceIdiom != -[UIKeyboardLayout idiom](self->m_layout, "idiom") || objc_msgSend(v25, "isAutomatic") && (objc_msgSend(v25, "bounds"), v22 = v21, -[UIView bounds](self->m_layout, "bounds"), v22 != v23))
  {
    v20 = 0;
  }

  if (_userInterfaceIdiom == 8 || (v20 & 1) != 0)
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
    _rtiDocumentStateForAutoFillPopover = [(_UIKeyboardStateManager *)self->_keyboardStateManager _rtiDocumentStateForAutoFillPopover];
    [(AFUIPanel *)self->_autoFillPanel documentStateChanged:_rtiDocumentStateForAutoFillPopover];
  }
}

- (id)layoutState
{
  if (self->m_layout)
  {
    v3 = objc_opt_new();
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    currentSystemInputMode = [v4 currentSystemInputMode];
    identifier = [currentSystemInputMode identifier];
    [v3 setInputMode:identifier];

    [v3 setHasCandidateKey:{-[UIKeyboardLayout hasCandidateKeys](self->m_layout, "hasCandidateKeys")}];
    [v3 setHasAccentKey:{-[UIKeyboardLayout hasAccentKey](self->m_layout, "hasAccentKey")}];
    [v3 setCanMultitap:{-[UIKeyboardLayout canMultitap](self->m_layout, "canMultitap")}];
    v7 = ![(UIKeyboardImpl *)self isMinimized]&& [(UIKeyboardLayout *)self->m_layout isAlphabeticPlane];
    [v3 setIsAlphabeticPlane:v7];
    [v3 setIsKanaPlane:{-[UIKeyboardLayout isKanaPlane](self->m_layout, "isKanaPlane")}];
    [v3 setDiacriticForwardCompose:{-[UIKeyboardLayout diacriticForwardCompose](self->m_layout, "diacriticForwardCompose")}];
    layoutTag = [(UIKeyboardLayout *)self->m_layout layoutTag];
    [v3 setLayoutTag:layoutTag];

    keyboardScreen = [objc_opt_class() keyboardScreen];
    v10 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:[(UIView *)self _keyboardOrientation]];

    idiom = [v10 idiom];
    v12 = idiom;
    if ((idiom - 2) >= 3 && idiom)
    {
      if (idiom == 1)
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
  preferencesActions = [v2 preferencesActions];
  colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];

  if (!colorAdaptiveKeyboardEnabled || !+[UIInputWindowController keyboardDotDotDotEnabled])
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

  inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  v3 = ([inputManagerState usesCandidateSelection] & 1) == 0 && -[_UIKeyboardStateManager isDefaultPrediction](self->_keyboardStateManager, "isDefaultPrediction") && _AXSExtendedKeyboardPredictionsEnabled() != 0;

  return v3;
}

- (BOOL)isUsingDictationLayout
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  if ([currentInputMode isExtensionInputMode])
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
  currentInputMode = [v3 currentInputMode];
  identifier = [currentInputMode identifier];
  v6 = [identifier isEqualToString:@"autofillsignup"];

  if (v6)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  if ([objc_opt_class() canShowInternationalKey])
  {
    textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
    if ([textInputTraits isSecureTextEntry])
    {
      HasMultipleActiveSecureInputModes = UIKeyboardHasMultipleActiveSecureInputModes();

      if ((HasMultipleActiveSecureInputModes & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ([UIKeyboardActiveUserSelectableInputModes count] < 2)
    {
      textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      keyboardType = [textInputTraits2 keyboardType];

      if (keyboardType != 122)
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
    remoteKeyboardUndocked = [v3 remoteKeyboardUndocked];

    if ((remoteKeyboardUndocked & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!+[UIKeyboardImpl isFloating])
  {
    if (byte_1ED4989F8)
    {
      [self normalizedPersistentOffsetIgnoringState];
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
  inputDelegateManager = [v3 inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  if (([keyInputDelegate __isKindOfUIResponder] & 1) == 0)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder = [v6 delegateAsResponder];

    keyInputDelegate = delegateAsResponder;
  }

  if (keyInputDelegate)
  {
    v8 = (objc_opt_respondsToSelector() & 1) == 0 || [keyInputDelegate keyboardAppearance] == 10;
  }

  else
  {
    v8 = 1;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (v8)
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];

    if (textInputTraits)
    {
      textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v14 = textInputTraits2;
      if (userInterfaceStyle == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      [textInputTraits2 setKeyboardAppearance:v13];
    }
  }
}

- (BOOL)_isBackdropVisible
{
  keyboardScreen = [objc_opt_class() keyboardScreen];
  v4 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:[(UIView *)self _keyboardOrientation]];

  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  if (keyboardAppearance == 127)
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

    textInputTraits2 = [(UIKeyboardImpl *)self textInputTraits];
    keyboardAppearance2 = [textInputTraits2 keyboardAppearance];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([v11 restoringInputViews])
    {
      keyboardAppearance2 = [v11 restorableKeyboardAppearance];
    }

    if (keyboardAppearance2 == 11)
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
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  if (!keyInputDelegate)
  {
    if (!+[UIKeyboard usesInputSystemUI])
    {
      return 0;
    }

    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];
    showingEmojiSearch = [rtiInputSourceState showingEmojiSearch];

    if (!showingEmojiSearch)
    {
      return 0;
    }
  }

  return +[UIDictationController fetchCurrentInputModeSupportsDictation];
}

+ (CGPoint)persistentOffset
{
  v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  delegate = [qword_1ED498A10 delegate];
  if (delegate)
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
    [self normalizedPersistentOffset];
    [self _screenPointFromNormalizedPoint:?];
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
  floatingForced = [v2 floatingForced];

  return floatingForced;
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
  window = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:window];
}

- (void)prewarmEmojiKeyboardIfNeeded
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  normalizedEnabledInputModeIdentifiers = [v3 normalizedEnabledInputModeIdentifiers];
  v5 = [normalizedEnabledInputModeIdentifiers containsObject:@"emoji"];

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
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  [_rootInputWindowController setDisableUpdateMaskForSecureTextEntry:{objc_msgSend(textInputTraits, "isSecureTextEntry")}];

  if (+[UIKeyboardImpl showsGlobeAndDictationKeysExternally])
  {
    _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
    [_rootInputWindowController2 updateSupportsDockViewController];
  }

  _window = [(UIView *)self _window];
  if (_window)
  {
    v7 = _window;
    m_bottomPadding = self->m_bottomPadding;
    _keyboardOrientation = [(UIView *)self _keyboardOrientation];
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v10 currentInputMode];
    [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:_keyboardOrientation inputMode:currentInputMode];
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

  window = [(UIView *)self->_continuousPathIntroductionView window];
  if (window)
  {
    goto LABEL_5;
  }

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (!keyInputDelegate)
  {
    window = inputDelegateManager;
LABEL_5:

    return;
  }

  v5 = keyInputDelegate;
  shouldShowContinuousPathIntroductionView = [(UIKeyboardImpl *)self shouldShowContinuousPathIntroductionView];

  if (shouldShowContinuousPathIntroductionView)
  {
    if (!self->_continuousPathIntroductionView)
    {
      v7 = [UIContinuousPathIntroductionView alloc];
      textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v9 = -[UIContinuousPathIntroductionView initWithKeyboardAppearance:](v7, "initWithKeyboardAppearance:", [textInputTraits keyboardAppearance]);
      continuousPathIntroductionView = self->_continuousPathIntroductionView;
      self->_continuousPathIntroductionView = v9;
    }

    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];
    [bottomEdgeView addSubview:self->_continuousPathIntroductionView];

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
  preferencesActions = [v3 preferencesActions];
  v5 = [preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9740]];

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
    pinchDetected = [(UIKeyboardLayout *)self->m_layout pinchDetected];
  }

  else
  {
    pinchDetected = 0;
  }

  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  isSplitting = [_rootInputWindowController isSplitting];

  return pinchDetected | isSplitting;
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
  inputModeAssertion = [(UIKeyboardImpl *)self inputModeAssertion];
  [inputModeAssertion invalidate];

  [(UIKeyboardImpl *)self setInputModeAssertion:0];
}

+ (id)sharedInstanceForCustomInputView:(BOOL)view
{
  viewCopy = view;
  if (qword_1ED498A10)
  {
    if (!view && [qword_1ED498A10 forCustomInputView])
    {
      [qword_1ED498A10 setForCustomInputView:0];
      [qword_1ED498A10 setInputModeFromPreferences];
    }
  }

  else
  {
    v5 = [self alloc];
    v6 = [v5 initWithFrame:viewCopy forCustomInputView:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = qword_1ED498A10;
    qword_1ED498A10 = v6;

    [UIApp _registerForUserDefaultsChanges];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardImpl_sharedInstanceForCustomInputView___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (void)applicationWillSuspend:(id)suspend
{
  v3 = +[UIKeyboardImpl activeInstance];
  usesCandidateSelection = [v3 usesCandidateSelection];

  if (usesCandidateSelection)
  {
    v5 = +[UIKeyboard activeKeyboard];
    [v5 acceptAutocorrectionWithCompletionHandler:0];
  }

  v6 = +[UIKeyboardImpl activeInstance];
  _layout = [v6 _layout];
  [_layout resetTouchProcessingForKeyboardChange];

  v8 = +[UIKeyboardImpl activeInstance];
  _layout2 = [v8 _layout];
  [_layout2 clearUnusedObjects:0];

  +[UIKBRenderer clearInternalCaches];
  v10 = +[UIKeyboardCache sharedInstance];
  [v10 commitTransaction];

  v11 = +[UIKeyboardCache sharedInstance];
  [v11 clearNonPersistentCache];
}

+ (void)applicationWillResignActive:(id)active
{
  v3 = +[UIKeyboard isSpotlight];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 dismissEmojiPopoverBeforeCleanup:v3];

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v5 scene];
  _effectiveUISettings = [scene _effectiveUISettings];
  [_effectiveUISettings deactivationReasons];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 dismissAutoFillPopover];

  v9 = +[UIKeyboardCache sharedInstance];
  [v9 commitTransaction];

  v10 = +[UIKeyboardCache sharedInstance];
  [v10 clearNonPersistentCache];

  v11 = +[UIKeyboardImpl activeInstance];
  _layout = [v11 _layout];
  [_layout clearTransientState];

  v13 = +[UIKeyboardImpl activeInstance];
  _layout2 = [v13 _layout];
  [_layout2 setCursorLocation:0];

  v15 = +[UIKeyboardImpl activeInstance];
  [v15 deactivateLayout];

  v16 = +[UIKeyboardImpl activeInstance];
  _layout3 = [v16 _layout];
  [_layout3 resetTouchProcessingForKeyboardChange];

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
  inputModeIndicatorController = [v24 inputModeIndicatorController];
  [inputModeIndicatorController willResignActive];
}

+ (void)applicationDidBecomeActive:(id)active
{
  v3 = +[UIKeyboardImpl activeInstance];
  _layout = [v3 _layout];
  [_layout setCursorLocation:258];

  v6 = +[UIKeyboardImpl activeInstance];
  _layout2 = [v6 _layout];
  [_layout2 updateTouchProcessingForKeyboardChange];
}

+ (void)applicationDidEnterBackground:(id)background
{
  v7 = +[UIKeyboardImpl activeInstance];
  _layout = [v7 _layout];
  [_layout resetTouchProcessingForKeyboardChange];

  [v7 cancelAllKeyEvents];
  [qword_1ED498A10 _updateSoundPreheatingForWindow:0];
  [v7 dismissEditingIntroductionView];
  [v7 dismissMultilingualKeyboardTip];
  [v7 dismissMultilingualSettingTip];
  [v7 dismissStickerEditor:0];
  keyboardStateManager = [v7 keyboardStateManager];
  [keyboardStateManager hostApplicationDidEnterBackground];

  v5 = UIKeyboardSupportsTouch;
  UIKeyboardSupportsTouch = 0;

  v6 = UIKeyboardCachedIsRightHandDrive;
  UIKeyboardCachedIsRightHandDrive = 0;
}

+ (void)applicationWillEnterForeground:(id)foreground
{
  _UIKBRT_ResetSystemUptimeOnResume();
  v3 = qword_1ED498A10;
  window = [qword_1ED498A10 window];
  [v3 _updateSoundPreheatingForWindow:window];

  v6 = +[UIKeyboardImpl activeInstance];
  keyboardStateManager = [v6 keyboardStateManager];
  [keyboardStateManager hostApplicationWillEnterForeground];
}

+ (void)applicationDidReceiveMemoryWarning:(id)warning
{
  warningCopy = warning;
  [UICompatibilityInputViewController applicationDidReceiveMemoryWarning:warningCopy];
}

+ (void)switchControlStatusDidChange:(id)change
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 reloadCurrentInputMode];
}

+ (Class)layoutClassForCurrentInputMode
{
  v3 = UIKeyboardGetCurrentInputMode();
  v4 = [self layoutClassForInputMode:v3 keyboardType:0 screenTraits:0];

  return v4;
}

+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode
{
  modeCopy = mode;
  keyboardScreen = [self keyboardScreen];
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  keyboardWindow = [v7 keyboardWindow];

  rootViewController = [keyboardWindow rootViewController];
  bottomEdgeView = [rootViewController bottomEdgeView];
  v80 = rootViewController;
  placement = [rootViewController placement];
  v81 = +[UIKeyboardImpl activeInstance];
  v78 = placement;
  v79 = bottomEdgeView;
  if (([placement showsInputViews] & 1) != 0 || objc_msgSend(placement, "isUndocked"))
  {
    [bottomEdgeView frame];
    if (v12 > 0.0)
    {
      [bottomEdgeView safeAreaInsets];
LABEL_7:
      v14 = v13;
      goto LABEL_9;
    }
  }

  if (keyboardWindow)
  {
    [keyboardWindow _managedSafeAreaInsets];
    goto LABEL_7;
  }

  keyboardWindow2 = [self keyboardWindow];
  [keyboardWindow2 _managedSafeAreaInsets];
  v14 = v16;

LABEL_9:
  [keyboardScreen _referenceBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [keyboardScreen _unjailedReferenceBounds];
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
      v30 = keyboardScreen;
      v31 = keyboardWindow;
      userInterfaceIdiom = [v29 userInterfaceIdiom];

      v33 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
      keyboardWindow = v31;
      keyboardScreen = v30;
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
  orientationCopy3 = orientation;
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
    if ((orientation - 3) <= 1 && (SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      identifier = [modeCopy identifier];
      if (UIKeyboardShouldAddMarginOnLandscapeLargePhoneKeyboard(identifier))
      {
        [keyboardScreen _referenceBounds];
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
  if ((orientation - 1) >= 2)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 75.0;
  }

  if ((orientation - 3) <= 1)
  {
    v44 = keyboardWindow;
    if ([modeCopy isExtensionInputMode])
    {
      v39 = v14;
    }

    else
    {
      v39 = v14 + -2.0;
    }

    identifier2 = [modeCopy identifier];
    v46 = [identifier2 hasPrefix:@"emoji"];

    if (v46)
    {
      v43 = 44.0;
    }

    else
    {
      keyboardScreen2 = [self keyboardScreen];
      traitCollection = [keyboardScreen2 traitCollection];
      userInterfaceIdiom2 = [traitCollection userInterfaceIdiom];

      v74 = userInterfaceIdiom2 == 3;
      orientationCopy3 = orientation;
      if (v74)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = 75.0;
      }
    }

    [keyboardScreen _referenceBounds];
    if (v75 >= 896.0)
    {
      v43 = v43 + 42.0;
    }

    keyboardWindow = v44;
  }

LABEL_37:
  if ([self shouldPadTopOfKeyboard])
  {
    v47 = 17.0;
  }

  else
  {
    v47 = 0.0;
  }

  keyboardScreen3 = [self keyboardScreen];
  traitCollection2 = [keyboardScreen3 traitCollection];
  userInterfaceIdiom3 = [traitCollection2 userInterfaceIdiom];
  if ((orientationCopy3 - 1) > 1 || userInterfaceIdiom3)
  {
  }

  else
  {
    v51 = +[UIKeyboardImpl activeInstance];
    _layout = [v51 _layout];
    if ([_layout isDynamicLayout])
    {
      v77 = keyboardScreen;
      v53 = keyboardWindow;
      _inheritedRenderConfig = [v81 _inheritedRenderConfig];
      if ([_inheritedRenderConfig colorAdaptiveBackground])
      {
        +[UIKeyboardInputModeController sharedInputModeController];
        v55 = v76 = modeCopy;
        currentInputMode = [v55 currentInputMode];
        v57 = [currentInputMode isEmojiInputMode] ^ 1;

        modeCopy = v76;
      }

      else
      {
        v57 = 0;
      }

      keyboardWindow = v53;
      keyboardScreen = v77;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v43 = v43 + 4.5;
    }

    orientationCopy3 = orientation;
  }

  _applicationClientComponent = [self _applicationClientComponent];
  [_applicationClientComponent minimumKeyboardPadding];
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
    if ((orientationCopy3 - 3) >= 2)
    {
      v43 = v65;
    }

    else
    {
      v43 = v66;
    }

    if ((orientationCopy3 - 3) >= 2)
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

+ (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode
{
  modeCopy = mode;
  v7 = 0.0;
  if ((_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    isExtensionInputMode = [modeCopy isExtensionInputMode];
    keyboardScreen = [objc_opt_class() keyboardScreen];
    v10 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:orientation];

    idiom = [v10 idiom];
    [self deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:modeCopy];
    v13 = v12 <= 0.0 || idiom == 3;
    v14 = 17.0;
    if (v13)
    {
      v14 = 0.0;
    }

    if (isExtensionInputMode)
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

- (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation
{
  v4 = objc_opt_class();

  [v4 defaultSizeForInterfaceOrientation:orientation];
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)deviceSpecificStaticHitBufferForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode
{
  modeCopy = mode;
  [objc_opt_class() deviceSpecificStaticHitBufferForInterfaceOrientation:orientation inputMode:modeCopy];
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

- (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(int64_t)orientation inputMode:(id)mode
{
  modeCopy = mode;
  [objc_opt_class() deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:modeCopy];
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

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation
{
  keyboardScreen = [objc_opt_class() keyboardScreen];
  v6 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:orientation];

  activeInstance = [objc_opt_class() activeInstance];
  textInputTraits = [activeInstance textInputTraits];

  if (textInputTraits)
  {
    keyboardType = [textInputTraits keyboardType];
  }

  else
  {
    keyboardType = 0;
  }

  if ([v6 idiom] == 2)
  {
    v10 = +[UIKeyboard activeKeyboard];
    if (v10)
    {
      v11 = +[UIKeyboard activeKeyboard];
      _useLinearLayout = [v11 _useLinearLayout];
    }

    else
    {
      _useLinearLayout = 0;
    }

    [v6 updateForLinearLayout:_useLinearLayout];
  }

  else if ([v6 idiom] == 3)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    [v6 updateForTextInputTraits:0 supportedInteractionModel:{objc_msgSend(v13, "requestedInteractionModel")}];
  }

  v14 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v14 currentInputMode];

  identifier = [currentInputMode identifier];
  v17 = [self layoutClassForInputMode:identifier keyboardType:keyboardType screenTraits:v6];

  identifier2 = [currentInputMode identifier];
  [v17 keyboardSizeForInputMode:identifier2 screenTraits:v6 keyboardType:keyboardType];
  v20 = v19;
  v22 = v21;

  [self topMarginForInterfaceOrientation:orientation];
  v24 = v22 + v23;
  [self deviceSpecificStaticHitBufferForInterfaceOrientation:orientation inputMode:currentInputMode];
  v26 = v24 + v25;

  v27 = v20;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation
{
  [self sizeForInterfaceOrientation:orientation ignoreInputView:0];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view
{
  v7 = +[UIPeripheralHost sharedInstance];
  loadAwareInputViews = [v7 loadAwareInputViews];

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v9 currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (!isExtensionInputMode)
  {
    goto LABEL_7;
  }

  inputViewController = [loadAwareInputViews inputViewController];
  view = [inputViewController view];
  [view bounds];
  v15 = v14;
  v17 = v16;

  if ([loadAwareInputViews isCustomInputView] && view || v17 <= 0.0)
  {
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode2 = [v18 currentInputMode];
    v20 = [UICompatibilityInputViewController inputSnapshotViewForInputMode:currentInputMode2 orientation:orientation];

    if (v20)
    {
      [v20 bounds];
      v15 = v21;
      v17 = v22;
LABEL_13:

      goto LABEL_14;
    }

LABEL_7:
    [self keyboardSizeForInterfaceOrientation:orientation];
    v15 = v23;
    v17 = v24;
    v25 = +[UIKeyboardImpl activeInstance];
    v20 = v25;
    if (v25)
    {
      _layout = [v25 _layout];

      if (_layout)
      {
        if (view)
        {
          isCustomInputView = 0;
        }

        else
        {
          isCustomInputView = [loadAwareInputViews isCustomInputView];
        }

        [self additionalInstanceHeightForInterfaceOrientation:orientation hasInputView:isCustomInputView];
        v29 = v28;
        [self topMarginForInterfaceOrientation:orientation];
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

+ (BOOL)keyboardOrientation:(int64_t)orientation isEquivalentToOrientation:(int64_t)toOrientation
{
  if (orientation && toOrientation)
  {
    return ((orientation - 3) < 2) ^ ((toOrientation - 5) < 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    return orientation == toOrientation;
  }
}

+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)orientation
{
  [self defaultSizeForInterfaceOrientation:?];
  v6 = v5;
  v8 = v7;
  v9 = +[UIKeyboardImpl activeInstance];
  _layout = [v9 _layout];

  [_layout frame];
  v12 = v11;
  if (_layout)
  {
    if (([_layout isDynamicLayout] & 1) == 0 && objc_msgSend(self, "keyboardOrientation:isEquivalentToOrientation:", objc_msgSend(_layout, "orientation"), orientation) && objc_msgSend(_layout, "isMemberOfClass:", objc_msgSend(self, "layoutClassForCurrentInputMode")) && v6 == v12)
    {
      [_layout frame];
      v6 = v14;
LABEL_10:
      v18 = v13;
      [self topMarginForInterfaceOrientation:orientation];
      v8 = v18 + v19;
      goto LABEL_11;
    }

    if (+[UIKeyboardImpl isSplit])
    {
      v15 = +[UIKeyboardImpl activeInstance];
      textInputTraits = [v15 textInputTraits];
      acceptsSplitKeyboard = [textInputTraits acceptsSplitKeyboard];

      if (acceptsSplitKeyboard)
      {
        [_layout frame];
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  if ([_layout idiom] == 3)
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
  normalizedEnabledInputModeIdentifiers = [v2 normalizedEnabledInputModeIdentifiers];

  return normalizedEnabledInputModeIdentifiers;
}

+ (double)topMarginForInterfaceOrientation:(int64_t)orientation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardImpl_topMarginForInterfaceOrientation___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED498A38 != -1)
  {
    dispatch_once(&qword_1ED498A38, block);
  }

  v5 = 0.0;
  if (([self isSplit] & 1) == 0 && (objc_msgSend(self, "isFloating") & 1) == 0)
  {
    v6 = qword_1ED498A30;
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v7 currentInputMode];
    normalizedIdentifier = [currentInputMode normalizedIdentifier];
    LOBYTE(v6) = [v6 containsObject:normalizedIdentifier];

    if ((v6 & 1) == 0)
    {
      v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v10 preferencesActions];
      currentInputModeSupportsCrescendo = [preferencesActions currentInputModeSupportsCrescendo];

      if ((currentInputModeSupportsCrescendo & 1) == 0)
      {
        if ((orientation - 3) >= 2)
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

+ (double)additionalInstanceHeightForInterfaceOrientation:(int64_t)orientation hasInputView:(BOOL)view
{
  if ([self shouldMergeAssistantBarWithKeyboardLayout])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v7 currentInputMode];
    isEmojiInputMode = [currentInputMode isEmojiInputMode];

    if (!isEmojiInputMode)
    {
      return 0.0;
    }
  }

  if (([qword_1ED498A10 disableInputBars] & 1) != 0 || view)
  {
    return 0.0;
  }

  if (!orientation)
  {
    orientation = +[UIKeyboardSceneDelegate interfaceOrientation];
  }

  [self topMarginForInterfaceOrientation:orientation];
  return result;
}

+ (double)additionalTopPaddingForRoundedKeyboard
{
  _layout = [qword_1ED498A10 _layout];
  [_layout keyplanePadding];
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
  inputViews = [v3 inputViews];

  inputAssistantView = [inputViews inputAssistantView];
  v6 = +[UIKeyboardImpl activeInstance];
  keyboardWindow = [objc_opt_class() keyboardWindow];
  isHidden = [inputAssistantView isHidden];
  _inheritedRenderConfig = [v6 _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];
  if (inputAssistantView)
  {
    v11 = isHidden;
  }

  else
  {
    v11 = 1;
  }

  if (colorAdaptiveBackground)
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
    isHidden = [v6 _layout];
    if (![isHidden idiom])
    {
      LOBYTE(v13) = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  if ([inputViews isRemoteKeyboard] & 1) != 0 || (objc_msgSend(self, "isFloating") & 1) != 0 || (objc_msgSend(self, "isSplit"))
  {
    LOBYTE(v13) = 0;
    if (v15 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  _layout = [v6 _layout];
  if ([_layout isHandwritingPlane])
  {
    goto LABEL_23;
  }

  _inheritedRenderConfig2 = [v6 _inheritedRenderConfig];
  if ([_inheritedRenderConfig2 animatedBackground])
  {
LABEL_22:

LABEL_23:
    LOBYTE(v13) = 0;
    goto LABEL_24;
  }

  _layout2 = [v6 _layout];
  if ([_layout2 idiom] == 3)
  {

    goto LABEL_22;
  }

  v22 = _layout2;
  v21 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v21 currentInputMode];
  if ([currentInputMode isEmojiInputMode])
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
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9778]];

  return v4;
}

- (void)setHardwareKeyboardIsSeen:(BOOL)seen
{
  if (seen && ![(UIKeyboardImpl *)self hardwareKeyboardIsSeen])
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v4 preferencesActions];
    [preferencesActions didTriggerOneTimeAction:*MEMORY[0x1E69D9778]];
  }
}

- (void)setCapsLockIfNeeded
{
  v3 = [UIApp _hardwareKeyboard:0];

  [(UIKeyboardImpl *)self _setCapsLockIfNeeded:v3 event:0];
}

- (void)setCapsLockIfNeededForPhysicalKeyboardEvent:(id)event
{
  v4 = [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:event createIfNeeded:0];

  [(UIKeyboardImpl *)self _setCapsLockIfNeeded:v4 event:0];
}

- (void)_setCapsLockIfNeeded:(__GSKeyboard *)needed event:(__IOHIDEvent *)event
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = GSKeyboardGetModifierState() & 0x40000;
  v7 = v6 == 0;
  if (event)
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

- (UIKeyboardImpl)initWithFrame:(CGRect)frame forCustomInputView:(BOOL)view
{
  viewCopy = view;
  v38 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = UIKeyboardImpl;
  v5 = [(UIView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
        if (viewCopy)
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
    v8 = [[_UIKeyboardStateManager alloc] initWithPresentationDelegateView:v6 forCustomInputView:viewCopy];
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
      hardwareInputMode = [v17 hardwareInputMode];
      automaticHardwareLayout = [hardwareInputMode automaticHardwareLayout];
      [v16 setHardwareKeyboardLayoutName:automaticHardwareLayout];

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_hardwareKeyboardAvailabilityDidChange_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

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

- (void)scribbleWillBeginWriting:(id)writing
{
  writingCopy = writing;
  if ([(UIKeyboardImpl *)self isEmojiPopoverBeingPresented]|| [(UIKeyboardImpl *)self isEmojiPopoverPresented]&& ![(UIKeyboardImpl *)self isEmojiPopoverBeingDismissed])
  {
    object = [writingCopy object];
    view = [(UIViewController *)self->_emojiPopoverController view];
    v6 = [object isDescendantOfView:view];

    if ((v6 & 1) == 0)
    {
      [(UIKeyboardImpl *)self dismissEmojiPopoverIfNecessaryWithCompletion:0];
    }
  }
}

- (void)keyboardDidHide:(id)hide
{
  v10 = +[UIPeripheralHost sharedInstance];
  if ([v10 isRotating])
  {
LABEL_4:

    return;
  }

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (keyInputDelegate)
  {

    goto LABEL_4;
  }

  candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
  candidates = [candidateResultSet candidates];
  v8 = [candidates count];

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
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop cancelPerformSelectorsWithTarget:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
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
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v5 names:?];

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
  presentingViewController = [(UIViewController *)self->_emojiPopoverController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];

  emojiPopoverController = self->_emojiPopoverController;
  self->_emojiPopoverController = 0;

  presentingViewController2 = [(UIViewController *)self->_dictationPopoverController presentingViewController];
  [presentingViewController2 dismissViewControllerAnimated:0 completion:0];

  dictationPopoverController = self->_dictationPopoverController;
  self->_dictationPopoverController = 0;

  presentingViewController3 = [(UIViewController *)self->_pressAndHoldPopoverController presentingViewController];
  [presentingViewController3 dismissViewControllerAnimated:0 completion:0];

  pressAndHoldPopoverController = self->_pressAndHoldPopoverController;
  self->_pressAndHoldPopoverController = 0;

  presentingViewController4 = [(UIViewController *)self->_numberpadPopoverController presentingViewController];
  [presentingViewController4 dismissViewControllerAnimated:0 completion:0];

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
    layer = [v13 layer];
    v15 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [layer removeObserver:self forKeyPath:@"bounds" context:v15];

    objc_storeWeak(&self->_overlayContainerObserved, 0);
  }

  keyboardFeedbackAssistantViewController = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];

  if (keyboardFeedbackAssistantViewController)
  {
    [(UIKeyboardImpl *)self dismissKeyboardFeedbackAssistantViewController];
  }

  if (os_variant_has_internal_diagnostics())
  {
    inputTeletypeKeyboard = [(UIKeyboardImpl *)self inputTeletypeKeyboard];
    [inputTeletypeKeyboard invalidate];

    [(UIKeyboardImpl *)self setInputTeletypeKeyboard:0];
  }

  v20.receiver = self;
  v20.super_class = UIKeyboardImpl;
  [(UIView *)&v20 dealloc];
}

- (void)clearLayouts
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (!keyInputDelegate)
  {

    goto LABEL_7;
  }

  v5 = keyInputDelegate;
  autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
  autocorrection = [autocorrectionController autocorrection];
  if (autocorrection)
  {
  }

  else
  {
    _hasMarkedText = [(UIKeyboardImpl *)self _hasMarkedText];

    if (!_hasMarkedText)
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
  superview = [(UIView *)self superview];

  if (superview)
  {
    [(UIKeyboardImpl *)self deactivateLayout];
    [(UIKeyboardLayout *)self->m_layout resetTouchProcessingForKeyboardChange];
  }

  [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
  v4.receiver = self;
  v4.super_class = UIKeyboardImpl;
  [(UIView *)&v4 removeFromSuperview];
}

- (void)applicationSuspendedEventsOnly:(id)only
{
  [(UIKeyboardImpl *)self setCaretBlinks:0];
  if (qword_1ED498A40 != -1)
  {
    dispatch_once(&qword_1ED498A40, &__block_literal_global_384);
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v4 scene];
  _effectiveUISettings = [scene _effectiveUISettings];
  deactivationReasons = [_effectiveUISettings deactivationReasons];

  v8 = -262184;
  if (!_MergedGlobals_73)
  {
    v8 = -1;
  }

  if ((v8 & deactivationReasons) != 0)
  {
    if ([(UIKeyboardImpl *)self usesCandidateSelection])
    {
      [(UIKeyboardImpl *)self acceptAutocorrectionWithCompletionHandler:0];
    }

    [(UIKeyboardImpl *)self clearChangeTimeAndCount];
  }
}

- (void)applicationResumedEventsOnly:(id)only
{
  [(UIKeyboardImpl *)self applicationResumed:only];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
  {
    v4 = UIApp;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    hardwareInputMode = [v5 hardwareInputMode];
    automaticHardwareLayout = [hardwareInputMode automaticHardwareLayout];
    [v4 setHardwareKeyboardLayoutName:automaticHardwareLayout];

    [(UIKeyboardImpl *)self setCapsLockIfNeeded];
  }
}

- (void)_forwardScrollEventToUIHost:(SEL)host scrollView:(id)view
{
  viewCopy = view;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.a = *MEMORY[0x1E695EFD0];
  *&v28.c = v7;
  *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v27.a = *&v28.a;
  *&v27.c = v7;
  *&v27.tx = *&v28.tx;
  contentScrollInitialContentOffset = [(UIKeyboardImpl *)self contentScrollInitialContentOffset];

  if (contentScrollInitialContentOffset)
  {
    contentScrollInitialContentOffset2 = [(UIKeyboardImpl *)self contentScrollInitialContentOffset];
    [contentScrollInitialContentOffset2 CGPointValue];
    v11 = v10;
    v13 = v12;

    [viewCopy contentOffset];
    CGAffineTransformMakeTranslation(&v28, v11 - v14, v13 - v15);
  }

  environmentScrollInitialContentOffset = [(UIKeyboardImpl *)self environmentScrollInitialContentOffset];

  if (environmentScrollInitialContentOffset)
  {
    environmentScrollInitialContentOffset2 = [(UIKeyboardImpl *)self environmentScrollInitialContentOffset];
    [environmentScrollInitialContentOffset2 CGPointValue];
    v19 = v18;
    v21 = v20;

    [viewCopy contentOffset];
    CGAffineTransformMakeTranslation(&v27, v19 - v22, v21 - v23);
  }

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v26 = v28;
  v25 = v27;
  [remoteTextInputPartner forwardScrollEventToUIHost:host contentTransform:&v26 environmentTransform:&v25];
}

- (void)selectionScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  name = [scrollingCopy name];
  v6 = [name isEqualToString:@"UITextSelectionWillScroll"];

  object = [scrollingCopy object];

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

    [(UIKeyboardImpl *)self _forwardScrollEventToUIHost:v7 scrollView:object];
  }

  else
  {
    [(UIKeyboardImpl *)self _selectionScrolling:v6 scroller:object];
  }
}

- (void)_selectionScrolling:(BOOL)scrolling scroller:(id)scroller
{
  scrollingCopy = scrolling;
  scrollerCopy = scroller;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  if (objc_opt_respondsToSelector())
  {
    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    textInputView = [inputDelegate2 textInputView];
  }

  else
  {
    textInputView = 0;
  }

  v9 = +[UIKeyboard isKeyboardProcess];
  if (!scrollerCopy && v9)
  {
    scrollerCopy = textInputView;
  }

  window = [(UIKeyboardImpl *)self window];
  if (!window || !textInputView)
  {
    goto LABEL_50;
  }

  v11 = [textInputView isDescendantOfView:scrollerCopy];

  if (!v11)
  {
    goto LABEL_51;
  }

  m_scrolling = self->m_scrolling;
  self->m_scrolling = scrollingCopy;
  keyboardState = [(UIKeyboardImpl *)self keyboardState];
  if (![keyboardState autofillMode] || !+[UIKeyboard isAutoFillPanelUIEnabled](UIKeyboard, "isAutoFillPanelUIEnabled") || +[UIKeyboard isAlwaysBlockedAutoFillPanelClient](UIKeyboard, "isAlwaysBlockedAutoFillPanelClient"))
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

  if (m_scrolling != scrollingCopy && (v14 & 1) == 0)
  {
    keyboardState = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [keyboardState documentStateChanged];
LABEL_19:
  }

  superview = [(UIView *)self->m_autocorrectPrompt superview];

  if (superview)
  {
    autocorrectBubbleContainer2 = self->m_autocorrectPrompt;
LABEL_24:
    window = autocorrectBubbleContainer2;
    goto LABEL_25;
  }

  autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  superview2 = [autocorrectBubbleContainer superview];

  if (superview2)
  {
    autocorrectBubbleContainer2 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    goto LABEL_24;
  }

  window = 0;
LABEL_25:
  if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    if (m_scrolling != scrollingCopy && self->m_scrolling && !+[UIKeyboard usesInputSystemUI])
    {
      _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant textWillBeginScrolling];
    }

    if (self->m_scrolling || !+[UIKeyboard usesInputSystemUI])
    {
      _textChoicesAssistant2 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant2 updateActivePromptForCandidate:0 displayRects:0 highlightOnly:0];

      _textChoicesAssistant3 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant3 dismissIfPresented];
    }

    if (m_scrolling != scrollingCopy && !self->m_scrolling && !+[UIKeyboard usesInputSystemUI])
    {
      _textChoicesAssistant4 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant4 textDidEndScrolling];
    }
  }

  if (!window)
  {
    goto LABEL_50;
  }

  if (self->m_scrolling)
  {
    v10Window = [window window];
    _isTextEffectsWindow = [v10Window _isTextEffectsWindow];

    if (_isTextEffectsWindow)
    {
      v10Window2 = [window window];
      [window frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      superview3 = [window superview];
      [v10Window2 convertRect:superview3 fromView:{v27, v29, v31, v33}];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v10Window3 = [window window];
      [v10Window3 convertRect:scrollerCopy toView:{v36, v38, v40, v42}];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      [window removeFromSuperview];
      [window setFrame:{v45, v47, v49, v51}];
      [scrollerCopy addSubview:window];
    }

    goto LABEL_50;
  }

  superview4 = [window superview];
  if (superview4 == scrollerCopy)
  {
    goto LABEL_47;
  }

  superview5 = [window superview];
  inputDelegate3 = [(UIKeyboardImpl *)self inputDelegate];
  textInputView2 = [inputDelegate3 textInputView];
  v56 = textInputView2;
  if (superview5 == textInputView2)
  {

LABEL_47:
LABEL_48:
    [window removeFromSuperview];
    if (!+[UIKeyboard isKeyboardProcess])
    {
      [(UIKeyboardImpl *)self updateCandidateDisplay];
    }

    goto LABEL_50;
  }

  v10Window4 = [window window];
  _isTextEffectsWindow2 = [v10Window4 _isTextEffectsWindow];

  if (_isTextEffectsWindow2)
  {
    goto LABEL_48;
  }

LABEL_50:

LABEL_51:
}

- (void)didCompleteUpdateDefaults
{
  v4 = +[UIPeripheralHost sharedInstance];
  isOnScreen = [v4 isOnScreen];
  if ((isOnScreen & 1) == 0)
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

    if (isOnScreen)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = +[UIKeyboard usesInputSystemUI];

  if ((isOnScreen & 1) == 0)
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

- (CGRect)frameForKeylayoutName:(id)name
{
  nameCopy = name;
  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  rtiInputSourceState = [remoteTextInputPartner rtiInputSourceState];

  if (!rtiInputSourceState)
  {
    goto LABEL_7;
  }

  if (![nameCopy isEqualToString:@"split-left"])
  {
    if ([nameCopy isEqualToString:@"split-right"])
    {
      [rtiInputSourceState rightSplitFrame];
      goto LABEL_6;
    }

LABEL_7:
    v15 = [(NSMutableDictionary *)self->m_keyedLayouts objectForKey:objc_opt_class()];
    [v15 frameForKeylayoutName:nameCopy];
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;

    goto LABEL_8;
  }

  [rtiInputSourceState leftSplitFrame];
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

- (CGRect)dragGestureRectInView:(id)view
{
  m_layout = self->m_layout;
  viewCopy = view;
  if (m_layout)
  {
    [(UIKeyboardLayout *)m_layout dragGestureRectInView:viewCopy];
  }

  else
  {
    [(UIView *)self bounds];
    [(UIView *)self convertRect:viewCopy toView:v10 + v11 + -80.0, v12 + v13 + -80.0, 80.0, 80.0];
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

+ (void)refreshRivenStateWithTraits:(id)traits isKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  traitsCopy = traits;
  SafeDeviceIdiom = UIKeyboardGetSafeDeviceIdiom();
  v6 = traitsCopy;
  byte_1ED4989F2 = (SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if ((SafeDeviceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (traitsCopy && (byte_1ED4989F8 = UIKeyboardTraitsCanSplit(traitsCopy), (byte_1ED4989F2 & 1) == 0))
    {
      v9 = 0;
      byte_1ED4989FC = 0;
    }

    else
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v7 preferencesActions];
      byte_1ED4989FC = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D9940]];

      v9 = byte_1ED4989FC;
    }

    byte_1ED498A00 = v9;
    byte_1ED4989F8 = UIKeyboardDeviceSupportsSplit();
    byte_1ED4989FC &= byte_1ED4989F8;
    +[UIKeyboardImpl persistentSplitProgress];
    byte_1ED4989E8 = 1.0 - v10 < 0.00000011920929;
    if (keyboardCopy)
    {
      byte_1ED4989FC &= UIKeyboardSupportsSplit();
    }

    if (traitsCopy)
    {
      acceptsSplitKeyboard = [traitsCopy acceptsSplitKeyboard];
      byte_1ED4989FC &= acceptsSplitKeyboard;
      byte_1ED4989FC &= UIKeyboardTraitsCanSplit(traitsCopy);
      acceptsFloatingKeyboard = [traitsCopy acceptsFloatingKeyboard];
      byte_1ED498A00 &= acceptsFloatingKeyboard;
      byte_1ED498A00 &= UIKeyboardTraitsCanSplit(traitsCopy);
      [traitsCopy floatingKeyboardEdgeInsets];
      qword_1ED498A48 = v13;
      unk_1ED498A50 = v14;
      qword_1ED498A58 = v15;
      unk_1ED498A60 = v16;
    }

    v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v17 preferencesActions];
    v19 = [preferencesActions2 BOOLForPreferenceKey:*MEMORY[0x1E69D9858]];

    v20 = (v19 & 1) != 0 || +[UIKeyboardImpl isFloatingForced];
    byte_1ED498A08 = v20;
    v6 = traitsCopy;
  }
}

- (BOOL)rivenSplitLock
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D9C30]];

  return v4;
}

- (void)setRivenSplitLock:(BOOL)lock
{
  lockCopy = lock;
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  handlingRemoteEvent = [v5 handlingRemoteEvent];

  if ((handlingRemoteEvent & 1) == 0)
  {
    v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v9 preferencesActions];
    keyboardState = [(UIKeyboardImpl *)self keyboardState];
    [preferencesActions updateKeyboardIsSplit:objc_msgSend(keyboardState locked:{"splitKeyboardMode"), lockCopy}];
  }
}

+ (BOOL)supportsFloating
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  isKeyboardOnEmbeddedScreen = [v2 isKeyboardOnEmbeddedScreen];

  v4 = qword_1ED498A68++;
  if (v4 < 1)
  {
    v7 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    --qword_1ED498A68;
    if ((v7 & isKeyboardOnEmbeddedScreen) != 1)
    {
      return 0;
    }
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    --qword_1ED498A68;
    if ((((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1) & isKeyboardOnEmbeddedScreen) == 0)
    {
      return 0;
    }
  }

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v8 preferencesActions];
  v10 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D9840]];

  if (!v10)
  {
    return 0;
  }

  textInputTraits = [qword_1ED498A10 textInputTraits];
  v12 = textInputTraits;
  if (textInputTraits)
  {
    acceptsSplitKeyboard = [textInputTraits acceptsSplitKeyboard];
  }

  else
  {
    acceptsSplitKeyboard = 1;
  }

  if ([v12 keyboardAppearance] == 127 || objc_msgSend(v12, "keyboardType") == 12 || objc_msgSend(v12, "keyboardType") == 125)
  {
    acceptsSplitKeyboard = 0;
  }

  return acceptsSplitKeyboard;
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

+ (void)performWithoutFloatingLock:(id)lock
{
  v3 = qword_1ED498A10;
  lockCopy = lock;
  isFloatingLocked = [v3 isFloatingLocked];
  [qword_1ED498A10 setLockFloating:0];
  lockCopy[2](lockCopy);

  v6 = qword_1ED498A10;

  [v6 setLockFloating:isFloatingLocked];
}

+ (void)setFloating:(BOOL)floating
{
  floatingCopy = floating;
  if ([self supportsFloating])
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    keyboardActive = [v5 keyboardActive];

    if (keyboardActive)
    {
      v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v7 preferencesActions];
      [preferencesActions updateKeyboardIsFloating:floatingCopy];

      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions2 = [v9 preferencesActions];
      [preferencesActions2 synchronizePreferences];
    }

    v11 = byte_1ED498A08;
    byte_1ED498A08 = floatingCopy;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v12 preferencesActions];
    [preferencesActions3 synchronizePreferences];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v14 = +[UIKeyboardImpl activeInstance];
      remoteTextInputPartner = [v14 remoteTextInputPartner];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:floatingCopy];
      [remoteTextInputPartner forwardKeyboardOperation:a2 object:v16];
    }

    if (v11 != floatingCopy)
    {
      v17 = +[UIKeyboardImpl activeInstance];
      [v17 acceptHandwritingCandidate];

      v18 = +[UIKeyboardImpl activeInstance];
      isUsingDictationLayout = [v18 isUsingDictationLayout];

      if ((isUsingDictationLayout & 1) == 0)
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
    systemInputAssistantViewController = [v23 systemInputAssistantViewController];

    [systemInputAssistantViewController prepareForFloating:floatingCopy];
    v24 = +[UIKeyboardImpl sharedInstance];
    [v24 updateLayout];

    v25 = +[UIKeyboardImpl activeInstance];
    keyboardStateManager = [v25 keyboardStateManager];
    [keyboardStateManager refreshAutofillModeIfNecessary];

    v27 = +[UIKeyboardImpl activeInstance];
    [v27 syncInputManagerToKeyboardState];

    v28 = +[UIKeyboardImpl activeInstance];
    keyboardStateManager2 = [v28 keyboardStateManager];
    [keyboardStateManager2 refreshSecureCandidatesIfNecessary];
  }
}

+ (void)setFloating:(BOOL)floating positionedAtDefaultOffsetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  floatingCopy = floating;
  if (floating)
  {
    +[UIKeyboardImpl floatingPersistentOffset];
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [self setFloating:floatingCopy positionedAtOffset:animatedCopy animated:{v7, v8}];
}

+ (void)setFloating:(BOOL)floating positionedAtOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  [UIKeyboardImpl setFloating:floating];
  v8 = +[UIPeripheralHost sharedInstance];
  [v8 setUndockedWithOffset:animatedCopy animated:{x, y}];
}

+ (double)floatingWidth
{
  if ([self floatingIdiom] != 1)
  {
    return 320.0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _pointsPerInch];

  mainScreen2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen2);
  v5 = v4;

  return v5;
}

+ (double)floatingHeight
{
  if ([self floatingIdiom] != 1)
  {
    return -1.0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _pointsPerInch];

  mainScreen2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen2);
  v5 = v4;

  return v5;
}

+ (double)floatingScreenWidthToEmulate
{
  if ([self floatingIdiom] != 1)
  {
    return 320.0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
  v4 = v3;

  return v4;
}

+ (double)keyboardWidthForScreen:(id)screen withOrientation:(int64_t)orientation
{
  screenCopy = screen;
  if ([self isFloating])
  {
    [self floatingWidth];
    v8 = v7;
  }

  else
  {
    [screenCopy _boundsForInterfaceOrientation:orientation];
    v8 = v9;
  }

  return v8;
}

- (void)beginFloatingTransitionFromPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  window = [(UIKeyboardImpl *)self window];
  if (window)
  {
    selfCopy = self;
  }

  else
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    inputViews = [v6 inputViews];
    selfCopy = [inputViews inputView];
  }

  _rootInputWindowController = [(UIView *)selfCopy _rootInputWindowController];
  [_rootInputWindowController beginFloatingTransitionFromPanGestureRecognizer:recognizerCopy];
}

- (BOOL)shouldAllowTwoFingerSelectionGestureOnView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy && (viewCopy == self || [(UIView *)viewCopy isDescendantOfView:self]|| [(UIView *)self isDescendantOfView:v5]))
  {
    v6 = !+[UIKeyboardImpl isFloating];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)setInSplitKeyboardMode:(BOOL)mode
{
  modeCopy = mode;
  keyboardState = [(UIKeyboardImpl *)self keyboardState];
  [keyboardState setSplitKeyboardMode:modeCopy];

  v6 = +[UIKeyboardImpl isSplit];
  screenTraits = [(UIKeyboardLayout *)self->m_layout screenTraits];
  [screenTraits setIsSplit:v6];
}

- (void)setSplitProgress:(double)progress
{
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout setSplitProgress:progress];
  }
}

+ (void)setPersistentSplitProgress:(double)progress
{
  byte_1ED4989E8 = progress > 0.5;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  keyboardActive = [v4 keyboardActive];

  if (keyboardActive)
  {
    v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v6 preferencesActions];
    [preferencesActions updateKeyboardIsSplit:progress > 0.00000011920929 locked:0];
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 setInSplitKeyboardMode:progress > 0.00000011920929];

  v9 = +[UIKeyboardImpl activeInstance];
  [v9 syncInputManagerToKeyboardState];
}

+ (CGPoint)_normalizedScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
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

+ (CGPoint)_screenPointFromNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
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

+ (void)setPersistentOffset:(CGPoint)offset
{
  if ((byte_1ED498A02 & 1) == 0)
  {
    y = offset.y;
    x = offset.x;
    [self normalizedPersistentOffset];
    if (v7 != x || v6 != y)
    {
      +[UIKeyboardImpl persistentSplitProgress];
      if (fabs(y) < 6.0 && v9 == 0.0)
      {
        y = 0.0;
      }

      v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      keyboardActive = [v11 keyboardActive];

      if (keyboardActive)
      {
        if (+[UIKeyboardImpl isFloating])
        {
          [UIKeyboardImpl setFloatingPersistentOffset:x, y];
        }

        else if (byte_1ED4989F8 == 1)
        {
          [self _normalizedScreenPoint:{x, y}];
          v14 = v13;
          v16 = v15;
          v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions = [v17 preferencesActions];
          [preferencesActions setKeyboardPosition:{v14, v16}];

          v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions2 = [v19 preferencesActions];
          [preferencesActions2 synchronizePreferences];
        }
      }

      if (y == 0.0 && ([self isSplit] & 1) == 0)
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
  preferencesActions = [v2 preferencesActions];
  [preferencesActions keyboardPosition];
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

+ (CGPoint)defaultUndockedOffsetForFloating:(BOOL)floating
{
  v3 = 0.0;
  if (floating)
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
  preferencesActions = [v3 preferencesActions];
  [preferencesActions floatingKeyboardPosition];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x1E695EFF8] && v8 == *(MEMORY[0x1E695EFF8] + 8))
  {
    [self defaultUndockedOffsetForFloating:1];

    [self _normalizedScreenPoint:?];
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
  preferencesActions = [v3 preferencesActions];
  [preferencesActions floatingKeyboardPosition];
  v6 = v5;
  v8 = v7;

  [self _screenPointFromNormalizedPoint:{v6, v8}];
  result.y = v10;
  result.x = v9;
  return result;
}

+ (void)setFloatingPersistentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  keyboardActive = [v6 keyboardActive];

  if (keyboardActive)
  {
    [self _normalizedScreenPoint:{x, y}];
    v9 = v8;
    v11 = v10;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v12 preferencesActions];
    [preferencesActions floatingKeyboardPosition];
    v15 = v14;
    v17 = v16;

    if (v15 != v9 || v17 != v11)
    {
      v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions2 = [v19 preferencesActions];
      [preferencesActions2 setFloatingKeyboardPosition:{v9, v11}];

      v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions3 = [v22 preferencesActions];
      [preferencesActions3 synchronizePreferences];
    }
  }
}

- (BOOL)hideAccessoryViewsDuringSplit
{
  v3 = +[UIPeripheralHost sharedInstance];
  inputViews = [v3 inputViews];
  supportsSplit = [inputViews supportsSplit];

  if (supportsSplit)
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
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  if ([delegateAsResponder _suppressSoftwareKeyboard])
  {
    v4 = [(UIKeyboardImpl *)self _textInputSourceForDelegate:delegateAsResponder]== 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_textInputSourceForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    _textInputSource = [delegateCopy _textInputSource];
  }

  else
  {
    _textInputSource = 0;
  }

  return _textInputSource;
}

- (void)_updateTextInputPencilSource
{
  v2 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  [v2 updateEventSource:3 options:5];
}

- (void)updateTextInputKeyboardSource:(id)source
{
  sourceCopy = source;
  v4 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  v5 = [sourceCopy objectForKeyedSubscript:@"inputSource"];
  intValue = [v5 intValue];
  v7 = [sourceCopy objectForKeyedSubscript:@"options"];
  [v4 updateEventSource:intValue options:{objc_msgSend(v7, "intValue")}];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v8 remoteTextInputPartner];
    [remoteTextInputPartner forwardKeyboardOperation:a2 object:sourceCopy];
  }
}

- (BOOL)_shouldLoadPredictionsBasedOnCurrentTraits
{
  if ([(UIKeyboardImpl *)self predictionFromPreference])
  {
    prewarmsPredictiveCandidates = [(UIKeyboardImpl *)self prewarmsPredictiveCandidates];
    if (prewarmsPredictiveCandidates)
    {
LABEL_3:
      textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      autocorrectionType = [textInputTraits autocorrectionType];

      if (!prewarmsPredictiveCandidates)
      {
      }

      if (autocorrectionType == 1)
      {
        goto LABEL_6;
      }

      textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v8 = [textInputTraits2 isSecureTextEntry] ^ 1;
LABEL_12:

      return v8;
    }

    textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (([textInputTraits2 disablePrediction] & 1) == 0)
    {
      textInputTraits3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      if (![textInputTraits3 hidePrediction])
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
  superview = [(UIView *)self superview];
  v2Superview = [superview superview];
  __viewDelegate = [(UIView *)v2Superview __viewDelegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = __viewDelegate;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)UILanguagePreference
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    v3 = [preferredLanguages objectAtIndex:0];
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
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D96F0]];

  return v4;
}

- (void)setAutomaticMinimizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIKeyboardImpl *)self automaticMinimizationEnabled]!= enabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
    if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->m_geometryDelegate), v8 = [v7 shouldSaveMinimizationState], v7, v6, v8))
    {
      self->m_automaticMinimizationEnabled = enabledCopy;
      v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      handlingRemoteEvent = [v9 handlingRemoteEvent];

      if ((handlingRemoteEvent & 1) == 0)
      {
        v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions = [v12 preferencesActions];
        [preferencesActions setAutomaticMinimizationEnabled:enabledCopy];
      }
    }
  }
}

- (void)saveInputModesPreference:(id)preference
{
  preferenceCopy = preference;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  [preferencesActions saveInputModes:preferenceCopy];
}

- (id)inputModePreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  activeInputModeIdentifiers = [v2 activeInputModeIdentifiers];

  return activeInputModeIdentifiers;
}

- (id)inputModeLastUsedPreference
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputModeInPreference = [v2 currentInputModeInPreference];
  identifier = [currentInputModeInPreference identifier];

  return identifier;
}

- (void)postInputViewControllerShouldUpdateNotification:(id)notification
{
  notificationCopy = notification;
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  if (keyInputDelegate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (notificationCopy)
    {
      [dictionary setObject:notificationCopy forKey:@"UICompatibilityInputViewControllerInputModeKey"];
    }

    keyboardWindow = [objc_opt_class() keyboardWindow];
    screen = [keyboardWindow screen];

    if (screen)
    {
      [dictionary setObject:screen forKey:@"UICompatibilityInputViewControllerScreenKey"];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UICompatibilityInputViewControllerShouldUpdateNotification" object:0 userInfo:dictionary];
  }
}

- (void)updateForHandBiasChange
{
  if ([(UIKeyboardImpl *)self showsCandidateBar])
  {
    candidateController = [(UIKeyboardImpl *)self candidateController];
    [candidateController updateStates];
  }
}

- (void)reinitializeAfterInputModeSwitch:(BOOL)switch
{
  switchCopy = switch;
  if ([(UIKeyboardImpl *)self isMinimized]&& ![(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached])
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if ([textInputTraits isSecureTextEntry])
    {
    }

    else
    {
      isPredictionViewControllerVisible = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];

      if (!isPredictionViewControllerVisible)
      {
        self->m_updateLayoutOnShowKeyboard = 1;
        if (!switchCopy)
        {
          return;
        }

        goto LABEL_7;
      }
    }
  }

  [(UIKeyboardImpl *)self _updateLayoutAndLocalizedKeys];
  [(UIKeyboardImpl *)self updateShowCandidateBar];
  if (!switchCopy)
  {
    return;
  }

LABEL_7:

  [(UIKeyboardImpl *)self updateInputModeIndicatorOnSingleKeyOnly:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  emojiPopoverController = self->_emojiPopoverController;
  presentedViewController = [dismissCopy presentedViewController];

  if (emojiPopoverController == presentedViewController && (-[UIKeyboardEmojiPopoverController layout](self->_emojiPopoverController, "layout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasActiveKeys], v7, v8) && !+[UIKeyboard isRemoteEmojiCollectionViewEnabled](UIKeyboard, "isRemoteEmojiCollectionViewEnabled"))
  {
    v36 = MEMORY[0x1E69E58C0];
    layout = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
    [v36 cancelPreviousPerformRequestsWithTarget:layout selector:sel_deactivateActiveKeys object:0];

    layout2 = [(UIKeyboardEmojiPopoverController *)self->_emojiPopoverController layout];
    [layout2 performSelector:sel_deactivateActiveKeys withObject:0 afterDelay:0.0];

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  numberpadPopoverController = self->_numberpadPopoverController;
  presentedViewController2 = [dismissCopy presentedViewController];
  if (numberpadPopoverController != presentedViewController2)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [dismissCopy _dismissalInteractionLocation];
    v15 = v14;
    v16 = v13;
    if (v14 != 1.79769313e308 || v13 != 1.79769313e308)
    {
      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      presentedViewController2 = [inputDelegateManager textInputView];

      [(UIKeyboardNumberpadPopoverController *)presentedViewController2 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      keyboardWindow = [objc_opt_class() keyboardWindow];
      [(UIKeyboardNumberpadPopoverController *)presentedViewController2 convertRect:keyboardWindow toView:v20, v22, v24, v26];
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

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = dismissCopy;
  if (isKindOfClass)
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    if (self->_dictationPopoverController == presentedViewController2)
    {
      v8 = +[UIDictationController activeInstance];
      [v8 stopDictation];
    }

    [(UIKeyboardImpl *)self cleanupKeyboardPopover:presentedViewController2];

    v6 = dismissCopy;
  }
}

- (BOOL)isEmojiPopoverVisibleOrDismissing
{
  presentingViewController = [(UIViewController *)self->_emojiPopoverController presentingViewController];
  v3 = presentingViewController != 0;

  return v3;
}

- (BOOL)canPresentEmojiPopover
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardByOneness]|| ![(UIKeyboardImpl *)self isMinimized])
  {
    return 0;
  }

  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  if (inputDelegate && UIKeyboardIsEmojiInputModeActive() && (_UIApplicationIsFirstPartyStickers() & 1) == 0)
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
  isMinimized = [(UIKeyboardImpl *)self isMinimized];
  if (isMinimized)
  {
    isMinimized = [(UIKeyboardImpl *)self isCurrentEditResponderInEditingMode];
    if (isMinimized)
    {
      if (UIKeyboardIsEmojiInputModeActive())
      {
        LOBYTE(isMinimized) = 1;
      }

      else
      {

        LOBYTE(isMinimized) = [(UIKeyboardImpl *)self isEmojiPopoverPresented];
      }
    }
  }

  return isMinimized;
}

- (void)presentEmojiPopoverViaTrigger:(id)trigger completion:(id)completion
{
  triggerCopy = trigger;
  completionCopy = completion;
  if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else if ([(UIKeyboardImpl *)self canPresentEmojiPopover])
  {
    [(UIKeyboardImpl *)self dismissDictationPopoverAndCancelDictation];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__UIKeyboardImpl_presentEmojiPopoverViaTrigger_completion___block_invoke;
    v18[3] = &unk_1E70F0F78;
    v19 = completionCopy;
    [(UIKeyboardImpl *)self presentKeyboardPopoverWithType:0 keyString:0 completion:v18];
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    if (inputDelegate)
    {
      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      selectedTextRange = [inputDelegateManager selectedTextRange];
      start = [selectedTextRange start];

      tokenizer = [inputDelegate tokenizer];
      v13 = [tokenizer positionFromPosition:start toBoundary:0 inDirection:1];

      if (v13)
      {
        v14 = [inputDelegate textRangeFromPosition:v13 toPosition:start];
        inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
        v16 = [inputDelegateManager2 textInRange:v14];

        _containsEmoji = [v16 _containsEmoji];
      }

      else
      {
        _containsEmoji = 0;
      }
    }

    else
    {
      _containsEmoji = 0;
    }

    [UIKBAnalyticsDispatcher emojiPopoverSummoned:triggerCopy appendsEmoji:_containsEmoji];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
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

- (void)_handleAutoFillPopoverCommandWithType:(int)type action:(SEL)action
{
  v5 = *&type;
  if ((type - 3) >= 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardImpl.m" lineNumber:3212 description:{@"Invalid parameter not satisfying: %@", @"isAutoFillKeyboardPopoverType(type)"}];
  }

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v7 assertNeedsAutofillUI];

    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardInputDestinationEventToUIHost:action];
  }

  else if (!+[UIKeyboard useAutoFillUIRTIInterfaceForIphone])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    localAuthenticationObserver = [v8 localAuthenticationObserver];

    if (([localAuthenticationObserver localAuthenticationPresentedOrBeingRecoveredFrom] & 1) == 0)
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
          inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
          documentTraits = [inputSystemSourceSession documentTraits];
          currentRTIDocumentTraitsForAutoFillPanel = [documentTraits copy];
        }

        else
        {
          currentRTIDocumentTraitsForAutoFillPanel = [MEMORY[0x1E69C6F40] currentRTIDocumentTraitsForAutoFillPanel];
        }

        _rtiDocumentStateForAutoFillPopover = [(_UIKeyboardStateManager *)self->_keyboardStateManager _rtiDocumentStateForAutoFillPopover];
        [currentRTIDocumentTraitsForAutoFillPanel setAutofillMode:{-[UIKeyboardImpl _autoFillModeForPopoverType:](self, "_autoFillModeForPopoverType:", v5)}];
        [currentRTIDocumentTraitsForAutoFillPanel setExplicitAutoFillMode:{-[UIKeyboardImpl _isAutoFillPopoverTypeExplicit:](self, "_isAutoFillPopoverTypeExplicit:", v5)}];
        v16 = self->_autoFillPanel;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __63__UIKeyboardImpl__handleAutoFillPopoverCommandWithType_action___block_invoke;
        v20[3] = &unk_1E7116BF0;
        objc_copyWeak(&v21, &location);
        [(AFUIPanel *)v16 displayForDocumentTraits:currentRTIDocumentTraitsForAutoFillPanel documentState:_rtiDocumentStateForAutoFillPopover textOperationsHandler:v20];
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

- (int64_t)_autoFillModeForPopoverType:(int)type
{
  if ((type - 4) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18A680238[type - 4];
  }
}

- (void)cleanupKeyboardPopover:(id)popover
{
  popoverCopy = popover;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  textInputView = [inputDelegate textInputView];
  v6 = textInputView;
  if (textInputView)
  {
    keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
    [keyboardSceneDelegate destroyKeyboardWindowIfNecessary];
  }

  dictationPopoverController = self->_dictationPopoverController;
  if (dictationPopoverController == popoverCopy)
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
        isDictationPaused = [v13 isDictationPaused];

        if ((isDictationPaused & 1) == 0)
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
  if (pressAndHoldPopoverController == popoverCopy)
  {
    goto LABEL_7;
  }

  emojiPopoverController = self->_emojiPopoverController;
  if (emojiPopoverController != popoverCopy)
  {
    v9 = 584;
    pressAndHoldPopoverController = self->_numberpadPopoverController;
    if (pressAndHoldPopoverController != popoverCopy)
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

  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  if (keyboardType != 124)
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

  [inputDelegate resignFirstResponder];
LABEL_14:
}

- (void)representDictationMenu
{
  [(UIDelayedAction *)self->m_dictationMenuAction cancel];
  m_dictationMenuAction = self->m_dictationMenuAction;
  self->m_dictationMenuAction = 0;

  [(UIKeyboardImpl *)self touchDictationMenuTimer:0];
  candidateController = [(UIKeyboardImpl *)self candidateController];
  loadInlineCandidateView = [candidateController loadInlineCandidateView];

  if ((!loadInlineCandidateView || [loadInlineCandidateView isHidden]) && !self->m_autocorrectPrompt)
  {
    inlineTextCompletionController = [(UIKeyboardImpl *)self inlineTextCompletionController];
    hasPrompt = [inlineTextCompletionController hasPrompt];

    if ((hasPrompt & 1) == 0)
    {
      [(UIKeyboardImpl *)self _presentDictationMenuIfAllowed];
    }
  }
}

- (void)_presentDictationMenuIfAllowed
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setEditingActionSelector:sel__presentDictationMenuIfAllowed];
      [inputSystemSourceSession flushOperations];
    }
  }

  else if ([(UIKeyboardImpl *)self canPresentDictationMenuWithAnimationStyle:2])
  {

    [(UIKeyboardImpl *)self presentDictationMenuWithAnimationStyle:2];
  }
}

- (void)_clearDictationMenuTimer:(BOOL)timer
{
  timerCopy = timer;
  [(UIDelayedAction *)self->m_dictationMenuAction cancel];
  m_dictationMenuAction = self->m_dictationMenuAction;
  self->m_dictationMenuAction = 0;

  if (timerCopy)
  {
    _editMenuAssistant = [(UIKeyboardImpl *)self _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];
  }

  if (self->m_presentingKeyboardMenuType != 2)
  {

    [(UIKeyboardImpl *)self dismissDictationMenu];
  }
}

- (void)touchDictationMenuTimer:(BOOL)timer
{
  timerCopy = timer;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    if (timerCopy)
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
        preferencesActions = [v6 preferencesActions];
        v8 = [preferencesActions valueForPreferenceKey:@"DictationMenuReturnPauseInterval"];
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

- (void)hideDictationMenuIfNeeded:(BOOL)needed
{
  if (!+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    if (+[UIDictationController isRunning])
    {

      [(UIKeyboardImpl *)self clearDictationMenuTimer];
    }

    else if (!needed && self->m_presentingKeyboardMenuType == 2)
    {

      [(UIKeyboardImpl *)self dismissDictationMenu];
    }
  }
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v5 = [(UIKeyboardImpl *)self keyboardMenuElements:interaction];
  v6 = [UIMenu menuWithChildren:v5];

  return v6;
}

- (id)stopDictationMenuElementsForTextInputView:(id)view
{
  viewCopy = view;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  textInputView = [inputDelegate textInputView];

  if (textInputView == viewCopy)
  {
    v7 = [(UIKeyboardImpl *)self stopDictationMenuElementsShowingTitle:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)stopDictationMenuElementsShowingTitle:(BOOL)title
{
  titleCopy = title;
  v12[2] = *MEMORY[0x1E69E9840];
  if (+[UIDictationController isRunning])
  {
    if (titleCopy)
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
    enabledDictationLanguages = [v11 enabledDictationLanguages];

    obj = enabledDictationLanguages;
    v13 = [enabledDictationLanguages countByEnumeratingWithState:&v27 objects:v34 count:16];
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
    activeDictationLanguage = [(UIKeyboardImpl *)self activeDictationLanguage];
    v6 = [activeDictationLanguage length];

    if (v6)
    {
      activeDictationLanguage2 = [(UIKeyboardImpl *)self activeDictationLanguage];
      v8 = UIKeyboardLocalizedDictationDisplayName(activeDictationLanguage2);
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

- (void)presentDictationMenuTip:(id)tip
{
  tipCopy = tip;
  v6 = [tipCopy objectForKeyedSubscript:@"title"];
  v5 = [tipCopy objectForKeyedSubscript:@"description"];

  [(UIKeyboardImpl *)self presentDictationMenuTipWithTitle:v6 description:v5];
}

- (void)presentDictationMenuTipWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  if (+[UIKeyboard isKeyboardProcess]&& ![(UIKeyboardImpl *)self showingEmojiSearch])
  {
    v17 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v17 inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v22 = NSStringFromSelector(sel_presentDictationMenuTip_);
      [dictionary setObject:v22 forKeyedSubscript:@"selector"];

      [dictionary setObject:titleCopy forKeyedSubscript:@"title"];
      [dictionary setObject:descriptionCopy forKeyedSubscript:@"description"];
      [textOperations setCustomInfoType:0x1EFB7C8F0];
      [textOperations setCustomInfo:dictionary];
      [inputSystemSourceSession flushOperations];
    }
  }

  else
  {
    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v8 preferencesActions];
    date = [MEMORY[0x1E695DF00] date];
    [preferencesActions updateDictationTipLastShownDate:date];

    _editMenuAssistant = [(UIKeyboardImpl *)self _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];

    [(UIKeyboardImpl *)self dismissDictationMenu];
    objc_initWeak(&location, self);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __63__UIKeyboardImpl_presentDictationMenuTipWithTitle_description___block_invoke;
    v26 = &unk_1E70F7450;
    objc_copyWeak(&v27, &location);
    v12 = [UIAction actionWithHandler:&v23];
    [(UIKeyboardImpl *)self configureTipViewWithTitle:titleCopy description:descriptionCopy closeButtonAction:v12, v23, v24, v25, v26];

    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
    keyboardMenuTipIdentifier = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
    [interactionAssistant presentMenuForInputUI:keyboardMenuTipIdentifier preferredArrowDirection:0];

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

- (void)presentEducationTipWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  if (+[UIKeyboard isInlineTextCompletionEducationUIEnabled](UIKeyboard, "isInlineTextCompletionEducationUIEnabled") && !+[UIKeyboard isKeyboardProcess])
  {
    _editMenuAssistant = [(UIKeyboardImpl *)self _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];

    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__UIKeyboardImpl_presentEducationTipWithTitle_description___block_invoke;
    v17 = &unk_1E70F7450;
    objc_copyWeak(&v18, &location);
    v9 = [UIAction actionWithHandler:&v14];
    [(UIKeyboardImpl *)self configureTipViewWithTitle:titleCopy description:descriptionCopy closeButtonAction:v9, v14, v15, v16, v17];

    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
    keyboardMenuTipIdentifier = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
    [interactionAssistant presentMenuForInputUI:keyboardMenuTipIdentifier preferredArrowDirection:1];

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

- (CGRect)overrideEditMenuTargetRectForConfiguration:(id)configuration
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  identifier = [configuration identifier];
  keyboardMenuTipIdentifier = [(UIKeyboardImpl *)self keyboardMenuTipIdentifier];
  v10 = [identifier isEqual:keyboardMenuTipIdentifier];

  if (v10)
  {
    v11 = +[UIDictationController sharedInstance];
    dictationTipController = [v11 dictationTipController];
    activeTipType = [dictationTipController activeTipType];

    if (activeTipType == 7)
    {
      inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
      textInputView = [inputDelegate textInputView];
      [textInputView bounds];
      v4 = v27;
      v6 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_6;
    }

    if (activeTipType == 3)
    {
      textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
      activeSelection = [textInteractionAssistant activeSelection];
      selectedRange = [activeSelection selectedRange];
      inputDelegate = [selectedRange start];

      inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
      textInputView = [inputDelegate2 positionFromPosition:inputDelegate inDirection:3 offset:1];

      inputDelegate3 = [(UIKeyboardImpl *)self inputDelegate];
      v21 = [inputDelegate3 textRangeFromPosition:textInputView toPosition:inputDelegate];

      inputDelegate4 = [(UIKeyboardImpl *)self inputDelegate];
      [inputDelegate4 firstRectForRange:v21];
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

- (void)configureTipViewWithTitle:(id)title description:(id)description closeButtonAction:(id)action
{
  v66[12] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  descriptionCopy = description;
  titleCopy = title;
  v10 = objc_opt_new();
  v11 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  [v10 setFont:v11];

  [v10 setNumberOfLines:0];
  [v10 setText:titleCopy];

  [v10 setTextAlignment:0];
  [v10 setPreferredMaxLayoutWidth:180.0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = objc_opt_new();
  v13 = +[UIColor secondaryLabelColor];
  [v12 setTextColor:v13];

  v14 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  [v12 setFont:v14];

  [v12 setNumberOfLines:0];
  [v12 setText:descriptionCopy];

  [v12 setTextAlignment:0];
  [v12 setPreferredMaxLayoutWidth:180.0];
  v15 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_opt_new();
  [v16 addAction:actionCopy forControlEvents:0x2000];

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
  layoutMarginsGuide = [(UIView *)v63 layoutMarginsGuide];
  v47 = MEMORY[0x1E69977A0];
  topAnchor = [v10 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v66[0] = v60;
  leadingAnchor = [v10 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v66[1] = v57;
  widthAnchor = [v10 widthAnchor];
  widthAnchor2 = [v15 widthAnchor];
  v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-18.0];
  v66[2] = v54;
  topAnchor3 = [v16 topAnchor];
  topAnchor4 = [v10 topAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v66[3] = v50;
  leftAnchor = [v16 leftAnchor];
  rightAnchor = [v10 rightAnchor];
  v46 = [leftAnchor constraintEqualToAnchor:rightAnchor];
  v66[4] = v46;
  heightAnchor = [v16 heightAnchor];
  v44 = [heightAnchor constraintEqualToConstant:18.0];
  v66[5] = v44;
  widthAnchor3 = [v16 widthAnchor];
  v52 = v16;
  heightAnchor2 = [v16 heightAnchor];
  v39 = [widthAnchor3 constraintEqualToAnchor:heightAnchor2];
  v66[6] = v39;
  v22 = layoutMarginsGuide;
  v42 = layoutMarginsGuide;
  trailingAnchor = [layoutMarginsGuide trailingAnchor];
  trailingAnchor2 = [v16 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v66[7] = v36;
  topAnchor5 = [v15 topAnchor];
  bottomAnchor = [v10 bottomAnchor];
  v33 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v66[8] = v33;
  v43 = v15;
  leadingAnchor3 = [v15 leadingAnchor];
  leadingAnchor4 = [v10 leadingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v66[9] = v25;
  widthAnchor4 = [v10 widthAnchor];
  v27 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:180.0];
  v66[10] = v27;
  bottomAnchor2 = [v22 bottomAnchor];
  bottomAnchor3 = [v15 bottomAnchor];
  v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v66[11] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:12];
  [v47 activateConstraints:v31];

  m_tipView = self->m_tipView;
  self->m_tipView = v63;
}

- (void)presentKeyboardMenu:(int)menu
{
  self->m_keyboardMenuType = menu;
  [(UIKeyboardImpl *)self touchDictationMenuTimer:0];
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  interactionAssistant = [inputDelegate interactionAssistant];
  _editMenuAssistant = [interactionAssistant _editMenuAssistant];
  _selectionView = [_editMenuAssistant _selectionView];
  window = [_selectionView window];

  if (window)
  {
    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant2 = [inputDelegate2 interactionAssistant];
    [interactionAssistant2 presentMenuForInputUI:0 preferredArrowDirection:0];

    m_editMenuInteraction = self->m_editMenuInteraction;
    self->m_editMenuInteraction = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (self->m_editMenuInteraction || (v12 = [[UIEditMenuInteraction alloc] initWithDelegate:self], v13 = self->m_editMenuInteraction, self->m_editMenuInteraction = v12, v13, [(UIEditMenuInteraction *)self->m_editMenuInteraction setPresentsContextMenuAsSecondaryAction:0], self->m_editMenuInteraction))
  {
    inputDelegate3 = [(UIKeyboardImpl *)self inputDelegate];
    textInputView = [inputDelegate3 textInputView];
    [textInputView addInteraction:self->m_editMenuInteraction];

    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
    selectedTextRange = [inputDelegateManager2 selectedTextRange];
    start = [selectedTextRange start];
    [inputDelegateManager caretRectForPosition:start];
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

- (BOOL)canPresentDictationMenuWithAnimationStyle:(int64_t)style
{
  if (!+[UIDictationController isRunning])
  {
    LOBYTE(v21) = 0;
    return v21;
  }

  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  _caretView = [textInteractionAssistant _caretView];

  window = [_caretView window];
  [window frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [_caretView bounds];
  [_caretView convertRect:0 toView:?];
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
    isMenuVisible = [v22 isMenuVisible];

    m_editMenuInteraction = self->m_editMenuInteraction;
    if (m_editMenuInteraction)
    {
      isDisplayingMenu = [(UIEditMenuInteraction *)m_editMenuInteraction isDisplayingMenu];
      goto LABEL_11;
    }
  }

  else
  {
    isMenuVisible = 0;
  }

  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  interactionAssistant = [inputDelegate interactionAssistant];
  isDisplayingMenu = [interactionAssistant isDisplayingMenu];

LABEL_11:
  if (v20 & 1) != 0 || self->m_dictationIndicatorAssertion || (v28 = style != 1, (([(UIKeyboardImpl *)self hasAutocorrectPrompt]| v28 & (isDisplayingMenu | isMenuVisible))) || +[UIKeyboard isInlineDictationIndicatorEnabled]&& [(UIKeyboardImpl *)self inputModeSwitcherVisible])
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    v21 = [_textChoicesAssistant showingPromptsIncludingDictationChoices] ^ 1;
  }

  return v21;
}

- (void)presentDictationMenuWithAnimationStyle:(int64_t)style
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
      if ([(UIKeyboardImpl *)self canPresentDictationMenuWithAnimationStyle:style])
      {
        inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
        selectionDisplayInteraction = [inputDelegateManager selectionDisplayInteraction];
        [selectionDisplayInteraction _setGlowViewMode:1];

        _activeAssertionController = [(UIKeyboardImpl *)self _activeAssertionController];
        v16 = @"_UITextCursorAnimationStyleUserInfoKey";
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
        v17[0] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v13 = [_activeAssertionController dictationIndicatorAssertionWithReason:@"Starting dictation" userInfo:v12];
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

- (void)_dictationDidRecieveDidBeginDictationNotification:(id)notification
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

- (void)setRemoteDictationPopover:(id)popover
{
  popoverCopy = popover;
  v4 = [popoverCopy objectForKeyedSubscript:@"appear"];
  bOOLValue = [v4 BOOLValue];

  dictationPopoverController = self->_dictationPopoverController;
  if (bOOLValue)
  {
    if (!dictationPopoverController)
    {
      v7 = +[UIDictationView sharedInstance];
      v8 = [UIDictationPopoverController alloc];
      [v7 frame];
      v10 = v9;
      v12 = v11;
      inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
      v14 = [(UIDictationPopoverController *)v8 initWithContentView:v7 contentSize:inputDelegate inputDelegate:v10, v12];
      v15 = self->_dictationPopoverController;
      self->_dictationPopoverController = v14;

      dictationPopoverController = self->_dictationPopoverController;
    }

    [(UIDictationPopoverController *)dictationPopoverController setRemoteDictationPopover:popoverCopy];
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
    isDisplayingMenu = [(UIEditMenuInteraction *)m_editMenuInteraction isDisplayingMenu];
    v5 = +[UIKeyboard isRedesignedTextCursorEnabled];
    if (isDisplayingMenu)
    {
      return 1;
    }
  }

  else
  {
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
    isDisplayingMenuForInputUI = [interactionAssistant isDisplayingMenuForInputUI];

    v5 = +[UIKeyboard isRedesignedTextCursorEnabled];
    if (isDisplayingMenuForInputUI)
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
    preferencesActions = [v4 preferencesActions];
    v6 = [preferencesActions valueForPreferenceKey:@"DictationDisableInlinePopoverUI"];

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

- (void)setInputModeAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  _activeAssertionController = [(UIKeyboardImpl *)self _activeAssertionController];
  v5 = [_activeAssertionController activeInputModeAssertionWithReason:reasonCopy];

  [(UIKeyboardImpl *)self setInputModeAssertion:v5];
}

- (void)presentKeyboardPopoverWithType:(int)type keyString:(id)string completion:(id)completion
{
  v6 = *&type;
  stringCopy = string;
  completionCopy = completion;
  if ([(UIKeyboardImpl *)self isSettingDelegate])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke;
    aBlock[3] = &unk_1E7116C40;
    aBlock[4] = self;
    v97 = v6;
    v95 = stringCopy;
    v96 = completionCopy;
    v10 = _Block_copy(aBlock);
    if (+[UIKeyboard isKeyboardProcess])
    {
      inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
      v12 = inputSystemSourceSession;
      if (inputSystemSourceSession)
      {
        documentState = [inputSystemSourceSession documentState];
        [documentState clientFrameInWindow];
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
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    textInputView = [inputDelegate textInputView];
    keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
    v26 = keyboardSceneDelegate;
    if (keyboardSceneDelegate)
    {
      v27 = keyboardSceneDelegate;
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
          containerRootController = [v28 containerRootController];
LABEL_29:
          rootViewController = containerRootController;
          if (containerRootController)
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
          presentedViewController = [rootViewController presentedViewController];

          if (presentedViewController)
          {
            presentedViewController2 = [rootViewController presentedViewController];
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_342;
            v90[3] = &unk_1E7116C40;
            v90[4] = self;
            v93 = v6;
            v91 = stringCopy;
            v92 = completionCopy;
            [presentedViewController2 dismissViewControllerAnimated:0 completion:v90];

            v36 = v91;
LABEL_52:

            goto LABEL_53;
          }

          v71 = textInputView;
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

          inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
          selectedTextRange = [inputDelegateManager selectedTextRange];

          inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
          v40 = [inputDelegateManager2 selectionRectsForRange:selectedTextRange];
          firstObject = [v40 firstObject];
          isVertical = [firstObject isVertical];

          inputDelegateManager3 = [(UIKeyboardImpl *)self inputDelegateManager];
          v68 = selectedTextRange;
          start = [selectedTextRange start];
          [inputDelegateManager3 caretRectForPosition:start];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = inputDelegate;
            [v52 bounds];
            Height = CGRectGetHeight(v99);
            v100.origin.x = v45;
            v100.origin.y = v47;
            v100.size.width = v49;
            v100.size.height = v51;
            textInputView = v71;
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
                defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
                mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v72[2] = __70__UIKeyboardImpl_presentKeyboardPopoverWithType_keyString_completion___block_invoke_345;
                v72[3] = &unk_1E7116C68;
                v77 = buf;
                v72[4] = self;
                v82 = v6;
                v73 = stringCopy;
                v74 = rootViewController;
                v75 = v71;
                v78 = v45;
                v79 = v47;
                v80 = v49;
                v81 = v51;
                v83 = isVertical;
                v76 = completionCopy;
                v61 = [defaultCenter addObserverForName:@"UITextSelectionDidScroll" object:v52 queue:mainQueue usingBlock:v72];
                v62 = *(v85 + 5);
                *(v85 + 5) = v61;

                interactionAssistant = [v52 interactionAssistant];
                [interactionAssistant scrollSelectionToVisible];

                _Block_object_dispose(buf, 8);
                goto LABEL_51;
              }
            }
          }

          else
          {
            textInputView = v71;
          }

          [(UIKeyboardImpl *)self _presentKeyboardPopoverWithType:v6 keyString:stringCopy popoverController:rootViewController textInputView:textInputView caretRect:isVertical isVerticalText:completionCopy completion:v45, v47, v49, v51];
LABEL_51:
          v36 = v68;
          v28 = v69;
          goto LABEL_52;
        }
      }

      if (![(UIKeyboardImpl *)self isDictationPopoverPresented])
      {
        forceCreateKeyboardWindow = [v28 forceCreateKeyboardWindow];
        rootViewController = [forceCreateKeyboardWindow rootViewController];

        if (rootViewController)
        {
          goto LABEL_30;
        }

        goto LABEL_43;
      }

      v31 = 576;
    }

    containerRootController = *(&self->super.super.super.isa + v31);
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

  if (v6 != 2 || ![(UIKeyboardImpl *)self isPressAndHoldPopoverPresented]|| ![(UIPressAndHoldPopoverController *)self->_pressAndHoldPopoverController isSamePressAndHoldPopoverForKeyString:stringCopy])
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

- (void)_presentKeyboardPopoverWithType:(int)type keyString:(id)string popoverController:(id)controller textInputView:(id)view caretRect:(CGRect)rect isVerticalText:(BOOL)text completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  controllerCopy = controller;
  viewCopy = view;
  completionCopy = completion;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];

  if (inputDelegate)
  {
    v171 = width;
    v174 = controllerCopy;
    view = [controllerCopy view];
    window = [view window];

    [viewCopy bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    showingEmojiSearch = [(UIKeyboardImpl *)self showingEmojiSearch];
    if (+[UIKeyboard isKeyboardProcess]&& !showingEmojiSearch)
    {
      inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
      v37 = inputSystemSourceSession;
      if (inputSystemSourceSession)
      {
        documentState = [inputSystemSourceSession documentState];
        [documentState clientFrameInWindow];
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
    typeCopy = type;
    textCopy = text;
    v47 = v44;
    v48 = v46;
    if (text)
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
    visualModeManager = [v55 visualModeManager];
    shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

    v172 = shouldShowWithinAppWindow;
    v58 = 15;
    if (!shouldShowWithinAppWindow)
    {
      v58 = v52;
    }

    v170 = v58;
    keyboardSceneDelegate = [viewCopy keyboardSceneDelegate];
    if (keyboardSceneDelegate)
    {
      [viewCopy keyboardSceneDelegate];
    }

    else
    {
      +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }
    v60 = ;
    containerWindow = [v60 containerWindow];

    if ([containerWindow _isHostedInAnotherProcess] && (objc_msgSend(containerWindow, "_isFullscreen") & 1) == 0)
    {
      if (typeCopy)
      {
        [containerWindow convertRect:viewCopy fromView:{v44, v46, v49, v35}];
        v63 = v103;
        v65 = v104;
        v67 = v105;
        v69 = v106;
        v107 = containerWindow;

        rootViewController = [v107 rootViewController];

        window = v107;
        v174 = rootViewController;
      }

      else
      {
        window2 = [viewCopy window];
        [viewCopy convertRect:window2 toView:{v44, v46, v49, v35}];
        v135 = v134;
        v137 = v136;
        v139 = v138;
        v141 = v140;

        window3 = [viewCopy window];
        [containerWindow convertRect:window3 fromWindow:{v135, v137, v139, v141}];
        v63 = v143;
        v65 = v144;
        v67 = v145;
        v69 = v146;
      }
    }

    else
    {
      [containerWindow convertRect:viewCopy fromView:{v44, v46, v49, v35}];
      [containerWindow convertRect:window toView:?];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
    }

    if (window)
    {
      screen = [containerWindow screen];
      screen2 = [window screen];

      v169 = stringCopy;
      if (screen != screen2)
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
      [containerWindow frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      [window frame];
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

      [window bounds];
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
      v93 = typeCopy;
      if (typeCopy == 1)
      {
        [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_dictationPopoverController beforeCleanup:1 completion:0];
        v112 = +[UIDictationView sharedInstance];
        v113 = [UIDictationPopoverController alloc];
        [v112 frame];
        v115 = v114;
        v117 = v116;
        inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
        v119 = v113;
        v120 = v112;
        v117 = [(UIDictationPopoverController *)v119 initWithContentView:v112 contentSize:inputDelegate2 inputDelegate:v115, v117];
        dictationPopoverController = self->_dictationPopoverController;
        self->_dictationPopoverController = v117;

        v102 = self->_dictationPopoverController;
        [v112 frame];
        v123 = CGRectGetHeight(v194);
        [window safeAreaInsets];
        v125 = v123 + v124;
        [(objc_class *)+[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView arrowHeight];
        v127 = v125 + v126;
        v111 = v170;
        v94 = v72;
        v95 = v168;
        if (!textCopy)
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
        if (typeCopy == 2)
        {
          [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_pressAndHoldPopoverController beforeCleanup:1 completion:0];
          v109 = [[UIPressAndHoldPopoverController alloc] initWithKeyString:stringCopy];
          pressAndHoldPopoverController = self->_pressAndHoldPopoverController;
          self->_pressAndHoldPopoverController = v109;

          v102 = self->_pressAndHoldPopoverController;
          v111 = v170;
          v95 = v168;
        }

        else
        {
          v95 = v168;
          if (typeCopy == 10)
          {
            [(UIKeyboardImpl *)self dismissKeyboardPopover:self->_numberpadPopoverController beforeCleanup:1 completion:0];
            v96 = +[UIKeyboardInputModeController sharedInputModeController];
            currentInputMode = [v96 currentInputMode];

            v98 = [UIKeyboardNumberpadPopoverController alloc];
            textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
            v100 = [(UIKeyboardNumberpadPopoverController *)v98 initWithTextInputTraits:textInputTraits keyboardInputMode:currentInputMode];
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

            mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
            v131 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"VerticalScrollingInEmojiPopover"];

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
            textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
            taskQueue = [(UIKeyboardImpl *)self taskQueue];
            v168 = [(UIKeyboardEmojiPopoverController *)v147 initWithTextInputTraits:textInputTraits2 taskQueue:taskQueue scrollingDirection:v132 window:window caretRect:v90, v92, v94, v168];
            emojiPopoverController = self->_emojiPopoverController;
            self->_emojiPopoverController = v168;

            v102 = self->_emojiPopoverController;
            v93 = typeCopy;
          }

          v111 = v170;
        }
      }

      [(UIViewController *)v102 setModalPresentationStyle:7];
      traitCollection = [(UIViewController *)v102 traitCollection];
      if ([traitCollection userInterfaceIdiom])
      {
      }

      else
      {
        traitCollection2 = [(UIViewController *)v102 traitCollection];
        verticalSizeClass = [traitCollection2 verticalSizeClass];

        v157 = verticalSizeClass == 1;
        v93 = typeCopy;
        if (v157)
        {
          v111 = 15;
        }
      }

      popoverPresentationController = [(UIViewController *)v102 popoverPresentationController];
      [(UIKeyboardPopoverController *)v102 configurePopoverPresentationController:popoverPresentationController];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setSourceView:window];
      [popoverPresentationController setSourceRect:{v90, v92, v94, v95}];
      [popoverPresentationController setPermittedArrowDirections:v111];
      [popoverPresentationController setCanOverlapSourceViewRect:v172];
      if (v93 == 1)
      {
        [popoverPresentationController setPopoverLayoutMargins:{-5.0, 19.0, 10.0, 19.0}];
        [popoverPresentationController _setIgnoresKeyboardNotifications:1];
      }

      else if (v93 == 2)
      {
        [popoverPresentationController setPopoverBackgroundViewClass:objc_opt_class()];
        traitCollection3 = [(UIView *)self traitCollection];
        if ([traitCollection3 userInterfaceStyle] == 2)
        {
          +[UIColor tertiarySystemFillColor];
        }

        else
        {
          +[UIColor whiteColor];
        }
        v160 = ;
        [popoverPresentationController setBackgroundColor:v160];

        v93 = typeCopy;
      }

      v175[0] = MEMORY[0x1E69E9820];
      v175[1] = 3221225472;
      v175[2] = __128__UIKeyboardImpl__presentKeyboardPopoverWithType_keyString_popoverController_textInputView_caretRect_isVerticalText_completion___block_invoke;
      v175[3] = &unk_1E7116C90;
      v176 = v102;
      v177 = v174;
      selfCopy = self;
      v179 = popoverPresentationController;
      v181 = v93;
      v180 = completionCopy;
      v161 = popoverPresentationController;
      v162 = v102;
      [v177 presentViewController:v162 animated:1 completion:v175];

      stringCopy = v169;
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    controllerCopy = v174;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  dictationPopoverController = self->_dictationPopoverController;
  controllerCopy = controller;
  popoverPresentationController = [(UIViewController *)dictationPopoverController popoverPresentationController];

  if (popoverPresentationController == controllerCopy)
  {
    [(UIDictationPopoverController *)self->_dictationPopoverController sourceRect];
    rect->origin.x = v10;
    rect->origin.y = v11;
    rect->size.width = v12;
    rect->size.height = v13;
  }
}

- (void)updateDictationPopoverLocationIfNeeded
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  if (hasAsyncCapableInputDelegate)
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

- (void)setEditMenuFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22[1] = *MEMORY[0x1E69E9840];
  if (!CGRectIsEmpty(frame))
  {
LABEL_5:
    p_m_editMenuFrame = &self->m_editMenuFrame;
    self->m_editMenuFrame.origin.x = x;
    self->m_editMenuFrame.origin.y = y;
    self->m_editMenuFrame.size.width = width;
    self->m_editMenuFrame.size.height = height;
    if (+[UIKeyboard usesInputSystemUI])
    {
      remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
      v21 = @"editMenuFrame";
      v13 = [MEMORY[0x1E696B098] valueWithRect:{p_m_editMenuFrame->origin.x, self->m_editMenuFrame.origin.y, self->m_editMenuFrame.size.width, self->m_editMenuFrame.size.height}];
      v22[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_setEditMenuFrame_ withOptionalObject:v14];

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

  candidateController = [(UIKeyboardImpl *)self candidateController];
  loadInlineCandidateView = [candidateController loadInlineCandidateView];

  v9 = loadInlineCandidateView;
  if (!loadInlineCandidateView || (v10 = [loadInlineCandidateView isHidden], v9 = loadInlineCandidateView, v10))
  {

    goto LABEL_5;
  }
}

- (void)updateDictationPopoverLocationForCandidateInlineView:(id)view yOffset:(double)offset
{
  viewCopy = view;
  if (viewCopy)
  {
    v18 = viewCopy;
    if ([viewCopy isHidden])
    {
      [(UIKeyboardImpl *)self setEditMenuFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }

    else
    {
      inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
      textInputView = [inputDelegate textInputView];
      keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
      if (keyboardSceneDelegate)
      {
        inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
        textInputView2 = [inputDelegate2 textInputView];
        keyboardSceneDelegate2 = [textInputView2 keyboardSceneDelegate];
        containerWindow = [keyboardSceneDelegate2 containerWindow];
      }

      else
      {
        inputDelegate2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        containerWindow = [inputDelegate2 containerWindow];
      }

      view = [(UIViewController *)self->_dictationPopoverController view];
      window = [view window];

      [v18 bounds];
      [containerWindow convertRect:v18 fromView:?];
      if (containerWindow != window)
      {
        [containerWindow convertRect:window toView:?];
      }

      [(UIKeyboardImpl *)self setEditMenuFrame:v16 + 0.0, v17 + offset];
    }

    viewCopy = v18;
  }
}

- (void)dismissKeyboardPopover:(id)popover beforeCleanup:(BOOL)cleanup completion:(id)completion
{
  cleanupCopy = cleanup;
  popoverCopy = popover;
  completionCopy = completion;
  if (popoverCopy)
  {
    presentingViewController = [popoverCopy presentingViewController];
    if (presentingViewController)
    {
      if (cleanupCopy)
      {
        [(UIKeyboardImpl *)self cleanupKeyboardPopover:popoverCopy];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __66__UIKeyboardImpl_dismissKeyboardPopover_beforeCleanup_completion___block_invoke;
      v11[3] = &unk_1E70F3798;
      v14 = cleanupCopy;
      v11[4] = self;
      v12 = popoverCopy;
      v13 = completionCopy;
      [presentingViewController dismissViewControllerAnimated:1 completion:v11];
    }

    else
    {
      [(UIKeyboardImpl *)self cleanupKeyboardPopover:popoverCopy];
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0);
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
    popoverPresentationController = [(UIViewController *)emojiPopoverController popoverPresentationController];
    containerView = [popoverPresentationController containerView];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__UIKeyboardImpl_didPresentMemojiCard__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = containerView;
    v5 = containerView;
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

- (void)updateInputModeIndicatorOnSingleKeyOnly:(BOOL)only preserveIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  onlyCopy = only;
  self->m_showInputModeIndicator = 0;
  if (![(UIKeyboardLayout *)self->m_layout shouldShowIndicator]|| [(UIKeyboardImpl *)self isTrackpadMode]|| onlyCopy)
  {

    [(UIKeyboardImpl *)self clearLanguageIndicator];
  }

  else
  {
    activationIndicatorView = [(UIKeyboardLayout *)self->m_layout activationIndicatorView];
    if (!possibleCopy || (-[UIView frame](self->m_languageIndicator, "frame"), v9 = v8, v11 = v10, v13 = v12, v15 = v14, [activationIndicatorView frame], v35.origin.x = v16, v35.origin.y = v17, v35.size.width = v18, v35.size.height = v19, v34.origin.x = v9, v34.origin.y = v11, v34.size.width = v13, v34.size.height = v15, !CGRectEqualToRect(v34, v35)))
    {
      [(UIKeyboardImpl *)self clearLanguageIndicator];
      objc_storeStrong(&self->m_languageIndicator, activationIndicatorView);
      m_layout = self->m_layout;
      if (!m_layout)
      {
        m_layout = self;
      }

      m_languageIndicator = self->m_languageIndicator;
      v22 = m_layout;
      [(UIView *)m_languageIndicator setAutoresizingMask:8];
      [v22 addSubview:self->m_languageIndicator];

      subviews = [(UIView *)self->m_languageIndicator subviews];
      lastObject = [subviews lastObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = self->m_languageIndicator;

        lastObject = v25;
      }

      [(UIKeyboardLayout *)self->m_layout setHideKeysUnderIndicator:1];
      v26 = self->m_languageIndicator;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __77__UIKeyboardImpl_updateInputModeIndicatorOnSingleKeyOnly_preserveIfPossible___block_invoke;
      v31[3] = &unk_1E70F3590;
      v32 = lastObject;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __77__UIKeyboardImpl_updateInputModeIndicatorOnSingleKeyOnly_preserveIfPossible___block_invoke_2;
      v29[3] = &unk_1E70F3C60;
      v29[4] = self;
      v30 = v26;
      v27 = v26;
      v28 = lastObject;
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

  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  isSecureTextEntry = [textInputTraits isSecureTextEntry];

  if (isSecureTextEntry)
  {
    return 0;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    textInputTraits2 = [(UIKeyboardImpl *)self textInputTraits];
    keyboardType = [textInputTraits2 keyboardType];
    if (keyboardType <= 0xB && ((1 << keyboardType) & 0x930) != 0 || keyboardType == 127)
    {

      return 0;
    }
  }

  v8 = UIKeyboardActiveUserSelectableInputModes;
  v9 = [v8 count];

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  normalizedEnabledInputModeIdentifiers = [v10 normalizedEnabledInputModeIdentifiers];
  v12 = [normalizedEnabledInputModeIdentifiers containsObject:@"emoji"];

  if (v12 && ([(UIKeyboardImpl *)self showsDedicatedEmojiKeyAlongsideGlobeButton]|| (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(UIKeyboardImpl *)self globeKeyDisplaysAsEmojiKey]))
  {
    --v9;
  }

  return v9 > 2;
}

- (CGRect)keyboardIntroductionFrame
{
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  bottomEdgeView = [_rootInputWindowController bottomEdgeView];
  [bottomEdgeView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v13 systemInputAssistantViewController];

  v15 = 0.0;
  if (([systemInputAssistantViewController shouldBeShownForInputDelegate:0 inputViews:0] & 1) == 0)
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    hidePrediction = [textInputTraits hidePrediction];

    if ((hidePrediction & 1) == 0)
    {
      traitCollection = [(UIView *)self traitCollection];
      [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
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

- (void)showInternationalKeyIntroductionIfNeededWithPreviousInputMode:(id)mode
{
  modeCopy = mode;
  if ([(UIKeyboardImpl *)self shouldShowInternationalKeyIntroduction])
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    v7 = [preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9C28]];

    if ((v7 & 1) == 0)
    {
      [(UIKeyboardImpl *)self keyboardIntroductionFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      internationalKeyIntroductionView = [(UIKeyboardImpl *)self internationalKeyIntroductionView];

      if (!internationalKeyIntroductionView)
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

      internationalKeyIntroductionView2 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
      [internationalKeyIntroductionView2 setFrame:{v9, v11, v13, v15}];

      _rootInputWindowController = [(UIView *)self _rootInputWindowController];
      bottomEdgeView = [_rootInputWindowController bottomEdgeView];
      internationalKeyIntroductionView3 = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
      [bottomEdgeView addSubview:internationalKeyIntroductionView3];
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
  preferencesActions = [v2 preferencesActions];
  if ([preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9900]])
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
  shouldSuppressSoftwareKeyboard = [v6 shouldSuppressSoftwareKeyboard];

  v8 = shouldSuppressSoftwareKeyboard ^ 1;
  return v8 & 1;
}

- (void)_updateSoundPreheatingForWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    goto LABEL_12;
  }

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (!keyInputDelegate)
  {
    goto LABEL_11;
  }

  v6 = keyInputDelegate;
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

  _isHostedInAnotherProcess = [windowCopy _isHostedInAnotherProcess];

  if (_isHostedInAnotherProcess)
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)prepareLayoutForInterfaceOrientation:(int64_t)orientation
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

  if ((orientation - 3) < 2 != ([(UIKeyboardLayout *)self->m_layout orientation]- 3) < 2 || +[UIKeyboard resizable])
  {
    self->m_preRotateShift = [(_UIKeyboardStateManager *)self->_keyboardStateManager shifted];
    self->m_preRotateShiftLocked = [(_UIKeyboardStateManager *)self->_keyboardStateManager shiftLocked];
    [(UIKeyboardImpl *)self acceptHandwritingCandidate];
    [(UIKeyboardImpl *)self prepareForGeometryChange];
    if (objc_opt_respondsToSelector())
    {
      [(UIKeyboardLayout *)self->m_layout willRotate:orientation];
    }

    candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];

    if (candidateList)
    {
      candidateController = [(UIKeyboardImpl *)self candidateController];
      if ([candidateController barIsExtended])
      {
        candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        [candidateList2 setUIKeyboardCandidateListDelegate:0];

        [candidateController collapse];
      }
    }

    if ([(UIKeyboardImpl *)self usesCandidateSelection])
    {
      candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
      slottedCandidatesCount = [candidateResultSet slottedCandidatesCount];

      if (slottedCandidatesCount)
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

- (void)setCanSuggestSupplementalItemsForCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  keyboardState = [(_UIKeyboardStateManager *)self->_keyboardStateManager keyboardState];
  [keyboardState setCanSuggestSupplementalItemsForCurrentSelection:selectionCopy];
}

- (void)setLayoutRenderConfig:(id)config
{
  configCopy = config;
  activeLayout = [(UIKeyboardImpl *)self activeLayout];
  [activeLayout setRenderConfig:configCopy];
}

- (void)_postInputResponderChangedNotification
{
  v10[1] = *MEMORY[0x1E69E9840];
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (keyInputDelegate)
  {
    v9 = @"UITextInputResponderCapabilitiesChangedInputResponderKey";
    inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
    keyInputDelegate2 = [inputDelegateManager2 keyInputDelegate];
    v10[0] = keyInputDelegate2;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextInputResponderDidChangeNotification" object:0 userInfo:v7];
}

- (void)_postInputResponderCapabilitiesChangedNotificationWithOutput:(id)output selectionChanged:(BOOL)changed
{
  changedCopy = changed;
  outputCopy = output;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (outputCopy)
  {
    [v5 setObject:outputCopy forKeyedSubscript:@"UITextInputResponderCapabilitiesChangedKeyboardOutputKey"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:changedCopy];
  [v5 setObject:v6 forKeyedSubscript:@"UITextInputResponderCapabilitiesChangedSelectionDidChangeKey"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextInputResponderCapabilitiesChangedNotification" object:0 userInfo:v5];
}

- (void)postInputResponderCapabilitiesChangedNotification
{
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  activeSelection = [textInteractionAssistant activeSelection];

  if (activeSelection)
  {
    selectedRange = [activeSelection selectedRange];
    if (selectedRange)
    {
      selectedRange2 = [activeSelection selectedRange];
      if ([selectedRange2 _isRanged])
      {
        v6 = [activeSelection isCommitting] ^ 1;
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
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  asyncInputDelegate = [inputDelegateManager asyncInputDelegate];

  return asyncInputDelegate;
}

- (id)webInputDelegate
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  webInputDelegate = [inputDelegateManager webInputDelegate];

  return webInputDelegate;
}

- (id)asyncCapableInputDelegate
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  asyncCapableInputDelegate = [inputDelegateManager asyncCapableInputDelegate];

  return asyncCapableInputDelegate;
}

- (BOOL)hasAsyncCapableInputDelegate
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  return hasAsyncCapableInputDelegate;
}

- (void)dismissFloatingKeyboardFromPencilKitIfNeeded
{
  if (![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard])
  {

    +[UIAssistantBarButtonItemProvider dismissFloatingKeyboardFromPencilKitIfNeeded];
  }
}

- (void)setDelegate:(id)delegate
{
  if (self->m_initializationDone)
  {
    [(UIKeyboardImpl *)self setDelegate:delegate force:0];
  }
}

- (void)updateDictationButtonForDelegate:(id)delegate
{
  delegateCopy = delegate;
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  placement = [_rootInputWindowController placement];
  if ([placement isFloatingAssistantView])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    _rootInputWindowController = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    placement = [_rootInputWindowController systemInputAssistantViewController];
    [placement setInputAssistantButtonItemsForResponder:delegateCopy];
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
    candidateController = [(UIKeyboardImpl *)self candidateController];
    activeCandidateViewType = [candidateController activeCandidateViewType];

    if ((activeCandidateViewType & 4) != 0)
    {
      return 0;
    }
  }

  return [(UIKeyboardImpl *)self delegateSupportsImagePaste];
}

- (void)textSuggestionDidChange:(id)change
{
  changeCopy = change;
  if (qword_1ED498A98 != -1)
  {
    dispatch_once(&qword_1ED498A98, &__block_literal_global_378);
  }

  taskQueue = [(UIKeyboardImpl *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UIKeyboardImpl_textSuggestionDidChange___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = changeCopy;
  v6 = qword_1ED498A90;
  v7 = changeCopy;
  [taskQueue addTask:v8 breadcrumb:v6];
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

- (void)handleTraitChangeObserver:(id)observer newResponder:(id)responder updateTraitCollection:(id)collection
{
  v19[1] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  responderCopy = responder;
  collectionCopy = collection;
  if (observerCopy != responderCopy && observerCopy && self->_traitChangeObserver)
  {
    v11 = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke(observerCopy);
    [v11 unregisterForTraitChanges:self->_traitChangeObserver];

    traitChangeObserver = self->_traitChangeObserver;
    self->_traitChangeObserver = 0;
  }

  if (responderCopy && (observerCopy != responderCopy || !self->_traitChangeObserver))
  {
    collectionCopy[2](collectionCopy, 0);
    v13 = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke(responderCopy);
    v19[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__UIKeyboardImpl_handleTraitChangeObserver_newResponder_updateTraitCollection___block_invoke_2;
    v17[3] = &unk_1E71092D0;
    v18 = collectionCopy;
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
    currentKeyplaneView = [(UIKeyboardLayout *)self->m_layout currentKeyplaneView];
  }

  else
  {
    currentKeyplaneView = 0;
  }

  return currentKeyplaneView;
}

- (void)prepareForFloatingTransition:(BOOL)transition
{
  transitionCopy = transition;
  if (!transition && [(UIKeyboardImpl *)self isUsingDictationLayout])
  {
    v5 = +[UIDictationView sharedInstance];
    v6 = +[UIDictationController sharedInstance];
    [v5 setState:{objc_msgSend(v6, "state")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyboardLayout *)self->m_layout prepareForFloatingTransition:transitionCopy];
  }

  if (transitionCopy)
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
  _activeAssertionController = [(_UIKeyboardStateManager *)self->_keyboardStateManager _activeAssertionController];
  v3 = [_activeAssertionController nonBlinkingAssertionWithReason:@"UIKeyboardImpl selection change"];
  [(UIKeyboardImpl *)self setCursorAssertion:v3];
}

- (void)clearCursorAssertion
{
  cursorAssertion = [(UIKeyboardImpl *)self cursorAssertion];

  if (cursorAssertion)
  {
    cursorAssertion2 = [(UIKeyboardImpl *)self cursorAssertion];
    [cursorAssertion2 invalidate];

    [(UIKeyboardImpl *)self setCursorAssertion:0];
  }
}

- (id)physicalKeyboardEventWithInput:(id)input inputFlags:(int)flags
{
  v5 = [UIPhysicalKeyboardEvent _eventWithInput:input inputFlags:*&flags];
  [v5 setSource:{-[_UIKeyboardStateManager textInputSource](self->_keyboardStateManager, "textInputSource")}];

  return v5;
}

- (void)optOutASPInTextField
{
  autofillController = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  [autofillController didOptOutOfAutofillSignup];

  autofillController2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  [autofillController2 optOutASPInTextField];
}

- (BOOL)callShouldInsertText:(id)text
{
  textCopy = text;
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  LOBYTE(inputDelegateManager) = [(UIKeyboardImpl *)self callShouldInsertText:textCopy onDelegate:keyInputDelegate];
  inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate2 = [inputDelegateManager2 keyInputDelegate];
  LOBYTE(textCopy) = keyInputDelegate == keyInputDelegate2;

  return textCopy & inputDelegateManager;
}

- (BOOL)insertTextIfShould:(id)should
{
  shouldCopy = should;
  v5 = [(UIKeyboardImpl *)self callShouldInsertText:shouldCopy];
  if (v5)
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    [inputDelegateManager insertText:shouldCopy];
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

- (void)textFrameChanged:(id)changed
{
  changedCopy = changed;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  _textSelectingContainer = [inputDelegate _textSelectingContainer];

  if (_textSelectingContainer != changedCopy)
  {
    return;
  }

  superview = [(UIView *)self->m_autocorrectPrompt superview];
  window = [(UIView *)self->m_autocorrectPrompt window];
  v9 = window;
  if (superview == window)
  {
    window2 = [(UIView *)self->m_autocorrectPrompt window];
    _isTextEffectsWindow = [window2 _isTextEffectsWindow];

    if (_isTextEffectsWindow)
    {
LABEL_7:
      autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
      autocorrection = [autocorrectionController autocorrection];
      [(UIKeyboardImpl *)self updateAutocorrectPrompt:autocorrection];

      goto LABEL_8;
    }
  }

  else
  {
  }

  autocorrectionController = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  superview2 = [autocorrectionController superview];
  if (superview2)
  {
    v14 = superview2;
    autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    window3 = [autocorrectBubbleContainer window];

    if (!window3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  candidateController = [(UIKeyboardImpl *)self candidateController];
  inlineCandidateView = [candidateController inlineCandidateView];
  superview3 = [inlineCandidateView superview];

  v20 = superview3;
  if (superview3)
  {
    v21 = +[UIPeripheralHost sharedInstance];
    transformedContainerView = [v21 transformedContainerView];

    v20 = superview3;
    if (superview3 == transformedContainerView)
    {
      [(UIKeyboardImpl *)self updateTextCandidateView];
      v20 = superview3;
    }
  }
}

- (id)_targetForResponderCommand:(SEL)command
{
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  _responderForEditing = [delegateAsResponder _responderForEditing];
  v6 = _UIResponderTargetForAction(_responderForEditing, command, 0);

  return v6;
}

- (BOOL)_canHandleResponderCommand:(SEL)command
{
  v4 = [(UIKeyboardImpl *)self _targetForResponderCommand:?];
  LOBYTE(command) = [v4 canPerformAction:command withSender:0];

  return command;
}

- (BOOL)_cancelOperation:(BOOL)operation testOnly:(BOOL)only
{
  if ([(UIKeyboardImpl *)self isEmojiPopoverPresented])
  {
    [(UIKeyboardImpl *)self dismissEmojiPopoverBeforeCleanup:0];
LABEL_21:
    LOBYTE(v23) = 1;
    return v23;
  }

  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  if (candidateList)
  {
    v8 = candidateList;
    isPredictionViewControllerVisible = [(UIKeyboardImpl *)self isPredictionViewControllerVisible];

    if (![(UIKeyboardImpl *)self liveConversionEnabled])
    {
      if (!isPredictionViewControllerVisible)
      {
        candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        if ([candidateList2 hasCandidates])
        {
          candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
          hasCandidates = [candidateResultSet hasCandidates];

          if (hasCandidates)
          {
            keyboardState = [(UIKeyboardImpl *)self keyboardState];
            inputForMarkedText = [keyboardState inputForMarkedText];
            v15 = [inputForMarkedText length];

            if (!v15)
            {
              [(UIKeyboardImpl *)self clearInput];
              [(UIKeyboardImpl *)self removeAutocorrectPromptAndCandidateList];
              goto LABEL_21;
            }

            _markedText = [(UIKeyboardImpl *)self _markedText];
            inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
            v18 = [inputDelegateManager callShouldReplaceExtendedRange:objc_msgSend(_markedText withText:"length") includeMarkedText:{&stru_1EFB14550, 1}];

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

  keyboardState2 = [(UIKeyboardImpl *)self keyboardState];
  inputForMarkedText2 = [keyboardState2 inputForMarkedText];
  v21 = [inputForMarkedText2 length];

  if (v21)
  {
    keyboardState3 = [(UIKeyboardImpl *)self keyboardState];
    [keyboardState3 setUserSelectedCurrentCandidate:0];

    if (only)
    {
      goto LABEL_21;
    }

    if (qword_1ED498AA8 != -1)
    {
      dispatch_once(&qword_1ED498AA8, &__block_literal_global_411_0);
    }

    _markedText = [(UIKeyboardImpl *)self taskQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__UIKeyboardImpl__cancelOperation_testOnly___block_invoke_3;
    v28[3] = &unk_1E70FD058;
    v28[4] = self;
    [_markedText performSingleTask:v28 breadcrumb:qword_1ED498AA0];
LABEL_17:

    goto LABEL_21;
  }

LABEL_19:
  if ([(UIKeyboardImpl *)self hasAutocorrectPrompt])
  {
    [(UIKeyboardImpl *)self fadeAutocorrectPrompt];
    goto LABEL_21;
  }

  if (operation || ([(UIKeyboardImpl *)self delegateAsResponder], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v26 = v25;
    v23 = [(UIKeyboardImpl *)self _canHandleResponderCommand:sel__cancelOperation_];

    if (v23 && !only)
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
  isVisible = [v4 isVisible];

  return isVisible;
}

- (void)dismissKeyboardFeedbackAssistantViewController
{
  keyboardFeedbackAssistantViewController = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
  [keyboardFeedbackAssistantViewController dismissViewControllerAnimated:1 completion:0];

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

- (void)geometryChangeDone:(BOOL)done
{
  self->m_suppressUpdateCandidateView = 0;
  if (!done)
  {
    goto LABEL_15;
  }

  [(UIKeyboardImpl *)self clearLongPressTimer];
  if (![(UIKeyboardImpl *)self showsCandidateBar])
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];

    if (!keyInputDelegate)
    {
      goto LABEL_15;
    }
  }

  [(UIKeyboardImpl *)self updateCandidateDisplay];
  if ([(UIKeyboardImpl *)self isPredictionViewControllerVisible]&& [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType])
  {
    autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
    [autocorrectionController setNeedsAutocorrection];
  }

  if ([(UIKeyboardImpl *)self usesCandidateSelection])
  {
    candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    if ([candidateResultSet slottedCandidatesCount])
    {
    }

    else
    {
      candidateResultSet2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];

      if (candidateResultSet2)
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

- (CGRect)subtractKeyboardFrameFromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  window = [(UIKeyboardImpl *)self window];

  if (window)
  {
    v11 = +[UIPeripheralHost sharedInstance];
    transformedContainerView = [v11 transformedContainerView];

    v41 = height;
    [transformedContainerView convertRect:viewCopy fromView:{x, y, width, height}];
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
      isUndocked = [v21 isUndocked];

      if ((isUndocked & 1) == 0)
      {
        selfCopy = self;
        window2 = [(UIKeyboardImpl *)selfCopy window];
        window3 = [transformedContainerView window];

        if (window2 != window3)
        {
          window4 = [transformedContainerView window];
          rootViewController = [window4 rootViewController];
          inputViewSet = [rootViewController inputViewSet];
          inputView = [inputViewSet inputView];

          selfCopy = inputView;
        }

        [(UIView *)selfCopy bounds];
        [transformedContainerView convertRect:selfCopy fromView:?];
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

- (BOOL)shouldShowCandidateBarIfReceivedCandidatesInCurrentInputMode:(BOOL)mode ignoreHidePredictionTrait:(BOOL)trait
{
  traitCopy = trait;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v7 inputViews];

  if (([inputViews isCustomInputView] & 1) == 0 && (!-[UIKeyboardImpl _allowMinimizeForHardwareKeyboard](self, "_allowMinimizeForHardwareKeyboard") ? (v9 = -[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode")) : (v9 = -[UIKeyboardImpl isMinimized](self, "isMinimized")), ((v10 = v9, (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) || (-[UIView _keyboardOrientation](self, "_keyboardOrientation") - 3) < 2 || mode || (UIKeyboardAlwaysShowCandidateBarForCurrentInputMode() & 1) != 0 || -[UIKeyboardImpl canShowAppConnections](self, "canShowAppConnections")) && -[UIKeyboardImpl usesCandidateSelection](self, "usesCandidateSelection") && self->m_layout && !-[UIKeyboardImpl isUsingDictationLayout](self, "isUsingDictationLayout") && !-[UIKeyboardLayout isResized](self->m_layout, "isResized")))
  {
    candidateList = [(UIKeyboardLayout *)self->m_layout candidateList];
    if (candidateList || [(UIKeyboardLayout *)self->m_layout hasCandidateKeys])
    {
      v12 = 0;
    }

    else
    {
      dynamicCaretList = [(UIKeyboardImpl *)self dynamicCaretList];
      v12 = !dynamicCaretList && ([(UIKeyboardImpl *)self canUseCandidateBarAsSupplementToInlineView]|| (!v10 || self->m_maximizing) && ![(UIKeyboardImpl *)self showsCandidateInline]) && [(UIKeyboardImpl *)self currentKeyboardTraitsAllowCandidateBarWhileIgnoringHidePredictionTrait:traitCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (Class)layoutClassForInputMode:(id)mode keyboardType:(int64_t)type screenTraits:(id)traits
{
  typeCopy = type;
  modeCopy = mode;
  traitsCopy = traits;
  if ([modeCopy isEqualToString:@"intl_HWR"])
  {
    v9 = 0;
  }

  else
  {
    if (UIKeyboardInputModeWithTypeUsesKBStar(modeCopy, typeCopy))
    {
      [objc_opt_class() _subclassForScreenTraits:traitsCopy];
    }

    else
    {
      UIKeyboardLayoutClassForInputMode(modeCopy);
    }
    v9 = ;
  }

  return v9;
}

- (void)finishLayoutChangeWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v9 = [argumentsCopy count] == 2;
  v4 = argumentsCopy;
  if (v9)
  {
    v5 = [argumentsCopy objectAtIndex:0];
    v6 = [argumentsCopy objectAtIndex:1];
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
      topAnchor = [(UIView *)self->m_layout topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v12 setActive:1];

      bottomAnchor = [(UIView *)self->m_layout bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v15 setActive:1];

      leadingAnchor = [(UIView *)self->m_layout leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v18 setActive:1];

      trailingAnchor = [(UIView *)self->m_layout trailingAnchor];
      trailingAnchor2 = [(UIView *)self trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v21 setActive:1];
    }

    [(UIKeyboardImpl *)self setShouldSkipCandidateSelection:0];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setOriginalShouldSkipCandidateSelection:0];
    if (+[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit") && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v22 = objc_claimAutoreleasedReturnValue(), [v22 textInputTraits], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "acceptsSplitKeyboard"), v23, v22, v24))
    {
      currentKeyplane = [(UIKeyboardLayout *)v7 currentKeyplane];
      [currentKeyplane frameForKeylayoutName:@"split-left"];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [currentKeyplane frameForKeylayoutName:@"split-right"];
      v38 = [UIKBSplitTraits traitsWithLeftFrame:-1 rightFrame:v27 corners:v29, v31, v33, v34, v35, v36, v37];
    }

    else
    {
      v38 = 0;
    }

    updatingPreferences = [(_UIKeyboardStateManager *)self->_keyboardStateManager updatingPreferences];
    v40 = self->m_layout;
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (updatingPreferences)
    {
      [(UIKeyboardLayout *)v40 reloadKeyboardWithInputTraits:textInputTraits screenTraits:v6 splitTraits:v38];
    }

    else
    {
      [(UIKeyboardLayout *)v40 showKeyboardWithInputTraits:textInputTraits screenTraits:v6 splitTraits:v38];
    }

    [(UIKeyboardImpl *)self updateShiftState];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager _setShiftNeedsUpdate:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardLayoutDidChangedNotification" object:0];

    [(UIKeyboardImpl *)self callLayoutUpdateReturnKey];
    [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
    if ([(UIKeyboardImpl *)self floatingForced])
    {
      inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
      usesContinuousPath = [inputManagerState usesContinuousPath];

      if (usesContinuousPath)
      {
        [(UIKeyboardImpl *)self performSelector:sel_presentContinuousPathIntroductionView withObject:0 afterDelay:0.0];
      }
    }

    v4 = argumentsCopy;
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

- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin
{
  beginCopy = begin;
  y = point.y;
  x = point.x;
  gesturesCopy = gestures;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  if (inputDelegate && !self->m_isRotating)
  {
    textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
    isSecureTextEntry = [textInputTraits isSecureTextEntry];

    if (isSecureTextEntry & 1) != 0 || -[UIKeyboardImpl usesCandidateSelection](self, "usesCandidateSelection") && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && (-[UIKeyboardImpl candidateController](self, "candidateController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 activeCandidateViewType], v15, (v16 & 2) != 0) && (-[UIKeyboardImpl candidateController](self, "candidateController"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "barIsExtended"), v17, (v18) || !-[UIKeyboardImpl keyboardLayoutIsInAnotherProcess](self, "keyboardLayoutIsInAnotherProcess") && ((m_layout = self->m_layout) == 0 || !-[UIKeyboardLayout shouldAllowSelectionGestures:atPoint:toBegin:](m_layout, "shouldAllowSelectionGestures:atPoint:toBegin:", gesturesCopy, beginCopy, x, y)))
    {
      LOBYTE(v11) = 0;
      return v11;
    }

    inputDelegate = [(UIView *)self _rootInputWindowController];
    v11 = [inputDelegate isTransitioningBetweenFloatingStates] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_updateExternalDeviceInputSettingForWindow:(id)window
{
  if (window)
  {
    screen = [window screen];
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];
    [screen _setExternalDeviceShouldInputText:keyInputDelegate != 0];
  }

  else
  {
    screen = [(UIKeyboardImpl *)self window];
    inputDelegateManager = [screen screen];
    [inputDelegateManager _setExternalDeviceShouldInputText:0];
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  [(UIKeyboardImpl *)self _updateExternalDeviceInputSettingForWindow:windowCopy];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:windowCopy];

  if (!windowCopy)
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
  systemInputAssistantViewController = [v5 systemInputAssistantViewController];
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v3 responder];
  [systemInputAssistantViewController setInputAssistantButtonItemsForResponder:responder];
}

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  [contextCopy setIsSecureTextEntry:{objc_msgSend(textInputTraits, "isSecureTextEntry")}];

  if ([contextCopy sizeDidChange])
  {
    [contextCopy size];
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
      preferencesActions = [v26 preferencesActions];
      if ([preferencesActions currentInputModeSupportsCrescendo])
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

    [contextCopy setSize:{v7, v12}];
    selfCopy = self;
    v17 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v17 = &selfCopy2;
  }

  v17[1] = UIKeyboardImpl;
  objc_msgSendSuper2(v17, sel__didChangeKeyplaneWithContext_, contextCopy, selfCopy);
}

- (unint64_t)_clipCornersOfView:(id)view
{
  viewCopy = view;
  splitTransitionInProgress = [(UIKeyboardImpl *)self splitTransitionInProgress];
  if (viewCopy)
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
    [viewCopy bounds];
    [(UIView *)self convertRect:viewCopy fromView:?];
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

    window = [(UIKeyboardImpl *)self window];
    if (window)
    {
    }

    else
    {
      v32 = +[UIKeyboard activeKeyboard];

      if (v32)
      {
        v33 = +[UIPeripheralHost sharedInstance];
        v31 = [v33 _clipCornersOfView:viewCopy];

        goto LABEL_19;
      }
    }

    v35.receiver = self;
    v35.super_class = UIKeyboardImpl;
    v31 = [(UIView *)&v35 _clipCornersOfView:viewCopy];
LABEL_19:
    v6 = v31 & v29;
    goto LABEL_20;
  }

  v7 = splitTransitionInProgress;
  v36.receiver = self;
  v36.super_class = UIKeyboardImpl;
  v6 = [(UIView *)&v36 _clipCornersOfView:0];
  if (v7)
  {
    [(UIView *)self frame];
    v8 = CGRectGetMaxY(v37);
    superview = [(UIView *)self superview];
    [superview bounds];
    v10 = CGRectGetMaxY(v38);

    if (v8 == v10)
    {
      v6 |= 0xCuLL;
    }
  }

LABEL_20:

  return v6;
}

- (void)_configureMarkedTextAttributesForConversion:(id)conversion selectedRange:(_NSRange)range highlightRange:(_NSRange)highlightRange
{
  length = highlightRange.length;
  location = highlightRange.location;
  v7 = range.length;
  v8 = range.location;
  conversionCopy = conversion;
  v10 = [conversionCopy length];
  array = [MEMORY[0x1E695DF70] array];
  if (+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    [conversionCopy beginEditing];
    v12 = *off_1E70ECAD8;
    [conversionCopy addAttribute:*off_1E70ECAD8 value:&unk_1EFE31C18 range:{0, v10}];
    if (length)
    {
      [conversionCopy addAttribute:v12 value:&unk_1EFE31C30 range:{location, length}];
    }

    [array addObject:v12];
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    tintColor = [inputDelegateManager tintColor];

    if (tintColor)
    {
      v15 = *off_1E70ECAD0;
      [conversionCopy addAttribute:*off_1E70ECAD0 value:tintColor range:{0, v10}];
      [array addObject:v15];
    }

    v16 = conversionCopy;
    if (v7)
    {
      v17 = [conversionCopy length];
      v16 = conversionCopy;
      if (v8 + v7 <= v17)
      {
        [conversionCopy addAttribute:@"NSMarkedTextSelectionAttributeName" value:MEMORY[0x1E695E118] range:{v8, v7}];
        [array addObject:@"NSMarkedTextSelectionAttributeName"];
        v16 = conversionCopy;
      }
    }

    [v16 endEditing];
  }

  else
  {
    v18 = *off_1E70EC8D0;
    v19 = +[UIColor _markedTextBackgroundColor];
    [conversionCopy addAttribute:v18 value:v19 range:{0, v10}];

    [array addObject:v18];
  }

  [conversionCopy addAttribute:0x1EFBAA570 value:array range:{0, v10}];
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

- (void)deleteHandwritingStrokesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIKeyboardLayout *)self->m_layout deleteHandwritingStrokesAtIndexes:indexesCopy];
  }
}

- (void)showSelectionCommands
{
  _editMenuAssistant = [(UIKeyboardImpl *)self _editMenuAssistant];
  [_editMenuAssistant showSelectionCommands];
}

- (void)setLabel:(id)label forKey:(id)key
{
  labelCopy = label;
  keyCopy = key;
  v7 = [labelCopy isEqualToString:@"UI-Nothing"];
  m_layout = self->m_layout;
  if (v7)
  {
    [(UIKeyboardLayout *)m_layout restoreDefaultsForKey:keyCopy];
  }

  else
  {
    [(UIKeyboardLayout *)m_layout setLabel:labelCopy forKey:keyCopy];
  }
}

- (void)skipHitTestForTouchEvent:(id)event
{
  v8 = *MEMORY[0x1E69E9840];
  if (event)
  {
    eventCopy = event;
    v4 = MEMORY[0x1E695DEC8];
    eventCopy2 = event;
    v6 = [v4 arrayWithObjects:&eventCopy count:1];

    [(UIKeyboardImpl *)self skipHitTestForTouchEvents:v6, eventCopy, v8];
  }
}

- (void)performHitTestForTouchEvent:(id)event executionContextPassingNSNumber:(id)number
{
  v11 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = MEMORY[0x1E695DEC8];
  numberCopy = number;
  eventCopy2 = event;
  v9 = [v6 arrayWithObjects:&eventCopy count:1];

  [(UIKeyboardImpl *)self performHitTestForTouchEvents:v9 executionContextPassingNSNumber:numberCopy, eventCopy, v11];
}

- (void)releaseInputManagerIfInactive
{
  delegate = [(UIKeyboardImpl *)self delegate];

  if (!delegate)
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

  keyboardWindow = [objc_opt_class() keyboardWindow];
  screen = [keyboardWindow screen];
  v5 = [UIKBScreenTraits traitsWithScreen:screen orientation:0];

  v2 = [v5 idiom] == 3;
  return v2;
}

+ (id)uniqueNumberPadInputModesFromInputModes:(id)modes forKeyboardType:(int64_t)type
{
  v87 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = !+[UIKeyboardImpl isFloating];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (![modesCopy count] || (type > 0xB || ((1 << type) & 0x930) == 0) && type != 127)
  {
    goto LABEL_11;
  }

  v7 = v6 ^ 1;
  if (type == 127)
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
LABEL_11:
    v8 = modesCopy;
    goto LABEL_12;
  }

  if ([modesCopy count] == 1)
  {
    firstObject = [modesCopy firstObject];
    if ([firstObject isExtensionInputMode])
    {
      v11 = +[UIKeyboardInputMode intlInputMode];
      v8 = [modesCopy arrayByAddingObject:v11];
    }

    else
    {
      v8 = modesCopy;
    }

    goto LABEL_12;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v13 = objc_opt_new();
  v71 = currentLocale;
  [v13 setLocale:currentLocale];
  [v13 setNumberStyle:0];
  v69 = v13;
  v63 = [v13 stringFromNumber:&unk_1EFE31C48];
  v14 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v16 = +[UIKeyboardImpl activeInstance];
  isInHardwareKeyboardMode = [v16 isInHardwareKeyboardMode];

  if (isInHardwareKeyboardMode)
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
  v61 = modesCopy;
  v18 = modesCopy;
  v19 = [v18 countByEnumeratingWithState:&v80 objects:v86 count:16];
  obj = v18;
  v62 = array;
  if (v19)
  {
    v20 = v19;
    typeCopy = type;
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

        if (isInHardwareKeyboardMode)
        {
          if ([v23 count])
          {
            normalizedIdentifier = [v25 normalizedIdentifier];
            v32 = [v23 containsObject:normalizedIdentifier];

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
    if (typeCopy == 127)
    {
      array = v62;
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
      array = v62;
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
      array = v62;
      if (v67)
      {
        goto LABEL_86;
      }

      goto LABEL_73;
    }

    array = v62;
    v36 = v67;
    goto LABEL_70;
  }

  if (!v35)
  {
    v36 = 0;
LABEL_70:
    if (v37)
    {
      identifier = [v21 identifier];
      v49 = UIKeyboardInputModeWithNewHWLayout(identifier, v37);
      v50 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v49];

      v21 = v50;
    }

    [array insertObject:v21 atIndex:0];
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
          [array addObject:v57];
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
  [array addObject:v58];

LABEL_86:
  v8 = array;

  modesCopy = v61;
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

- (void)recomputeActiveInputModesWithExtensions:(BOOL)extensions
{
  extensionsCopy = extensions;
  keyboardStateManager = self->_keyboardStateManager;
  textInputTraits = [(_UIKeyboardStateManager *)keyboardStateManager textInputTraits];
  -[_UIKeyboardStateManager recomputeActiveInputModesWithExtensions:allowNonLinguisticInputModes:](keyboardStateManager, "recomputeActiveInputModesWithExtensions:allowNonLinguisticInputModes:", extensionsCopy, [textInputTraits acceptsInitialEmojiKeyboard]);
}

- (id)responderStylingTraitsForceEditingMask:(BOOL)mask
{
  if (mask)
  {
    textEditingKeyMask = 6;
  }

  else
  {
    textEditingKeyMask = [(UIKeyboardLayout *)self->m_layout textEditingKeyMask];
  }

  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateAsResponder2 = [(UIKeyboardImpl *)self delegateAsResponder];
    isEditable = [delegateAsResponder2 isEditable];

    if (!isEditable)
    {
      textEditingKeyMask &= ~1uLL;
    }
  }

  delegateAsResponder3 = [(UIKeyboardImpl *)self delegateAsResponder];
  _responderForEditing = [delegateAsResponder3 _responderForEditing];
  v11 = [UIKBTextEditingTraits traitsWithResponder:_responderForEditing keyMaskFlags:textEditingKeyMask];

  return v11;
}

- (void)cutOperation
{
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  delegateAsResponder2 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [delegateAsResponder canPerformAction:sel_cut_ withSender:delegateAsResponder2];

  if (v5)
  {
    delegateAsResponder3 = [(UIKeyboardImpl *)self delegateAsResponder];
    delegateAsResponder4 = [(UIKeyboardImpl *)self delegateAsResponder];
    [delegateAsResponder3 cut:delegateAsResponder4];
  }
}

- (void)copyOperation
{
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  delegateAsResponder2 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [delegateAsResponder canPerformAction:sel_copy_ withSender:delegateAsResponder2];

  if (v5)
  {
    delegateAsResponder3 = [(UIKeyboardImpl *)self delegateAsResponder];
    delegateAsResponder4 = [(UIKeyboardImpl *)self delegateAsResponder];
    [delegateAsResponder3 copy:delegateAsResponder4];
  }
}

- (void)pasteOperation
{
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  delegateAsResponder2 = [(UIKeyboardImpl *)self delegateAsResponder];
  v5 = [delegateAsResponder canPerformAction:sel_paste_ withSender:delegateAsResponder2];

  if (v5)
  {
    delegateAsResponder3 = [(UIKeyboardImpl *)self delegateAsResponder];
    delegateAsResponder4 = [(UIKeyboardImpl *)self delegateAsResponder];
    [delegateAsResponder3 paste:delegateAsResponder4];
  }
}

- (void)toggleShift
{
  v3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager shifted]^ 1;

  [(UIKeyboardImpl *)self setShift:v3 autoshift:0];
}

- (void)updateShowCandidateBar
{
  shouldShowCandidateBar = [(UIKeyboardImpl *)self shouldShowCandidateBar];

  [(UIKeyboardImpl *)self setShowsCandidateBar:shouldShowCandidateBar];
}

- (void)playDeleteKeyFeedbackIfNecessaryRepeat:(BOOL)repeat rapid:(BOOL)rapid deleteCount:(int64_t)count
{
  rapidCopy = rapid;
  repeatCopy = repeat;
  autoDeleteTask = [(_UIKeyboardStateManager *)self->_keyboardStateManager autoDeleteTask];

  if (autoDeleteTask)
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
        v10 = !repeatCopy;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {

        [(UIKeyboardImpl *)self playDeleteKeyFeedbackRepeat:repeatCopy rapid:rapidCopy deleteCount:count];
      }
    }
  }
}

- (void)playDeleteKeyFeedbackRepeat:(BOOL)repeat rapid:(BOOL)rapid deleteCount:(int64_t)count
{
  rapidCopy = rapid;
  repeatCopy = repeat;
  currentKeyplane = [(UIKeyboardLayout *)self->m_layout currentKeyplane];
  v19 = [currentKeyplane firstCachedKeyWithName:@"Delete-Key"];

  [v19 frame];
  MidX = CGRectGetMidX(v21);
  [v19 frame];
  MidY = CGRectGetMidY(v22);
  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  isSecureTextEntry = [textInputTraits isSecureTextEntry];

  if (isSecureTextEntry)
  {
    m_feedbackGenerator = self->m_feedbackGenerator;
    v15 = 1;
  }

  else
  {
    v16 = 4;
    if (rapidCopy)
    {
      v16 = 5;
    }

    if (repeatCopy)
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
      [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:v17 textLength:count atLocation:MidX, MidY];
      goto LABEL_11;
    }
  }

  [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:v15 atLocation:MidX, MidY];
LABEL_11:
}

- (void)playInputCandidateFeedback:(int64_t)feedback atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v8 = objc_opt_respondsToSelector();
  m_feedbackGenerator = self->m_feedbackGenerator;
  if (v8)
  {

    [(_UIKBFeedbackGenerating *)m_feedbackGenerator actionOccurred:10 textLength:feedback atLocation:x, y];
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

- (void)becomeFirstResponderAndMakeVisible:(BOOL)visible
{
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  v9 = delegateAsResponder;
  if (visible)
  {
    [delegateAsResponder _previousKeyResponder];
  }

  else
  {
    [delegateAsResponder _nextKeyResponder];
  }
  v6 = ;
  if (v6)
  {
    delegate = [(UIKeyboardImpl *)self delegate];

    if (v6 != delegate)
    {
      textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTraitsForPreviousDelegate:textInputTraits];

      [v6 _becomeFirstResponderAndMakeVisible];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTraitsForPreviousDelegate:0];
    }
  }
}

- (void)updateKeyboardStateForReplacingText:(id)text withText:(id)withText
{
  withTextCopy = withText;
  textCopy = text;
  documentState = [(UIKeyboardImpl *)self documentState];
  v8 = [documentState documentStateAfterReplacingText:textCopy withText:withTextCopy];

  [(UIKeyboardImpl *)self setDocumentState:v8];
}

- (void)moveCursorByAmount:(int64_t)amount
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  [inputDelegateManager _moveCurrentSelection:amount];
}

- (void)addInputString:(id)string fromVariantKey:(BOOL)key
{
  if (key)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(UIKeyboardImpl *)self addInputString:string withFlags:v4];
}

- (void)movePhraseBoundaryToDirection:(int64_t)direction granularity:(int64_t)granularity
{
  if ([(UIKeyboardImpl *)self hasEditableMarkedText]&& [(UIKeyboardImpl *)self phraseBoundary]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1ED498AB8 != -1)
    {
      dispatch_once(&qword_1ED498AB8, &__block_literal_global_473);
    }

    taskQueue = [(UIKeyboardImpl *)self taskQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__UIKeyboardImpl_movePhraseBoundaryToDirection_granularity___block_invoke_3;
    v8[3] = &unk_1E70FDA90;
    v8[4] = self;
    v8[5] = direction;
    v8[6] = granularity;
    [taskQueue performTask:v8 breadcrumb:qword_1ED498AB0];
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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  _characterAfterCaretSelection = [inputDelegate _characterAfterCaretSelection];

  inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  if (inputManagerState)
  {
    v6 = _characterAfterCaretSelection == 0;
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
    inputManagerState2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
    v8 = [MEMORY[0x1E696AEC0] _stringWithUnichar:_characterAfterCaretSelection];
    v9 = [inputManagerState2 stringEndsWord:v8] ^ 1;
  }

  return v9;
}

- (void)collapseSelection
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  [inputDelegateManager collapseSelectionAndAdjustByOffset:0];
}

- (BOOL)_shouldAcceptAutocorrectionOnSelectionChange
{
  autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
  if ([autocorrectionController requestedAutocorrection])
  {
    _hasMarkedText = [(UIKeyboardImpl *)self _hasMarkedText];
  }

  else
  {
    autocorrectionController2 = [(UIKeyboardImpl *)self autocorrectionController];
    autocorrection = [autocorrectionController2 autocorrection];
    if (autocorrection)
    {
      _hasMarkedText = 1;
    }

    else
    {
      _hasMarkedText = [(UIKeyboardImpl *)self _hasMarkedText];
    }
  }

  return _hasMarkedText;
}

- (void)acceptInlineCompletionWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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
  v8 = handlerCopy;
  v6 = handlerCopy;
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
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardInputDestinationEventToUIHost:sel_beginAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self inlineTextCompletionController];
    [remoteTextInputPartner setCurrentlyAcceptingInlineCompletionByDirectTap:1];
  }
}

- (void)endAcceptingInlineCompletionByDirectTap
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardInputDestinationEventToUIHost:sel_endAcceptingInlineCompletionByDirectTap];
  }

  else
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self inlineTextCompletionController];
    [remoteTextInputPartner setCurrentlyAcceptingInlineCompletionByDirectTap:0];
  }
}

- (BOOL)insertsSpaceAfterPredictiveInput
{
  inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  insertsSpaceAfterPredictiveInput = [inputManagerState insertsSpaceAfterPredictiveInput];

  return insertsSpaceAfterPredictiveInput;
}

- (void)acceptHandwritingCandidate
{
  if ([(UIKeyboardLayout *)self->m_layout isHandwritingPlane])
  {
    acceptCurrentCandidate = [(UIKeyboardImpl *)self acceptCurrentCandidate];
  }
}

- (void)showNextCandidates
{
  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [candidateList showCandidateInForwardDirection:1 granularity:0];
}

- (void)showPreviousCandidate
{
  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [candidateList showCandidateInForwardDirection:0 granularity:0];
}

- (void)showNextPage
{
  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  [candidateList showCandidateInForwardDirection:1 granularity:2];
}

- (void)jumpToCompositions
{
  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    [candidateList2 jumpToCompositions];
  }
}

- (void)revealHiddenCandidates
{
  candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    [candidateList2 revealHiddenCandidates];
  }
}

- (void)clearRecentInput
{
  v2 = MEMORY[0x1E69D9690];
  keyboardState = [(UIKeyboardImpl *)self keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  recentInputIdentifier = [textInputTraits recentInputIdentifier];
  [v2 clearRecentInputForIdentifier:recentInputIdentifier];
}

- (void)clearAnimations
{
  layer = [(UIView *)self layer];
  [layer removeAllAnimations];

  m_layout = self->m_layout;

  [(UIKeyboardLayout *)m_layout deactivateActiveKeys];
}

- (void)deferReplaceTextActionToSystem:(id)system
{
  systemCopy = system;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardImpl.m" lineNumber:7813 description:@"Expected argument to be of class UITextReplacement"];
  }

  [(UIKeyboardImpl *)self replaceText:systemCopy];
}

- (void)scheduleReplacementsWithOptions:(unint64_t)options
{
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  interactionAssistant = [inputDelegate interactionAssistant];

  v6 = interactionAssistant;
  if (interactionAssistant)
  {
    [interactionAssistant scheduleReplacementsWithOptions:options];
  }

  else
  {
    if ((options & 0x20) == 0)
    {
      goto LABEL_6;
    }

    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    selectedTextRange = [inputDelegateManager selectedTextRange];
    [_textChoicesAssistant showAutocorrectReplacementChoicesIfNeeded:inputDelegate2 forRange:selectedTextRange];
  }

  v6 = interactionAssistant;
LABEL_6:
}

- (void)_conditionallyNotifyPredictionsAreAvailableForCandidates:(id)candidates containingProactiveTriggers:(BOOL)triggers
{
  triggersCopy = triggers;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  candidatesCopy = candidates;
  v7 = [candidatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(candidatesCopy);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 isResponseKitCandidate])
      {
        responseKitCategory = [v12 responseKitCategory];
        v14 = [&unk_1EFE2CD18 containsObject:responseKitCategory];

        v9 = 1;
        if (!v14)
        {
          break;
        }
      }

      if (v8 == ++v11)
      {
        v8 = [candidatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v9 = triggersCopy & ~v9;
        break;
      }
    }
  }

  else
  {
    v9 = triggersCopy;
  }

  predictionFromPreference = [(UIKeyboardImpl *)self predictionFromPreference];
  if (predictionFromPreference)
  {
    predictionFromPreference = [(UIKeyboardImpl *)self continuousPathUnderway];
  }

  if (predictionFromPreference | v9)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardPredictionsAvailable" object:0];
  }
}

- (void)setCandidateDisplayIsExtended:(BOOL)extended
{
  extendedCopy = extended;
  candidateController = [(UIKeyboardImpl *)self candidateController];
  [candidateController setIsExtended:extendedCopy];
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
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  placement = [_rootInputWindowController placement];

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v5 visualModeManager];
  if ([visualModeManager useVisualModeWindowed])
  {
    visualModeManager2 = [v5 visualModeManager];
    if ([visualModeManager2 windowingModeEnabled])
    {
      v8 = [placement showsKeyboard] ^ 1;
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

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && (![objc_opt_class() isFloating] || objc_msgSend(placement, "isFloatingAssistantView")))
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if (([textInputTraits autocorrectionType] == 1) | v8 & 1)
    {
      autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
      hasAutofillCandidates = [autocorrectionController hasAutofillCandidates];
    }

    else
    {
      hasAutofillCandidates = 1;
    }
  }

  else
  {
    hasAutofillCandidates = 0;
  }

  return hasAutofillCandidates;
}

- (void)setShowsCandidateInline:(BOOL)inline
{
  if (-[UIKeyboardImpl isPredictionViewControllerVisible](self, "isPredictionViewControllerVisible") || (-[UIKeyboardImpl textInputTraits](self, "textInputTraits"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSecureTextEntry], v5, v6))
  {
    self->m_showsCandidateInline = 0;
  }

  else
  {
    self->m_showsCandidateInline = inline;
    if (inline)
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

- (void)setShowsCandidateBar:(BOOL)bar
{
  if (self->m_showsCandidateBar != bar)
  {
    barCopy = bar;
    self->m_showsCandidateBar = bar;
    [(UIKeyboardImpl *)self _postInputResponderChangedNotification];
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    [_rootInputWindowController updateInputAssistantViewForInputViewSet:0];

    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerRootController = [v6 existingContainerRootController];
    [existingContainerRootController updateInputAssistantViewForInputViewSet:0];

    if (barCopy)
    {
      candidateController = [(UIKeyboardImpl *)self candidateController];
      [candidateController setActiveCandidateViewType:2];

      candidateController2 = [(UIKeyboardImpl *)self candidateController];
      _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
      [candidateController2 _setRenderConfig:_inheritedRenderConfig];
    }

    if (+[UIKeyboard isInputSystemUI])
    {
      inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
      if (inputSystemSourceSession)
      {
        v14 = inputSystemSourceSession;
        textOperations = [inputSystemSourceSession textOperations];
        [textOperations setCustomInfoType:0x1EFB7CA70];
        buildInputSourceState = [(UIKeyboardImpl *)self buildInputSourceState];
        [textOperations setInputSourceState:buildInputSourceState];

        [v14 flushOperations];
        inputSystemSourceSession = v14;
      }
    }
  }
}

- (id)_supplementalCandidateIcon:(id)icon
{
  ui_supplementalItems = [icon ui_supplementalItems];
  if (![ui_supplementalItems count])
  {
    v7 = 0;
    goto LABEL_8;
  }

  if ([ui_supplementalItems count] == 1)
  {
    textInputTraits2 = [ui_supplementalItems objectAtIndexedSubscript:0];
    icon = [textInputTraits2 icon];
LABEL_7:
    v7 = icon;

    goto LABEL_8;
  }

  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  supplementalLexiconAmbiguousItemIcon = [textInputTraits supplementalLexiconAmbiguousItemIcon];

  if (supplementalLexiconAmbiguousItemIcon)
  {
    textInputTraits2 = [(UIKeyboardImpl *)self textInputTraits];
    icon = [textInputTraits2 supplementalLexiconAmbiguousItemIcon];
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
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [_textChoicesAssistant removeActivePromptAndUnderline];

    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    selectedTextRange = [inputDelegateManager selectedTextRange];
    [(UIKeyboardImpl *)self removeTextChoiceUnderlinesInRange:selectedTextRange];
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
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [_textChoicesAssistant removeAllUnderlines];
  }
}

- (void)removeTextChoiceUnderlinesInRange:(id)range
{
  rangeCopy = range;
  v4 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
  v5 = rangeCopy;
  if (rangeCopy && v4)
  {
    isEmpty = [rangeCopy isEmpty];
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    v8 = _textChoicesAssistant;
    if (isEmpty)
    {
      start = [rangeCopy start];
      [v8 clearUnderlineForPosition:start];
    }

    else
    {
      [_textChoicesAssistant removeAllUnderlines];
    }

    v5 = rangeCopy;
  }
}

- (void)presentTextChoicePromptForRange:(id)range
{
  rangeCopy = range;
  if (+[UIKeyboard usesInputSystemUI])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardInputDestinationEventToUIHost:sel_presentTextChoicePromptForRange_];
  }

  else
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self _textChoicesAssistant];
    [remoteTextInputPartner presentIfNeededForRange:rangeCopy];
  }
}

- (void)setReturnKeyEnabled:(BOOL)enabled
{
  m_returnKeyState = self->m_returnKeyState;
  if (enabled)
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
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner documentTraitsChanged];
  }
}

- (void)updateReturnKey:(BOOL)key
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (!self->m_inDealloc)
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    emptyContentReturnKeyType = [textInputTraits emptyContentReturnKeyType];

    if (emptyContentReturnKeyType)
    {
LABEL_25:
      [(UIKeyboardImpl *)self callLayoutUpdateReturnKey];
      v28[0] = @"UITextInputReturnKeyStateChangedDisplayStringKey";
      returnKeyDisplayName = [(UIKeyboardImpl *)self returnKeyDisplayName];
      v29[0] = returnKeyDisplayName;
      v28[1] = @"UITextInputReturnKeyStateChangedStateKey";
      v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKeyboardImpl returnKeyEnabled](self, "returnKeyEnabled")}];
      v29[1] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UITextInputReturnKeyStateChangedNotification" object:0 userInfo:v26];

      return;
    }

    textInputTraits2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    if ([textInputTraits2 enablesReturnKeyAutomatically])
    {
    }

    else
    {
      textInputTraits3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      enablesReturnKeyOnNonWhiteSpaceContent = [textInputTraits3 enablesReturnKeyOnNonWhiteSpaceContent];

      if (!enablesReturnKeyOnNonWhiteSpaceContent)
      {
        if (self->m_returnKeyEnabledInLayout != [(UIKeyboardImpl *)self returnKeyEnabled])
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    m_returnKeyState = self->m_returnKeyState;
    noContent = [(UIKeyboardImpl *)self noContent];
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    if (inputDelegate && !noContent)
    {
      textInputTraits4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      enablesReturnKeyOnNonWhiteSpaceContent2 = [textInputTraits4 enablesReturnKeyOnNonWhiteSpaceContent];

      if (!enablesReturnKeyOnNonWhiteSpaceContent2 || [(UIKeyboardImpl *)self _hasMarkedText])
      {
        noContent = 0;
LABEL_15:
        inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
        keyInputDelegate = [inputDelegateManager keyInputDelegate];
        v20 = keyInputDelegate == 0 || noContent;

        if (!v20 && m_returnKeyState == 1 || !v20 && (m_returnKeyState | 2) == 3)
        {
          v21 = 0;
LABEL_20:
          self->m_returnKeyState = v21;
          goto LABEL_25;
        }

        if (noContent && (m_returnKeyState | 2) == 2)
        {
          textInputTraits5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
          emptyContentReturnKeyType2 = [textInputTraits5 emptyContentReturnKeyType];

          if (!emptyContentReturnKeyType2)
          {
            v21 = 1;
            goto LABEL_20;
          }
        }

LABEL_24:
        if (!key)
        {
          return;
        }

        goto LABEL_25;
      }

      inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
      _fullText = [inputDelegate _fullText];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v17 = [_fullText stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      noContent = [v17 length] == 0;
    }

    goto LABEL_15;
  }
}

- (void)_handleKeyBehavior:(unint64_t)behavior forKeyType:(id)type
{
  typeCopy = type;
  v28 = typeCopy;
  if (behavior == 1)
  {
    [(UIKeyboardLayout *)self->m_layout restoreDefaultsForKey:typeCopy];
    [(UIKeyboardLayout *)self->m_layout setTarget:self forKey:v28];
    [(UIKeyboardLayout *)self->m_layout setAction:sel__nop forKey:v28];
    goto LABEL_53;
  }

  if (!behavior)
  {
    [(UIKeyboardLayout *)self->m_layout restoreDefaultsForKey:typeCopy];
    goto LABEL_53;
  }

  behaviorCopy = behavior;
  if (behavior == 8)
  {
    v8 = [typeCopy isEqualToString:@"_keyid_space_"];
    v9 = 56;
    if (v8)
    {
      v9 = 55;
    }

    behaviorCopy = *(&self->super.super.super.isa + OBJC_IVAR___UIKeyboardImpl__id[v9]);
  }

  [(UIKeyboardLayout *)self->m_layout setTarget:self forKey:v28];
  [(UIKeyboardLayout *)self->m_layout setLongPressAction:0 forKey:v28];
  if (behaviorCopy > 6)
  {
    if (behaviorCopy <= 10)
    {
      if (behaviorCopy != 7)
      {
        if (behaviorCopy != 9)
        {
          if (behaviorCopy != 10)
          {
            goto LABEL_45;
          }

          [(UIKeyboardLayout *)self->m_layout setLabel:@"UI-Confirm" forKey:v28];
          m_layout = self->m_layout;
          v11 = sel_performKeyBehaviorCommitInline;
          goto LABEL_44;
        }

        v18 = self->m_layout;
        returnKeyDisplayName = [(UIKeyboardImpl *)self returnKeyDisplayName];
        [(UIKeyboardLayout *)v18 setLabel:returnKeyDisplayName forKey:v28];

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

    if (behaviorCopy == 11)
    {
      m_layout = self->m_layout;
      v11 = sel_performKeyBehaviorCommitInlineWithSpace;
      goto LABEL_44;
    }

    if (behaviorCopy != 12)
    {
      if (behaviorCopy != 100)
      {
        goto LABEL_45;
      }

      v12 = self->m_layout;
      v13 = UIKeyboardStringZhuyinFirstTone;
      goto LABEL_41;
    }

    v20 = @"UI-IdeographicSpace";
    keyboardState = [(UIKeyboardImpl *)self keyboardState];
    layoutState = [keyboardState layoutState];
    if ([layoutState isAlphabeticPlane])
    {
      keyboardState2 = [(UIKeyboardImpl *)self keyboardState];
      shiftState = [keyboardState2 shiftState];

      if (shiftState != 1)
      {
LABEL_37:
        [(UIKeyboardLayout *)self->m_layout setLabel:v20 forKey:v28];
        [(UIKeyboardLayout *)self->m_layout setAction:0 forKey:v28];

        goto LABEL_45;
      }

      keyboardState = [(UIKeyboardImpl *)self keyboardState];
      shouldOutputFullwidthSpace = [keyboardState shouldOutputFullwidthSpace];
      v26 = UIKeyboardStringHalfwidthSpace;
      if (!shouldOutputFullwidthSpace)
      {
        v26 = UIKeyboardStringFullwidthSpace;
      }

      layoutState = v20;
      v20 = *v26;
    }

    goto LABEL_37;
  }

  if (behaviorCopy <= 3)
  {
    if (behaviorCopy == 2)
    {
      usesCandidateSelection = [(UIKeyboardImpl *)self usesCandidateSelection];
      v17 = UIKeyboardStringConfirmCandidate;
      if (!usesCandidateSelection)
      {
        v17 = UIKeyboardStringConfirm;
      }

      [(UIKeyboardLayout *)self->m_layout setLabel:*v17 forKey:v28];
      m_layout = self->m_layout;
      v11 = sel_performKeyBehaviorConfirm;
      goto LABEL_44;
    }

    if (behaviorCopy != 3)
    {
      goto LABEL_45;
    }

    v14 = self->m_layout;
    v15 = UIKeyboardStringSelectFirstCandidate;
  }

  else
  {
    if (behaviorCopy != 4)
    {
      if (behaviorCopy != 5)
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
  if (behavior == 8)
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

    *(&self->super.super.super.isa + v27) = behaviorCopy;
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

  textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
  isSecureTextEntry = [textInputTraits isSecureTextEntry];

  if ((isSecureTextEntry & 1) == 0)
  {
    v6 = MEMORY[0x1E69D9690];
    keyboardState = [(UIKeyboardImpl *)self keyboardState];
    textInputTraits2 = [keyboardState textInputTraits];
    recentInputIdentifier = [textInputTraits2 recentInputIdentifier];
    v10 = [v6 recentInputForIdentifier:recentInputIdentifier];

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

- (BOOL)callLayoutIsGeometricShiftOrMoreKeyForTouch:(id)touch
{
  touchCopy = touch;
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIKeyboardLayout *)self->m_layout isGeometricShiftOrMoreKeyForTouch:touchCopy];

  return v5;
}

- (id)inlineCandidateView
{
  candidateController = [(UIKeyboardImpl *)self candidateController];
  inlineCandidateView = [candidateController inlineCandidateView];

  return inlineCandidateView;
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

- (CGRect)getCorrectionRectIsVertical:(BOOL *)vertical
{
  [(_UIKeyboardStateManager *)self->_keyboardStateManager getCorrectionRectIsVertical:vertical];
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

  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];

  if (!inputDelegate)
  {
    return;
  }

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  shouldSuppressUpdateCandidateView = [inputDelegateManager shouldSuppressUpdateCandidateView];

  if (shouldSuppressUpdateCandidateView)
  {
    return;
  }

  candidateController = [(UIKeyboardImpl *)self candidateController];
  inLineCandidateViewIsHosted = [candidateController inLineCandidateViewIsHosted];

  if (inLineCandidateViewIsHosted)
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
      candidateController2 = [(UIKeyboardImpl *)self candidateController];
      [candidateController2 setInlineRectIsVertical:v16];

      keyboardScreen = [objc_opt_class() keyboardScreen];
      v19 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:[(UIView *)self _keyboardOrientation]];

      candidateController3 = [(UIKeyboardImpl *)self candidateController];
      [candidateController3 setScreenTraits:v19];

      candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      if (!candidateList)
      {
        if (-[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode") && (WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate), v23 = [WeakRetained isMinimized], WeakRetained, (v23 & 1) != 0) || (v24 = self->_keyboardStateManager, -[UIKeyboardLayout candidateList](self->m_layout, "candidateList"), v25 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardStateManager _setCandidateList:](v24, "_setCandidateList:", v25), v25, -[_UIKeyboardStateManager candidateList](self->_keyboardStateManager, "candidateList"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
        {
LABEL_21:
          candidateController4 = [(UIKeyboardImpl *)self candidateController];
          activeCandidateViewType = [candidateController4 activeCandidateViewType];

          candidateController5 = [(UIKeyboardImpl *)self candidateController];
          candidateController6 = candidateController5;
          if (activeCandidateViewType)
          {
            candidateKey = [candidateController5 candidateKey];
          }

          else
          {
            activeCandidateViewType2 = [candidateController5 activeCandidateViewType];

            if ((activeCandidateViewType2 & 4) == 0)
            {
              goto LABEL_26;
            }

            candidateController6 = [(UIKeyboardImpl *)self candidateController];
            candidateKey = [candidateController6 inlineCandidateView];
          }

          v33 = candidateKey;
          superview = [candidateKey superview];

          if (superview)
          {
LABEL_27:
            shouldShowCandidateBar = [(UIKeyboardImpl *)self shouldShowCandidateBar];
            if (!-[UIKeyboardImpl floatingForced](self, "floatingForced") || -[UIKeyboardImpl _shouldSuppressAssistantBar](self, "_shouldSuppressAssistantBar") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v36 = objc_claimAutoreleasedReturnValue(), [v36 currentInputMode], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "identifier"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "containsString:", @"HWR"), v38, v37, v36, v39))
            {
              delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
              _responderForEditing = [delegateAsResponder _responderForEditing];
              _alwaysRequireInlineCandidateView = [_responderForEditing _alwaysRequireInlineCandidateView];
            }

            else
            {
              _alwaysRequireInlineCandidateView = 1;
            }

            inputStringFromPhraseBoundary = [(UIKeyboardImpl *)self inputStringFromPhraseBoundary];
            v44 = [inputStringFromPhraseBoundary length];
            if ([(UIKeyboardImpl *)self _allowMinimizeForHardwareKeyboard])
            {
              if (![(UIKeyboardImpl *)self isMinimized])
              {
LABEL_36:
                candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                if (candidateList2 || ![(UIKeyboardImpl *)self showsCandidateInline])
                {

                  if (!_alwaysRequireInlineCandidateView)
                  {
                    v46 = 0;
LABEL_44:
                    if ((shouldShowCandidateBar | v46))
                    {
                      keyboardStateManager = self->_keyboardStateManager;
                      candidateController7 = [(UIKeyboardImpl *)self candidateController];
                      [(_UIKeyboardStateManager *)keyboardStateManager _setCandidateList:candidateController7];

                      v49 = 4;
                      if (!v46)
                      {
                        v49 = 0;
                      }

                      if (shouldShowCandidateBar)
                      {
                        v50 = v49 | 2;
                      }

                      else
                      {
                        v50 = v49;
                      }

                      candidateController8 = [(UIKeyboardImpl *)self candidateController];
                      [candidateController8 setActiveCandidateViewType:v50];

                      if (shouldShowCandidateBar)
                      {
                        v169 = v15;
                        v52 = v13;
                        v53 = v11;
                        candidateController9 = [(UIKeyboardImpl *)self candidateController];
                        loadCandidateBar = [candidateController9 loadCandidateBar];
                        isHidden = [loadCandidateBar isHidden];

                        if (isHidden)
                        {
                          candidateController10 = [(UIKeyboardImpl *)self candidateController];
                          candidateBar = [candidateController10 candidateBar];
                          [candidateBar setHidden:0];
                        }

                        v59 = v9;
                        if (![(UIKeyboardImpl *)self showsCandidateBar])
                        {
                          [(UIKeyboardImpl *)self setShowsCandidateBar:1];
                        }

                        candidateController11 = [(UIKeyboardImpl *)self candidateController];
                        loadCandidateBar2 = [candidateController11 loadCandidateBar];

                        [loadCandidateBar2 frame];
                        v63 = v62;
                        v65 = v64;
                        v67 = v66;
                        v69 = v68;
                        candidateController12 = [(UIKeyboardImpl *)self candidateController];
                        [candidateController12 candidateBarHeightForOrientation:{-[UIKeyboardLayout orientation](self->m_layout, "orientation")}];
                        v72 = v71;

                        if (v69 != v72)
                        {
                          candidateController13 = [(UIKeyboardImpl *)self candidateController];
                          isExtendedList = [candidateController13 isExtendedList];

                          if ((isExtendedList & 1) == 0)
                          {
                            [loadCandidateBar2 setFrame:{v63, v65, v67, v72}];
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
                        candidateController14 = [(UIKeyboardImpl *)self candidateController];
                        loadInlineCandidateView = [candidateController14 loadInlineCandidateView];
                      }

                      else
                      {
                        loadInlineCandidateView = 0;
                      }

                      candidateController15 = [(UIKeyboardImpl *)self candidateController];
                      [candidateController15 updateStates];

                      if (loadInlineCandidateView)
                      {
                        v170 = v44;
                        v81 = [(UIKeyboardImpl *)self inputOverlayContainerForCandidateView:1];
                        candidateController16 = [(UIKeyboardImpl *)self candidateController];
                        [candidateController16 maximumSizeForInlineView];
                        v84 = v83;
                        v86 = v85;

                        if (!self->m_scrolling)
                        {
                          popoverPresentationController = [(UIViewController *)self->_emojiPopoverController popoverPresentationController];
                          containerView = [popoverPresentationController containerView];
                          if (v81 != containerView)
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

                            popoverPresentationController = +[UIPeripheralHost sharedInstance];
                            [popoverPresentationController transformedContainerView];
                            v81 = containerView = v81;
                          }
                        }

LABEL_73:
                        if ((objc_opt_respondsToSelector() & 1) == 0 || ([loadInlineCandidateView isFloating] & 1) == 0)
                        {
                          superview2 = [loadInlineCandidateView superview];
                          v92 = superview2;
                          if (v81 == superview2)
                          {
                          }

                          else
                          {
                            superview3 = [loadInlineCandidateView superview];

                            if (superview3)
                            {
                              [loadInlineCandidateView frame];
                              v95 = v94;
                              v97 = v96;
                              v99 = v98;
                              v101 = v100;
                              superview4 = [loadInlineCandidateView superview];
                              [v81 convertPoint:superview4 fromView:{v95, v97}];
                              v104 = v103;
                              v106 = v105;

                              [loadInlineCandidateView setFrame:{v104, v106, v99, v101}];
                              [v81 addSubview:loadInlineCandidateView];
                              superview6 = v81;
                              goto LABEL_84;
                            }
                          }
                        }

                        superview5 = [loadInlineCandidateView superview];

                        if (!superview5)
                        {
                          v44 = v170;
                          goto LABEL_86;
                        }

                        superview6 = [loadInlineCandidateView superview];
LABEL_84:
                        v109 = superview6;
                        v44 = v170;

                        superview = v109;
LABEL_86:
                      }
                    }

                    else
                    {
                      dynamicCaretList = [(UIKeyboardImpl *)self dynamicCaretList];

                      if (dynamicCaretList)
                      {
                        v76 = self->_keyboardStateManager;
                        dynamicCaretList2 = [(UIKeyboardImpl *)self dynamicCaretList];
                        [(_UIKeyboardStateManager *)v76 _setCandidateList:dynamicCaretList2];
                      }

                      else if ([(UIKeyboardImpl *)self showsCandidateBar])
                      {
                        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
                      }
                    }

                    candidateList3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];

                    if (candidateList3)
                    {
                      candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                      candidates = [candidateResultSet candidates];
                      v113 = [candidates count];

                      if (!v113)
                      {
                        goto LABEL_94;
                      }

                      candidateResultSet2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                      hasCandidates = [candidateResultSet2 hasCandidates];

                      v116 = self->_keyboardStateManager;
                      if (hasCandidates)
                      {
                        candidateResultSet3 = [(_UIKeyboardStateManager *)v116 candidateResultSet];
                        candidates2 = [candidateResultSet3 candidates];
                        firstObject = [candidates2 firstObject];

                        if ([firstObject isSmartReply])
                        {
                          isSmartAction = 1;
                        }

                        else
                        {
                          isSmartAction = [firstObject isSmartAction];
                        }

                        if ((v44 || (([(UIKeyboardImpl *)self suppliesCompletions]| isSmartAction) & 1) != 0 || [(UIKeyboardImpl *)self usesAutocorrectionLists]|| [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType]== 2 || [(_UIKeyboardStateManager *)self->_keyboardStateManager predictionType]== 4) && (!v46 || (v174.origin.x = v9, v174.origin.y = v11, v174.size.width = v13, v174.size.height = v15, !CGRectIsNull(v174)) && superview && [(UIKeyboardImpl *)self delegateSupportsCorrectionUI]))
                        {
                          if ([(UIKeyboardImpl *)self geometryIsChanging])
                          {
                            keyboardState = [(UIKeyboardImpl *)self keyboardState];
                            currentCandidate = [keyboardState currentCandidate];
                          }

                          else
                          {
                            currentCandidate = 0;
                          }

                          candidateList4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                          keyboardStateManager = [(UIKeyboardImpl *)self keyboardStateManager];
                          [candidateList4 setUIKeyboardCandidateListDelegate:keyboardStateManager];

                          inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
                          textInputView = [inputDelegate2 textInputView];

                          v171 = textInputView;
                          [(UIKeyboardImpl *)self convertRectToAutocorrectRect:textInputView delegateView:superview container:v9, v11, v13, v15];
                          v130 = v129;
                          v132 = v131;
                          v134 = v133;
                          v136 = v135;
                          candidateList5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                          v138 = objc_opt_respondsToSelector();

                          if (v138)
                          {
                            v139 = [(UIKeyboardImpl *)self promptTypeForInputString:inputStringFromPhraseBoundary];
                            [superview bounds];
                            v142 = v140 + v141;
                            v143 = +[UIKeyboardImpl sharedInstance];
                            isInHardwareKeyboardMode = [v143 isInHardwareKeyboardMode];

                            if (isInHardwareKeyboardMode)
                            {
                              if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(UIKeyboardImpl *)self isEmojiPopoverPresented])
                              {
                                v166 = +[UIPeripheralHost sharedInstance];
                                transformedContainerView = [v166 transformedContainerView];
                                window = [transformedContainerView window];
                                [window actualSceneBounds];
                                v147 = CGRectGetMaxX(v175) + -15.0;

                                if (v142 >= v147)
                                {
                                  v142 = v147;
                                }
                              }
                            }

                            candidateList6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            candidateResultSet4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            [candidateList6 setCandidates:candidateResultSet4 type:v139 inlineText:inputStringFromPhraseBoundary inlineRect:1 maxX:v130 layout:{v132, v134, v136, v142}];
                          }

                          else
                          {
                            candidateList6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            candidateResultSet4 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            [superview bounds];
                            [candidateList6 setCandidates:candidateResultSet4 inlineText:inputStringFromPhraseBoundary inlineRect:1 maxX:v130 layout:{v132, v134, v136, v150 + v151}];
                          }

                          if ([(UIKeyboardImpl *)self shouldShowLongPredictionList])
                          {
                            v167 = firstObject;
                            candidateResultSet5 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                            candidates3 = [candidateResultSet5 candidates];
                            firstObject2 = [candidates3 firstObject];
                            null = [MEMORY[0x1E695DFB0] null];

                            if (firstObject2 != null)
                            {
                              candidateResultSet6 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                              candidates4 = [candidateResultSet6 candidates];
                              firstObject3 = [candidates4 firstObject];

                              currentCandidate = firstObject3;
                            }

                            firstObject = v167;
                          }

                          if (!currentCandidate || (-[_UIKeyboardStateManager candidateList](self->_keyboardStateManager, "candidateList"), v159 = objc_claimAutoreleasedReturnValue(), v160 = [v159 showCandidate:currentCandidate], v159, (v160 & 1) == 0))
                          {
                            candidateList7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
                            currentCandidate2 = [candidateList7 currentCandidate];

                            if (!currentCandidate2)
                            {
                              liveConversionEnabled = [(UIKeyboardImpl *)self liveConversionEnabled];
                              candidateController17 = [(UIKeyboardImpl *)self candidateController];
                              candidateResultSet7 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
                              [candidateController17 showCandidateAtIndex:objc_msgSend(candidateResultSet7 animated:"initialSelectedIndex") scrollPosition:{0, liveConversionEnabled}];
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

                      candidateList8 = [(_UIKeyboardStateManager *)v116 candidateList];
                      hasCandidates2 = [candidateList8 hasCandidates];

                      if ((hasCandidates2 & 1) == 0)
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
          superview = [(UIKeyboardImpl *)self inputOverlayContainerForCandidateView:1];
          goto LABEL_27;
        }

        [(UIKeyboardImpl *)self setShowsCandidateBar:0];
        candidateList = [(UIKeyboardImpl *)self candidateController];
        [candidateList setActiveCandidateViewType:1];
      }

      goto LABEL_21;
    }

    [(UIKeyboardImpl *)self removeCandidateList];
  }
}

- (int)promptTypeForInputString:(id)string
{
  stringCopy = string;
  inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  supportsSetPhraseBoundary = [inputManagerState supportsSetPhraseBoundary];

  if (supportsSetPhraseBoundary)
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
    if (![stringCopy length])
    {
      inputManagerState2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
      suppressCompletionsForFieldEditor = [inputManagerState2 suppressCompletionsForFieldEditor];

      if (suppressCompletionsForFieldEditor)
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
      layer = [v6 layer];
      v8 = objc_loadWeakRetained(&self->_overlayContainerObserved);
      [layer removeObserver:self forKeyPath:@"bounds" context:v8];
    }

    v9 = objc_storeWeak(&self->_overlayContainerObserved, obj);
    layer2 = [obj layer];
    v11 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [layer2 addObserver:self forKeyPath:@"bounds" options:0 context:v11];

    v4 = obj;
  }
}

- (void)endObservingInputOverlayContainerFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    layer = [v4 layer];
    v6 = objc_loadWeakRetained(&self->_overlayContainerObserved);
    [layer removeObserver:self forKeyPath:@"bounds" context:v6];

    [(UIKeyboardImpl *)self updateInputOverlayForContainerFrameChange];

    objc_storeWeak(&self->_overlayContainerObserved, 0);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_overlayContainerObserved);

    if (v10 == context)
    {

      [(UIKeyboardImpl *)self updateInputOverlayForContainerFrameChange];
    }
  }
}

- (CGRect)convertRectToAutocorrectRect:(CGRect)rect delegateView:(id)view container:(id)container
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  containerCopy = container;
  v12 = containerCopy;
  if (containerCopy != viewCopy)
  {
    window = [containerCopy window];
    if (window)
    {
      window2 = [viewCopy window];
      if (window2)
      {
        window3 = [v12 window];
        window4 = [viewCopy window];
        v17 = window3 != window4;
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

    window5 = [v12 window];
    v19 = [window5 _shouldTextEffectsWindowBeHostedForView:viewCopy];

    if ((v19 & 1) == 0 && !v17)
    {
      [v12 convertRect:viewCopy fromView:{x, y, width, height}];
      v59 = CGRectIntegral(v58);
LABEL_11:
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
      goto LABEL_16;
    }

    window6 = [v12 window];
    [window6 convertRect:viewCopy fromView:{x, y, width, height}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    window7 = [v12 window];
    [window7 convertRect:v12 toView:{v22, v24, v26, v28}];
    x = v30;
    y = v31;
    width = v32;
    height = v33;

    window8 = [v12 window];
    [window8 windowLevel];
    v36 = v35;
    window9 = [viewCopy window];
    [window9 windowLevel];
    v39 = v38;

    if (v36 < v39)
    {
      _rootInputWindowController = [viewCopy _rootInputWindowController];
      [_rootInputWindowController visibleFrame];
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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    [inputDelegate2 _willShowCorrections];
  }
}

- (void)sendCallbacksForPostCorrectionsRemoval
{
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    [inputDelegate2 _didHideCorrections];
  }
}

- (void)updateAutocorrectPrompt:(id)prompt
{
  promptCopy = prompt;
  if (qword_1ED498AC8 != -1)
  {
    dispatch_once(&qword_1ED498AC8, &__block_literal_global_580);
  }

  taskQueue = [(UIKeyboardImpl *)self taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UIKeyboardImpl_updateAutocorrectPrompt___block_invoke_3;
  v8[3] = &unk_1E70FD1B8;
  v8[4] = self;
  v9 = promptCopy;
  v6 = qword_1ED498AC0;
  v7 = promptCopy;
  [taskQueue performSingleTask:v8 breadcrumb:v6];
}

void __42__UIKeyboardImpl_updateAutocorrectPrompt___block_invoke()
{
  v0 = [&__block_literal_global_582_1 copy];
  v1 = qword_1ED498AC0;
  qword_1ED498AC0 = v0;
}

- (void)updateAutocorrectPrompt:(id)prompt executionContext:(id)context
{
  promptCopy = prompt;
  contextCopy = context;
  candidate = [promptCopy candidate];
  input = [promptCopy input];
  if (![(UIKeyboardImpl *)self hasAdvancedInputDelegate])
  {
    goto LABEL_12;
  }

  [(UIKeyboardImpl *)self clearAutocorrectPromptTimer];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager _isSelecting])
  {
    goto LABEL_11;
  }

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  selectedTextRange = [inputDelegateManager selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if ((isEmpty & 1) == 0 || ![candidate length] || !-[UIKeyboardImpl delegateSupportsCorrectionUI](self, "delegateSupportsCorrectionUI") || -[UIKeyboardImpl autocorrectionPreferenceForTraits](self, "autocorrectionPreferenceForTraits") == 2)
  {
    goto LABEL_11;
  }

  if ([candidate isEqualToString:input])
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
    [contextCopy returnExecutionToParent];
    goto LABEL_13;
  }

  if ([(UIKeyboardImpl *)self hasAsyncCapableInputDelegate])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__UIKeyboardImpl_updateAutocorrectPrompt_executionContext___block_invoke;
    aBlock[3] = &unk_1E70FD208;
    aBlock[4] = self;
    v19 = promptCopy;
    v20 = input;
    v15 = _Block_copy(aBlock);
    if (qword_1ED498AE8 != -1)
    {
      dispatch_once(&qword_1ED498AE8, &__block_literal_global_591_0);
    }

    taskQueue = [(UIKeyboardImpl *)self taskQueue];
    [taskQueue addTask:v15 breadcrumb:qword_1ED498AE0];

    [contextCopy returnExecutionToParent];
  }

  else
  {
    v17 = [(UIKeyboardImpl *)self autocorrectPromptRectsForInput:input];
    [(UIKeyboardImpl *)self updateAutocorrectPrompt:promptCopy correctionRects:v17];
    [contextCopy returnExecutionToParent];
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

- (id)autocorrectPromptRectsForInput:(id)input
{
  v4 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:input];
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    [inputDelegate firstRectForRange:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    [inputDelegate2 _lastRectForRange:v5];
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
    _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
    if ([_textChoicesAssistant autocorrectInlinePromptIsVisible])
    {
      autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
      hasAutocorrection = [autocorrectionController hasAutocorrection];

      if (!hasAutocorrection)
      {
        return;
      }

      autocorrectionController2 = [(UIKeyboardImpl *)self autocorrectionController];
      _textChoicesAssistant = [autocorrectionController2 autocorrection];

      input = [_textChoicesAssistant input];
      v7 = [(UIKeyboardImpl *)self autocorrectPromptRectsForInput:input];

      if ([v7 count])
      {
        _textChoicesAssistant2 = [(UIKeyboardImpl *)self _textChoicesAssistant];
        candidate = [_textChoicesAssistant candidate];
        [_textChoicesAssistant2 updateActivePromptForCandidate:candidate displayRects:v7 highlightOnly:1];
      }
    }
  }
}

- (void)updateAutocorrectPrompt:(id)prompt correctionRects:(id)rects
{
  promptCopy = prompt;
  rectsCopy = rects;
  candidate = [promptCopy candidate];
  input = [promptCopy input];
  if (![rectsCopy count] || (objc_msgSend(rectsCopy, "lastObject"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "rect"), v11 = v10, v13 = v12, v15 = v14, v17 = v16, v9, v30.origin.x = v11, v30.origin.y = v13, v30.size.width = v15, v30.size.height = v17, CGRectIsEmpty(v30)))
  {
    [(UIKeyboardImpl *)self removeAutocorrectPrompt];
    goto LABEL_15;
  }

  inputOverlayContainer = [(UIKeyboardImpl *)self inputOverlayContainer];
  if (inputOverlayContainer && [(UIKeyboardImpl *)self delegateSupportsCorrectionUI])
  {
    [(UIKeyboardImpl *)self updateKeyboardConfigurations];
    inlineTextCompletionController = [(UIKeyboardImpl *)self inlineTextCompletionController];
    hasPrompt = [inlineTextCompletionController hasPrompt];

    if (!hasPrompt)
    {
      if (+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
      {
        v21 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v21 userInterfaceIdiom];

        if (![(UIKeyboardImpl *)self isMinimized]|| userInterfaceIdiom)
        {
          userInterfaceIdiom = [(UIKeyboardImpl *)self isPredictionViewControllerVisible]|| [(UIKeyboardImpl *)self accessibilityUsesExtendedKeyboardPredictionsEnabled];
        }

        _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
        candidate2 = [promptCopy candidate];
        [_textChoicesAssistant updateActivePromptForCandidate:candidate2 displayRects:rectsCopy highlightOnly:userInterfaceIdiom];
      }

      else
      {
        [(UIKeyboardImpl *)self updateLegacyAutocorrectPromptWithAutocorrection:promptCopy parentView:inputOverlayContainer correctionRects:rectsCopy];
      }

      if ([candidate length])
      {
        [(UIKeyboardImpl *)self sendCallbacksForPreCorrectionsDisplay];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObject:candidate forKey:@"correction"];
        [defaultCenter postNotificationName:@"UIKeyboardCandidateCorrectionDidChangeNotification" object:0 userInfo:v27];
      }

      goto LABEL_14;
    }
  }

  else
  {
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    [inputDelegate _replaceCurrentWordWithText:candidate];

    [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
    [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
  }

  [(UIKeyboardImpl *)self removeAutocorrectPrompt];
LABEL_14:

LABEL_15:
}

- (void)updateLegacyAutocorrectPromptWithAutocorrection:(id)autocorrection parentView:(id)view correctionRects:(id)rects
{
  autocorrectionCopy = autocorrection;
  viewCopy = view;
  rectsCopy = rects;
  candidate = [autocorrectionCopy candidate];
  input = [autocorrectionCopy input];
  m_autocorrectPrompt = self->m_autocorrectPrompt;
  if (!m_autocorrectPrompt)
  {
    v14 = [UIAutocorrectInlinePrompt alloc];
    v15 = [(UIAutocorrectInlinePrompt *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v16 = self->m_autocorrectPrompt;
    self->m_autocorrectPrompt = v15;

    goto LABEL_5;
  }

  superview = [(UIView *)m_autocorrectPrompt superview];

  if (superview != viewCopy)
  {
LABEL_5:
    [viewCopy addSubview:self->m_autocorrectPrompt];
  }

  v17 = self->m_autocorrectPrompt;
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  textInputView = [inputDelegate textInputView];
  [textInputView _convertVisualAltitude:self->m_autocorrectPrompt toView:0.0];
  [(UIView *)v17 _setVisualAltitude:?];

  [(UIKeyboardImpl *)self trackUsageForPromptedCorrection:candidate inputString:input previousPrompt:self->m_autocorrectPrompt];
  -[UIAutocorrectInlinePrompt setUsageTrackingMask:](self->m_autocorrectPrompt, "setUsageTrackingMask:", [autocorrectionCopy usageTrackingMask]);
  lastObject = [rectsCopy lastObject];
  [lastObject rect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [viewCopy bounds];
  v31 = v29 + v30;
  if (v29 + v30 == 0.0)
  {
    superview2 = [viewCopy superview];
    [superview2 bounds];
    v31 = v33 + v34;
  }

  [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt setCorrection:candidate typedText:input inRect:v22 maxX:v24, v26, v28, v31];
  [(UIView *)self->m_autocorrectPrompt setSize:v26, v28];
  v35 = [rectsCopy count];
  v36 = v35 - 1;
  if (v35 != 1)
  {
    v37 = 0;
    do
    {
      v38 = self->m_autocorrectPrompt;
      v39 = [rectsCopy objectAtIndex:v37];
      [v39 rect];
      [(UIAutocorrectInlinePrompt *)v38 addTypedTextRect:?];

      ++v37;
    }

    while (v36 != v37);
  }
}

- (void)updateAutocorrectContainerWithAutocorrection:(id)autocorrection parentView:(id)view correctionRects:(id)rects
{
  v54 = *MEMORY[0x1E69E9840];
  autocorrectionCopy = autocorrection;
  viewCopy = view;
  rectsCopy = rects;
  autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];

  if (!autocorrectBubbleContainer)
  {
    v12 = objc_alloc_init(UIAutocorrectBubbleContainer);
    [(UIKeyboardImpl *)self setAutocorrectBubbleContainer:v12];
  }

  superview = [viewCopy superview];
  subviews = [superview subviews];
  autocorrectBubbleContainer2 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  v16 = [subviews containsObject:autocorrectBubbleContainer2];

  if ((v16 & 1) == 0)
  {
    superview2 = [viewCopy superview];
    autocorrectBubbleContainer3 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [superview2 addSubview:autocorrectBubbleContainer3];

    superview3 = [viewCopy superview];
    autocorrectBubbleContainer4 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [superview3 bringSubviewToFront:autocorrectBubbleContainer4];
  }

  lastObject = [rectsCopy lastObject];
  [lastObject rect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = viewCopy;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  subviews2 = [v30 subviews];
  v32 = [subviews2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v32)
  {
    v33 = *v50;
    while (2)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(subviews2);
        }

        v35 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v35;
          goto LABEL_15;
        }
      }

      v32 = [subviews2 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  superview4 = [v30 superview];
  [superview4 convertRect:v32 fromView:{v23, v25, v27, v29}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  autocorrectBubbleContainer5 = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
  candidate = [autocorrectionCopy candidate];
  input = [autocorrectionCopy input];
  superview5 = [v30 superview];
  [autocorrectBubbleContainer5 updateWithAutocorrectionText:candidate typedText:input referenceTextView:superview5 referenceRect:{v38, v40, v42, v44}];
}

- (void)animateAutocorrectionToText:(id)text fromRect:(CGRect)rect
{
  v18 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:text];
  if (self->m_autocorrectPrompt)
  {
    inputOverlayContainer = [(UIKeyboardImpl *)self inputOverlayContainer];
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    textInputView = [inputDelegate textInputView];

    if (v18)
    {
      inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
      [inputDelegate2 firstRectForRange:v18];
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

    [(UIKeyboardImpl *)self convertRectToAutocorrectRect:textInputView delegateView:inputOverlayContainer container:v10, v12, v14, v16];
    [UIKeyboardImpl animateAutocorrectionToRect:"animateAutocorrectionToRect:fromRect:" fromRect:?];
  }

  else
  {
    autocorrectBubbleContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];

    if (!autocorrectBubbleContainer)
    {
      goto LABEL_9;
    }

    inputOverlayContainer = [(UIKeyboardImpl *)self autocorrectBubbleContainer];
    [inputOverlayContainer animateAutocorrectionAccepted];
  }

LABEL_9:
}

- (void)animateAutocorrectionToRect:(CGRect)rect fromRect:(CGRect)fromRect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  if (![(UIKeyboardImpl *)self isPredictionViewControllerVisible]&& ![(UIKeyboardImpl *)self shouldShowLongPredictionList])
  {
    [(UIView *)self->m_autocorrectPrompt setFrame:x, y, width, height];
    if ([(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt prepareForAnimation:v11, v10, v9, v8])
    {
      typedTextView = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt typedTextView];
      correctionView = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionView];
      correctionAnimationView = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionAnimationView];
      correctionShadowView = [(UIAutocorrectInlinePrompt *)self->m_autocorrectPrompt correctionShadowView];
      [typedTextView frame];
      v18 = v17;
      v20 = v19;
      [(UIView *)self->m_autocorrectPrompt bounds];
      v22 = round(v21 * 0.5);
      [typedTextView bounds];
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
      v34 = correctionView;
      v35 = correctionAnimationView;
      v36 = correctionShadowView;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__UIKeyboardImpl_animateAutocorrectionToRect_fromRect___block_invoke_2;
      v31[3] = &unk_1E70F3C60;
      v31[4] = self;
      v32 = v25;
      v27 = v25;
      v28 = correctionShadowView;
      v29 = correctionAnimationView;
      v30 = correctionView;
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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];

  if (inputDelegate && [(UIKeyboardImpl *)self hasAutocorrectPrompt])
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

      _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant dismissWithoutSelection];
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

- (void)autocorrectionAnimationDidStopWithAutocorrectionView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (superview)
  {
    [viewCopy removeFromSuperview];
  }

  cursorAssertion = [(UIKeyboardImpl *)self cursorAssertion];
  [cursorAssertion invalidate];

  [(UIKeyboardImpl *)self setCursorAssertion:0];
}

- (void)underlineCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled];
  v5 = candidateCopy;
  if (candidateCopy && v4)
  {
    if ([(UIKeyboardImpl *)self shouldUnderlineCandidate:candidateCopy])
    {
      candidate = [candidateCopy candidate];
      _textChoicesAssistant2 = [(UIKeyboardImpl *)self _rangeForAutocorrectionText:candidate];

      if ([candidateCopy isAutocorrection])
      {
        inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
        input = [candidateCopy input];
        [inputDelegateManager correctedTypedText:input rangeOfReplacement:_textChoicesAssistant2];
      }

      _textChoicesAssistant = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant addUnderlineForCandidate:candidateCopy range:_textChoicesAssistant2];
    }

    else
    {
      v11 = +[UIKeyboard usesInputSystemUI];
      v5 = candidateCopy;
      if (!v11)
      {
        goto LABEL_10;
      }

      _textChoicesAssistant2 = [(UIKeyboardImpl *)self _textChoicesAssistant];
      [_textChoicesAssistant2 setNeedsUnderlineUpdate];
    }

    v5 = candidateCopy;
  }

LABEL_10:
}

- (BOOL)shouldUnderlineCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([candidateCopy confidence])
  {
    v4 = [candidateCopy confidence] != 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)delegateSuggestionsForCurrentInput
{
  textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
  textSuggestionDelegate = [textInputTraits textSuggestionDelegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_34:
    v30 = 1;
    goto LABEL_35;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [textSuggestionDelegate hasCurrentSuggestions])
  {
    inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
    _fullText = [inputDelegate _fullText];

    inputDelegate2 = [(UIKeyboardImpl *)self inputDelegate];
    _selectedNSRange = [inputDelegate2 _selectedNSRange];

    v9 = [textSuggestionDelegate suggestionsForString:_fullText inputIndex:_selectedNSRange];
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
      if ([_fullText isEqualToString:v13])
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
            v34 = [v35 candidateWithCandidate:v36 forInput:_fullText];
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

      inputDelegateManager2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v13];
      [inputDelegateManager2 replaceOccurrencesOfString:@" " withString:delegateSuggestionsForCurrentInput_nbspString_0 options:2 range:{0, v15}];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
      inputDelegate3 = [(UIKeyboardImpl *)self inputDelegate];
      [inputDelegate3 _selectAll];

      [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      [inputDelegateManager insertText:inputDelegateManager2 updateInputSource:0];

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
        inputDelegate4 = [(UIKeyboardImpl *)self inputDelegate];
        [inputDelegate4 _moveCurrentSelection:v22];

        inputDelegate5 = [(UIKeyboardImpl *)self inputDelegate];
        LOBYTE(inputDelegate4) = objc_opt_respondsToSelector();

        if (inputDelegate4)
        {
          _isNaturallyRTL = [v13 _isNaturallyRTL];
          if (v38 > 5 || (_isNaturallyRTL & 1) != 0)
          {
            v31 = _isNaturallyRTL ^ 1;
            if (v38 < v15 - 5)
            {
              v31 = 1;
            }

            if (v31)
            {
              goto LABEL_26;
            }

            inputDelegate6 = [(UIKeyboardImpl *)self inputDelegate];
            v27 = inputDelegate6;
            v28 = v15 - 1;
          }

          else
          {
            inputDelegate6 = [(UIKeyboardImpl *)self inputDelegate];
            v27 = inputDelegate6;
            v28 = 0;
          }

          [inputDelegate6 _scrollRangeToVisible:v28 animated:{0, 0}];
        }

LABEL_26:
        [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
        [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      }
    }

    else
    {
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
      inputDelegate7 = [(UIKeyboardImpl *)self inputDelegate];
      [inputDelegate7 _selectAll];

      [(UIKeyboardImpl *)self syncDocumentStateToInputDelegate];
      [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:0];
      inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
      [inputDelegateManager2 insertText:&stru_1EFB14550 updateInputSource:0];
    }

    goto LABEL_28;
  }

  v30 = 0;
LABEL_35:

  return v30;
}

- (BOOL)_isShowingSuggestionForKeyboardCamera
{
  autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
  textSuggestionList = [autocorrectionController textSuggestionList];
  isShowingSuggestionForKeyboardCamera = [textSuggestionList isShowingSuggestionForKeyboardCamera];

  return isShowingSuggestionForKeyboardCamera;
}

- (void)_generateTextSuggestionForKeyboardCamera
{
  v8[1] = *MEMORY[0x1E69E9840];
  delegate = [(UIKeyboardImpl *)self delegate];
  v4 = [UIAction _textFromCameraTitleForResponder:delegate];
  v5 = [UITextSuggestionWithAction textSuggestionWithInputText:v4];
  [v5 setTarget:delegate];
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

- (void)updateHardwareKeyboardLayout:(BOOL)layout
{
  layoutCopy = layout;
  v5 = UIApp;
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  hardwareInputMode = [v6 hardwareInputMode];
  automaticHardwareLayout = [hardwareInputMode automaticHardwareLayout];
  [v5 setHardwareKeyboardLayoutName:automaticHardwareLayout forceRebuild:layoutCopy];

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
    hardwareKeyboardAttached = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
    v8 = 136315394;
    v9 = "[UIKeyboardImpl detachHardwareKeyboard]";
    v10 = 1024;
    v11 = hardwareKeyboardAttached;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s hardwareKeyboardAttached = %d", &v8, 0x12u);
  }

  [(UIKeyboardImpl *)self setInHardwareKeyboardMode:[(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]];
  [(UIKeyboardImpl *)self setCapsLockSign];
  [(UIKeyboardImpl *)self setIsAttachedHardwareKeyboard:0];
  v6 = +[UIInputSwitcher activeInstance];
  [v6 hideSwitcherIfNeeded];
  inputModeIndicatorController = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputModeIndicatorController];
  [inputModeIndicatorController hardwareKeyboardDettached];

  if ([(UIKeyboardImpl *)self canPresentNumberpadPopover])
  {
    [(UIKeyboardImpl *)self presentNumberpadPopover];
  }
}

- (void)hardwareKeyboardAvailabilityDidChange:(id)change
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v4 inputViews];
  inputView = [inputViews inputView];

  if (inputView)
  {

    [(UIKeyboardImpl *)self hardwareKeyboardAvailabilityChanged];
  }
}

- (void)hardwareKeyboardAvailabilityChanged
{
  v24 = *MEMORY[0x1E69E9840];
  [(_UIKeyboardStateManager *)self->_keyboardStateManager updateHardwareKeyboardExclusivityIdentifier];
  v3 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v3 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable)
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

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (keyInputDelegate)
  {
    v7 = keyInputDelegate;
    if (([UIApp isSuspended] & 1) == 0)
    {

      goto LABEL_23;
    }

    v8 = +[UIPeripheralHost sharedInstance];
    containerWindow = [v8 containerWindow];
    _isHostedInAnotherProcess = [containerWindow _isHostedInAnotherProcess];

    if (_isHostedInAnotherProcess)
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
        preferencesActions = [v15 preferencesActions];
        v17 = [preferencesActions valueForPreferenceKey:@"DetachHardwareKeyboardDelayInterval"];
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
  currentInputMode = [v4 currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (isExtensionInputMode)
  {
    v7 = +[UIPeripheralHost sharedInstance];
    [v7 minimize];
  }

  [(UIKeyboardImpl *)self deactivateLayout];
  [(UIKeyboardLayout *)self->m_layout resetTouchProcessingForKeyboardChange];
  [(UIKeyboardImpl *)self notifyShiftState];
  window = [(UIKeyboardImpl *)self window];
  [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:window];

  [(UIKeyboardImpl *)self geometryChangeDone:1];
  [(UIKeyboardImpl *)self hideInternationalKeyIntroductionIfNeeded];
  [(UIKeyboardImpl *)self dismissContinuousPathIntroductionView];
  [(UIKeyboardImpl *)self dismissEditingIntroductionView];
  [(UIKeyboardImpl *)self dismissMultilingualKeyboardTip];
  [(UIKeyboardImpl *)self dismissMultilingualSettingTip];

  [(UIKeyboardImpl *)self dismissStickerEditor:0];
}

- (void)hideKeyboardIgnoringHardwareLayouts:(BOOL)layouts
{
  if (layouts || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentInputMode], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "showSWLayoutWithHWKeyboard"), v5, v4, (v6 & 1) == 0))
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

- (void)_showKeyboardIgnoringPolicyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v5 = +[UIDictationController activeInstance];
  shouldSuppressSoftwareKeyboard = [v5 shouldSuppressSoftwareKeyboard];

  if ((shouldSuppressSoftwareKeyboard & 1) == 0)
  {
    v7 = +[UIKeyboardCameraSession activeSession];
    shouldSuppressSoftwareKeyboard2 = [v7 shouldSuppressSoftwareKeyboard];

    if ((shouldSuppressSoftwareKeyboard2 & 1) == 0 && +[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate]&& ![(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:delegateCopy])
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
        _rootInputWindowController = [(UIView *)self _rootInputWindowController];
        [_rootInputWindowController invalidateInputView];
      }

      WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
      [WeakRetained setMinimized:0];

      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v11 currentInputMode];
      isExtensionInputMode = [currentInputMode isExtensionInputMode];

      if (isExtensionInputMode)
      {
        v14 = +[UIPeripheralHost sharedInstance];
        [v14 maximize];
      }

      [(UIView *)self->m_layout setAlpha:1.0];
      window = [(UIKeyboardImpl *)self window];
      [(UIKeyboardImpl *)self _updateSoundPreheatingForWindow:window];

      [(UIKeyboardImpl *)self prepareForGeometryChange];
      [(UIKeyboardImpl *)self removeCandidateList];
      v16 = [(UIKeyboardImpl *)self autocorrectionPreferenceForTraits]!= 0;
      keyboardState = [(UIKeyboardImpl *)self keyboardState];
      [keyboardState setAutocorrectionEnabled:v16];

      keyboardStateManager = [(UIKeyboardImpl *)self keyboardStateManager];
      isInlineCompletionEnabled = [keyboardStateManager isInlineCompletionEnabled];
      keyboardState2 = [(UIKeyboardImpl *)self keyboardState];
      [keyboardState2 setInlineCompletionEnabled:isInlineCompletionEnabled];

      [(UIKeyboardImpl *)self updateForChangedSelection];
      [(UIKeyboardImpl *)self setShowsCandidateBar:[(UIKeyboardImpl *)self shouldShowCandidateBar]];
      v21 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode2 = [v21 currentInputMode];
      [(UIKeyboardImpl *)self setKeyboardInputMode:currentInputMode2 userInitiated:0];

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
  canDismiss = [WeakRetained canDismiss];

  if (!canDismiss)
  {
    return;
  }

  v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  ignoresPinning = [v13 ignoresPinning];
  [v13 setIgnoresPinning:1];
  [(UIKeyboardImpl *)self setGeometryIsChanging:1];
  [(UIKeyboardImpl *)self clearForwardingInputDelegateAndResign:1];
  if (+[UIKeyboard isKeyboardProcess])
  {
    inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
    delegateAsResponder2 = inputSystemSourceSession;
    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setEditingActionSelector:sel_cancelOperation_];

      buildInputSourceState = [(UIKeyboardImpl *)self buildInputSourceState];
      textOperations2 = [delegateAsResponder2 textOperations];
      [textOperations2 setInputSourceState:buildInputSourceState];

      [delegateAsResponder2 flushOperations];
    }
  }

  else
  {
    delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
    isFirstResponder = [delegateAsResponder isFirstResponder];

    if (!isFirstResponder)
    {
      [v13 _reloadInputViewsForResponder:0];
      goto LABEL_10;
    }

    delegateAsResponder2 = [(UIKeyboardImpl *)self delegateAsResponder];
    [delegateAsResponder2 resignFirstResponder];
  }

LABEL_10:
  [(UIKeyboardImpl *)self setGeometryIsChanging:0];
  [v13 setIgnoresPinning:ignoresPinning];
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

  taskQueue = [(UIKeyboardImpl *)self taskQueue];
  [taskQueue addTask:v3 breadcrumb:qword_1ED498AF0];
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
  canDismiss = [WeakRetained canDismiss];

  if (canDismiss)
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    if (keyboardAppearance == 127 || !-[_UIKeyboardStateManager hardwareKeyboardAttached](self->_keyboardStateManager, "hardwareKeyboardAttached") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 currentInputMode], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "showSWLayoutWithHWKeyboard"), v8, v7, (v9 & 1) != 0))
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
      currentInputMode = [v5 currentInputMode];
      v7 = ([currentInputMode showSWLayoutWithHWKeyboard] & 1) == 0 && -[UIKeyboardImpl isInHardwareKeyboardMode](self, "isInHardwareKeyboardMode");
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
    isAutomatic = [v3 isAutomatic];

    if (isAutomatic)
    {
      v5 = objc_loadWeakRetained(&self->m_geometryDelegate);
      -[UIKeyboardImpl setAutomaticMinimizationEnabled:](self, "setAutomaticMinimizationEnabled:", [v5 isMinimized] ^ 1);

      v6 = objc_loadWeakRetained(&self->m_geometryDelegate);
      isMinimized = [v6 isMinimized];

      if (isMinimized)
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

- (void)setKeyboardMinimizedByDictation:(BOOL)dictation
{
  [(_UIKeyboardStateManager *)self->_keyboardStateManager setKeyboardMinimizedByDictation:?];
  if (!dictation && self->m_updateLayoutOnShowKeyboard)
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

  isAttachedHardwareKeyboard = [(UIKeyboardImpl *)self isAttachedHardwareKeyboard];

  if (!isAttachedHardwareKeyboard)
  {
    [(UIKeyboardImpl *)self updateIsAttachedHardwareKeyboard];
  }

  isAttachedHardwareKeyboard2 = [(UIKeyboardImpl *)self isAttachedHardwareKeyboard];
  if (![isAttachedHardwareKeyboard2 BOOLValue])
  {

LABEL_21:
    v7 = +[UIDictationController activeInstance];
    shouldSuppressSoftwareKeyboard = [v7 shouldSuppressSoftwareKeyboard];

    if (shouldSuppressSoftwareKeyboard)
    {
      [(UIKeyboardImpl *)self setKeyboardMinimizedByDictation:0];
    }

    [(UIKeyboardImpl *)self toggleSoftwareKeyboard];
    return;
  }

  if (v4)
  {
    isMinimized = [(UIKeyboardImpl *)self isMinimized];

    if (!isMinimized)
    {
      return;
    }

    goto LABEL_21;
  }
}

- (void)remoteControlReceivedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 2)
  {
    [(UIResponder *)self->m_layout remoteControlReceivedWithEvent:eventCopy];
  }
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 7)
  {
    [(UIResponder *)self->m_layout _wheelChangedWithEvent:eventCopy];
  }
}

- (void)_moveWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 5 && -[UIKeyboardLayout canHandleEvent:](self->m_layout, "canHandleEvent:", eventCopy))
  {
    [(UIKeyboardImpl *)self clearLanguageIndicator];
    [(UIResponder *)self->m_layout _moveWithEvent:eventCopy];
  }
}

- (BOOL)canHandlePresses:(id)presses withEvent:(id)event
{
  m_layout = self->m_layout;
  if (m_layout)
  {
    LOBYTE(m_layout) = [(UIKeyboardLayout *)m_layout canHandlePresses:presses withEvent:event];
  }

  return m_layout;
}

- (void)setCaretBlinks:(BOOL)blinks
{
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  if (blinks)
  {
    _activeAssertionController = [(UIKeyboardImpl *)self _activeAssertionController];
    [textInteractionAssistant setCursorBlinks:{objc_msgSend(_activeAssertionController, "_isNonBlinking") ^ 1}];
  }

  else
  {
    [textInteractionAssistant setCursorBlinks:0];
  }
}

- (void)setCaretVisible:(BOOL)visible
{
  visibleCopy = visible;
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  [textInteractionAssistant setCursorVisible:visibleCopy];
}

- (BOOL)caretBlinks
{
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  cursorBlinks = [textInteractionAssistant cursorBlinks];

  return cursorBlinks;
}

- (BOOL)caretVisible
{
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  cursorVisible = [textInteractionAssistant cursorVisible];

  return cursorVisible;
}

- (id)dynamicCaretList
{
  textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
  _legacySelectionView = [textInteractionAssistant _legacySelectionView];
  dynamicCaretList = [_legacySelectionView dynamicCaretList];

  return dynamicCaretList;
}

- (void)updateNoContentViews
{
  dynamicCaretList = [(UIKeyboardImpl *)self dynamicCaretList];

  if (dynamicCaretList)
  {
    textInteractionAssistant = [(UIKeyboardImpl *)self textInteractionAssistant];
    _legacySelectionView = [textInteractionAssistant _legacySelectionView];
    [_legacySelectionView updateDocumentHasContent:{-[UIKeyboardImpl noContent](self, "noContent") ^ 1}];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v8 = -[UIKeyboardImpl pointInside:forEvent:](self, "pointInside:forEvent:", [eventCopy _gsEvent], x, y) || -[UIView pointInside:withEvent:](self->m_layout, "pointInside:withEvent:", eventCopy, x, y);

  return v8;
}

- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event
{
  y = inside.y;
  x = inside.x;
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
    internationalKeyIntroductionView = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
    continuousPathIntroductionView = internationalKeyIntroductionView;
    if (internationalKeyIntroductionView || (continuousPathIntroductionView = self->_continuousPathIntroductionView) != 0 || (continuousPathIntroductionView = self->_editingGestureIntroductionView) != 0 || (continuousPathIntroductionView = self->_multilingualKeyboardIntroductionView) != 0)
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
    if ([(UIView *)v26 pointInside:event forEvent:?])
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
    v8 = [(UIView *)m_layout pointInside:event forEvent:?];
    v29 = v18 != 0.0 || !v27;
    if (v29 || !+[UIKeyboardImpl isSplit]|| [(UIKeyboardImpl *)self centerFilled])
    {
      v8 |= v27;
    }

    if ([(UIKeyboardImpl *)self showsCandidateBar])
    {
      candidateController = [(UIKeyboardImpl *)self candidateController];
      candidateBar = [candidateController candidateBar];

      if ([candidateBar isHiddenOrHasHiddenAncestor])
      {
        LOBYTE(HasAlphaHittable) = 0;
      }

      else
      {
        HasAlphaHittable = [(UIView *)candidateBar _isAlphaHittableAndHasAlphaHittableAncestors];
        if (HasAlphaHittable)
        {
          [(UIView *)self convertPoint:candidateBar toView:x, y];
          LOBYTE(HasAlphaHittable) = [candidateBar pointInside:event forEvent:?];
        }
      }

      v8 |= HasAlphaHittable;
    }

    goto LABEL_24;
  }

  return 0;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  internationalKeyIntroductionView = [(UIKeyboardImpl *)self internationalKeyIntroductionView];
  continuousPathIntroductionView = internationalKeyIntroductionView;
  if (internationalKeyIntroductionView || (continuousPathIntroductionView = self->_continuousPathIntroductionView) != 0 || (continuousPathIntroductionView = self->_editingGestureIntroductionView) != 0 || (continuousPathIntroductionView = self->_multilingualKeyboardIntroductionView) != 0)
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
  v11 = [(UIView *)v10 hitTest:eventCopy withEvent:?];
  if (v11)
  {
    goto LABEL_34;
  }

LABEL_7:
  if ([(UIKeyboardImpl *)self showsCandidateBar])
  {
    candidateController = [(UIKeyboardImpl *)self candidateController];
    candidateBar = [candidateController candidateBar];

    [(UIView *)self convertPoint:candidateBar toView:x, y];
    v15 = v14;
    v17 = v16;
    if ([candidateBar isHiddenOrHasHiddenAncestor] & 1) == 0 && -[UIView _isAlphaHittableAndHasAlphaHittableAncestors](candidateBar) && (objc_msgSend(candidateBar, "pointInside:withEvent:", eventCopy, v15, v17))
    {
      v11 = [candidateBar hitTest:eventCopy withEvent:{v15, v17}];
LABEL_25:

      goto LABEL_34;
    }
  }

  m_layout = self->m_layout;
  [(UIView *)m_layout convertPoint:self fromView:x, y];
  v19 = [(UIView *)m_layout hitTest:eventCopy withEvent:?];
  v20 = self->m_layout;

  if (v19 != v20)
  {
    if ([(UIKeyboardImpl *)self showsCandidateBar])
    {
LABEL_32:
      v35.receiver = self;
      v35.super_class = UIKeyboardImpl;
      v22 = [(UIView *)&v35 hitTest:eventCopy withEvent:x, y];
      goto LABEL_33;
    }

    candidateBar = [(UIKeyboardLayout *)self->m_layout candidateList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = candidateBar;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        candidateController2 = [(UIKeyboardImpl *)self candidateController];
        activeCandidateViewType = [candidateController2 activeCandidateViewType];

        if (activeCandidateViewType)
        {
          candidateController3 = [(UIKeyboardImpl *)self candidateController];
          candidateKey = [candidateController3 candidateKey];

          if (candidateKey)
          {
            goto LABEL_21;
          }
        }

        else
        {
          candidateKey = 0;
        }

        goto LABEL_31;
      }

      view = [candidateBar view];
    }

    candidateKey = view;
    if (view)
    {
LABEL_21:
      if (([candidateKey isHidden] & 1) == 0)
      {
        candidateController4 = [(UIKeyboardImpl *)self candidateController];
        candidateResultSet = [candidateController4 candidateResultSet];
        hasCandidates = [candidateResultSet hasCandidates];

        if (hasCandidates)
        {
          [(UIView *)self convertPoint:candidateKey toView:x, y];
          v28 = v27;
          v30 = v29;
          if ([candidateKey pointInside:eventCopy withEvent:?])
          {
            v11 = [candidateKey hitTest:eventCopy withEvent:{v28, v30}];

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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v3 = [inputDelegate _sendCurrentLocationAction]) != 0)
  {
    v4 = [inputDelegate targetForAction:v3 withSender:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performSendCurrentLocation
{
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  responderForSendCurrentLocation = [(UIKeyboardImpl *)self responderForSendCurrentLocation];
  if (responderForSendCurrentLocation)
  {
    _sendCurrentLocationAction = [inputDelegate _sendCurrentLocationAction];
    if (dyld_program_sdk_at_least())
    {
      [responderForSendCurrentLocation _sendCurrentLocationAction];
    }

    else
    {
      [responderForSendCurrentLocation performSelector_];
    }
  }
}

- (void)enableTransientInputDelegateSelectionMode
{
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__UIKeyboardImpl_enableTransientInputDelegateSelectionMode__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [mainRunLoop performBlock:v4];
}

- (void)enableTransientSelectionMode
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [inputDelegateManager delegateRespectingForwardingDelegate:0];
  [(UIKeyboardImpl *)self _setTransientSelectionModeEnabled:1 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager2 inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setEditingActionSelector:sel_enableTransientSelectionMode];
      [inputSystemSourceSession flushOperations];
    }
  }
}

- (void)disableTransientSelectionMode
{
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  v4 = [inputDelegateManager delegateRespectingForwardingDelegate:0];
  [(UIKeyboardImpl *)self _setTransientSelectionModeEnabled:0 forInputDelegate:v4];

  if (+[UIKeyboard isKeyboardProcess])
  {
    inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager2 inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setEditingActionSelector:sel_disableTransientSelectionMode];
      [inputSystemSourceSession flushOperations];
    }
  }
}

- (void)clearForwardingInputDelegateAndResign:(BOOL)resign
{
  resignCopy = resign;
  if ([(UIKeyboardImpl *)self _hasMarkedText])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
      forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

      if (forwardingInputDelegate)
      {
        inputDelegateManager2 = [(UIKeyboardImpl *)self inputDelegateManager];
        [inputDelegateManager2 unmarkText];
      }
    }
  }

  inputDelegateManager3 = [(UIKeyboardImpl *)self inputDelegateManager];
  [inputDelegateManager3 clearForwardingInputDelegateAndResign:resignCopy];

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardClearForwardingInputDelegateAndResign:resignCopy];
}

- (void)didChangeForwardingInputDelegate:(id)delegate
{
  [(UIKeyboardImpl *)self takeTextInputTraitsFromDelegate];
  if (delegate)
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];
    keyboardType = [forwardingInputDelegate keyboardType];

    if (keyboardType == 122)
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

- (void)_setTransientSelectionModeEnabled:(BOOL)enabled forInputDelegate:(id)delegate
{
  enabledCopy = enabled;
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    interactionAssistant = [delegateCopy interactionAssistant];
    [interactionAssistant setSelectionDisplayVisible:1];
    [interactionAssistant setCursorBlinkAnimationEnabled:enabledCopy ^ 1];
    [interactionAssistant setGhostAppearance:enabledCopy];
  }
}

- (id)buildInputSourceState
{
  v3 = objc_alloc_init(MEMORY[0x1E69C6F50]);
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];
  identifier = [currentInputMode identifier];
  [v3 setInputMode:identifier];

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
  inputManagerState = [(_UIKeyboardStateManager *)self->_keyboardStateManager inputManagerState];
  [v3 setSupportsSetPhraseBoundary:{objc_msgSend(inputManagerState, "supportsSetPhraseBoundary")}];

  return v3;
}

- (void)updateAssistantViewInfo:(id)info
{
  infoCopy = info;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v4 systemInputAssistantViewController];

  [systemInputAssistantViewController setRemoteAssistantViewInfo:infoCopy];
}

- (void)applyAssistantItem:(id)item
{
  itemCopy = item;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v5 systemInputAssistantViewController];

  [systemInputAssistantViewController applyRemoteAssistantItem:itemCopy];
  [(UIKeyboardImpl *)self updateInputAssistantButtonItems];
}

- (void)handleRemoteDictationEvent_switchToDictationInputModeWithOptions:(id)options
{
  optionsCopy = options;
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
  [v6 switchToDictationInputModeWithOptions:optionsCopy];
}

- (void)handleRemoteDictationEvent_switchToDictationLanguage:(id)language
{
  languageCopy = language;
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
  [v6 switchToDictationLanguage:languageCopy];
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

- (void)handleRemoteDictationEvent_stopDictation:(BOOL)dictation
{
  dictationCopy = dictation;
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
  [v6 stopDictation:dictationCopy];

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

- (void)handleRemoteDictationEvent_handleTip:(id)tip
{
  tipCopy = tip;
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
  if (tipCopy)
  {
    v8 = [tipCopy objectForKeyedSubscript:@"text"];
    v9 = [tipCopy objectForKeyedSubscript:@"title"];
    [(UIDictationPopoverController *)dictationPopoverController presentTip:v8 tipDescription:v9];
  }

  else
  {
    [(UIDictationPopoverController *)dictationPopoverController dismissTip];
  }
}

- (void)handleRemoteDictationEvent_movePopoverView:(id)view
{
  viewCopy = view;
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

  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  _window = [inputDelegate _window];
  window = [(UIKeyboardImpl *)self window];

  if (_window != window)
  {
    dictationPopoverController = self->_dictationPopoverController;
    v11 = [viewCopy objectForKeyedSubscript:@"sourceRect"];
    [v11 rectValue];
    [(UIDictationPopoverController *)dictationPopoverController movePopoverView:?];

    v12 = [viewCopy objectForKeyedSubscript:@"editMenuFrame"];
    v13 = v12;
    if (v12)
    {
      [v12 rectValue];
      [(UIKeyboardImpl *)self setEditMenuFrame:?];
    }
  }
}

- (void)handleRemoteDictationEvent_setEditMenuFrame:(id)frame
{
  frameCopy = frame;
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

  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  _window = [inputDelegate _window];
  window = [(UIKeyboardImpl *)self window];

  if (_window != window)
  {
    v10 = [frameCopy objectForKeyedSubscript:@"editMenuFrame"];
    [v10 rectValue];
    [(UIKeyboardImpl *)self setEditMenuFrame:?];
  }
}

- (void)handleRemoteDictationEvent_updateIdleDetection:(int64_t)detection
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

  [(UIKeyboardImpl *)self updateIdleDetection:detection];
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

- (void)handleRemoteKeyboardCameraEvent_startCameraInput:(id)input
{
  inputCopy = input;
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
  inputDelegate = [(UIKeyboardImpl *)self inputDelegate];
  [v7 showForResponder:inputDelegate sender:0 rtiConfiguration:inputCopy];
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
    textInputTraits = [(UIKeyboardImpl *)self textInputTraits];
    v4 = [UIDictationController checkTraitsSupportDictation:textInputTraits];

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
      skipAutomaticResumeDictation = [v14 skipAutomaticResumeDictation];
      v17 = 136315394;
      v18 = "[UIKeyboardImpl handleDictationForResponderChange]";
      v19 = 1024;
      v20 = skipAutomaticResumeDictation;
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
    shouldResumeDictation = [v6 shouldResumeDictation];

    if (shouldResumeDictation)
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
  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  if (inputSystemSourceSession)
  {
    v13 = inputSystemSourceSession;
    v4 = +[UIKeyboard isKeyboardProcess];
    inputSystemSourceSession = v13;
    if (!v4)
    {
      documentState = [(UIKeyboardImpl *)self documentState];
      contextBeforeInput = [documentState contextBeforeInput];
      v7 = [contextBeforeInput length];
      selectedText = [documentState selectedText];
      v9 = [selectedText length];

      fullString = [documentState fullString];
      textOperations = [v13 textOperations];
      [textOperations setTextToAssert:fullString];

      textOperations2 = [v13 textOperations];
      [textOperations2 setSelectionRangeToAssert:{v7, v9}];

      [v13 flushOperations];
      inputSystemSourceSession = v13;
    }
  }
}

- (void)handleGrammarCorrectionEntries:(id)entries
{
  entriesCopy = entries;
  if (+[UIKeyboard usesInputSystemUI])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardGrammarCorrectionEntries:entriesCopy];
  }

  else
  {
    [UITextChecker handleGrammarCorrectionEntries:entriesCopy];
  }
}

+ (void)sendPerformanceNotification:(id)notification userInfo:(id)info
{
  if (kbProfilingParentTest)
  {
    v5 = MEMORY[0x1E696AD88];
    infoCopy = info;
    notificationCopy = notification;
    defaultCenter = [v5 defaultCenter];
    [defaultCenter postNotificationName:notificationCopy object:0 userInfo:infoCopy];
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
  showsCandidateBar = [(UIKeyboardImpl *)self showsCandidateBar];
  if (showsCandidateBar)
  {
    candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
    hasCandidates = [candidateList hasCandidates];

    LOBYTE(showsCandidateBar) = hasCandidates;
  }

  return showsCandidateBar;
}

- (id)_autofillGroup
{
  autofillController = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  autofillGroup = [autofillController autofillGroup];

  return autofillGroup;
}

- (id)_fallbackAutofillGroup
{
  autofillController = [(_UIKeyboardStateManager *)self->_keyboardStateManager autofillController];
  fallbackAutofillGroup = [autofillController fallbackAutofillGroup];

  return fallbackAutofillGroup;
}

- (BOOL)_containsUsernamePasswordPairsInAutofillGroup:(id)group
{
  keyboardStateManager = self->_keyboardStateManager;
  groupCopy = group;
  autofillController = [(_UIKeyboardStateManager *)keyboardStateManager autofillController];
  v6 = [autofillController containsUsernamePasswordPairsInAutofillGroup:groupCopy];

  return v6;
}

- (void)_setCandidateController:(id)controller
{
  objc_storeStrong(&self->m_candidateController, controller);
  controllerCopy = controller;
  [(_UIKeyboardStateManager *)self->_keyboardStateManager _setCandidateList:controllerCopy];
}

- (void)_textSelectionEditMenuDidShow
{
  if (self->m_showsCandidateBar)
  {
    textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
    allowsTextAnimationsType = [textInputTraits allowsTextAnimationsType];

    if (allowsTextAnimationsType == 2)
    {
      m_candidateController = self->m_candidateController;

      [(UIKeyboardCandidateController *)m_candidateController updateStates];
    }
  }
}

- (void)presentKeyboardFeedbackAssistantViewControllerForLogURL:(id)l
{
  lCopy = l;
  if (+[UIKeyboard isKeyboardProcess])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardTypologyLogURL:lCopy];
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

    keyboardFeedbackAssistantViewController = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
    [keyboardFeedbackAssistantViewController setDelegate:self];

    objc_initWeak(location, self);
    keyboardFeedbackAssistantViewController2 = [(UIKeyboardImpl *)self keyboardFeedbackAssistantViewController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UIKeyboardImpl_presentKeyboardFeedbackAssistantViewControllerForLogURL___block_invoke;
    v11[3] = &unk_1E70F8958;
    objc_copyWeak(&v13, location);
    v12 = lCopy;
    [keyboardFeedbackAssistantViewController2 prepareWithCompletion:v11];

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

- (void)_tagTouchForTypingMenu:(unsigned int)menu
{
  v3 = *&menu;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void UIKBSBSTagTouchForTypingMenu(uint32_t)"];
    [currentHandler handleFailureInFunction:v6 file:@"UIKeyboardImpl.m" lineNumber:295 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)clearExcessKeyboardMemory
{
  v18 = *MEMORY[0x1E69E9840];
  if ([UIApp _isSpringBoard])
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    v4 = [inputDelegateManager delegateRespectingForwardingDelegate:0];

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
    LOBYTE(_shouldSuppressSoftwareKeyboard) = 1;
  }

  else
  {
    _shouldSuppressSoftwareKeyboard = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboard];
    if (_shouldSuppressSoftwareKeyboard)
    {
      LOBYTE(_shouldSuppressSoftwareKeyboard) = ![(UIKeyboardImpl *)self _showsScribbleIconsInAssistantView];
    }
  }

  return _shouldSuppressSoftwareKeyboard;
}

- (BOOL)_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
  LOBYTE(delegateCopy) = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardForResponder:delegateAsResponder ignoringPolicyDelegate:delegateCopy ignoreNumberPad:0];

  return delegateCopy;
}

- (BOOL)_shouldSuppressSoftwareKeyboardForResponder:(id)responder ignoringPolicyDelegate:(BOOL)delegate ignoreNumberPad:(BOOL)pad
{
  responderCopy = responder;
  if (+[UIKeyboard isInputSystemUI])
  {
    m_shouldSuppressSoftwareKeyboard = self->m_shouldSuppressSoftwareKeyboard;
    goto LABEL_6;
  }

  [(UIKeyboardImpl *)self _updateShouldSuppressAssistantBar];
  v10 = +[UIKeyboard activeKeyboard];
  _overrideTextInputTraits = [v10 _overrideTextInputTraits];
  forceFloatingKeyboard = [_overrideTextInputTraits forceFloatingKeyboard];

  if (forceFloatingKeyboard & 1) != 0 || ([responderCopy _suppressSoftwareKeyboard])
  {
LABEL_5:
    m_shouldSuppressSoftwareKeyboard = 1;
    goto LABEL_6;
  }

  if (pad)
  {
    if (delegate)
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
    if ((m_shouldSuppressSoftwareKeyboard & 1) != 0 || delegate)
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
  if (+[UIKeyboard isMajelEnabled]&& [(UIKeyboardImpl *)self _textInputSourceForDelegate:responderCopy]== 2)
  {
    m_shouldSuppressSoftwareKeyboard = self->m_policyDelegateResult;
  }

  else
  {
    m_shouldSuppressSoftwareKeyboard = [v15 _shouldSuppressForDelegate:responderCopy];
    self->m_policyDelegateResult = m_shouldSuppressSoftwareKeyboard;
  }

LABEL_6:
  return m_shouldSuppressSoftwareKeyboard & 1;
}

- (void)_updateKeyboardLanguage:(id)language
{
  userInfo = [language userInfo];
  v9 = [userInfo objectForKey:@"UITextInputUpdateKeyboardLanguageKey"];

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

- (void)_suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];
  if (!keyInputDelegate)
  {
    goto LABEL_13;
  }

  remoteTextInputPartner = keyInputDelegate;
  WeakRetained = objc_loadWeakRetained(&self->m_geometryDelegate);
  if (([WeakRetained isActive] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = objc_loadWeakRetained(&self->m_geometryDelegate);
  isAutomatic = [v9 isAutomatic];

  if (!isAutomatic)
  {
    goto LABEL_14;
  }

  inputDelegateManager = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v11 = [(UIKeyboardImpl *)self _shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:delegateCopy];
  v12 = objc_loadWeakRetained(&self->m_geometryDelegate);
  isMinimized = [v12 isMinimized];

  if (!isMinimized)
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

    keyboardWindow = [inputDelegateManager keyboardWindow];
    rootViewController = [keyboardWindow rootViewController];

    placement = [rootViewController placement];
    if ([placement showsKeyboard])
    {
      _shouldSuppressAssistantBar = [(UIKeyboardImpl *)self _shouldSuppressAssistantBar];

      if (!_shouldSuppressAssistantBar)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [inputDelegateManager minimize];
LABEL_23:

    goto LABEL_24;
  }

  v18 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  handlingRemoteEvent = [v18 handlingRemoteEvent];

  if (handlingRemoteEvent)
  {
    rootViewController = objc_loadWeakRetained(&self->m_geometryDelegate);
    [rootViewController setMinimized:0];
    goto LABEL_23;
  }

  [(UIKeyboardImpl *)self _showKeyboardIgnoringPolicyDelegate:delegateCopy];
LABEL_24:
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 && !delegateCopy)
  {
    goto LABEL_13;
  }

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardKeyboardSuppression:v11 suppressAssistantBar:{-[UIKeyboardImpl _shouldSuppressAssistantBar](self, "_shouldSuppressAssistantBar")}];
LABEL_12:

LABEL_13:
LABEL_14:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardSuppressionDidChange" object:0];
}

- (void)setSplit:(BOOL)split animated:(BOOL)animated
{
  animatedCopy = animated;
  splitCopy = split;
  if (objc_opt_respondsToSelector())
  {
    m_layout = self->m_layout;

    [(UIKeyboardLayout *)m_layout setSplit:splitCopy animated:animatedCopy];
  }
}

- (void)traitCollectionDidChange
{
  [(UIKeyboardImpl *)self takeTextInputTraitsFromDelegate];
  activeLayout = [(UIKeyboardImpl *)self activeLayout];
  [activeLayout traitCollectionDidChange];

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner documentTraitsChanged];
  }
}

- (void)finishSplitTransitionWithProgress:(double)progress
{
  if (objc_opt_respondsToSelector())
  {
    [(UIKeyboardLayout *)self->m_layout finishSplitTransitionWithProgress:progress];
  }

  [UIKeyboardImpl setPersistentSplitProgress:progress];
}

- (void)acceptAutocorrectionAndEndComposition
{
  autocorrectionController = [(UIKeyboardImpl *)self autocorrectionController];
  autocorrection = [autocorrectionController autocorrection];

  if (autocorrection)
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
  currentInputMode = [v3 currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (isExtensionInputMode)
  {
    internationalKeyDisplayStringOnEmojiKeyboard = 0;
  }

  else
  {
    _layout = [(UIKeyboardImpl *)self _layout];
    internationalKeyDisplayStringOnEmojiKeyboard = [_layout internationalKeyDisplayStringOnEmojiKeyboard];
  }

  return internationalKeyDisplayStringOnEmojiKeyboard;
}

- (id)_autofillContext
{
  keyboardState = [(UIKeyboardImpl *)self keyboardState];
  autofillContext = [keyboardState autofillContext];

  return autofillContext;
}

- (id)_remoteAppId
{
  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];
  appId = [documentTraits appId];

  return appId;
}

- (id)_remoteLocalizedAppName
{
  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];
  localizedAppName = [documentTraits localizedAppName];

  return localizedAppName;
}

- (id)_remoteUnlocalizedAppName
{
  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];
  appName = [documentTraits appName];

  return appName;
}

- (id)_remoteAssociatedDomains
{
  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];
  associatedDomains = [documentTraits associatedDomains];

  return associatedDomains;
}

- (void)performBlockWithTextInputChangesIgnoredForNonMacOS:(id)s
{
  keyboardStateManager = self->_keyboardStateManager;
  sCopy = s;
  textInputChangesIgnored = [(_UIKeyboardStateManager *)keyboardStateManager textInputChangesIgnored];
  [(_UIKeyboardStateManager *)self->_keyboardStateManager setTextInputChangesIgnored:1];
  sCopy[2](sCopy);

  v7 = self->_keyboardStateManager;

  [(_UIKeyboardStateManager *)v7 setTextInputChangesIgnored:textInputChangesIgnored];
}

- (void)setHardWareKeyboardAttached:(BOOL)attached
{
  attachedCopy = attached;
  v10 = *MEMORY[0x1E69E9840];
  if ([(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached]!= attached)
  {
    v5 = _UIKeyboardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[UIKeyboardImpl setHardWareKeyboardAttached:]";
      v8 = 1024;
      v9 = attachedCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s attached = %d", &v6, 0x12u);
    }

    [(_UIKeyboardStateManager *)self->_keyboardStateManager setHardwareKeyboardAttached:attachedCopy];
  }
}

- (BOOL)isShiftKeyBeingHeld
{
  v3 = +[UIKeyboardImpl isHardwareShiftKeyBeingHeld];
  callLayoutIsShiftKeyBeingHeld = [(UIKeyboardImpl *)self callLayoutIsShiftKeyBeingHeld];
  return (v3 | callLayoutIsShiftKeyBeingHeld | [(UIKeyboardImpl *)self _mimicShiftBeingHeld]) & 1;
}

- (void)moveCursorLeftShifted:(BOOL)shifted
{
  shiftedCopy = shifted;
  if (![(UIKeyboardImpl *)self hasEditableMarkedText])
  {
    delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
    arrowKeyHistory = [(UIKeyboardImpl *)self arrowKeyHistory];
    v9 = [delegateAsResponder _moveLeft:shiftedCopy withHistory:arrowKeyHistory];
    [(UIKeyboardImpl *)self setArrowKeyHistory:v9];

    goto LABEL_13;
  }

  if (shiftedCopy)
  {
    selfCopy2 = self;
    v6 = 0;
  }

  else
  {
    candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    hasCandidates = [candidateResultSet hasCandidates];

    if (!hasCandidates)
    {
      goto LABEL_13;
    }

    if ([(UIKeyboardImpl *)self cursorIsAtEndOfMarkedText])
    {
      candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      if ([candidateList currentIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        candidateList2 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
        currentIndex = [candidateList2 currentIndex];

        if (currentIndex)
        {
          candidateList3 = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
          [candidateList3 showCandidateInForwardDirection:0 granularity:0];

          goto LABEL_13;
        }
      }
    }

    selfCopy2 = self;
    v6 = 1;
  }

  [(UIKeyboardImpl *)selfCopy2 movePhraseBoundaryToDirection:1 granularity:v6];
LABEL_13:

  [(UIKeyboardImpl *)self updateForChangedSelection];
}

- (void)moveCursorRightShifted:(BOOL)shifted
{
  shiftedCopy = shifted;
  if ([(UIKeyboardImpl *)self hasEditableMarkedText])
  {
    if (shiftedCopy)
    {
LABEL_3:
      [(UIKeyboardImpl *)self movePhraseBoundaryToDirection:0 granularity:0];
      goto LABEL_5;
    }

    candidateResultSet = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateResultSet];
    hasCandidates = [candidateResultSet hasCandidates];

    if (hasCandidates)
    {
      if (![(UIKeyboardImpl *)self cursorIsAtEndOfMarkedText])
      {
        goto LABEL_3;
      }

      candidateList = [(_UIKeyboardStateManager *)self->_keyboardStateManager candidateList];
      [candidateList showCandidateInForwardDirection:1 granularity:0];
    }
  }

  else
  {
    delegateAsResponder = [(UIKeyboardImpl *)self delegateAsResponder];
    arrowKeyHistory = [(UIKeyboardImpl *)self arrowKeyHistory];
    v7 = [delegateAsResponder _moveRight:shiftedCopy withHistory:arrowKeyHistory];
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

- (BOOL)callShouldInsertText:(id)text onDelegate:(id)delegate
{
  textCopy = text;
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_1EFE8A188])
  {
    v8 = delegateCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if ([delegateCopy conformsToProtocol:&unk_1EFE8B2D0])
  {
    v10 = delegateCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 keyboardInput:v9 shouldInsertText:textCopy isMarkedText:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
    selectedTextRange = [inputDelegateManager selectedTextRange];
    v12 = [v11 shouldChangeTextInRange:selectedTextRange replacementText:textCopy];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)shouldApplyKeyboardCommandToUIHost
{
  hardwareKeyboardAttached = [(_UIKeyboardStateManager *)self->_keyboardStateManager hardwareKeyboardAttached];
  if (hardwareKeyboardAttached)
  {

    LOBYTE(hardwareKeyboardAttached) = [(UIKeyboardImpl *)self keyboardLayoutIsInAnotherProcess];
  }

  return hardwareKeyboardAttached;
}

- (BOOL)isRTIClient
{
  keyboardScreen = [objc_opt_class() keyboardScreen];
  v4 = [UIKBScreenTraits traitsWithScreen:keyboardScreen orientation:[(UIView *)self _keyboardOrientation]];

  if ([v4 idiom] == 3)
  {
    inputSystemClientEnabled = 0;
  }

  else
  {
    remoteTextInputPartnerPrivate = [(UIKeyboardImpl *)self remoteTextInputPartnerPrivate];
    inputSystemClientEnabled = [remoteTextInputPartnerPrivate inputSystemClientEnabled];
  }

  return inputSystemClientEnabled;
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
      textInputTraits = [(_UIKeyboardStateManager *)self->_keyboardStateManager textInputTraits];
      v5 = -[UIKBTutorialModalDisplay initWithKeyboardAppearance:](v3, "initWithKeyboardAppearance:", [textInputTraits keyboardAppearance]);
      editingGestureIntroductionView = self->_editingGestureIntroductionView;
      self->_editingGestureIntroductionView = v5;
    }

    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];
    [bottomEdgeView addSubview:self->_editingGestureIntroductionView];
  }
}

- (void)presentStickerEditorWithStickerIdentifier:(id)identifier sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  if (self->_stickerEditorViewController)
  {
    [(UIKeyboardImpl *)self dismissStickerEditor:0];
  }

  height = [[UIKeyboardStickerEditorViewController alloc] initWithStickerIdentifier:identifierCopy sourceRect:x, y, width, height];
  stickerEditorViewController = self->_stickerEditorViewController;
  self->_stickerEditorViewController = height;

  [(UIKeyboardStickerEditorViewController *)self->_stickerEditorViewController showInKeyboard];
}

- (void)dismissStickerEditor:(BOOL)editor
{
  stickerEditorViewController = self->_stickerEditorViewController;
  if (stickerEditorViewController)
  {
    [(UIKeyboardStickerEditorViewController *)stickerEditorViewController dismissAnimated:editor];
    v5 = self->_stickerEditorViewController;
    self->_stickerEditorViewController = 0;
  }
}

- (void)presentMultilingualKeyboardTip:(id)tip
{
  tipCopy = tip;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions oneTimeActionCompleted:@"MultilingualKeyboardTip"];

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
      v18 = [[UIKBMultilingualKeyboardIntroductionView alloc] initWithInputMode:tipCopy frame:v9, v10, v11, v12];
      v19 = self->_multilingualKeyboardIntroductionView;
      self->_multilingualKeyboardIntroductionView = v18;

      multilingualKeyboardIntroductionView = self->_multilingualKeyboardIntroductionView;
    }

    [(UIView *)multilingualKeyboardIntroductionView setFrame:v13, v14, v15, v16];
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];
    [bottomEdgeView addSubview:self->_multilingualKeyboardIntroductionView];
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

- (void)presentMultilingualSettingTip:(id)tip
{
  tipCopy = tip;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions oneTimeActionCompleted:@"MultilingualSettingTip"];

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
      v13 = [[UIKBMultilingualSettingIntroductionView alloc] initWithInputMode:tipCopy frame:v9, v10, v11, v12];
      multilingualSettingIntroductionView = self->_multilingualSettingIntroductionView;
      self->_multilingualSettingIntroductionView = v13;
    }

    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    bottomEdgeView = [_rootInputWindowController bottomEdgeView];
    [bottomEdgeView addSubview:self->_multilingualSettingIntroductionView];
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

- (void)forwardDictationEvent_switchToDictationInputModeWithOptions:(id)options
{
  optionsCopy = options;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_switchToDictationInputModeWithOptions_ withOptionalObject:optionsCopy];
}

- (void)forwardDictationEvent_handleDictationShouldPause:(BOOL)pause withNewDelagate:(BOOL)delagate
{
  delagateCopy = delagate;
  pauseCopy = pause;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v16[0] = @"shouldPause";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:pauseCopy];
  v16[1] = @"withNewDelagate";
  v17[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:delagateCopy];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleDictationShouldPause_withNewDelagate_ withOptionalObject:v12];
}

- (void)forwardDictationEvent_switchToDictationLanguage:(id)language
{
  languageCopy = language;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_switchToDictationLanguage_ withOptionalObject:languageCopy];
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_startDictation withOptionalObject:0];
}

- (void)forwardDictationEvent_stopDictation:(BOOL)dictation
{
  dictationCopy = dictation;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:dictationCopy];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_stopDictation_ withOptionalObject:v8];
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_cancelDictation withOptionalObject:0];
}

- (void)forwardDictationEvent_movePopoverView:(id)view
{
  viewCopy = view;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_movePopoverView_ withOptionalObject:viewCopy];
}

- (void)forwardDictationEvent_setDisambiguationActive:(BOOL)active maxOptions:(unint64_t)options
{
  activeCopy = active;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v16[0] = @"active";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:activeCopy];
  v16[1] = @"maxOptions";
  v17[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_setDisambiguationActive_maxOptions_ withOptionalObject:v12];
}

- (void)forwardDictationEvent_handleTip:(id)tip title:(id)title
{
  v17[2] = *MEMORY[0x1E69E9840];
  tipCopy = tip;
  titleCopy = title;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v11 = remoteTextInputPartner;
  if (tipCopy)
  {
    v16[0] = @"text";
    v16[1] = @"title";
    v17[0] = tipCopy;
    v17[1] = titleCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v11 forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_handleTip_ withOptionalObject:v12];
  }

  else
  {
    [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_handleTip_ withOptionalObject:0];
  }
}

- (void)forwardDictationEvent_updateIdleDetection:(int64_t)detection
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:detection];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_updateIdleDetection_ withOptionalObject:v8];

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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases withOptionalObject:0];
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardDictationEventToUIHost:sel_handleRemoteDictationEvent_resumeDictation withOptionalObject:0];
}

- (void)forwardKeyboardCameraEvent_startCameraInput:(id)input
{
  inputCopy = input;
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

  remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
  [remoteTextInputPartner forwardKeyboardCameraEvent_startCameraInput:inputCopy];
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

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    [textOperations setEditingActionSelector:sel_handleRemoteKeyboardCameraEvent_selfDestruct];
    [inputSystemSourceSession flushOperations];
  }
}

- (void)forwardKeyboardCameraEvent_updatePreviewText:(id)text asMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  textCopy = text;
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

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    if (markedTextCopy)
    {
      textOperations3 = [MEMORY[0x1E69D9618] intermediateTextWithInputString:&stru_1EFB14550 displayString:textCopy];
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setIntermediateText:textOperations3];
    }

    else
    {
      v13 = [MEMORY[0x1E69D9618] intermediateTextWithInputString:&stru_1EFB14550 displayString:&stru_1EFB14550];
      textOperations2 = [inputSystemSourceSession textOperations];
      [textOperations2 setIntermediateText:v13];

      textOperations3 = [inputSystemSourceSession textOperations];
      textOperations = [textOperations3 keyboardOutput];
      [textOperations insertText:textCopy];
    }

    [inputSystemSourceSession flushOperations];
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

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    [textOperations setEditingActionSelector:sel_handleStickerEvent_presentCard];
    [inputSystemSourceSession flushOperations];
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

  inputDelegateManager = [(UIKeyboardImpl *)self inputDelegateManager];
  v6 = [inputDelegateManager delegateRespectingForwardingDelegate:0];

  textInputView = [v6 textInputView];
  if ([v6 conformsToProtocol:&unk_1EFE8B2D0])
  {
    [(_UIStickerPickerKeyboardSession *)self->_stickerPickerSession presentWithTextInput:v6 view:textInputView];
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
  smartReplyFeedbackManager = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  [smartReplyFeedbackManager reportFeedbackUIPresented];
}

- (void)writingToolsDidEnd
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    remoteTextInputPartner = [(UIKeyboardImpl *)self remoteTextInputPartner];
    [remoteTextInputPartner forwardInputDestinationEventToUIHost:sel_writingToolsDidEnd];
  }

  else
  {
    remoteTextInputPartner = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
    [remoteTextInputPartner reportWritingToolsPanelDismissed];
  }
}

- (void)reportSmartRepliesConcern
{
  smartReplyFeedbackManager = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  [smartReplyFeedbackManager reportSmartRepliesConcern];
}

- (BOOL)shouldCollapseButtonBarForFeedbackUI
{
  smartReplyFeedbackManager = [(_UIKeyboardStateManager *)self->_keyboardStateManager smartReplyFeedbackManager];
  willShowFeedbackUI = [smartReplyFeedbackManager willShowFeedbackUI];

  return willShowFeedbackUI;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (!type)
  {
    [(UIKeyboardImpl *)self setHideInlineCandidates:state];
    [(UIKeyboardImpl *)self removeCandidateList];

    [(UIKeyboardImpl *)self generateCandidates];
  }
}

- (id)_getCurrentKeyboardName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyboardName = [(UIKeyboardLayout *)self->m_layout keyboardName];
  }

  else
  {
    keyboardName = 0;
  }

  return keyboardName;
}

- (id)_getLocalizedInputMode
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizedInputMode = [(UIKeyboardLayout *)self->m_layout localizedInputMode];
  }

  else
  {
    localizedInputMode = 0;
  }

  return localizedInputMode;
}

- (id)_getAutocorrectionList
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v2 systemInputAssistantViewController];
  centerViewController = [systemInputAssistantViewController centerViewController];
  displayedCandidates = [centerViewController displayedCandidates];

  return displayedCandidates;
}

- (void)forwardEmojiGenerationControllerWithInputString:(id)string
{
  v12[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 clearForwardingInputDelegateAndResign:0];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 resetInputDelegate];

  inputSystemSourceSession = [(UIKeyboardImpl *)self inputSystemSourceSession];
  v8 = inputSystemSourceSession;
  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    [textOperations setCustomInfoType:0x1EFB7CB70];
    [textOperations setEditingActionSelector:sel_presentEmojiGenerationWithInputString_];
    v11 = @"inputString";
    v12[0] = stringCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [textOperations setCustomInfo:v10];

    [v8 flushOperations];
  }
}

- (UIView)overlayContainerObserved
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayContainerObserved);

  return WeakRetained;
}

@end