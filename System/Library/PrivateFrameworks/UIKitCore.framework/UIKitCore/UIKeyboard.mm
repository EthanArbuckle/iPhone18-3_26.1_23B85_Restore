@interface UIKeyboard
+ (BOOL)assistantBarShouldBeIncludedInSizeForDelegate:(id)delegate;
+ (BOOL)canShowEmojiKeyboardInsideStickerPickerService;
+ (BOOL)candidateDisplayIsExtended;
+ (BOOL)doesKeyboardFollowEventDeferralTarget;
+ (BOOL)doesSpacebarAcceptFullInlineTextCompletion;
+ (BOOL)doesSpacebarAcceptInlineTextCompletion;
+ (BOOL)hasInputOrAssistantViewsOnScreen;
+ (BOOL)inputUIOOP;
+ (BOOL)isAlwaysAllowedAutoFillPanelClient;
+ (BOOL)isAlwaysBlockedAutoFillPanelClient;
+ (BOOL)isAutoFillPanelInAppsEnabled;
+ (BOOL)isAutoFillPanelUIEnabled;
+ (BOOL)isEmojiSearchEnabledInEmojiPoster;
+ (BOOL)isInHardwareKeyboardMode;
+ (BOOL)isInlineDictationGlowEffectEnabled;
+ (BOOL)isInlineTextCompletionEducationUIEnabled;
+ (BOOL)isInlineTextCompletionUIEnabled;
+ (BOOL)isInputUIProcess;
+ (BOOL)isLanguageIndicatorEnabled;
+ (BOOL)isMajelEnabled;
+ (BOOL)isMajelSupported;
+ (BOOL)isModelessActive;
+ (BOOL)isOnScreen;
+ (BOOL)isRedesignedTextCursorEnabled;
+ (BOOL)isRemoteEmojiCollectionViewEnabled;
+ (BOOL)isSafari;
+ (BOOL)isShowingEmojiSearch;
+ (BOOL)isSpotlight;
+ (BOOL)predictionViewPrewarmsPredictiveCandidates;
+ (BOOL)presentsInlineTextCompletionAsMarkedText;
+ (BOOL)respondsToProxGesture;
+ (BOOL)shouldExtendKeyboardInputUI;
+ (BOOL)shouldMinimizeForHardwareKeyboard;
+ (BOOL)shouldSuppressSoftwareKeyboardForResponder:(id)responder;
+ (BOOL)supportsAutoFillPanel;
+ (BOOL)usesInputSystemUI;
+ (BOOL)usesInputSystemUIForAutoFillOnly;
+ (BOOL)usesInputSystemUIForAutoFillOnlyWithRTI;
+ (BOOL)usesLocalKeyboard;
+ (BOOL)usingEndInputSessionCompletion;
+ (CGRect)defaultFrameForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)defaultSize;
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view inputDelegate:(id)delegate;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation includingAssistantBar:(BOOL)bar ignoreInputView:(BOOL)view;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation inputDelegate:(id)delegate;
+ (UIEdgeInsets)_keyboardFocusGuideMargins;
+ (UIEdgeInsets)keyplanePadding;
+ (double)predictionViewHeightForCurrentInputMode;
+ (id)activeKeyboardForScreen:(id)screen;
+ (id)activeScreenTraits;
+ (id)currentDocumentState;
+ (id)homeGestureExclusionZones;
+ (id)keyboardApplicationIdentifier;
+ (id)keyboardBundleIdentifier;
+ (id)obtainHideDisambiguationCandidatesAssertionForReason:(id)reason;
+ (id)obtainHideInlineCandidatesAssertionForReason:(id)reason;
+ (id)snapshotViewForOptions:(unint64_t)options;
+ (id)snapshotViewForPredictionViewTransition;
+ (int)keyboardProcessId;
+ (unint64_t)serviceRole;
+ (void)_clearActiveKeyboard;
+ (void)clearActiveForScreen:(id)screen;
+ (void)clearLastKeyboardApplicationIdentifier;
+ (void)forceKeyboardAlpha:(double)alpha;
+ (void)makeKeyboardActive:(id)active forScreen:(id)screen;
+ (void)removeAllDynamicDictionaries;
+ (void)resetServiceRole;
+ (void)setKeyboardAlpha:(double)alpha remote:(BOOL)remote force:(BOOL)force processId:(int)id;
+ (void)setPredictionViewPrewarmsPredictiveCandidates:(BOOL)candidates;
+ (void)setServiceRole:(unint64_t)role;
- (BOOL)_hasCandidates;
- (BOOL)_isDictationCurrentView;
- (BOOL)allowExternalChangeForFocusHeading:(unint64_t)heading cursorLocation:(unint64_t)location;
- (BOOL)canBecomeFocused;
- (BOOL)canHandlePresses:(id)presses withEvent:(id)event;
- (BOOL)caretBlinks;
- (BOOL)caretVisible;
- (BOOL)disableInteraction;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasAutocorrectPrompt;
- (BOOL)isActivePerScreen;
- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)returnKeyEnabled;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (BOOL)showPredictionBar;
- (BOOL)showsCandidatesInline;
- (CGRect)_floatingKeyboardDraggableRect;
- (CGRect)_focusCastingFrameForHeading:(unint64_t)heading inCoordinateSpace:(id)space;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)unfocusedFocusGuideOutsets;
- (UIKeyboard)initWithDefaultSize;
- (UIKeyboard)initWithRequestedInteractionModel:(unint64_t)model;
- (UIPeripheralAnimationGeometry)geometryForImplHeightDelta:(SEL)delta;
- (UIPeripheralAnimationGeometry)geometryForMinimize:(SEL)minimize;
- (UITextCursorAssertionController)_activeAssertionController;
- (id)_baseKeyForRepresentedString:(id)string;
- (id)_getAutocorrection;
- (id)_getCurrentKeyboardName;
- (id)_getCurrentKeyplaneName;
- (id)_getLocalizedInputMode;
- (id)_initWithFrame:(CGRect)frame lazily:(BOOL)lazily;
- (id)_keyplaneForKey:(id)key;
- (id)_keyplaneNamed:(id)named;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_touchPoint:(CGPoint)point;
- (id)_typeCharacter:(id)character withError:(CGPoint)error shouldTypeVariants:(BOOL)variants baseKeyForVariants:(BOOL)forVariants;
- (id)createPathEffectViewIfNecessary;
- (id)defaultTextInputTraits;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)targetWindow;
- (id)window;
- (int64_t)_positionInCandidateList:(id)list;
- (unint64_t)cursorLocation;
- (void)_acceptCurrentCandidate;
- (void)_changeToKeyplane:(id)keyplane;
- (void)_deactivateForBackgrounding;
- (void)_didChangeKeyplaneWithContext:(id)context;
- (void)_setAutocorrects:(BOOL)autocorrects;
- (void)_setDisableTouchInput:(BOOL)input;
- (void)_setDisableUpdateMaskForSecureTextEntry:(BOOL)entry;
- (void)_setInputMode:(id)mode;
- (void)_setPasscodeOutlineAlpha:(double)alpha;
- (void)_setRenderConfig:(id)config;
- (void)_showPasswordAutoFillPocket;
- (void)_toggleMenuGestureRecognizer:(BOOL)recognizer;
- (void)_wheelChangedWithEvent:(id)event;
- (void)acceptAutocorrection;
- (void)acceptAutocorrectionWithCompletionHandler:(id)handler;
- (void)activate;
- (void)activateIfNeeded;
- (void)autoAdjustOrientation;
- (void)clearActivePerScreenIfNeeded;
- (void)clearSnapshot;
- (void)deactivate;
- (void)dealloc;
- (void)didFocusGuideWithHeading:(unint64_t)heading;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)displayLayer:(id)layer;
- (void)geometryChangeDone:(BOOL)done;
- (void)implBoundsHeightChangeDone:(double)done suppressNotification:(BOOL)notification;
- (void)keyboardMinMaximized:(BOOL)maximized;
- (void)layoutSubviews;
- (void)manualKeyboardWasOrderedIn;
- (void)manualKeyboardWasOrderedOut;
- (void)manualKeyboardWillBeOrderedIn;
- (void)manualKeyboardWillBeOrderedOut;
- (void)maximize;
- (void)minimize;
- (void)prepareForGeometryChange;
- (void)prepareForImplBoundsHeightChange:(double)change suppressNotification:(BOOL)notification;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)remoteControlReceivedWithEvent:(id)event;
- (void)removeAutocorrectPrompt;
- (void)responseContextDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setCaretBlinks:(BOOL)blinks;
- (void)setCaretVisible:(BOOL)visible;
- (void)setCorrectionLearningAllowed:(BOOL)allowed;
- (void)setCursorLocation:(unint64_t)location;
- (void)setDefaultTextInputTraits:(id)traits;
- (void)setDisableInteraction:(BOOL)interaction;
- (void)setFrame:(CGRect)frame;
- (void)setMinimized:(BOOL)minimized;
- (void)setNeedsDisplay;
- (void)setReturnKeyEnabled:(BOOL)enabled;
- (void)setShouldUpdateLayoutAutomatically:(BOOL)automatically;
- (void)setShowsCandidatesInline:(BOOL)inline;
- (void)set_overrideTextInputTraits:(id)traits;
- (void)setupKeyFocusGuides;
- (void)syncMinimizedStateToHardwareKeyboardAttachedState;
- (void)takeSnapshot;
- (void)textInputTraitsDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateFocusMarginsUpToView:(id)view;
- (void)updateKeyFocusGuides;
- (void)updateLayout;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIKeyboard

+ (BOOL)usesInputSystemUI
{
  inputUIOOP = [self inputUIOOP];
  if (inputUIOOP)
  {
    LOBYTE(inputUIOOP) = [self isKeyboardProcess] ^ 1;
  }

  return inputUIOOP;
}

+ (BOOL)inputUIOOP
{
  if (qword_1ED49C3F0 != -1)
  {
    dispatch_once(&qword_1ED49C3F0, &__block_literal_global_1019);
  }

  return _MergedGlobals_31_0;
}

+ (BOOL)isInputUIProcess
{
  if (qword_1ED49C3F8 != -1)
  {
    dispatch_once(&qword_1ED49C3F8, &__block_literal_global_1029);
  }

  return byte_1ED49C3D1;
}

+ (BOOL)supportsAutoFillPanel
{
  if (qword_1ED49C450 != -1)
  {
    dispatch_once(&qword_1ED49C450, &__block_literal_global_1080);
  }

  return byte_1ED49C3DC;
}

+ (BOOL)isInHardwareKeyboardMode
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = v2;
  if (v2)
  {
    isInHardwareKeyboardMode = [v2 isInHardwareKeyboardMode];
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    isInHardwareKeyboardMode = [v5 _isHardwareKeyboardAvailable];
  }

  return isInHardwareKeyboardMode;
}

+ (id)keyboardBundleIdentifier
{
  if (![self isKeyboardProcess] || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "inputSystemSourceSession"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "documentTraits"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bundleId"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, !v5))
  {
    v5 = _UIMainBundleIdentifier();
  }

  return v5;
}

+ (BOOL)isInlineTextCompletionUIEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UIKeyboard_isInlineTextCompletionUIEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C418 != -1)
  {
    dispatch_once(&qword_1ED49C418, block);
  }

  return byte_1ED49C3D5;
}

+ (BOOL)presentsInlineTextCompletionAsMarkedText
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIKeyboard_presentsInlineTextCompletionAsMarkedText__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C420 != -1)
  {
    dispatch_once(&qword_1ED49C420, block);
  }

  return byte_1ED49C3D6;
}

+ (BOOL)usesLocalKeyboard
{
  if (TIGetUsesLocalKeyboardValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetUsesLocalKeyboardValue_onceToken, &__block_literal_global_1489);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"UsesLocalKeyboard"];

  LODWORD(mEMORY[0x1E69D9680]) = [v3 BOOLValue];
  if (mEMORY[0x1E69D9680] && +[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    snapshotting = [v4 snapshotting];
    if ((snapshotting & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v3 = objc_claimAutoreleasedReturnValue(), [v3 loadingLocalKeyboard]))
    {
      v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      sceneIsFullScreen = [v6 sceneIsFullScreen];

      if (snapshotting)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sceneIsFullScreen = 0;
    }

LABEL_12:
    return sceneIsFullScreen;
  }

  return 0;
}

void __30__UIKeyboard_isInputUIProcess__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.InputUI"];

  if (v1)
  {
    byte_1ED49C3D1 = 1;
  }
}

void __24__UIKeyboard_inputUIOOP__block_invoke()
{
  v0 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  v1 = _os_feature_enabled_impl();
  if (v0 == 1)
  {
    v1 = _os_feature_enabled_impl();
  }

  v2 = v1;
  if (_os_feature_enabled_impl() && v2)
  {
    if (qword_1ED49C4C0 != -1)
    {
      dispatch_once(&qword_1ED49C4C0, &__block_literal_global_1468_0);
    }

    v3 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v4 = [v3 valueForPreferenceKey:@"KeyboardOOP"];

    _MergedGlobals_31_0 = [v4 BOOLValue];
  }

  else
  {
    _MergedGlobals_31_0 = 0;
  }
}

void __35__UIKeyboard_supportsAutoFillPanel__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v0 = 1;
  }

  else
  {
    v0 = _os_feature_enabled_impl();
  }

  byte_1ED49C3DC = v0;
  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = 1;
    }

    else
    {
      v3 = _os_feature_enabled_impl();
    }

    byte_1ED49C3DC = v3;
  }
}

+ (BOOL)doesKeyboardFollowEventDeferralTarget
{
  if (qword_1ED49C440 != -1)
  {
    dispatch_once(&qword_1ED49C440, &__block_literal_global_1064);
  }

  return byte_1ED49C3DA;
}

void __51__UIKeyboard_doesKeyboardFollowEventDeferralTarget__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    if (qword_1ED49C4C8 != -1)
    {
      dispatch_once(&qword_1ED49C4C8, &__block_literal_global_1494);
    }

    v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v1 = [v0 valueForPreferenceKey:@"KeyboardFollowsEventDeferralTarget"];

    LOBYTE(v0) = [v1 BOOLValue];
    byte_1ED49C3DA = v0;
  }
}

uint64_t __43__UIKeyboard_isRedesignedTextCursorEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49C3DB = result;
  return result;
}

+ (BOOL)isRedesignedTextCursorEnabled
{
  if (qword_1ED49C448 != -1)
  {
    dispatch_once(&qword_1ED49C448, &__block_literal_global_1067);
  }

  return byte_1ED49C3DB;
}

+ (BOOL)usesInputSystemUIForAutoFillOnly
{
  if ([self isKeyboardProcess] & 1) != 0 || (objc_msgSend(self, "inputUIOOP"))
  {
    return 0;
  }

  return [self supportsAutoFillPanel];
}

+ (BOOL)isRemoteEmojiCollectionViewEnabled
{
  if ((_UIApplicationIsFirstPartyStickers() & 1) != 0 || _UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
  {
    return 0;
  }

  if (TIGetRemoteEmojiValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetRemoteEmojiValue_onceToken, &__block_literal_global_1499_0);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"RemoteEmoji"];

  LODWORD(mEMORY[0x1E69D9680]) = [v3 BOOLValue];
  if (!mEMORY[0x1E69D9680])
  {
    return 0;
  }

  v4 = +[UIDevice currentDevice];
  [v4 userInterfaceIdiom];

  return _os_feature_enabled_impl();
}

- (id)window
{
  v4.receiver = self;
  v4.super_class = UIKeyboard;
  window = [(UIView *)&v4 window];

  return window;
}

+ (BOOL)isOnScreen
{
  v2 = isOnScreen_token;
  if (!isOnScreen_token)
  {
    notify_register_check("com.apple.keyboard.isOnScreen", &isOnScreen_token);
    v2 = isOnScreen_token;
  }

  state64 = 0;
  notify_get_state(v2, &state64);
  return state64 & 1;
}

+ (BOOL)isModelessActive
{
  isMajelEnabled = [objc_opt_class() isMajelEnabled];
  if (isMajelEnabled)
  {
    v3 = +[UIKeyboardInputMode dictationInputMode];
    usingTypeAndTalk = [v3 usingTypeAndTalk];

    LOBYTE(isMajelEnabled) = usingTypeAndTalk;
  }

  return isMajelEnabled;
}

+ (BOOL)isMajelEnabled
{
  if (qword_1ED49C408 != -1)
  {
    dispatch_once(&qword_1ED49C408, &__block_literal_global_1048);
  }

  if (byte_1ED49C3D3 == 1 && os_variant_has_internal_diagnostics())
  {
    v3 = _UIKitUserDefaults();
    byte_1ED49C3D3 = [v3 BOOLForKey:@"UIDictationControllerDisableTypeAndTalk"] ^ 1;
  }

  return byte_1ED49C3D3;
}

uint64_t __28__UIKeyboard_isMajelEnabled__block_invoke()
{
  result = +[UIKeyboard isMajelSupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  byte_1ED49C3D3 = result;
  return result;
}

+ (BOOL)isMajelSupported
{
  if (qword_1ED49C410 != -1)
  {
    dispatch_once(&qword_1ED49C410, &__block_literal_global_1055);
  }

  return byte_1ED49C3D4;
}

void __30__UIKeyboard_isMajelSupported__block_invoke()
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v0 = +[UIDevice currentDevice];
    if ([v0 userInterfaceIdiom] == 4)
    {
      byte_1ED49C3D4 = 1;
    }

    else
    {
      v1 = +[UIDevice currentDevice];
      byte_1ED49C3D4 = [v1 userInterfaceIdiom] == 1;
    }
  }

  else
  {
    byte_1ED49C3D4 = 1;
  }
}

+ (BOOL)isLanguageIndicatorEnabled
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  keyboardLanguageIndicatorEnabled = [v2 keyboardLanguageIndicatorEnabled];

  return keyboardLanguageIndicatorEnabled;
}

- (void)syncMinimizedStateToHardwareKeyboardAttachedState
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboard *)self isAutomatic])
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    if ([v3 _shouldMinimizeForHardwareKeyboard])
    {
      _shouldSuppressSoftwareKeyboard = 1;
    }

    else
    {
      _shouldSuppressSoftwareKeyboard = [v3 _shouldSuppressSoftwareKeyboard];
    }

    if (self->m_minimized != _shouldSuppressSoftwareKeyboard)
    {
      v5 = _UIKeyboardLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[UIKeyboard syncMinimizedStateToHardwareKeyboardAttachedState]";
        v8 = 1024;
        v9 = _shouldSuppressSoftwareKeyboard;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s Setting keyboard minimized = %d", &v6, 0x12u);
      }

      self->m_minimized = _shouldSuppressSoftwareKeyboard;
    }

    [v3 notifyInputSourceStateChangeIfNeeded];
  }
}

+ (BOOL)usingEndInputSessionCompletion
{
  if (qword_1ED49C400 != -1)
  {
    dispatch_once(&qword_1ED49C400, &__block_literal_global_1034);
  }

  return byte_1ED49C3D2;
}

+ (BOOL)usesInputSystemUIForAutoFillOnlyWithRTI
{
  usesInputSystemUIForAutoFillOnly = [self usesInputSystemUIForAutoFillOnly];
  if (usesInputSystemUIForAutoFillOnly)
  {

    LOBYTE(usesInputSystemUIForAutoFillOnly) = _os_feature_enabled_impl();
  }

  return usesInputSystemUIForAutoFillOnly;
}

+ (BOOL)isInlineDictationGlowEffectEnabled
{
  if (![self isRedesignedTextCursorEnabled] || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = +[_UIDictationSettingsDomain rootSettings];
  glowEffectEnabled = [v2 glowEffectEnabled];

  return glowEffectEnabled;
}

- (void)setNeedsDisplay
{
  layer = [(UIView *)self layer];
  [layer setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  v3 = +[UIKeyboard resizable];
  width = -1.0;
  height = -1.0;
  if (!v3)
  {
    width = self->_preferredSize.width;
    height = self->_preferredSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

+ (BOOL)isAlwaysAllowedAutoFillPanelClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIKeyboard_isAlwaysAllowedAutoFillPanelClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C460 != -1)
  {
    dispatch_once(&qword_1ED49C460, block);
  }

  return byte_1ED49C3DE;
}

void __48__UIKeyboard_isAlwaysAllowedAutoFillPanelClient__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.quicklook", @"com.apple.quicklook.extension.previewUI", @"com.apple.quicklook.UIExtension", @"com.apple.mobilenotes", 0}];
  v2 = [*(a1 + 32) keyboardBundleIdentifier];
  byte_1ED49C3DE = [v3 containsObject:v2];
}

void __44__UIKeyboard_usingEndInputSessionCompletion__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = NSClassFromString(&cfstr_Rtiinputsystem.isa);
  v1 = [(objc_class *)v0 instancesRespondToSelector:sel_endRemoteTextInputSessionWithID_options_completion_];
  if (v1)
  {
    v1 = [(objc_class *)v0 instancesRespondToSelector:sel_endAllowingRemoteTextInput_completion_];
    if (v1)
    {
      v1 = [(objc_class *)v0 instancesRespondToSelector:sel_setEnvironmentOptions_withReason_completion_];
      if (v1)
      {
        v1 = +[UIKeyboard inputUIOOP];
        if (v1)
        {
          LOBYTE(v1) = _os_feature_enabled_impl();
        }
      }
    }
  }

  byte_1ED49C3D2 = v1;
  if (os_variant_has_internal_diagnostics())
  {
    v4 = TIGetKeyboardOOPUsingEndInputSessionCompletionValue();
    v5 = [v4 BOOLValue];

    v6 = byte_1ED49C3D2;
    if (byte_1ED49C3D2 == 1 && (v5 & 1) == 0)
    {
      v7 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "endInputSession completion is available for this configuration, but is disabled by defaults override", &v8, 2u);
      }

      v6 = byte_1ED49C3D2;
    }

    byte_1ED49C3D2 = v6 & v5 & 1;
  }

  v2 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1ED49C3D2)
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "endInputSession completion is %s", &v8, 0xCu);
  }
}

uint64_t __45__UIKeyboard_isInlineTextCompletionUIEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInlineTextCompletionUISupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  byte_1ED49C3D5 = result;
  return result;
}

uint64_t __46__UIKeyboard_OutOfProcessSupport__serviceRole__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) usesInputSystemUI];
  if ((result & 1) != 0 || (result = [*(a1 + 32) usesInputSystemUIForAutoFillOnlyWithRTI], result))
  {
    qword_1ED49C498 = 1;
  }

  return result;
}

+ (unint64_t)serviceRole
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIKeyboard_OutOfProcessSupport__serviceRole__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C490 != -1)
  {
    dispatch_once(&qword_1ED49C490, block);
  }

  return qword_1ED49C498;
}

+ (BOOL)shouldExtendKeyboardInputUI
{
  if (TIGetExtendInputUIValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetExtendInputUIValue_onceToken, &__block_literal_global_1484_0);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"ExtendInputUI"];

  if ([v4 BOOLValue])
  {
    v5 = [self isSpotlight] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isSpotlight
{
  keyboardBundleIdentifier = [self keyboardBundleIdentifier];
  v3 = [keyboardBundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  return v3;
}

uint64_t __54__UIKeyboard_presentsInlineTextCompletionAsMarkedText__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInlineTextCompletionUIEnabled];
  if (result)
  {
    result = _os_feature_enabled_impl();
    v2 = result ^ 1;
  }

  else
  {
    v2 = 0;
  }

  byte_1ED49C3D6 = v2;
  return result;
}

- (void)activate
{
  v58[4] = *MEMORY[0x1E69E9840];
  superview = [(UIView *)self superview];

  if (superview)
  {
    if (activeKeyboard == self)
    {
      v24 = +[UIKeyboardImpl activeInstance];
      if (v24)
      {
        v10 = v24;
        traitCollection = [(UIView *)self traitCollection];
        if ([traitCollection userInterfaceIdiom] == 3)
        {
          requestedInteractionModel = [(UIKeyboard *)self requestedInteractionModel];

          if (requestedInteractionModel)
          {
            [(UIKeyboard *)v10 setRequestedInteractionModel:[(UIKeyboard *)self requestedInteractionModel]];
          }
        }

        else
        {
        }

        [(UIKeyboard *)v10 setGeometryDelegate:self];
        superview2 = [(UIView *)v10 superview];
        if (superview2)
        {
          selfCopy = self;
        }

        else
        {
          selfCopy = v10;
        }

        [(UIView *)selfCopy bounds];
        v30 = v29;
        v32 = v31;

        [(UIKeyboard *)self autoAdjustOrientation];
        [(UIKeyboard *)v10 setShouldUpdateLayoutAutomatically:[(UIKeyboard *)self shouldUpdateLayoutAutomatically]];
        [(UIKeyboard *)v10 setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v30, v32];
        superview3 = [(UIView *)v10 superview];

        if (!superview3)
        {
          [(UIView *)self addSubview:v10];
          [(UIKeyboard *)v10 setDefaultTextInputTraits:self->m_defaultTraits];
          [(UIKeyboard *)v10 setOverrideTextInputTraits:self->m_overrideTraits];
          if (self->_implConstraints)
          {
            [MEMORY[0x1E69977A0] deactivateConstraints:?];
          }

          v34 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions = [v34 preferencesActions];
          crescendoEnabled = [preferencesActions crescendoEnabled];

          if (crescendoEnabled)
          {
            [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
            topAnchor = [(UIView *)v10 topAnchor];
            topAnchor2 = [(UIView *)self topAnchor];
            v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
            v58[0] = v51;
            leadingAnchor = [(UIView *)v10 leadingAnchor];
            leadingAnchor2 = [(UIView *)self leadingAnchor];
            v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
            v58[1] = v37;
            bottomAnchor = [(UIView *)self bottomAnchor];
            bottomAnchor2 = [(UIView *)v10 bottomAnchor];
            v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
            v58[2] = v40;
            trailingAnchor = [(UIView *)self trailingAnchor];
            trailingAnchor2 = [(UIView *)v10 trailingAnchor];
            v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
            v58[3] = v43;
            v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
            implConstraints = self->_implConstraints;
            self->_implConstraints = v44;

            [MEMORY[0x1E69977A0] activateConstraints:self->_implConstraints];
          }
        }

        [(UIKeyboard *)self setupKeyFocusGuides];
        [(UIKeyboard *)self clearSnapshot];
        [(UIKeyboard *)self setNeedsDisplay];
        goto LABEL_40;
      }
    }

    else
    {
      [activeKeyboard takeSnapshot];
    }

    [(UIKeyboard *)self clearSnapshot];
    if (([activeKeyboard isAutomatic] & 1) == 0 && -[UIKeyboard isAutomatic](self, "isAutomatic"))
    {
      [activeKeyboard removeFromSuperview];
    }

    objc_storeStrong(&activeKeyboard, self);
    window = [(UIKeyboard *)self window];

    if (window)
    {
      v5 = objc_opt_class();
      window2 = [(UIKeyboard *)self window];
      screen = [window2 screen];
      [v5 makeKeyboardActive:self forScreen:screen];
    }

    v8 = +[UIKeyboardImpl activeInstance];
    -[UIView setOpaque:](self, "setOpaque:", [v8 keyboardDrawsOpaque]);

    if (self->_implConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
      v9 = self->_implConstraints;
      self->_implConstraints = 0;
    }

    v10 = +[UIKeyboardImpl sharedInstance];
    [(UIKeyboard *)v10 setGeometryDelegate:self];
    [(UIView *)v10 removeFromSuperview];
    [(UIView *)self bounds];
    [(UIKeyboard *)v10 setFrame:?];
    [(UIView *)self addSubview:v10];
    v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v11 preferencesActions];
    if ([preferencesActions2 crescendoEnabled])
    {
    }

    else
    {
      v14 = +[UIKeyboard resizable];

      if (!v14)
      {
        [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:1];
        goto LABEL_29;
      }
    }

    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor3 = [(UIView *)v10 topAnchor];
    topAnchor4 = [(UIView *)self topAnchor];
    v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v57[0] = v50;
    leadingAnchor3 = [(UIView *)v10 leadingAnchor];
    leadingAnchor4 = [(UIView *)self leadingAnchor];
    v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v57[1] = v15;
    bottomAnchor3 = [(UIView *)self bottomAnchor];
    bottomAnchor4 = [(UIView *)v10 bottomAnchor];
    v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v57[2] = v18;
    trailingAnchor3 = [(UIView *)self trailingAnchor];
    trailingAnchor4 = [(UIView *)v10 trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v57[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
    v23 = self->_implConstraints;
    self->_implConstraints = v22;

    [MEMORY[0x1E69977A0] activateConstraints:self->_implConstraints];
LABEL_29:
    [(UIKeyboard *)self setupKeyFocusGuides];
    [(UIKeyboard *)v10 setDefaultTextInputTraits:self->m_defaultTraits];
    [(UIKeyboard *)v10 setOverrideTextInputTraits:self->m_overrideTraits];
LABEL_40:

    return;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v13 = activeKeyboard == self;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && [(UITextInputTraits *)self->m_overrideTraits forceFloatingKeyboard])
  {
    v54 = +[UIKeyboardImpl activeInstance];
    [v54 setOverrideTextInputTraits:self->m_overrideTraits];
  }
}

- (void)autoAdjustOrientation
{
  if (!self->m_hasExplicitOrientation)
  {
    self->m_orientation = [(UIView *)self _keyboardOrientation];
  }
}

- (void)updateKeyFocusGuides
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->m_focusGuides count])
  {
    cursorLocation = [(UIKeyboard *)self cursorLocation];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    layoutGuides = [(UIView *)self layoutGuides];
    v5 = [layoutGuides countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(layoutGuides);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([(UIView *)self isFocused])
            {
              v10 = -[UIKeyboard allowExternalChangeForFocusHeading:cursorLocation:](self, "allowExternalChangeForFocusHeading:cursorLocation:", [v9 focusHeading], cursorLocation) ^ 1;
            }

            else
            {
              v10 = 0;
            }

            [v9 setEnabled:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [layoutGuides countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (unint64_t)cursorLocation
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];
  cursorLocation = [_layout cursorLocation];

  return cursorLocation;
}

- (BOOL)_isDictationCurrentView
{
  v2 = +[UIKeyboardImpl sharedInstance];
  _getCurrentKeyplaneName = [v2 _getCurrentKeyplaneName];
  [_getCurrentKeyplaneName rangeOfString:@"Dictation"];
  v5 = v4 != 0;

  return v5;
}

- (void)setupKeyFocusGuides
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  focusGuides = [(UIView *)self focusGuides];
  v4 = [focusGuides countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(focusGuides);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        owningView = [v8 owningView];
        [owningView removeLayoutGuide:v8];
      }

      v5 = [focusGuides countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->m_focusGuides removeAllObjects];
  if ([(UIKeyboard *)self isActive]&& [(UIKeyboard *)self canBecomeFocused])
  {
    if (!self->m_focusGuides)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      m_focusGuides = self->m_focusGuides;
      self->m_focusGuides = v10;

      *&self->m_unfocusedFocusGuideOutsets.top = 0u;
      *&self->m_unfocusedFocusGuideOutsets.bottom = 0u;
    }

    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v14 = &unk_1EFE2CCB8;
    if (userInterfaceIdiom != 3)
    {
      v14 = 0;
    }

    if (userInterfaceIdiom == 2)
    {
      v15 = &unk_1EFE2CCA0;
    }

    else
    {
      v15 = v14;
    }

    userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
    if ([v15 count])
    {
      v17 = 0;
      v18 = 32;
      if (userInterfaceLayoutDirection == 1)
      {
        v19 = 16;
      }

      else
      {
        v19 = 32;
      }

      if (userInterfaceLayoutDirection != 1)
      {
        v18 = 16;
      }

      v31 = v18;
      v32 = v19;
      do
      {
        v20 = [v15 objectAtIndex:{v17, v31}];
        integerValue = [v20 integerValue];

        v22 = objc_alloc_init(UIKBFocusGuide);
        [(UIKBFocusGuide *)v22 setKeyboardDelegate:self];
        selfCopy = self;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
        [(UIFocusGuide *)v22 setPreferredFocusEnvironments:v23];

        [(UIKBFocusGuide *)v22 setFocusHeading:integerValue];
        [(UIView *)self bounds];
        switch(integerValue)
        {
          case 1:
            v27 = 60.0;
            v25 = -60.0;
            break;
          case 4:
            goto LABEL_30;
          case 2:
            v25 = v27;
            v27 = 60.0;
            break;
          default:
            if (integerValue != v32)
            {
              if (integerValue == 8 || integerValue == v31)
              {
                v24 = v26;
                v26 = 60.0;
              }

              break;
            }

LABEL_30:
            v26 = 60.0;
            v24 = -60.0;
            break;
        }

        [(UILayoutGuide *)v22 _setManualLayoutFrame:v24, v25, v26, v27];
        [(UIView *)self addLayoutGuide:v22];
        v29 = self->m_focusGuides;
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
        [(NSMutableDictionary *)v29 setObject:v22 forKey:v30];

        ++v17;
      }

      while (v17 < [v15 count]);
    }

    [(UIKeyboard *)self updateKeyFocusGuides];
  }
}

- (void)clearSnapshot
{
  [(UIView *)self->m_snapshot removeFromSuperview];
  m_snapshot = self->m_snapshot;
  self->m_snapshot = 0;
}

+ (id)activeScreenTraits
{
  v3 = +[UIKeyboardImpl keyboardScreen];
  activeKeyboard = [self activeKeyboard];
  v5 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v3, [activeKeyboard interfaceOrientation]);

  return v5;
}

+ (BOOL)isShowingEmojiSearch
{
  v2 = +[UIKeyboardImpl activeInstance];
  showingEmojiSearch = [v2 showingEmojiSearch];

  return showingEmojiSearch;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = UIKeyboard;
  [(UIView *)&v2 layoutSubviews];
}

- (void)clearActivePerScreenIfNeeded
{
  if ([(UIKeyboard *)self isActivePerScreen])
  {
    v3 = objc_opt_class();
    window = [(UIKeyboard *)self window];
    screen = [window screen];
    [v3 clearActiveForScreen:screen];
  }
}

- (BOOL)isActivePerScreen
{
  v3 = objc_opt_class();
  window = [(UIKeyboard *)self window];
  screen = [window screen];
  v6 = [v3 activeKeyboardForScreen:screen];
  LOBYTE(v3) = v6 != 0;

  return v3;
}

- (void)didMoveToWindow
{
  v3 = activeKeyboard;
  window = [(UIKeyboard *)self window];

  if (!window)
  {
    self->m_hasExplicitOrientation = 0;
    if (v3 != self)
    {
      goto LABEL_14;
    }

    v14 = +[UIKeyboardImpl activeInstance];
    [v14 clearExcessKeyboardMemory];

    goto LABEL_12;
  }

  v5 = +[UIPeripheralHost sharedInstance];
  containerWindow = [v5 containerWindow];
  [containerWindow orderFront:0];

  subviews = [(UIView *)self subviews];
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [subviews containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [(UIKeyboard *)self activate];
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIDevice _hasHomeButton]&& self->m_minimized)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    _layout = [v10 _layout];

    +[UIKeyboardImpl additionalInstanceHeight];
    v13 = v12;
    [_layout frame];
    [_layout setFrame:{0.0, v13}];
  }

  if (v3 == self)
  {
LABEL_12:
    window2 = [(UIKeyboard *)self window];

    if (window2)
    {
      v16 = objc_opt_class();
      window3 = [(UIKeyboard *)self window];
      screen = [window3 screen];
      [v16 makeKeyboardActive:self forScreen:screen];
    }
  }

LABEL_14:

  [(UIKeyboard *)self setupKeyFocusGuides];
}

- (BOOL)canBecomeFocused
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    if (![(UIKeyboard *)self requestedInteractionModel])
    {
      traitCollection2 = [(UIView *)self traitCollection];
      v5 = [traitCollection2 primaryInteractionModel] != 1;

      return v5;
    }

    if ([(UIKeyboard *)self requestedInteractionModel]!= 2)
    {
      return [(UIKeyboard *)self requestedInteractionModel]== 8;
    }
  }

  return 1;
}

- (void)activateIfNeeded
{
  if (activeKeyboard != self)
  {
    [(UIKeyboard *)self activate];
  }
}

- (id)_initWithFrame:(CGRect)frame lazily:(BOOL)lazily
{
  height = frame.size.height;
  width = frame.size.width;
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = UIKeyboard;
  v7 = [(UIView *)&v15 initWithFrame:frame.origin.x, frame.origin.y];
  v8 = v7;
  if (v7)
  {
    v7->_shouldUpdateLayoutAutomatically = 1;
    [(UIView *)v7 setAutoresizingMask:0];
    v8->m_orientation = 0;
    if (!lazily)
    {
      if (!activeKeyboard)
      {
        objc_storeStrong(&activeKeyboard, v8);
      }

      v9 = +[UIKeyboardImpl activeInstance];
      -[UIView setOpaque:](v8, "setOpaque:", [v9 keyboardDrawsOpaque]);

      v10 = +[UIKeyboardImpl sharedInstance];
      v11 = v10;
      if (activeKeyboard == v8)
      {
        [v10 setGeometryDelegate:v8];
      }

      if (-[UIKeyboard isAutomatic](v8, "isAutomatic") && (([v11 _shouldMinimizeForHardwareKeyboard] & 1) != 0 || objc_msgSend(v11, "_shouldSuppressSoftwareKeyboard")))
      {
        v8->m_minimized = 1;
        v12 = _UIKeyboardLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = "[UIKeyboard _initWithFrame:lazily:]";
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s Setting keyboard minimized = YES", buf, 0xCu);
        }
      }

      v8->m_respondingToImplGeometryChange = 0;
      v13 = *(MEMORY[0x1E695F058] + 16);
      v8->_forcedFrame.origin = *MEMORY[0x1E695F058];
      v8->_forcedFrame.size = v13;
      v8->_preferredSize.width = width;
      v8->_preferredSize.height = height;
    }
  }

  return v8;
}

- (UIKeyboard)initWithDefaultSize
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [UIKeyboard defaultSizeForInterfaceOrientation:1];

  return [(UIKeyboard *)self initWithFrame:v3, v4, v5, v6];
}

- (UIKeyboard)initWithRequestedInteractionModel:(unint64_t)model
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [UIKeyboard defaultSizeForInterfaceOrientation:1];
  result = [(UIKeyboard *)self _initWithFrame:0 lazily:v5, v6, v7, v8];
  if (result)
  {
    result->_requestedInteractionModel = model;
  }

  return result;
}

- (void)dealloc
{
  v3 = activeKeyboard;
  if (activeKeyboard == self)
  {
    activeKeyboard = 0;

    v4 = +[UIKeyboardImpl activeInstance];
    [v4 setGeometryDelegate:0];

    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setRequestedInteractionModel:0];
  }

  [(UIKeyboard *)self clearActivePerScreenIfNeeded];
  v6.receiver = self;
  v6.super_class = UIKeyboard;
  [(UIView *)&v6 dealloc];
}

+ (void)_clearActiveKeyboard
{
  v2 = activeKeyboard;
  activeKeyboard = 0;
}

+ (id)activeKeyboardForScreen:(id)screen
{
  screenCopy = screen;
  v4 = activeKeyboardsPerScreen;
  objc_sync_enter(v4);
  v5 = activeKeyboardsPerScreen;
  _name = [screenCopy _name];
  v7 = [v5 objectForKey:_name];

  objc_sync_exit(v4);

  return v7;
}

+ (void)makeKeyboardActive:(id)active forScreen:(id)screen
{
  activeCopy = active;
  screenCopy = screen;
  if (screenCopy)
  {
    v6 = activeKeyboardsPerScreen;
    objc_sync_enter(v6);
    v7 = activeKeyboardsPerScreen;
    if (!activeKeyboardsPerScreen)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = activeKeyboardsPerScreen;
      activeKeyboardsPerScreen = v8;

      v7 = activeKeyboardsPerScreen;
    }

    _name = [screenCopy _name];
    [v7 setObject:activeCopy forKey:_name];

    objc_sync_exit(v6);
  }
}

+ (void)clearActiveForScreen:(id)screen
{
  screenCopy = screen;
  v3 = activeKeyboardsPerScreen;
  objc_sync_enter(v3);
  v4 = activeKeyboardsPerScreen;
  _name = [screenCopy _name];
  [v4 removeObjectForKey:_name];

  objc_sync_exit(v3);
}

+ (UIEdgeInsets)_keyboardFocusGuideMargins
{
  v2 = -60.0;
  v3 = -60.0;
  v4 = -60.0;
  v5 = -60.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (void)removeAllDynamicDictionaries
{
  v2 = +[UIKeyboardImpl sharedInstance];
  [v2 removeAllDynamicDictionaries];
}

+ (CGSize)defaultSize
{
  [UIKeyboardImpl defaultSizeForInterfaceOrientation:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation
{
  [UIKeyboardImpl defaultSizeForInterfaceOrientation:orientation];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)defaultFrameForInterfaceOrientation:(int64_t)orientation
{
  [UIKeyboard defaultSizeForInterfaceOrientation:?];
  v5 = v4;
  v7 = v6;
  v8 = _UIAppUseModernRotationAndPresentationBehaviors();
  mainScreen = [objc_opt_self() mainScreen];
  v10 = mainScreen;
  if (v8)
  {
    [mainScreen _boundsForInterfaceOrientation:orientation];
    v12 = v11;

    v13 = v12 - v7;
    goto LABEL_3;
  }

  [mainScreen bounds];
  v17 = v16;
  v19 = v18;

  v13 = 0.0;
  if (orientation > 2)
  {
    if (orientation == 3)
    {
      v14 = 0.0;
    }

    else
    {
      if (orientation != 4)
      {
        goto LABEL_11;
      }

      v14 = v17 - v7;
    }

    v15 = v7;
    v7 = v5;
    goto LABEL_15;
  }

  if (orientation == 1)
  {
    v13 = v19 - v7;
    goto LABEL_3;
  }

  if (orientation != 2)
  {
LABEL_11:
    v14 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_15;
  }

LABEL_3:
  v14 = 0.0;
  v15 = v5;
LABEL_15:
  v20 = v7;
  result.size.height = v20;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

+ (BOOL)respondsToProxGesture
{
  v2 = respondsToProxGesture_token;
  if (!respondsToProxGesture_token)
  {
    notify_register_check("com.apple.keyboard.proxGestureEnabled", &respondsToProxGesture_token);
    v2 = respondsToProxGesture_token;
  }

  state64 = 0;
  notify_get_state(v2, &state64);
  return state64 & 1;
}

+ (BOOL)shouldMinimizeForHardwareKeyboard
{
  v2 = +[UIDevice currentDevice];
  if ([v2 _isHardwareKeyboardAvailable])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    automaticMinimizationEnabled = [v3 automaticMinimizationEnabled];
  }

  else
  {
    automaticMinimizationEnabled = 0;
  }

  return automaticMinimizationEnabled;
}

+ (BOOL)hasInputOrAssistantViewsOnScreen
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v2 containerRootController];

  LOBYTE(v2) = [containerRootController hasInputOrAssistantViewsOnScreen];
  return v2;
}

+ (BOOL)shouldSuppressSoftwareKeyboardForResponder:(id)responder
{
  responderCopy = responder;
  if (!responderCopy)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    responderCopy = [v4 delegateAsResponder];
  }

  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 _shouldSuppressSoftwareKeyboardForResponder:responderCopy ignoringPolicyDelegate:0];

  return v6;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation
{
  [self sizeForInterfaceOrientation:orientation ignoreInputView:0];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation inputDelegate:(id)delegate
{
  v38 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if ([self usesInputSystemUI])
  {
    v7 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    currentUIState = [v7 currentUIState];
    resizing = [currentUIState resizing];

    if ((resizing & 1) == 0)
    {
      v10 = +[UIKeyboardImpl sharedInstance];
      [v10 setInputModeFromPreferences];
    }
  }

  [self sizeForInterfaceOrientation:orientation ignoreInputView:1 inputDelegate:delegateCopy];
  v12 = v11;
  v14 = v13;
  if (!+[UIKeyboard inputUIOOP])
  {
    if ([UIApp _isSpringBoard])
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v16 isEqualToString:@"SPUIProxySearchField"];

      if (v17)
      {
        v18 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
        v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        scene = [v19 scene];
        [v18 intersectionHeightForWindowScene:scene];
        v22 = v21;

        if (v22 > 0.0)
        {
          v23 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode = [v23 currentInputMode];

          [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:currentInputMode];
          v26 = v25;
          v28 = v27;
          [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:orientation inputMode:currentInputMode];
          v31 = v22 + v26 - v29 + v28 - v30;
          if (v14 < v31)
          {
            v14 = v31;
          }
        }
      }
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v34 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v39.width = v12;
      v39.height = v14;
      v35 = NSStringFromSize(v39);
      v36 = 138412290;
      v37 = v35;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "keyboard size lookup ahead SPI: %@", &v36, 0xCu);
    }
  }

  v32 = v12;
  v33 = v14;
  result.height = v33;
  result.width = v32;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view
{
  [self sizeForInterfaceOrientation:orientation ignoreInputView:view inputDelegate:0];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation ignoreInputView:(BOOL)view inputDelegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v8 inputViews];
  v10 = inputViews;
  if (!delegateCopy || inputViews && ![inputViews isEmpty] || objc_msgSend(v10, "isCustomInputView"))
  {
    keyboard = [v10 keyboard];
    if (!keyboard)
    {
      if (!viewCopy && ([v10 isCustomInputView] & 1) != 0)
      {
        goto LABEL_10;
      }

      v12 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:0];
      keyboard = v10;
      v10 = v12;
    }

LABEL_10:
    systemInputAssistantViewController = [v8 systemInputAssistantViewController];
    v14 = systemInputAssistantViewController;
    if (systemInputAssistantViewController)
    {
      v15 = systemInputAssistantViewController;
    }

    else
    {
      v15 = objc_alloc_init(UISystemInputAssistantViewController);
    }

    v16 = v15;

    v17 = [(UISystemInputAssistantViewController *)v16 shouldBeShownForInputDelegate:delegateCopy inputViews:v10];
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([objc_opt_class() assistantBarShouldBeIncludedInSizeForDelegate:delegateCopy])
  {
LABEL_14:
    v18 = 1;
    goto LABEL_20;
  }

LABEL_16:
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
  {
    responder = [v8 responder];
    inputViewController = [responder inputViewController];
    v18 = inputViewController != 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:
  [objc_opt_class() sizeForInterfaceOrientation:orientation includingAssistantBar:v18 ignoreInputView:viewCopy];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

+ (BOOL)assistantBarShouldBeIncludedInSizeForDelegate:(id)delegate
{
  v26[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (os_variant_has_internal_diagnostics())
  {
    if (!delegateCopy)
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v25 = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "assistantBarShouldBeIncludedInSizeForDelegate:inputMode: should only be used with a valid inputDelegate", v25, 2u);
      }
    }
  }

  else if (!delegateCopy)
  {
    v24 = *(__UILogGetCategoryCachedImpl("Assert", &assistantBarShouldBeIncludedInSizeForDelegate____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "assistantBarShouldBeIncludedInSizeForDelegate:inputMode: should only be used with a valid inputDelegate", v25, 2u);
    }
  }

  v4 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v4 textInputTraits];

  if ([delegateCopy conformsToProtocolCached:&unk_1EFE8E9A0])
  {
    textInputTraits2 = [delegateCopy textInputTraits];
    v7 = [UITextInputTraits traitsByAdoptingTraits:textInputTraits2];

    textInputTraits = v7;
  }

  if (!textInputTraits)
  {
    if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || ![delegateCopy conformsToProtocolCached:&unk_1F016C7B0] || (+[UITextInputTraits traitsByAdoptingTraits:](UITextInputTraits, "traitsByAdoptingTraits:", delegateCopy), (textInputTraits = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([delegateCopy conformsToProtocolCached:&unk_1EFE8B2D0])
      {
        textInputTraits = [UITextInputTraits traitsByAdoptingTraits:delegateCopy];
      }

      else
      {
        textInputTraits = 0;
      }
    }
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v8 currentInputMode];
  identifier = [currentInputMode identifier];

  if (objc_opt_respondsToSelector())
  {
    textInputMode = [delegateCopy textInputMode];
    v12 = textInputMode;
    if (textInputMode)
    {
      identifier2 = [textInputMode identifier];

      identifier = identifier2;
    }
  }

  if (UIKeyboardAlwaysShowCandidateBarForInputMode())
  {
    if (([textInputTraits disableInputBars] & 1) == 0)
    {
      v14 = [textInputTraits hidePrediction] ^ 1;
      goto LABEL_28;
    }

LABEL_27:
    LOBYTE(v14) = 0;
    goto LABEL_28;
  }

  if ([textInputTraits autocorrectionType] == 1)
  {
    v15 = +[UIKeyboardImpl activeInstance];
    v16 = [v15 autocorrectionPreferenceForTraits] != 2;
  }

  else
  {
    v16 = 0;
  }

  if ([textInputTraits disablePrediction] & 1) != 0 || (objc_msgSend(textInputTraits, "hidePrediction"))
  {
    goto LABEL_27;
  }

  v17 = +[UIKeyboardImpl activeInstance];
  if (([v17 disableInputBars] | v16))
  {

    goto LABEL_27;
  }

  isSecureTextEntry = [textInputTraits isSecureTextEntry];

  if (isSecureTextEntry)
  {
    goto LABEL_27;
  }

  v26[0] = identifier;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  if (UIKeyboardPredictionEnabledForInputModes(v20))
  {
    v21 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v21 preferencesActions];
    LOBYTE(v14) = [preferencesActions predictionEnabled];
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_28:
  return v14;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)orientation includingAssistantBar:(BOOL)bar ignoreInputView:(BOOL)view
{
  barCopy = bar;
  [UIKeyboardImpl sizeForInterfaceOrientation:orientation ignoreInputView:view];
  v8 = v7;
  v10 = v9;
  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v11 currentInputMode];

  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:currentInputMode];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:orientation inputMode:currentInputMode];
  v22 = v21;
  v24 = v23;
  v27 = v10 + v14 - v25 + v18 - v26;
  if (barCopy)
  {
    v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v28 systemInputAssistantViewController];
    v30 = systemInputAssistantViewController;
    if (systemInputAssistantViewController)
    {
      v31 = systemInputAssistantViewController;
    }

    else
    {
      v31 = objc_alloc_init(UISystemInputAssistantViewController);
    }

    v32 = v31;

    traitCollection = [(UIViewController *)v32 traitCollection];
    v34 = traitCollection;
    if (traitCollection)
    {
      traitCollection2 = traitCollection;
    }

    else
    {
      containerWindow = [v28 containerWindow];
      traitCollection2 = [containerWindow traitCollection];
    }

    [(UISystemInputAssistantViewController *)v32 preferredHeightForTraitCollection:traitCollection2 orientation:orientation];
    v27 = v27 + v37;
  }

  v38 = v8 + v16 - v22 + v20 - v24;
  v39 = v27;
  result.height = v39;
  result.width = v38;
  return result;
}

+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)orientation
{
  [UIKeyboardImpl keyboardSizeForInterfaceOrientation:orientation];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(UIKeyboard *)self window];
  screen = [window screen];
  screen2 = [windowCopy screen];

  if (screen != screen2)
  {

    [(UIKeyboard *)self clearActivePerScreenIfNeeded];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  if (v9 == width && v8 == height)
  {
    goto LABEL_8;
  }

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v11 preferencesActions];
  if ([preferencesActions currentInputModeSupportsCrescendo])
  {

LABEL_8:
    v20.receiver = self;
    v20.super_class = UIKeyboard;
    [(UIView *)&v20 setBounds:x, y, width, height];
    return;
  }

  v13 = +[UIKeyboard resizable];

  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[UIKeyboardImpl activeInstance];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || ([v14 textInputTraits], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "keyboardType"), v15, v16 != 127))
  {
    [(UIKeyboard *)self autoAdjustOrientation];
    self->m_hasExplicitOrientation = 0;
    [UIKeyboardImpl sizeForInterfaceOrientation:self->m_orientation ignoreInputView:1];
    width = v17;
    height = v18;
  }

  v19.receiver = self;
  v19.super_class = UIKeyboard;
  [(UIView *)&v19 setBounds:x, y, width, height];
  if (!self->m_respondingToImplGeometryChange)
  {
    [(UIKeyboard *)self activate];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_preferredSize.width = frame.size.width;
  self->_preferredSize.height = frame.size.height;
  [(UIView *)self bounds];
  if (v9 == width && v8 == height)
  {
    goto LABEL_8;
  }

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v11 preferencesActions];
  if ([preferencesActions currentInputModeSupportsCrescendo])
  {

LABEL_8:
    v17.receiver = self;
    v17.super_class = UIKeyboard;
    [(UIView *)&v17 setFrame:x, y, width, height];
    return;
  }

  v13 = +[UIKeyboard resizable];

  if (v13)
  {
    goto LABEL_8;
  }

  [(UIKeyboard *)self autoAdjustOrientation];
  self->m_hasExplicitOrientation = 0;
  [UIKeyboardImpl sizeForInterfaceOrientation:self->m_orientation ignoreInputView:1];
  v16.receiver = self;
  v16.super_class = UIKeyboard;
  [(UIView *)&v16 setFrame:x, y, v14, v15];
  if (!self->m_respondingToImplGeometryChange && (-[UIKeyboard isAutomatic](self, "isAutomatic") || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || [UIApp _isSpringBoard]))
  {
    [(UIKeyboard *)self activate];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)updateLayout
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  if (([currentInputMode isExtensionInputMode] & 1) == 0)
  {
    normalizedIdentifier = [currentInputMode normalizedIdentifier];
    v4 = [normalizedIdentifier isEqualToString:@"emoji"];

    if ((v4 & 1) == 0)
    {
      v5 = +[UIKeyboardImpl sharedInstance];
      [v5 updateLayout];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self->m_typingDisabled)
  {
    v18.receiver = self;
    v18.super_class = UIKeyboard;
    if ([(UIView *)&v18 pointInside:eventCopy withEvent:x, y])
    {
      selfCopy = self;
      goto LABEL_9;
    }
  }

  v9 = +[UIKeyboardImpl sharedInstance];
  candidateController = [v9 candidateController];
  candidateBar = [candidateController candidateBar];

  window = [candidateBar window];
  window2 = [(UIKeyboard *)self window];
  if (window == window2 && ([candidateBar isHidden] & 1) == 0)
  {
    v16 = -[UIKeyboard pointInside:forEvent:](self, "pointInside:forEvent:", [eventCopy _gsEvent], x, y);

    if (!v16)
    {
      [(UIView *)self convertPoint:candidateBar toView:x, y];
      v14 = [candidateBar hitTest:eventCopy withEvent:?];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v17.receiver = self;
  v17.super_class = UIKeyboard;
  v14 = [(UIView *)&v17 hitTest:eventCopy withEvent:x, y];
LABEL_8:
  selfCopy = v14;

LABEL_9:

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event
{
  y = inside.y;
  x = inside.x;
  v8 = +[UIKeyboardImpl sharedInstance];
  superview = [v8 superview];
  if (superview == self)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v10 = [v8 pointInside:event forEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (!-[UIKeyboard pointInside:forEvent:](self, "pointInside:forEvent:", [eventCopy _gsEvent], x, y))
  {
    v9 = +[UIKeyboardImpl sharedInstance];
    candidateController = [v9 candidateController];
    candidateBar = [candidateController candidateBar];

    window = [candidateBar window];
    window2 = [(UIKeyboard *)self window];
    if (window == window2 && ([candidateBar isHiddenOrHasHiddenAncestor] & 1) == 0)
    {
      HasAlphaHittable = [(UIView *)candidateBar _isAlphaHittableAndHasAlphaHittableAncestors];

      if (HasAlphaHittable)
      {
        [(UIView *)self convertPoint:candidateBar toView:x, y];
        v8 = [candidateBar pointInside:eventCopy withEvent:?];
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (void)prepareForGeometryChange
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  [v2 prepareForGeometryChange];
}

- (void)geometryChangeDone:(BOOL)done
{
  doneCopy = done;
  if (done)
  {
    [(UIKeyboard *)self activate];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 geometryChangeDone:doneCopy];
}

- (void)removeAutocorrectPrompt
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  [v2 removeAutocorrectPromptAndCandidateList];
}

- (void)acceptAutocorrection
{
  [(UIKeyboard *)self activate];
  v5 = +[UIKeyboardImpl sharedInstance];
  textInputTraits = [v5 textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  if (keyboardType == 126)
  {
    v4 = +[UIDictationController sharedInstance];
    [v4 stopDictationIgnoreFinalizePhrases];
  }

  [v5 acceptAutocorrection];
}

- (void)acceptAutocorrectionWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(UIKeyboard *)self activate];
  v5 = +[UIKeyboardImpl sharedInstance];
  textInputTraits = [v5 textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  if (keyboardType == 126)
  {
    v8 = +[UIDictationController sharedInstance];
    [v8 stopDictationIgnoreFinalizePhrases];

    +[UITextChecker performFinalGrammarChecking];
  }

  v9 = _UIKeyboardLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[UIKeyboard acceptAutocorrectionWithCompletionHandler:]";
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s Initiating accept autocorrection", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__UIKeyboard_acceptAutocorrectionWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E70F3608;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v5 acceptAutocorrectionWithCompletionHandler:v11];
}

uint64_t __56__UIKeyboard_acceptAutocorrectionWithCompletionHandler___block_invoke(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _UIKeyboardLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[UIKeyboard acceptAutocorrectionWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%s Completed accept autocorrection", &v3, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (BOOL)hasAutocorrectPrompt
{
  v2 = +[UIKeyboardImpl sharedInstance];
  autocorrectPrompt = [v2 autocorrectPrompt];
  v4 = autocorrectPrompt != 0;

  return v4;
}

- (UITextCursorAssertionController)_activeAssertionController
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  _activeAssertionController = [v2 _activeAssertionController];

  return _activeAssertionController;
}

- (void)setCaretBlinks:(BOOL)blinks
{
  blinksCopy = blinks;
  [(UIKeyboard *)self activate];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setCaretBlinks:blinksCopy];
}

- (BOOL)caretBlinks
{
  v2 = +[UIKeyboardImpl sharedInstance];
  caretBlinks = [v2 caretBlinks];

  return caretBlinks;
}

- (void)setCaretVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIKeyboard *)self activate];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setCaretVisible:visibleCopy];
}

- (BOOL)caretVisible
{
  v2 = +[UIKeyboardImpl sharedInstance];
  caretVisible = [v2 caretVisible];

  return caretVisible;
}

- (BOOL)returnKeyEnabled
{
  [(UIKeyboard *)self activateIfNeeded];
  v2 = +[UIKeyboardImpl sharedInstance];
  returnKeyEnabled = [v2 returnKeyEnabled];

  return returnKeyEnabled;
}

- (void)setReturnKeyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(UIKeyboard *)self activateIfNeeded];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setReturnKeyEnabled:enabledCopy];
}

- (id)defaultTextInputTraits
{
  [(UIKeyboard *)self activate];
  m_defaultTraits = self->m_defaultTraits;
  if (!m_defaultTraits)
  {
    v4 = objc_alloc_init(UITextInputTraits);
    v5 = self->m_defaultTraits;
    self->m_defaultTraits = v4;

    m_defaultTraits = self->m_defaultTraits;
  }

  return m_defaultTraits;
}

- (void)setDefaultTextInputTraits:(id)traits
{
  traitsCopy = traits;
  [(UIKeyboard *)self activate];
  m_defaultTraits = self->m_defaultTraits;
  self->m_defaultTraits = traitsCopy;
  v6 = traitsCopy;

  v7 = +[UIKeyboardImpl sharedInstance];
  [v7 setDefaultTextInputTraits:self->m_defaultTraits];
}

- (void)set_overrideTextInputTraits:(id)traits
{
  traitsCopy = traits;
  [(UIKeyboard *)self activate];
  if (self->m_overrideTraits != traitsCopy)
  {
    objc_storeStrong(&self->m_overrideTraits, traits);
    v5 = +[UIKeyboardImpl sharedInstance];
    [v5 setOverrideTextInputTraits:self->m_overrideTraits];
  }
}

- (id)delegate
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  delegate = [v2 delegate];

  return delegate;
}

- (void)takeSnapshot
{
  if (([objc_opt_class() isSpotlight] & 1) == 0)
  {
    [(UIKeyboard *)self clearSnapshot];
    v5 = +[UIKeyboardImpl sharedInstance];
    v3 = [v5 snapshotViewAfterScreenUpdates:0];
    m_snapshot = self->m_snapshot;
    self->m_snapshot = v3;

    [(UIView *)self insertSubview:self->m_snapshot atIndex:0];
    [(UIKeyboard *)self setNeedsDisplay];
  }
}

- (void)deactivate
{
  if (activeKeyboard == self)
  {
    superview = [(UIView *)self superview];

    if (superview)
    {
      [(UIKeyboard *)self takeSnapshot];
      [(UIKeyboard *)self setNeedsDisplay];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    superview2 = [v7 superview];

    if (superview2)
    {
      if (self->_implConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
        implConstraints = self->_implConstraints;
        self->_implConstraints = 0;
      }

      [v7 removeFromSuperview];
      [v7 setDefaultTextInputTraits:0];
      [v7 setOverrideTextInputTraits:0];
    }

    [v7 setGeometryDelegate:0];
    v6 = activeKeyboard;
    activeKeyboard = 0;

    [(UIKeyboard *)self setupKeyFocusGuides];
  }
}

- (void)_deactivateForBackgrounding
{
  if (activeKeyboard == self)
  {
    superview = [(UIView *)self superview];

    if (superview)
    {
      [(UIKeyboard *)self takeSnapshot];
      [(UIKeyboard *)self setNeedsDisplay];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    superview2 = [v7 superview];

    if (superview2)
    {
      if (self->_implConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
        implConstraints = self->_implConstraints;
        self->_implConstraints = 0;
      }

      [v7 removeFromSuperview];
    }
  }
}

- (void)displayLayer:(id)layer
{
  if (activeKeyboard == self)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if (v4)
    {
    }

    else if ([UIApp applicationState] != 2)
    {

      [(UIKeyboard *)self activate];
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v4 = [UIKeyboardImpl activeInstance:began];
  [v4 updateIdleDetection:0];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v4 = [UIKeyboardImpl activeInstance:moved];
  [v4 updateIdleDetection:0];
}

- (BOOL)canHandlePresses:(id)presses withEvent:(id)event
{
  eventCopy = event;
  pressesCopy = presses;
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 canHandlePresses:pressesCopy withEvent:eventCopy];

  return v8;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UIKeyboard *)self canHandlePresses:beganCopy withEvent:eventCopy])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    _layout = [v8 _layout];
    [_layout pressesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if ([(UIKeyboard *)self canHandlePresses:changedCopy withEvent:eventCopy])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    _layout = [v8 _layout];
    [_layout pressesChanged:changedCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UIKeyboard *)self canHandlePresses:endedCopy withEvent:eventCopy])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    _layout = [v8 _layout];
    [_layout pressesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UIKeyboard *)self canHandlePresses:cancelledCopy withEvent:eventCopy])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    _layout = [v8 _layout];
    [_layout pressesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)remoteControlReceivedWithEvent:(id)event
{
  eventCopy = event;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 remoteControlReceivedWithEvent:eventCopy];
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([(UIView *)self isFocused])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 _wheelChangedWithEvent:eventCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKeyboard;
    [(UIResponder *)&v6 _wheelChangedWithEvent:eventCopy];
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x100) != 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboard;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (CGRect)_focusCastingFrameForHeading:(unint64_t)heading inCoordinateSpace:(id)space
{
  spaceCopy = space;
  v5 = +[UIKeyboardImpl sharedInstance];
  currentKey = [v5 currentKey];

  if (currentKey && [currentKey state] != 16)
  {
    v11 = +[UIKeyboardImpl sharedInstance];
    [currentKey frame];
    [v11 convertRect:spaceCopy toCoordinateSpace:?];
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = UIKeyboard;
  [(UIView *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  if ([(UIKeyboard *)self hasImpendingCursorLocation])
  {
    [(UIKeyboard *)self setCursorLocation:[(UIKeyboard *)self impendingCursorLocation]];
    [(UIKeyboard *)self setHasImpendingCursorLocation:0];
LABEL_7:
    [(UIKeyboard *)self updateFocusMarginsUpToView:0];
    goto LABEL_8;
  }

  if (![(UIView *)self isFocused]&& [(UIKeyboard *)self cursorLocation])
  {
    [(UIKeyboard *)self updateFocusMarginsUpToView:0];
    v5 = 0;
LABEL_12:
    [(UIKeyboard *)self setCursorLocation:v5];
    goto LABEL_13;
  }

  if ([(UIView *)self isFocused])
  {
    goto LABEL_7;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  [(UIKeyboard *)self updateFocusMarginsUpToView:0];
  v5 = 0;
  if (userInterfaceIdiom == 3)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ([(UIView *)self isFocused]&& ![(UIKeyboard *)self cursorLocation])
  {
    v5 = 2;
    goto LABEL_12;
  }

LABEL_13:
  if ([(UIView *)self isFocused]&& [(UIKeyboard *)self disableInteraction])
  {
    [(UIKeyboard *)self setDisableInteraction:0];
  }

  [(UIKeyboard *)self updateKeyFocusGuides];
}

- (BOOL)allowExternalChangeForFocusHeading:(unint64_t)heading cursorLocation:(unint64_t)location
{
  if (heading == 1 && (location & 8) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = vdupq_n_s64(heading);
    v6 = vdupq_n_s64(location);
    v7 = vuzp1q_s32(vceqq_s64(v5, xmmword_18A680110), vceqq_s64(v5, xmmword_18A64BFA0));
    v8 = vandq_s8(v6, xmmword_18A679310);
    v9 = vandq_s8(v6, xmmword_18A680120);
    v10 = (location >> 6) & 1;
    if (heading != 8)
    {
      LOBYTE(v10) = 0;
    }

    v4 = vmaxv_u16(vmovn_s32(vbicq_s8(v7, vuzp1q_s32(vceqzq_s64(v8), vceqzq_s64(v9))))) | v10;
  }

  return v4 & 1;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  focusHeading = [contextCopy focusHeading];

  if (![(UIView *)self isFocused]|| ![(UIKeyboard *)self canBecomeFocused])
  {
    if (nextFocusedItem == self)
    {
      selfCopy2 = self;
      v16 = 2;
      goto LABEL_14;
    }

LABEL_12:
    selfCopy2 = self;
    v16 = 0;
LABEL_14:
    [(UIKeyboard *)selfCopy2 setImpendingCursorLocation:v16];
LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

  cursorLocation = [(UIKeyboard *)self cursorLocation];
  v8 = nextFocusedItem == self;
  if (!cursorLocation)
  {
    if (nextFocusedItem == self)
    {
      v8 = 1;
      [(UIKeyboard *)self setImpendingCursorLocation:1];
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v9 = cursorLocation;
  v10 = (cursorLocation & 0x80) == 0;
  v11 = [(UIKeyboard *)self allowExternalChangeForFocusHeading:focusHeading cursorLocation:cursorLocation];
  v12 = nextFocusedItem != self && v10 && v11;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    if ((v9 & 0x20) != 0 && focusHeading == 4 || (v9 & 0x40) != 0 && focusHeading == 8)
    {
      v8 = 0;
      goto LABEL_16;
    }

    if ((v12 & 1) == 0)
    {
      [(UIKeyboard *)self setHasImpendingCursorLocation:0];
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (userInterfaceIdiom != 2)
  {
LABEL_18:
    [(UIKeyboard *)self setHasImpendingCursorLocation:0];
    goto LABEL_15;
  }

  if (v12)
  {
    [(UIKeyboard *)self setImpendingCursorLocation:0];
  }

  else
  {
    [(UIKeyboard *)self setHasImpendingCursorLocation:0];
  }

  v8 = nextFocusedItem != self || !v11;
LABEL_16:

  return v8;
}

- (void)setCursorLocation:(unint64_t)location
{
  v5 = +[UIKeyboardImpl activeInstance];
  _layout = [v5 _layout];
  [_layout setCursorLocation:location];
}

- (void)didFocusGuideWithHeading:(unint64_t)heading
{
  _init = [(UIEvent *)[UIMoveEvent alloc] _init];
  [_init _setFocusHeading:heading];
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 _moveWithEvent:_init];

  [(UIKeyboard *)self updateKeyFocusGuides];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    v8 = +[UIDictationController sharedInstance];
    [v8 updateHelperMessageDisplayIfNeeded];
  }
}

- (UIEdgeInsets)unfocusedFocusGuideOutsets
{
  top = self->m_unfocusedFocusGuideOutsets.top;
  left = self->m_unfocusedFocusGuideOutsets.left;
  bottom = self->m_unfocusedFocusGuideOutsets.bottom;
  right = self->m_unfocusedFocusGuideOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)updateFocusMarginsUpToView:(id)view
{
  viewCopy = view;
  [(UIKeyboard *)self unfocusedFocusGuideOutsets];
  if (v7 != 0.0 || v4 != 0.0 || v6 != 0.0 || v5 != 0.0)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if (![(UIView *)self isFocused])
    {
      [(UIKeyboard *)self unfocusedFocusGuideOutsets];
      v11 = v12;
      v10 = v13;
      v9 = v14;
      v8 = v15;
    }

    selfCopy = self;
    superview = [viewCopy superview];
    do
    {
      v18 = selfCopy;
      [(UIView *)selfCopy _setFocusableContentMargins:v11, v10, v9, v8];
      selfCopy = [(UIView *)selfCopy superview];
    }

    while (selfCopy && superview && selfCopy != superview);
  }
}

- (void)_toggleMenuGestureRecognizer:(BOOL)recognizer
{
  recognizerCopy = recognizer;
  if (recognizer && !self->_menuGestureRecognizer)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:0];
    menuGestureRecognizer = self->_menuGestureRecognizer;
    self->_menuGestureRecognizer = v5;

    [(UITapGestureRecognizer *)self->_menuGestureRecognizer setAllowedPressTypes:&unk_1EFE2CCD0];
    [(UIGestureRecognizer *)self->_menuGestureRecognizer setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_menuGestureRecognizer];
  }

  v7 = self->_menuGestureRecognizer;

  [(UIGestureRecognizer *)v7 setEnabled:recognizerCopy];
}

- (BOOL)disableInteraction
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];
  disableInteraction = [_layout disableInteraction];

  return disableInteraction;
}

- (void)setDisableInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  v5 = +[UIKeyboardImpl activeInstance];
  _layout = [v5 _layout];
  [_layout setDisableInteraction:interactionCopy];
}

- (BOOL)showPredictionBar
{
  v2 = +[UIKeyboardImpl activeInstance];
  isPredictionViewControllerVisible = [v2 isPredictionViewControllerVisible];

  return isPredictionViewControllerVisible;
}

- (void)_showPasswordAutoFillPocket
{
  v3 = +[UIKeyboard activeKeyboard];

  if (v3 == self)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 _showPasswordAutoFillPocket];
  }
}

- (void)setShouldUpdateLayoutAutomatically:(BOOL)automatically
{
  automaticallyCopy = automatically;
  self->_shouldUpdateLayoutAutomatically = automatically;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setShouldUpdateLayoutAutomatically:automaticallyCopy];
}

+ (void)clearLastKeyboardApplicationIdentifier
{
  v2 = qword_1ED49C3E8;
  qword_1ED49C3E8 = 0;

  dword_1ED49C3E0 = 0;
}

+ (id)keyboardApplicationIdentifier
{
  if (([self isKeyboardProcess] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboard.m" lineNumber:1688 description:@"keyboardApplicationIdentifier can only be called from keyboard process"];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  inputSystemSourceSession = [v4 inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];

  appId = [documentTraits appId];
  if (appId)
  {
    v8 = appId;
LABEL_8:
    objc_storeStrong(&qword_1ED49C3E8, v8);
    goto LABEL_9;
  }

  bundleId = [documentTraits bundleId];
  v10 = bundleId;
  v11 = qword_1ED49C3E8;
  if (bundleId)
  {
    v11 = bundleId;
  }

  v8 = v11;

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

+ (int)keyboardProcessId
{
  if (([self isKeyboardProcess] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboard.m" lineNumber:1700 description:@"keyboardProcessId can only be called from keyboard process"];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  inputSystemSourceSession = [v4 inputSystemSourceSession];
  documentTraits = [inputSystemSourceSession documentTraits];

  processId = [documentTraits processId];
  if (processId)
  {
    v8 = processId;
  }

  else
  {
    v8 = dword_1ED49C3E0;
  }

  if (v8)
  {
    dword_1ED49C3E0 = v8;
  }

  return v8;
}

+ (id)currentDocumentState
{
  if ([self isKeyboardProcess])
  {
    v2 = +[UIKeyboardImpl activeInstance];
    inputSystemSourceSession = [v2 inputSystemSourceSession];
    documentState = [inputSystemSourceSession documentState];
  }

  else
  {
    documentState = 0;
  }

  return documentState;
}

+ (BOOL)doesSpacebarAcceptInlineTextCompletion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIKeyboard_doesSpacebarAcceptInlineTextCompletion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C428 != -1)
  {
    dispatch_once(&qword_1ED49C428, block);
  }

  return byte_1ED49C3D7;
}

uint64_t __52__UIKeyboard_doesSpacebarAcceptInlineTextCompletion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInlineTextCompletionUIEnabled];
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  byte_1ED49C3D7 = result;
  return result;
}

+ (BOOL)isInlineTextCompletionEducationUIEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIKeyboard_isInlineTextCompletionEducationUIEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C430 != -1)
  {
    dispatch_once(&qword_1ED49C430, block);
  }

  return byte_1ED49C3D8;
}

uint64_t __54__UIKeyboard_isInlineTextCompletionEducationUIEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInlineTextCompletionUIEnabled];
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  byte_1ED49C3D8 = result;
  return result;
}

+ (BOOL)doesSpacebarAcceptFullInlineTextCompletion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__UIKeyboard_doesSpacebarAcceptFullInlineTextCompletion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C438 != -1)
  {
    dispatch_once(&qword_1ED49C438, block);
  }

  return byte_1ED49C3D9;
}

uint64_t __56__UIKeyboard_doesSpacebarAcceptFullInlineTextCompletion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) doesSpacebarAcceptInlineTextCompletion];
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  byte_1ED49C3D9 = result;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_menuGestureRecognizer == begin)
  {
    v5 = ([(UIKeyboard *)self cursorLocation]>> 7) & 1;
    v3 = v5 | [(UIKeyboard *)self _isDictationCurrentView];
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (UIPeripheralAnimationGeometry)geometryForMinimize:(SEL)minimize
{
  v4 = a4;
  retstr->targetFrameHeightDelta = 0.0;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  retstr->bounds.origin.x = v11;
  retstr->bounds.origin.y = v12;
  retstr->bounds.size.width = v7;
  retstr->bounds.size.height = v9;
  v13 = [(UIView *)self _keyboardOrientation]- 3;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v16 = v15;
  v18 = v17;

  if (v13 >= 2)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  v21 = v8 * 0.5;
  v22 = v20 - v10 * 0.5;
  retstr->inPosition.x = v21;
  p_inPosition = &retstr->inPosition;
  v24 = v22;
  retstr->inPosition.y = v24;
  *&v24 = v10 + v24;
  retstr->outPosition.x = v21;
  retstr->outPosition.y = *&v24;
  if (v4)
  {
    v25 = *p_inPosition;
    *p_inPosition = retstr->outPosition;
    retstr->outPosition = v25;
  }

  v26 = MEMORY[0x1E695EFD0];
  v27 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->transform.a = *MEMORY[0x1E695EFD0];
  *&retstr->transform.c = v27;
  *&retstr->transform.tx = *(v26 + 32);
  return result;
}

- (void)setCorrectionLearningAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setCorrectionLearningAllowed:allowedCopy];
}

- (void)responseContextDidChange
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 responseContextDidChange];
}

- (void)textInputTraitsDidChange
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 takeTextInputTraitsFromDelegate];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v9 remoteTextInputPartner];
    [remoteTextInputPartner documentTraitsChanged];
  }

  else
  {
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    responder = [v9 responder];
    inputAccessoryView = [responder inputAccessoryView];
    inputViews = [v9 inputViews];
    inputAccessoryView2 = [inputViews inputAccessoryView];

    if (inputAccessoryView != inputAccessoryView2)
    {
      goto LABEL_6;
    }

    remoteTextInputPartner = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [remoteTextInputPartner setUpdateAssistantView:1];
    [(UIKeyboard *)self _didChangeKeyplaneWithContext:remoteTextInputPartner];
  }

LABEL_6:
}

- (id)targetWindow
{
  v2 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v2 inputDelegate];
  textInputView = [inputDelegate textInputView];
  window = [textInputView window];

  return window;
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  v4 = +[UIKeyboardImpl activeInstance];
  superview = [v4 superview];

  if (superview == self)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 setLayoutRenderConfig:configCopy];

    v7 = +[UIKeyboardImpl activeInstance];
    candidateController = [v7 candidateController];
    [candidateController _setRenderConfig:configCopy];
  }
}

- (void)_setPasscodeOutlineAlpha:(double)alpha
{
  if ([(UIKeyboard *)self isActive])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    _layout = [v5 _layout];
    [_layout setPasscodeOutlineAlpha:alpha];
  }
}

- (void)_setDisableUpdateMaskForSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
  if (entryCopy)
  {
    if (!passcodeObscuringInteraction)
    {
      v6 = objc_alloc_init(_UIKeyboardPasscodeObscuringInteraction);
      v7 = self->_passcodeObscuringInteraction;
      self->_passcodeObscuringInteraction = v6;

      passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
    }

    [(UIView *)self addInteraction:passcodeObscuringInteraction];
  }

  else if (passcodeObscuringInteraction)
  {
    [(UIView *)self removeInteraction:?];
    v8 = self->_passcodeObscuringInteraction;
    self->_passcodeObscuringInteraction = 0;
  }
}

- (void)_setDisableTouchInput:(BOOL)input
{
  inputCopy = input;
  self->m_disableTouchInput = input;
  if ([(UIKeyboard *)self isActive])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    _layout = [v5 _layout];
    [_layout setDisableTouchInput:inputCopy];
  }
}

- (void)minimize
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UIKeyboard *)self geometryForMinimize:1];
  superview = [(UIView *)self superview];

  if (superview)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    v15[4] = v21;
    v15[5] = v22;
    v15[6] = v23;
    v16 = v24;
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;
    [v4 postWillShowNotificationForGeometry:v15 duration:0.3833];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v7 = v17;
    v8 = v18;
    v9 = v19;
    v6[2] = __22__UIKeyboard_minimize__block_invoke;
    v6[3] = &unk_1E7116A10;
    v6[4] = self;
    v14 = v24;
    v10 = v20;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__UIKeyboard_minimize__block_invoke_2;
    v5[3] = &unk_1E70F5AC0;
    v5[4] = self;
    [UIView animateWithDuration:0 delay:v6 options:v5 animations:0.3833 completion:0.0];
  }

  else
  {
    [(UIView *)self setCenter:v18];
  }
}

- (void)maximize
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UIKeyboard *)self geometryForMinimize:0];
  superview = [(UIView *)self superview];

  if (superview)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    v15[4] = v21;
    v15[5] = v22;
    v15[6] = v23;
    v16 = v24;
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;
    [v4 postWillShowNotificationForGeometry:v15 duration:0.3833];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v7 = v17;
    v8 = v18;
    v9 = v19;
    v6[2] = __22__UIKeyboard_maximize__block_invoke;
    v6[3] = &unk_1E7116A10;
    v6[4] = self;
    v14 = v24;
    v10 = v20;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__UIKeyboard_maximize__block_invoke_2;
    v5[3] = &unk_1E70F5AC0;
    v5[4] = self;
    [UIView animateWithDuration:0 delay:v6 options:v5 animations:0.3833 completion:0.0];
  }

  else
  {
    [(UIView *)self setCenter:v18];
  }
}

- (void)setMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  v16 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboard *)self isAutomatic])
  {
    v5 = +[UIKeyboardImpl sharedInstance];
    textInputTraits = [v5 textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    v8 = keyboardAppearance != 127 && minimizedCopy;
    if (self->m_minimized != v8)
    {
      v9 = _UIKeyboardLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[UIKeyboard setMinimized:]";
        v14 = 1024;
        v15 = v8;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s Setting keyboard minimized = %d", &v12, 0x12u);
      }

      self->m_minimized = v8;
    }

    [v5 notifyInputSourceStateChangeIfNeeded];
    if (self->m_minimized)
    {
      [(UIKeyboard *)self minimize];
    }

    else
    {
      v10 = +[UIDictationController activeInstance];
      resigningFirstResponder = [v10 resigningFirstResponder];

      if ((resigningFirstResponder & 1) == 0)
      {
        [(UIKeyboard *)self maximize];
      }
    }
  }
}

- (void)keyboardMinMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v5 = +[UIPeripheralHost sharedInstance];
  [(UIKeyboard *)self geometryForMinimize:maximizedCopy];
  [v5 postDidShowNotificationForGeometry:v6];

  if (maximizedCopy)
  {
    [(UIKeyboard *)self geometryChangeDone:0];
  }
}

- (UIPeripheralAnimationGeometry)geometryForImplHeightDelta:(SEL)delta
{
  _keyboardOrientation = [(UIView *)self _keyboardOrientation];
  retstr->bounds.origin.x = 0.0;
  retstr->bounds.origin.y = 0.0;
  [UIKeyboard defaultSizeForInterfaceOrientation:_keyboardOrientation];
  v9 = v7;
  if (a4 >= 0.0)
  {
    v10 = v8 + a4;
  }

  else
  {
    v10 = v8;
  }

  retstr->bounds.size.width = v7;
  retstr->bounds.size.height = v10;
  v11 = _keyboardOrientation - 3;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v14 = v13;
  v16 = v15;

  if (v11 >= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  retstr->inPosition.x = v9 * 0.5;
  p_inPosition = &retstr->inPosition;
  v20 = v18 - v10 * 0.5;
  retstr->inPosition.y = v20;
  v21 = fabs(a4);
  retstr->outPosition.x = v9 * 0.5;
  retstr->outPosition.y = v21 + v20;
  if (a4 < 0.0)
  {
    v22 = *p_inPosition;
    *p_inPosition = retstr->outPosition;
    retstr->outPosition = v22;
    retstr->inPosition.y = retstr->inPosition.y - v21;
    retstr->outPosition.y = retstr->outPosition.y - v21;
  }

  v23 = MEMORY[0x1E695EFD0];
  v24 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->transform.a = *MEMORY[0x1E695EFD0];
  *&retstr->transform.c = v24;
  *&retstr->transform.tx = *(v23 + 32);
  retstr->targetFrameHeightDelta = 0.0;
  return result;
}

- (void)prepareForImplBoundsHeightChange:(double)change suppressNotification:(BOOL)notification
{
  if (!notification)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    [(UIKeyboard *)self geometryForImplHeightDelta:change];
    v4 = +[UIPeripheralHost sharedInstance];
    v5[4] = v11;
    v5[5] = v12;
    v5[6] = v13;
    v6 = v14;
    v5[0] = v7;
    v5[1] = v8;
    v5[2] = v9;
    v5[3] = v10;
    [v4 postWillShowNotificationForGeometry:v5 duration:0.0];
  }
}

- (void)implBoundsHeightChangeDone:(double)done suppressNotification:(BOOL)notification
{
  self->m_respondingToImplGeometryChange = 1;
  [(UIView *)self frame];
  [(UIKeyboard *)self setFrame:?];
  self->m_respondingToImplGeometryChange = 0;
  if (!notification)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(UIKeyboard *)self geometryForImplHeightDelta:done];
    v7 = +[UIPeripheralHost sharedInstance];
    v8[4] = v14;
    v8[5] = v15;
    v8[6] = v16;
    v9 = v17;
    v8[0] = v10;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v13;
    [v7 postDidShowNotificationForGeometry:v8];
  }
}

- (BOOL)showsCandidatesInline
{
  v2 = +[UIKeyboardImpl activeInstance];
  showsCandidateInline = [v2 showsCandidateInline];

  return showsCandidateInline;
}

- (void)setShowsCandidatesInline:(BOOL)inline
{
  inlineCopy = inline;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setShowsCandidateInline:inlineCopy];
}

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  [(UIKeyboard *)self updateKeyFocusGuides];
  [(UIKeyboard *)self _toggleMenuGestureRecognizer:([(UIKeyboard *)self _isDictationCurrentView]| ([(UIKeyboard *)self cursorLocation]>> 7)) & 1];
  v5 = +[UIPeripheralHost sharedInstance];
  automaticAppearanceEnabled = [v5 automaticAppearanceEnabled];

  if (automaticAppearanceEnabled)
  {
    if ([contextCopy sizeDidChange])
    {
      [contextCopy size];
      self->_preferredSize.width = v7;
      self->_preferredSize.height = v8;
      [(UIView *)self invalidateIntrinsicContentSize];
      if (([contextCopy isDynamicLayout] & 1) == 0 && !+[UIKeyboard resizable](UIKeyboard, "resizable"))
      {
        [(UIView *)self frame];
        v10 = v9;
        [contextCopy size];
        v12 = v11;
        [contextCopy size];
        [(UIKeyboard *)self setFrame:0.0, v10, v12, v13];
      }
    }

    v14.receiver = self;
    v14.super_class = UIKeyboard;
    [(UIView *)&v14 _didChangeKeyplaneWithContext:contextCopy];
  }
}

+ (BOOL)isSafari
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__UIKeyboard_isSafari__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C458 != -1)
  {
    dispatch_once(&qword_1ED49C458, block);
  }

  return byte_1ED49C3DD;
}

void __22__UIKeyboard_isSafari__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) keyboardBundleIdentifier];
  byte_1ED49C3DD = [&unk_1EFE2CCE8 containsObject:v1];
}

+ (BOOL)isAutoFillPanelInAppsEnabled
{
  UIKeyboardGetSafeDeviceIdiom();

  return _os_feature_enabled_impl();
}

+ (BOOL)isAutoFillPanelUIEnabled
{
  UIKeyboardGetSafeDeviceIdiom();

  return _os_feature_enabled_impl();
}

+ (BOOL)isAlwaysBlockedAutoFillPanelClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIKeyboard_isAlwaysBlockedAutoFillPanelClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C468 != -1)
  {
    dispatch_once(&qword_1ED49C468, block);
  }

  return byte_1ED49C3DF;
}

void __48__UIKeyboard_isAlwaysBlockedAutoFillPanelClient__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mobilesafari", @"com.apple.SafariViewService", 0}];
  v2 = [*(a1 + 32) keyboardBundleIdentifier];
  byte_1ED49C3DF = [v3 containsObject:v2];
}

+ (BOOL)canShowEmojiKeyboardInsideStickerPickerService
{
  if (qword_1ED49C478 != -1)
  {
    dispatch_once(&qword_1ED49C478, &__block_literal_global_1112);
  }

  v2 = [qword_1ED49C470 objectForKey:@"com.apple.StickerKit.InternalSettings.useNewCollectionView"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

void __60__UIKeyboard_canShowEmojiKeyboardInsideStickerPickerService__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.StickerKit.InternalSettings"];
  v1 = qword_1ED49C470;
  qword_1ED49C470 = v0;
}

+ (BOOL)isEmojiSearchEnabledInEmojiPoster
{
  if (qword_1ED49C488 != -1)
  {
    dispatch_once(&qword_1ED49C488, &__block_literal_global_1126_0);
  }

  v2 = [qword_1ED49C480 objectForKey:@"com.apple.StickerKit.InternalSettings.emojiPosterSearch"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic() != 1;
  }

  return bOOLValue;
}

void __47__UIKeyboard_isEmojiSearchEnabledInEmojiPoster__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.StickerKit.InternalSettings"];
  v1 = qword_1ED49C480;
  qword_1ED49C480 = v0;
}

- (id)createPathEffectViewIfNecessary
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = _layout;
    pathEffectView = [v4 pathEffectView];

    if (pathEffectView)
    {
      pathEffectView2 = [v4 pathEffectView];
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2050000000;
      v7 = qword_1ED49C4D0;
      v15 = qword_1ED49C4D0;
      if (!qword_1ED49C4D0)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __getTUIKeyboardPathEffectViewClass_block_invoke_0;
        v11[3] = &unk_1E70F2F20;
        v11[4] = &v12;
        __getTUIKeyboardPathEffectViewClass_block_invoke_0(v11);
        v7 = v13[3];
      }

      v8 = v7;
      _Block_object_dispose(&v12, 8);
      v9 = [v7 alloc];
      pathEffectView2 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [pathEffectView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [pathEffectView2 setAlpha:0.0];
      [v4 setPathEffectView:pathEffectView2];
    }
  }

  else
  {
    pathEffectView2 = 0;
  }

  return pathEffectView2;
}

+ (void)setServiceRole:(unint64_t)role
{
  if ([self platformSupportsKeyboardServiceRole:?])
  {
    [self serviceRole];
    qword_1ED49C498 = role;
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setServiceRole:role];
  }
}

+ (void)resetServiceRole
{
  if ([self usesInputSystemUI])
  {
    usesInputSystemUIForAutoFillOnly = 1;
  }

  else
  {
    usesInputSystemUIForAutoFillOnly = [self usesInputSystemUIForAutoFillOnly];
  }

  [self setServiceRole:usesInputSystemUIForAutoFillOnly];
}

- (void)manualKeyboardWillBeOrderedIn
{
  v3 = +[UIPeripheralHost sharedInstance];
  [v3 manualKeyboardWillBeOrderedIn:self];
}

- (void)manualKeyboardWasOrderedIn
{
  v3 = +[UIPeripheralHost sharedInstance];
  [v3 manualKeyboardWasOrderedIn:self];
}

- (void)manualKeyboardWillBeOrderedOut
{
  v3 = +[UIPeripheralHost sharedInstance];
  [v3 manualKeyboardWillBeOrderedOut:self];
}

- (void)manualKeyboardWasOrderedOut
{
  v3 = +[UIPeripheralHost sharedInstance];
  [v3 manualKeyboardWasOrderedOut:self];
}

+ (id)homeGestureExclusionZones
{
  if ([objc_opt_class() isOnScreen])
  {
    v2 = +[UIKeyboardDockView dockViewHomeGestureExclusionZones];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (id)_getCurrentKeyplaneName
{
  v2 = +[UIKeyboardImpl sharedInstance];
  _getCurrentKeyplaneName = [v2 _getCurrentKeyplaneName];

  return _getCurrentKeyplaneName;
}

- (id)_getCurrentKeyboardName
{
  v2 = +[UIKeyboardImpl sharedInstance];
  _getCurrentKeyboardName = [v2 _getCurrentKeyboardName];

  return _getCurrentKeyboardName;
}

- (id)_getLocalizedInputMode
{
  v2 = +[UIKeyboardImpl sharedInstance];
  _getLocalizedInputMode = [v2 _getLocalizedInputMode];

  return _getLocalizedInputMode;
}

- (id)_baseKeyForRepresentedString:(id)string
{
  stringCopy = string;
  v4 = +[UIKeyboardImpl activeInstance];
  _layout = [v4 _layout];
  v6 = [_layout canProduceString:stringCopy];

  if (v6)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    _layout2 = [v7 _layout];
    v9 = [_layout2 baseKeyForString:stringCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_keyplaneForKey:(id)key
{
  keyCopy = key;
  v4 = +[UIKeyboardImpl activeInstance];
  _layout = [v4 _layout];
  v6 = [_layout keyplaneForKey:keyCopy];

  return v6;
}

- (id)_keyplaneNamed:(id)named
{
  namedCopy = named;
  v4 = +[UIKeyboardImpl activeInstance];
  _layout = [v4 _layout];
  v6 = [_layout keyplaneNamed:namedCopy];

  return v6;
}

- (void)_changeToKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  v5 = +[UIKeyboardImpl activeInstance];
  _layout = [v5 _layout];
  [_layout changeToKeyplane:keyplaneCopy];
}

- (id)_touchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 _setNeedsCandidates:1];

  v6 = +[UIKeyboardImpl activeInstance];
  _layout = [v6 _layout];
  v8 = [_layout simulateTouch:{x, y}];

  return v8;
}

- (id)_typeCharacter:(id)character withError:(CGPoint)error shouldTypeVariants:(BOOL)variants baseKeyForVariants:(BOOL)forVariants
{
  forVariantsCopy = forVariants;
  variantsCopy = variants;
  y = error.y;
  x = error.x;
  characterCopy = character;
  v11 = +[UIKeyboardImpl activeInstance];
  [v11 _setNeedsCandidates:1];

  v12 = +[UIKeyboardImpl activeInstance];
  _layout = [v12 _layout];
  v14 = [_layout simulateTouchForCharacter:characterCopy errorVector:variantsCopy shouldTypeVariants:forVariantsCopy baseKeyForVariants:{x, y}];

  return v14;
}

- (void)_setInputMode:(id)mode
{
  modeCopy = mode;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setInputMode:modeCopy];
}

- (void)_setAutocorrects:(BOOL)autocorrects
{
  autocorrectsCopy = autocorrects;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 _setAutocorrects:autocorrectsCopy];
}

- (id)_getAutocorrection
{
  v2 = +[UIKeyboardImpl activeInstance];
  _getAutocorrection = [v2 _getAutocorrection];

  return _getAutocorrection;
}

- (void)_acceptCurrentCandidate
{
  v3 = +[UIKeyboardImpl activeInstance];
  acceptCurrentCandidate = [v3 acceptCurrentCandidate];
}

- (BOOL)_hasCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 _needsCandidates])
  {
    _hasCandidates = 0;
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    _hasCandidates = [v4 _hasCandidates];
  }

  return _hasCandidates;
}

- (int64_t)_positionInCandidateList:(id)list
{
  listCopy = list;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _positionInCandidateList:listCopy];

  return v5;
}

- (CGRect)_floatingKeyboardDraggableRect
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (+[UIKeyboardImpl isFloating])
  {
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    hosting = [_rootInputWindowController hosting];
    v9 = [hosting itemForPurpose:0];

    applicator = [v9 applicator];
    v11 = applicator;
    if (applicator)
    {
      draggableView = [applicator draggableView];
      superview = [draggableView superview];
      [draggableView frame];
      [superview convertRect:self toView:?];
      v3 = v14;
      v4 = v15;
      v5 = v16;
      v6 = v17;
    }
  }

  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (double)predictionViewHeightForCurrentInputMode
{
  v2 = +[UIKeyboardImpl sharedInstance];
  usesCandidateSelection = [v2 usesCandidateSelection];

  v4 = +[UIKeyboardImpl sharedInstance];
  v5 = v4;
  if (usesCandidateSelection)
  {
    candidateController = [v4 candidateController];
    v7 = +[UIKeyboard activeKeyboard];
    [candidateController candidateBarHeightForOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
    v9 = v8;
    traitCollection = v5;
  }

  else
  {
    traitCollection = [v4 traitCollection];

    candidateController = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [candidateController systemInputAssistantViewController];
    v7 = systemInputAssistantViewController;
    if (systemInputAssistantViewController && ([systemInputAssistantViewController isEmojiSearchResultsVisible] & 1) == 0)
    {
      [v7 preferredHeightForTraitCollection:traitCollection];
    }

    else
    {
      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    }

    v9 = v12;
  }

  return v9;
}

+ (UIEdgeInsets)keyplanePadding
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];

  [_layout keyplanePadding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

+ (id)snapshotViewForPredictionViewTransition
{
  if ([self usesInputSystemUI])
  {
    snapshotView = +[UIKeyboardUIClient sharedInstance];
    v3 = [snapshotView snapshotViewForOptions:2];
LABEL_3:
    v4 = v3;
    goto LABEL_12;
  }

  v5 = +[UIKeyboardImpl sharedInstance];
  usesCandidateSelection = [v5 usesCandidateSelection];

  if (usesCandidateSelection)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      snapshotView = +[UIKeyboardImpl activeInstance];
      candidateController = [snapshotView candidateController];
      [candidateController candidateBar];
    }

    else
    {
      snapshotView = +[UIKeyboardImpl sharedInstance];
      candidateController = [snapshotView candidateController];
      [candidateController snapshot];
    }
    v4 = ;

    goto LABEL_12;
  }

  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v8 systemInputAssistantViewController];
  view = [systemInputAssistantViewController view];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = view;
    snapshotView = v3;
    goto LABEL_3;
  }

  snapshotView = [view snapshotView];

  v11 = [UIView alloc];
  [snapshotView bounds];
  v4 = [(UIView *)v11 initWithFrame:?];
  [(UIView *)v4 setClipsToBounds:1];
  [(UIView *)v4 addSubview:snapshotView];
LABEL_12:

  return v4;
}

+ (id)snapshotViewForOptions:(unint64_t)options
{
  if (!+[UIKeyboard usesInputSystemUI])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboard.m" lineNumber:2993 description:@"snapshotViewForOptions only supports OOP keyboard"];
  }

  v6 = +[UIKeyboardUIClient sharedInstance];
  v7 = [v6 snapshotViewForOptions:options];

  return v7;
}

+ (void)forceKeyboardAlpha:(double)alpha
{
  if ([self usesInputSystemUI])
  {
    v4 = +[UIKeyboardUIClient sharedInstance];
    [v4 setKeyboardAlpha:1 force:alpha];
  }
}

+ (void)setKeyboardAlpha:(double)alpha remote:(BOOL)remote force:(BOOL)force processId:(int)id
{
  v6 = *&id;
  forceCopy = force;
  remoteCopy = remote;
  v38 = *MEMORY[0x1E69E9840];
  if ([self usesInputSystemUI])
  {
    v11 = _UIKeyboardLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = alpha;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Setting keyboard alpha: %f", buf, 0xCu);
    }

    v12 = +[UIKeyboardUIClient sharedInstance];
    [v12 setKeyboardAlpha:forceCopy force:alpha];
  }

  else
  {
    if (qword_1ED49C4A8 != -1)
    {
      dispatch_once(&qword_1ED49C4A8, &__block_literal_global_1424_1);
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v30 = 0u;
    if (proc_pidinfo(v6, 3, 0, buf, 136) > 0x87)
    {
      v14 = *(&v36 + 1);
    }

    else
    {
      v13 = _UIKeyboardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = __error();
        v26 = strerror(*v25);
        *v27 = 67109378;
        *v28 = v6;
        *&v28[4] = 2080;
        *&v28[6] = v26;
        _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Failed to get pid info for pid %d: %s", v27, 0x12u);
      }

      v14 = 0;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d:%llu", v6, v14];
    v16 = v15;
    if (v15 && remoteCopy && !forceCopy)
    {
      if (alpha == 0.0)
      {
        [qword_1ED49C4A0 addObject:v15];
      }

      else
      {
        [qword_1ED49C4A0 removeObject:v15];
      }
    }

    else if (v15 && !forceCopy && [qword_1ED49C4A0 containsObject:v15])
    {
      alpha = 0.0;
    }

    v17 = _UIKeyboardLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 134218242;
      *v28 = alpha;
      *&v28[8] = 2112;
      *&v28[10] = v16;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Setting keyboard alpha: %f, key=%@", v27, 0x16u);
    }

    if (([self isKeyboardProcess] & 1) == 0)
    {
      v18 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      keyboardWindow = [v18 keyboardWindow];

      rootViewController = [keyboardWindow rootViewController];
      view = [rootViewController view];
      [view setAlpha:alpha];
    }

    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v22 containerRootController];
    view2 = [containerRootController view];

    [view2 setAlpha:alpha];
  }
}

void __70__UIKeyboard_TestingSupport__setKeyboardAlpha_remote_force_processId___block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = qword_1ED49C4A0;
  qword_1ED49C4A0 = v0;
}

+ (BOOL)predictionViewPrewarmsPredictiveCandidates
{
  v2 = +[UIKeyboardImpl sharedInstance];
  prewarmsPredictiveCandidates = [v2 prewarmsPredictiveCandidates];

  return prewarmsPredictiveCandidates;
}

+ (void)setPredictionViewPrewarmsPredictiveCandidates:(BOOL)candidates
{
  candidatesCopy = candidates;
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setPrewarmsPredictiveCandidates:candidatesCopy];
}

+ (BOOL)candidateDisplayIsExtended
{
  v2 = +[UIKeyboardImpl activeInstance];
  candidateController = [v2 candidateController];

  LOBYTE(v2) = [candidateController isExtended];
  return v2;
}

+ (id)obtainHideDisambiguationCandidatesAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v4 = +[UIKeyboardImpl activeInstance];
  candidateController = [v4 candidateController];

  v6 = [candidateController obtainHideDisambiguationCandidatesAssertionForReason:reasonCopy];

  return v6;
}

+ (id)obtainHideInlineCandidatesAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 obtainHideInlineCandidatesAssertionForReason:reasonCopy];

  return v5;
}

@end