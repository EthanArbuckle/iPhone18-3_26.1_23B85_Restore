@interface UIKeyboard
+ (BOOL)assistantBarShouldBeIncludedInSizeForDelegate:(id)a3;
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
+ (BOOL)shouldSuppressSoftwareKeyboardForResponder:(id)a3;
+ (BOOL)supportsAutoFillPanel;
+ (BOOL)usesInputSystemUI;
+ (BOOL)usesInputSystemUIForAutoFillOnly;
+ (BOOL)usesInputSystemUIForAutoFillOnlyWithRTI;
+ (BOOL)usesLocalKeyboard;
+ (BOOL)usingEndInputSessionCompletion;
+ (CGRect)defaultFrameForInterfaceOrientation:(int64_t)a3;
+ (CGSize)defaultSize;
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4 inputDelegate:(id)a5;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 includingAssistantBar:(BOOL)a4 ignoreInputView:(BOOL)a5;
+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 inputDelegate:(id)a4;
+ (UIEdgeInsets)_keyboardFocusGuideMargins;
+ (UIEdgeInsets)keyplanePadding;
+ (double)predictionViewHeightForCurrentInputMode;
+ (id)activeKeyboardForScreen:(id)a3;
+ (id)activeScreenTraits;
+ (id)currentDocumentState;
+ (id)homeGestureExclusionZones;
+ (id)keyboardApplicationIdentifier;
+ (id)keyboardBundleIdentifier;
+ (id)obtainHideDisambiguationCandidatesAssertionForReason:(id)a3;
+ (id)obtainHideInlineCandidatesAssertionForReason:(id)a3;
+ (id)snapshotViewForOptions:(unint64_t)a3;
+ (id)snapshotViewForPredictionViewTransition;
+ (int)keyboardProcessId;
+ (unint64_t)serviceRole;
+ (void)_clearActiveKeyboard;
+ (void)clearActiveForScreen:(id)a3;
+ (void)clearLastKeyboardApplicationIdentifier;
+ (void)forceKeyboardAlpha:(double)a3;
+ (void)makeKeyboardActive:(id)a3 forScreen:(id)a4;
+ (void)removeAllDynamicDictionaries;
+ (void)resetServiceRole;
+ (void)setKeyboardAlpha:(double)a3 remote:(BOOL)a4 force:(BOOL)a5 processId:(int)a6;
+ (void)setPredictionViewPrewarmsPredictiveCandidates:(BOOL)a3;
+ (void)setServiceRole:(unint64_t)a3;
- (BOOL)_hasCandidates;
- (BOOL)_isDictationCurrentView;
- (BOOL)allowExternalChangeForFocusHeading:(unint64_t)a3 cursorLocation:(unint64_t)a4;
- (BOOL)canBecomeFocused;
- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4;
- (BOOL)caretBlinks;
- (BOOL)caretVisible;
- (BOOL)disableInteraction;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasAutocorrectPrompt;
- (BOOL)isActivePerScreen;
- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)returnKeyEnabled;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (BOOL)showPredictionBar;
- (BOOL)showsCandidatesInline;
- (CGRect)_floatingKeyboardDraggableRect;
- (CGRect)_focusCastingFrameForHeading:(unint64_t)a3 inCoordinateSpace:(id)a4;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)unfocusedFocusGuideOutsets;
- (UIKeyboard)initWithDefaultSize;
- (UIKeyboard)initWithRequestedInteractionModel:(unint64_t)a3;
- (UIPeripheralAnimationGeometry)geometryForImplHeightDelta:(SEL)a3;
- (UIPeripheralAnimationGeometry)geometryForMinimize:(SEL)a3;
- (UITextCursorAssertionController)_activeAssertionController;
- (id)_baseKeyForRepresentedString:(id)a3;
- (id)_getAutocorrection;
- (id)_getCurrentKeyboardName;
- (id)_getCurrentKeyplaneName;
- (id)_getLocalizedInputMode;
- (id)_initWithFrame:(CGRect)a3 lazily:(BOOL)a4;
- (id)_keyplaneForKey:(id)a3;
- (id)_keyplaneNamed:(id)a3;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_touchPoint:(CGPoint)a3;
- (id)_typeCharacter:(id)a3 withError:(CGPoint)a4 shouldTypeVariants:(BOOL)a5 baseKeyForVariants:(BOOL)a6;
- (id)createPathEffectViewIfNecessary;
- (id)defaultTextInputTraits;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)targetWindow;
- (id)window;
- (int64_t)_positionInCandidateList:(id)a3;
- (unint64_t)cursorLocation;
- (void)_acceptCurrentCandidate;
- (void)_changeToKeyplane:(id)a3;
- (void)_deactivateForBackgrounding;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)_setAutocorrects:(BOOL)a3;
- (void)_setDisableTouchInput:(BOOL)a3;
- (void)_setDisableUpdateMaskForSecureTextEntry:(BOOL)a3;
- (void)_setInputMode:(id)a3;
- (void)_setPasscodeOutlineAlpha:(double)a3;
- (void)_setRenderConfig:(id)a3;
- (void)_showPasswordAutoFillPocket;
- (void)_toggleMenuGestureRecognizer:(BOOL)a3;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)acceptAutocorrection;
- (void)acceptAutocorrectionWithCompletionHandler:(id)a3;
- (void)activate;
- (void)activateIfNeeded;
- (void)autoAdjustOrientation;
- (void)clearActivePerScreenIfNeeded;
- (void)clearSnapshot;
- (void)deactivate;
- (void)dealloc;
- (void)didFocusGuideWithHeading:(unint64_t)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)displayLayer:(id)a3;
- (void)geometryChangeDone:(BOOL)a3;
- (void)implBoundsHeightChangeDone:(double)a3 suppressNotification:(BOOL)a4;
- (void)keyboardMinMaximized:(BOOL)a3;
- (void)layoutSubviews;
- (void)manualKeyboardWasOrderedIn;
- (void)manualKeyboardWasOrderedOut;
- (void)manualKeyboardWillBeOrderedIn;
- (void)manualKeyboardWillBeOrderedOut;
- (void)maximize;
- (void)minimize;
- (void)prepareForGeometryChange;
- (void)prepareForImplBoundsHeightChange:(double)a3 suppressNotification:(BOOL)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)remoteControlReceivedWithEvent:(id)a3;
- (void)removeAutocorrectPrompt;
- (void)responseContextDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setCaretBlinks:(BOOL)a3;
- (void)setCaretVisible:(BOOL)a3;
- (void)setCorrectionLearningAllowed:(BOOL)a3;
- (void)setCursorLocation:(unint64_t)a3;
- (void)setDefaultTextInputTraits:(id)a3;
- (void)setDisableInteraction:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMinimized:(BOOL)a3;
- (void)setNeedsDisplay;
- (void)setReturnKeyEnabled:(BOOL)a3;
- (void)setShouldUpdateLayoutAutomatically:(BOOL)a3;
- (void)setShowsCandidatesInline:(BOOL)a3;
- (void)set_overrideTextInputTraits:(id)a3;
- (void)setupKeyFocusGuides;
- (void)syncMinimizedStateToHardwareKeyboardAttachedState;
- (void)takeSnapshot;
- (void)textInputTraitsDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateFocusMarginsUpToView:(id)a3;
- (void)updateKeyFocusGuides;
- (void)updateLayout;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIKeyboard

+ (BOOL)usesInputSystemUI
{
  v3 = [a1 inputUIOOP];
  if (v3)
  {
    LOBYTE(v3) = [a1 isKeyboardProcess] ^ 1;
  }

  return v3;
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
    v4 = [v2 isInHardwareKeyboardMode];
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v4 = [v5 _isHardwareKeyboardAvailable];
  }

  return v4;
}

+ (id)keyboardBundleIdentifier
{
  if (![a1 isKeyboardProcess] || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "inputSystemSourceSession"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "documentTraits"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bundleId"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, !v5))
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
  block[4] = a1;
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
  block[4] = a1;
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

  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:@"UsesLocalKeyboard"];

  LODWORD(v2) = [v3 BOOLValue];
  if (v2 && +[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v5 = [v4 snapshotting];
    if ((v5 & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v3 = objc_claimAutoreleasedReturnValue(), [v3 loadingLocalKeyboard]))
    {
      v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      v7 = [v6 sceneIsFullScreen];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_12:
    return v7;
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
  if ([a1 isKeyboardProcess] & 1) != 0 || (objc_msgSend(a1, "inputUIOOP"))
  {
    return 0;
  }

  return [a1 supportsAutoFillPanel];
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

  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:@"RemoteEmoji"];

  LODWORD(v2) = [v3 BOOLValue];
  if (!v2)
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
  v2 = [(UIView *)&v4 window];

  return v2;
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
  v2 = [objc_opt_class() isMajelEnabled];
  if (v2)
  {
    v3 = +[UIKeyboardInputMode dictationInputMode];
    v4 = [v3 usingTypeAndTalk];

    LOBYTE(v2) = v4;
  }

  return v2;
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
  v3 = [v2 keyboardLanguageIndicatorEnabled];

  return v3;
}

- (void)syncMinimizedStateToHardwareKeyboardAttachedState
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboard *)self isAutomatic])
  {
    v3 = +[UIKeyboardImpl sharedInstance];
    if ([v3 _shouldMinimizeForHardwareKeyboard])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 _shouldSuppressSoftwareKeyboard];
    }

    if (self->m_minimized != v4)
    {
      v5 = _UIKeyboardLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[UIKeyboard syncMinimizedStateToHardwareKeyboardAttachedState]";
        v8 = 1024;
        v9 = v4;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s Setting keyboard minimized = %d", &v6, 0x12u);
      }

      self->m_minimized = v4;
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
  v2 = [a1 usesInputSystemUIForAutoFillOnly];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

+ (BOOL)isInlineDictationGlowEffectEnabled
{
  if (![a1 isRedesignedTextCursorEnabled] || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = +[_UIDictationSettingsDomain rootSettings];
  v3 = [v2 glowEffectEnabled];

  return v3;
}

- (void)setNeedsDisplay
{
  v2 = [(UIView *)self layer];
  [v2 setNeedsDisplay];
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
  block[4] = a1;
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
  block[4] = a1;
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

  v3 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [v3 valueForPreferenceKey:@"ExtendInputUI"];

  if ([v4 BOOLValue])
  {
    v5 = [a1 isSpotlight] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isSpotlight
{
  v2 = [a1 keyboardBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Spotlight"];

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
  v3 = [(UIView *)self superview];

  if (v3)
  {
    if (activeKeyboard == self)
    {
      v24 = +[UIKeyboardImpl activeInstance];
      if (v24)
      {
        v10 = v24;
        v25 = [(UIView *)self traitCollection];
        if ([v25 userInterfaceIdiom] == 3)
        {
          v26 = [(UIKeyboard *)self requestedInteractionModel];

          if (v26)
          {
            [(UIKeyboard *)v10 setRequestedInteractionModel:[(UIKeyboard *)self requestedInteractionModel]];
          }
        }

        else
        {
        }

        [(UIKeyboard *)v10 setGeometryDelegate:self];
        v27 = [(UIView *)v10 superview];
        if (v27)
        {
          v28 = self;
        }

        else
        {
          v28 = v10;
        }

        [(UIView *)v28 bounds];
        v30 = v29;
        v32 = v31;

        [(UIKeyboard *)self autoAdjustOrientation];
        [(UIKeyboard *)v10 setShouldUpdateLayoutAutomatically:[(UIKeyboard *)self shouldUpdateLayoutAutomatically]];
        [(UIKeyboard *)v10 setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v30, v32];
        v33 = [(UIView *)v10 superview];

        if (!v33)
        {
          [(UIView *)self addSubview:v10];
          [(UIKeyboard *)v10 setDefaultTextInputTraits:self->m_defaultTraits];
          [(UIKeyboard *)v10 setOverrideTextInputTraits:self->m_overrideTraits];
          if (self->_implConstraints)
          {
            [MEMORY[0x1E69977A0] deactivateConstraints:?];
          }

          v34 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v35 = [v34 preferencesActions];
          v36 = [v35 crescendoEnabled];

          if (v36)
          {
            [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
            v56 = [(UIView *)v10 topAnchor];
            v53 = [(UIView *)self topAnchor];
            v51 = [v56 constraintEqualToAnchor:v53];
            v58[0] = v51;
            v49 = [(UIView *)v10 leadingAnchor];
            v47 = [(UIView *)self leadingAnchor];
            v37 = [v49 constraintEqualToAnchor:v47];
            v58[1] = v37;
            v38 = [(UIView *)self bottomAnchor];
            v39 = [(UIView *)v10 bottomAnchor];
            v40 = [v38 constraintEqualToAnchor:v39];
            v58[2] = v40;
            v41 = [(UIView *)self trailingAnchor];
            v42 = [(UIView *)v10 trailingAnchor];
            v43 = [v41 constraintEqualToAnchor:v42];
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
    v4 = [(UIKeyboard *)self window];

    if (v4)
    {
      v5 = objc_opt_class();
      v6 = [(UIKeyboard *)self window];
      v7 = [v6 screen];
      [v5 makeKeyboardActive:self forScreen:v7];
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
    v12 = [v11 preferencesActions];
    if ([v12 crescendoEnabled])
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
    v55 = [(UIView *)v10 topAnchor];
    v52 = [(UIView *)self topAnchor];
    v50 = [v55 constraintEqualToAnchor:v52];
    v57[0] = v50;
    v48 = [(UIView *)v10 leadingAnchor];
    v46 = [(UIView *)self leadingAnchor];
    v15 = [v48 constraintEqualToAnchor:v46];
    v57[1] = v15;
    v16 = [(UIView *)self bottomAnchor];
    v17 = [(UIView *)v10 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v57[2] = v18;
    v19 = [(UIView *)self trailingAnchor];
    v20 = [(UIView *)v10 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
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
    v3 = [(UIKeyboard *)self cursorLocation];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(UIView *)self layoutGuides];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([(UIView *)self isFocused])
            {
              v10 = -[UIKeyboard allowExternalChangeForFocusHeading:cursorLocation:](self, "allowExternalChangeForFocusHeading:cursorLocation:", [v9 focusHeading], v3) ^ 1;
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
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (unint64_t)cursorLocation
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];
  v4 = [v3 cursorLocation];

  return v4;
}

- (BOOL)_isDictationCurrentView
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 _getCurrentKeyplaneName];
  [v3 rangeOfString:@"Dictation"];
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
  v3 = [(UIView *)self focusGuides];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 owningView];
        [v9 removeLayoutGuide:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

    v12 = [(UIView *)self traitCollection];
    v13 = [v12 userInterfaceIdiom];

    v14 = &unk_1EFE2CCB8;
    if (v13 != 3)
    {
      v14 = 0;
    }

    if (v13 == 2)
    {
      v15 = &unk_1EFE2CCA0;
    }

    else
    {
      v15 = v14;
    }

    v16 = [UIApp userInterfaceLayoutDirection];
    if ([v15 count])
    {
      v17 = 0;
      v18 = 32;
      if (v16 == 1)
      {
        v19 = 16;
      }

      else
      {
        v19 = 32;
      }

      if (v16 != 1)
      {
        v18 = 16;
      }

      v31 = v18;
      v32 = v19;
      do
      {
        v20 = [v15 objectAtIndex:{v17, v31}];
        v21 = [v20 integerValue];

        v22 = objc_alloc_init(UIKBFocusGuide);
        [(UIKBFocusGuide *)v22 setKeyboardDelegate:self];
        v37 = self;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [(UIFocusGuide *)v22 setPreferredFocusEnvironments:v23];

        [(UIKBFocusGuide *)v22 setFocusHeading:v21];
        [(UIView *)self bounds];
        switch(v21)
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
            if (v21 != v32)
            {
              if (v21 == 8 || v21 == v31)
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
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
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
  v4 = [a1 activeKeyboard];
  v5 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v3, [v4 interfaceOrientation]);

  return v5;
}

+ (BOOL)isShowingEmojiSearch
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 showingEmojiSearch];

  return v3;
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
    v5 = [(UIKeyboard *)self window];
    v4 = [v5 screen];
    [v3 clearActiveForScreen:v4];
  }
}

- (BOOL)isActivePerScreen
{
  v3 = objc_opt_class();
  v4 = [(UIKeyboard *)self window];
  v5 = [v4 screen];
  v6 = [v3 activeKeyboardForScreen:v5];
  LOBYTE(v3) = v6 != 0;

  return v3;
}

- (void)didMoveToWindow
{
  v3 = activeKeyboard;
  v4 = [(UIKeyboard *)self window];

  if (!v4)
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
  v6 = [v5 containerWindow];
  [v6 orderFront:0];

  v7 = [(UIView *)self subviews];
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [(UIKeyboard *)self activate];
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIDevice _hasHomeButton]&& self->m_minimized)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    v11 = [v10 _layout];

    +[UIKeyboardImpl additionalInstanceHeight];
    v13 = v12;
    [v11 frame];
    [v11 setFrame:{0.0, v13}];
  }

  if (v3 == self)
  {
LABEL_12:
    v15 = [(UIKeyboard *)self window];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [(UIKeyboard *)self window];
      v18 = [v17 screen];
      [v16 makeKeyboardActive:self forScreen:v18];
    }
  }

LABEL_14:

  [(UIKeyboard *)self setupKeyFocusGuides];
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (![(UIKeyboard *)self requestedInteractionModel])
    {
      v6 = [(UIView *)self traitCollection];
      v5 = [v6 primaryInteractionModel] != 1;

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

- (id)_initWithFrame:(CGRect)a3 lazily:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = UIKeyboard;
  v7 = [(UIView *)&v15 initWithFrame:a3.origin.x, a3.origin.y];
  v8 = v7;
  if (v7)
  {
    v7->_shouldUpdateLayoutAutomatically = 1;
    [(UIView *)v7 setAutoresizingMask:0];
    v8->m_orientation = 0;
    if (!a4)
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

- (UIKeyboard)initWithRequestedInteractionModel:(unint64_t)a3
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [UIKeyboard defaultSizeForInterfaceOrientation:1];
  result = [(UIKeyboard *)self _initWithFrame:0 lazily:v5, v6, v7, v8];
  if (result)
  {
    result->_requestedInteractionModel = a3;
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

+ (id)activeKeyboardForScreen:(id)a3
{
  v3 = a3;
  v4 = activeKeyboardsPerScreen;
  objc_sync_enter(v4);
  v5 = activeKeyboardsPerScreen;
  v6 = [v3 _name];
  v7 = [v5 objectForKey:v6];

  objc_sync_exit(v4);

  return v7;
}

+ (void)makeKeyboardActive:(id)a3 forScreen:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (v5)
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

    v10 = [v5 _name];
    [v7 setObject:v11 forKey:v10];

    objc_sync_exit(v6);
  }
}

+ (void)clearActiveForScreen:(id)a3
{
  v6 = a3;
  v3 = activeKeyboardsPerScreen;
  objc_sync_enter(v3);
  v4 = activeKeyboardsPerScreen;
  v5 = [v6 _name];
  [v4 removeObjectForKey:v5];

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

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3
{
  [UIKeyboardImpl defaultSizeForInterfaceOrientation:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)defaultFrameForInterfaceOrientation:(int64_t)a3
{
  [UIKeyboard defaultSizeForInterfaceOrientation:?];
  v5 = v4;
  v7 = v6;
  v8 = _UIAppUseModernRotationAndPresentationBehaviors();
  v9 = [objc_opt_self() mainScreen];
  v10 = v9;
  if (v8)
  {
    [v9 _boundsForInterfaceOrientation:a3];
    v12 = v11;

    v13 = v12 - v7;
    goto LABEL_3;
  }

  [v9 bounds];
  v17 = v16;
  v19 = v18;

  v13 = 0.0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v14 = 0.0;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      v14 = v17 - v7;
    }

    v15 = v7;
    v7 = v5;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v13 = v19 - v7;
    goto LABEL_3;
  }

  if (a3 != 2)
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
    v4 = [v3 automaticMinimizationEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)hasInputOrAssistantViewsOnScreen
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerRootController];

  LOBYTE(v2) = [v3 hasInputOrAssistantViewsOnScreen];
  return v2;
}

+ (BOOL)shouldSuppressSoftwareKeyboardForResponder:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v3 = [v4 delegateAsResponder];
  }

  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 _shouldSuppressSoftwareKeyboardForResponder:v3 ignoringPolicyDelegate:0];

  return v6;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3
{
  [a1 sizeForInterfaceOrientation:a3 ignoreInputView:0];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 inputDelegate:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a1 usesInputSystemUI])
  {
    v7 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v8 = [v7 currentUIState];
    v9 = [v8 resizing];

    if ((v9 & 1) == 0)
    {
      v10 = +[UIKeyboardImpl sharedInstance];
      [v10 setInputModeFromPreferences];
    }
  }

  [a1 sizeForInterfaceOrientation:a3 ignoreInputView:1 inputDelegate:v6];
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
        v20 = [v19 scene];
        [v18 intersectionHeightForWindowScene:v20];
        v22 = v21;

        if (v22 > 0.0)
        {
          v23 = +[UIKeyboardInputModeController sharedInputModeController];
          v24 = [v23 currentInputMode];

          [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:a3 inputMode:v24];
          v26 = v25;
          v28 = v27;
          [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:a3 inputMode:v24];
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

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4
{
  [a1 sizeForInterfaceOrientation:a3 ignoreInputView:a4 inputDelegate:0];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 ignoreInputView:(BOOL)a4 inputDelegate:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v9 = [v8 inputViews];
  v10 = v9;
  if (!v7 || v9 && ![v9 isEmpty] || objc_msgSend(v10, "isCustomInputView"))
  {
    v11 = [v10 keyboard];
    if (!v11)
    {
      if (!v5 && ([v10 isCustomInputView] & 1) != 0)
      {
        goto LABEL_10;
      }

      v12 = [UIInputViewSet inputSetWithKeyboardAndAccessoryView:0];
      v11 = v10;
      v10 = v12;
    }

LABEL_10:
    v13 = [v8 systemInputAssistantViewController];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(UISystemInputAssistantViewController);
    }

    v16 = v15;

    v17 = [(UISystemInputAssistantViewController *)v16 shouldBeShownForInputDelegate:v7 inputViews:v10];
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([objc_opt_class() assistantBarShouldBeIncludedInSizeForDelegate:v7])
  {
LABEL_14:
    v18 = 1;
    goto LABEL_20;
  }

LABEL_16:
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
  {
    v19 = [v8 responder];
    v20 = [v19 inputViewController];
    v18 = v20 != 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:
  [objc_opt_class() sizeForInterfaceOrientation:a3 includingAssistantBar:v18 ignoreInputView:v5];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

+ (BOOL)assistantBarShouldBeIncludedInSizeForDelegate:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v3)
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v25 = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "assistantBarShouldBeIncludedInSizeForDelegate:inputMode: should only be used with a valid inputDelegate", v25, 2u);
      }
    }
  }

  else if (!v3)
  {
    v24 = *(__UILogGetCategoryCachedImpl("Assert", &assistantBarShouldBeIncludedInSizeForDelegate____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "assistantBarShouldBeIncludedInSizeForDelegate:inputMode: should only be used with a valid inputDelegate", v25, 2u);
    }
  }

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 textInputTraits];

  if ([v3 conformsToProtocolCached:&unk_1EFE8E9A0])
  {
    v6 = [v3 textInputTraits];
    v7 = [UITextInputTraits traitsByAdoptingTraits:v6];

    v5 = v7;
  }

  if (!v5)
  {
    if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || ![v3 conformsToProtocolCached:&unk_1F016C7B0] || (+[UITextInputTraits traitsByAdoptingTraits:](UITextInputTraits, "traitsByAdoptingTraits:", v3), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v3 conformsToProtocolCached:&unk_1EFE8B2D0])
      {
        v5 = [UITextInputTraits traitsByAdoptingTraits:v3];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 currentInputMode];
  v10 = [v9 identifier];

  if (objc_opt_respondsToSelector())
  {
    v11 = [v3 textInputMode];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 identifier];

      v10 = v13;
    }
  }

  if (UIKeyboardAlwaysShowCandidateBarForInputMode())
  {
    if (([v5 disableInputBars] & 1) == 0)
    {
      v14 = [v5 hidePrediction] ^ 1;
      goto LABEL_28;
    }

LABEL_27:
    LOBYTE(v14) = 0;
    goto LABEL_28;
  }

  if ([v5 autocorrectionType] == 1)
  {
    v15 = +[UIKeyboardImpl activeInstance];
    v16 = [v15 autocorrectionPreferenceForTraits] != 2;
  }

  else
  {
    v16 = 0;
  }

  if ([v5 disablePrediction] & 1) != 0 || (objc_msgSend(v5, "hidePrediction"))
  {
    goto LABEL_27;
  }

  v17 = +[UIKeyboardImpl activeInstance];
  if (([v17 disableInputBars] | v16))
  {

    goto LABEL_27;
  }

  v18 = [v5 isSecureTextEntry];

  if (v18)
  {
    goto LABEL_27;
  }

  v26[0] = v10;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  if (UIKeyboardPredictionEnabledForInputModes(v20))
  {
    v21 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v22 = [v21 preferencesActions];
    LOBYTE(v14) = [v22 predictionEnabled];
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_28:
  return v14;
}

+ (CGSize)sizeForInterfaceOrientation:(int64_t)a3 includingAssistantBar:(BOOL)a4 ignoreInputView:(BOOL)a5
{
  v5 = a4;
  [UIKeyboardImpl sizeForInterfaceOrientation:a3 ignoreInputView:a5];
  v8 = v7;
  v10 = v9;
  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  v12 = [v11 currentInputMode];

  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:a3 inputMode:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:a3 inputMode:v12];
  v22 = v21;
  v24 = v23;
  v27 = v10 + v14 - v25 + v18 - v26;
  if (v5)
  {
    v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v29 = [v28 systemInputAssistantViewController];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = objc_alloc_init(UISystemInputAssistantViewController);
    }

    v32 = v31;

    v33 = [(UIViewController *)v32 traitCollection];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v36 = [v28 containerWindow];
      v35 = [v36 traitCollection];
    }

    [(UISystemInputAssistantViewController *)v32 preferredHeightForTraitCollection:v35 orientation:a3];
    v27 = v27 + v37;
  }

  v38 = v8 + v16 - v22 + v20 - v24;
  v39 = v27;
  result.height = v39;
  result.width = v38;
  return result;
}

+ (CGSize)keyboardSizeForInterfaceOrientation:(int64_t)a3
{
  [UIKeyboardImpl keyboardSizeForInterfaceOrientation:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboard *)self window];
  v6 = [v5 screen];
  v7 = [v4 screen];

  if (v6 != v7)
  {

    [(UIKeyboard *)self clearActivePerScreenIfNeeded];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  if (v9 == width && v8 == height)
  {
    goto LABEL_8;
  }

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v12 = [v11 preferencesActions];
  if ([v12 currentInputModeSupportsCrescendo])
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_preferredSize.width = a3.size.width;
  self->_preferredSize.height = a3.size.height;
  [(UIView *)self bounds];
  if (v9 == width && v8 == height)
  {
    goto LABEL_8;
  }

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v12 = [v11 preferencesActions];
  if ([v12 currentInputModeSupportsCrescendo])
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
  v6 = [v2 currentInputMode];

  if (([v6 isExtensionInputMode] & 1) == 0)
  {
    v3 = [v6 normalizedIdentifier];
    v4 = [v3 isEqualToString:@"emoji"];

    if ((v4 & 1) == 0)
    {
      v5 = +[UIKeyboardImpl sharedInstance];
      [v5 updateLayout];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->m_typingDisabled)
  {
    v18.receiver = self;
    v18.super_class = UIKeyboard;
    if ([(UIView *)&v18 pointInside:v7 withEvent:x, y])
    {
      v8 = self;
      goto LABEL_9;
    }
  }

  v9 = +[UIKeyboardImpl sharedInstance];
  v10 = [v9 candidateController];
  v11 = [v10 candidateBar];

  v12 = [v11 window];
  v13 = [(UIKeyboard *)self window];
  if (v12 == v13 && ([v11 isHidden] & 1) == 0)
  {
    v16 = -[UIKeyboard pointInside:forEvent:](self, "pointInside:forEvent:", [v7 _gsEvent], x, y);

    if (!v16)
    {
      [(UIView *)self convertPoint:v11 toView:x, y];
      v14 = [v11 hitTest:v7 withEvent:?];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v17.receiver = self;
  v17.super_class = UIKeyboard;
  v14 = [(UIView *)&v17 hitTest:v7 withEvent:x, y];
LABEL_8:
  v8 = v14;

LABEL_9:

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = +[UIKeyboardImpl sharedInstance];
  v9 = [v8 superview];
  if (v9 == self)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v10 = [v8 pointInside:a4 forEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!-[UIKeyboard pointInside:forEvent:](self, "pointInside:forEvent:", [v7 _gsEvent], x, y))
  {
    v9 = +[UIKeyboardImpl sharedInstance];
    v10 = [v9 candidateController];
    v11 = [v10 candidateBar];

    v12 = [v11 window];
    v13 = [(UIKeyboard *)self window];
    if (v12 == v13 && ([v11 isHiddenOrHasHiddenAncestor] & 1) == 0)
    {
      HasAlphaHittable = [(UIView *)v11 _isAlphaHittableAndHasAlphaHittableAncestors];

      if (HasAlphaHittable)
      {
        [(UIView *)self convertPoint:v11 toView:x, y];
        v8 = [v11 pointInside:v7 withEvent:?];
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

- (void)geometryChangeDone:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(UIKeyboard *)self activate];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 geometryChangeDone:v3];
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
  v2 = [v5 textInputTraits];
  v3 = [v2 keyboardType];

  if (v3 == 126)
  {
    v4 = +[UIDictationController sharedInstance];
    [v4 stopDictationIgnoreFinalizePhrases];
  }

  [v5 acceptAutocorrection];
}

- (void)acceptAutocorrectionWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIKeyboard *)self activate];
  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 textInputTraits];
  v7 = [v6 keyboardType];

  if (v7 == 126)
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
  v12 = v4;
  v10 = v4;
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
  v3 = [v2 autocorrectPrompt];
  v4 = v3 != 0;

  return v4;
}

- (UITextCursorAssertionController)_activeAssertionController
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 _activeAssertionController];

  return v3;
}

- (void)setCaretBlinks:(BOOL)a3
{
  v3 = a3;
  [(UIKeyboard *)self activate];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setCaretBlinks:v3];
}

- (BOOL)caretBlinks
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 caretBlinks];

  return v3;
}

- (void)setCaretVisible:(BOOL)a3
{
  v3 = a3;
  [(UIKeyboard *)self activate];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setCaretVisible:v3];
}

- (BOOL)caretVisible
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 caretVisible];

  return v3;
}

- (BOOL)returnKeyEnabled
{
  [(UIKeyboard *)self activateIfNeeded];
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 returnKeyEnabled];

  return v3;
}

- (void)setReturnKeyEnabled:(BOOL)a3
{
  v3 = a3;
  [(UIKeyboard *)self activateIfNeeded];
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setReturnKeyEnabled:v3];
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

- (void)setDefaultTextInputTraits:(id)a3
{
  v4 = a3;
  [(UIKeyboard *)self activate];
  m_defaultTraits = self->m_defaultTraits;
  self->m_defaultTraits = v4;
  v6 = v4;

  v7 = +[UIKeyboardImpl sharedInstance];
  [v7 setDefaultTextInputTraits:self->m_defaultTraits];
}

- (void)set_overrideTextInputTraits:(id)a3
{
  v6 = a3;
  [(UIKeyboard *)self activate];
  if (self->m_overrideTraits != v6)
  {
    objc_storeStrong(&self->m_overrideTraits, a3);
    v5 = +[UIKeyboardImpl sharedInstance];
    [v5 setOverrideTextInputTraits:self->m_overrideTraits];
  }
}

- (id)delegate
{
  [(UIKeyboard *)self activate];
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 delegate];

  return v3;
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
    v3 = [(UIView *)self superview];

    if (v3)
    {
      [(UIKeyboard *)self takeSnapshot];
      [(UIKeyboard *)self setNeedsDisplay];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    v4 = [v7 superview];

    if (v4)
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
    v4 = [(UIView *)self superview];

    if (v4)
    {
      [(UIKeyboard *)self takeSnapshot];
      [(UIKeyboard *)self setNeedsDisplay];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    v5 = [v7 superview];

    if (v5)
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

- (void)displayLayer:(id)a3
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v4 = [UIKeyboardImpl activeInstance:a3];
  [v4 updateIdleDetection:0];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v4 = [UIKeyboardImpl activeInstance:a3];
  [v4 updateIdleDetection:0];
}

- (BOOL)canHandlePresses:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 canHandlePresses:v6 withEvent:v5];

  return v8;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboard *)self canHandlePresses:v6 withEvent:v7])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _layout];
    [v9 pressesBegan:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboard *)self canHandlePresses:v6 withEvent:v7])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _layout];
    [v9 pressesChanged:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesChanged:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboard *)self canHandlePresses:v6 withEvent:v7])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _layout];
    [v9 pressesEnded:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIKeyboard *)self canHandlePresses:v6 withEvent:v7])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _layout];
    [v9 pressesCancelled:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKeyboard;
    [(UIResponder *)&v10 pressesCancelled:v6 withEvent:v7];
  }
}

- (void)remoteControlReceivedWithEvent:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 remoteControlReceivedWithEvent:v3];
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if ([(UIView *)self isFocused])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 _wheelChangedWithEvent:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKeyboard;
    [(UIResponder *)&v6 _wheelChangedWithEvent:v4];
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x100) != 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboard;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (CGRect)_focusCastingFrameForHeading:(unint64_t)a3 inCoordinateSpace:(id)a4
{
  v4 = a4;
  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 currentKey];

  if (v6 && [v6 state] != 16)
  {
    v11 = +[UIKeyboardImpl sharedInstance];
    [v6 frame];
    [v11 convertRect:v4 toCoordinateSpace:?];
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIKeyboard;
  [(UIView *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
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

  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  [(UIKeyboard *)self updateFocusMarginsUpToView:0];
  v5 = 0;
  if (v7 == 3)
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

- (BOOL)allowExternalChangeForFocusHeading:(unint64_t)a3 cursorLocation:(unint64_t)a4
{
  if (a3 == 1 && (a4 & 8) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = vdupq_n_s64(a3);
    v6 = vdupq_n_s64(a4);
    v7 = vuzp1q_s32(vceqq_s64(v5, xmmword_18A680110), vceqq_s64(v5, xmmword_18A64BFA0));
    v8 = vandq_s8(v6, xmmword_18A679310);
    v9 = vandq_s8(v6, xmmword_18A680120);
    v10 = (a4 >> 6) & 1;
    if (a3 != 8)
    {
      LOBYTE(v10) = 0;
    }

    v4 = vmaxv_u16(vmovn_s32(vbicq_s8(v7, vuzp1q_s32(vceqzq_s64(v8), vceqzq_s64(v9))))) | v10;
  }

  return v4 & 1;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 nextFocusedItem];
  v6 = [v4 focusHeading];

  if (![(UIView *)self isFocused]|| ![(UIKeyboard *)self canBecomeFocused])
  {
    if (v5 == self)
    {
      v15 = self;
      v16 = 2;
      goto LABEL_14;
    }

LABEL_12:
    v15 = self;
    v16 = 0;
LABEL_14:
    [(UIKeyboard *)v15 setImpendingCursorLocation:v16];
LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

  v7 = [(UIKeyboard *)self cursorLocation];
  v8 = v5 == self;
  if (!v7)
  {
    if (v5 == self)
    {
      v8 = 1;
      [(UIKeyboard *)self setImpendingCursorLocation:1];
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v9 = v7;
  v10 = (v7 & 0x80) == 0;
  v11 = [(UIKeyboard *)self allowExternalChangeForFocusHeading:v6 cursorLocation:v7];
  v12 = v5 != self && v10 && v11;
  v13 = [(UIView *)self traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 3)
  {
    if ((v9 & 0x20) != 0 && v6 == 4 || (v9 & 0x40) != 0 && v6 == 8)
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

  if (v14 != 2)
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

  v8 = v5 != self || !v11;
LABEL_16:

  return v8;
}

- (void)setCursorLocation:(unint64_t)a3
{
  v5 = +[UIKeyboardImpl activeInstance];
  v4 = [v5 _layout];
  [v4 setCursorLocation:a3];
}

- (void)didFocusGuideWithHeading:(unint64_t)a3
{
  v9 = [(UIEvent *)[UIMoveEvent alloc] _init];
  [v9 _setFocusHeading:a3];
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 _moveWithEvent:v9];

  [(UIKeyboard *)self updateKeyFocusGuides];
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 2)
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

- (void)updateFocusMarginsUpToView:(id)a3
{
  v19 = a3;
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

    v16 = self;
    v17 = [v19 superview];
    do
    {
      v18 = v16;
      [(UIView *)v16 _setFocusableContentMargins:v11, v10, v9, v8];
      v16 = [(UIView *)v16 superview];
    }

    while (v16 && v17 && v16 != v17);
  }
}

- (void)_toggleMenuGestureRecognizer:(BOOL)a3
{
  v3 = a3;
  if (a3 && !self->_menuGestureRecognizer)
  {
    v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:0];
    menuGestureRecognizer = self->_menuGestureRecognizer;
    self->_menuGestureRecognizer = v5;

    [(UITapGestureRecognizer *)self->_menuGestureRecognizer setAllowedPressTypes:&unk_1EFE2CCD0];
    [(UIGestureRecognizer *)self->_menuGestureRecognizer setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_menuGestureRecognizer];
  }

  v7 = self->_menuGestureRecognizer;

  [(UIGestureRecognizer *)v7 setEnabled:v3];
}

- (BOOL)disableInteraction
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];
  v4 = [v3 disableInteraction];

  return v4;
}

- (void)setDisableInteraction:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v4 = [v5 _layout];
  [v4 setDisableInteraction:v3];
}

- (BOOL)showPredictionBar
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 isPredictionViewControllerVisible];

  return v3;
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

- (void)setShouldUpdateLayoutAutomatically:(BOOL)a3
{
  v3 = a3;
  self->_shouldUpdateLayoutAutomatically = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setShouldUpdateLayoutAutomatically:v3];
}

+ (void)clearLastKeyboardApplicationIdentifier
{
  v2 = qword_1ED49C3E8;
  qword_1ED49C3E8 = 0;

  dword_1ED49C3E0 = 0;
}

+ (id)keyboardApplicationIdentifier
{
  if (([a1 isKeyboardProcess] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"UIKeyboard.m" lineNumber:1688 description:@"keyboardApplicationIdentifier can only be called from keyboard process"];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 inputSystemSourceSession];
  v6 = [v5 documentTraits];

  v7 = [v6 appId];
  if (v7)
  {
    v8 = v7;
LABEL_8:
    objc_storeStrong(&qword_1ED49C3E8, v8);
    goto LABEL_9;
  }

  v9 = [v6 bundleId];
  v10 = v9;
  v11 = qword_1ED49C3E8;
  if (v9)
  {
    v11 = v9;
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
  if (([a1 isKeyboardProcess] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UIKeyboard.m" lineNumber:1700 description:@"keyboardProcessId can only be called from keyboard process"];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 inputSystemSourceSession];
  v6 = [v5 documentTraits];

  v7 = [v6 processId];
  if (v7)
  {
    v8 = v7;
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
  if ([a1 isKeyboardProcess])
  {
    v2 = +[UIKeyboardImpl activeInstance];
    v3 = [v2 inputSystemSourceSession];
    v4 = [v3 documentState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)doesSpacebarAcceptInlineTextCompletion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIKeyboard_doesSpacebarAcceptInlineTextCompletion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_menuGestureRecognizer == a3)
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

- (UIPeripheralAnimationGeometry)geometryForMinimize:(SEL)a3
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
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
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

- (void)setCorrectionLearningAllowed:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setCorrectionLearningAllowed:v3];
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
    v4 = [v9 remoteTextInputPartner];
    [v4 documentTraitsChanged];
  }

  else
  {
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v9 responder];
    v6 = [v5 inputAccessoryView];
    v7 = [v9 inputViews];
    v8 = [v7 inputAccessoryView];

    if (v6 != v8)
    {
      goto LABEL_6;
    }

    v4 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v4 setUpdateAssistantView:1];
    [(UIKeyboard *)self _didChangeKeyplaneWithContext:v4];
  }

LABEL_6:
}

- (id)targetWindow
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegate];
  v4 = [v3 textInputView];
  v5 = [v4 window];

  return v5;
}

- (void)_setRenderConfig:(id)a3
{
  v9 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 superview];

  if (v5 == self)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 setLayoutRenderConfig:v9];

    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 candidateController];
    [v8 _setRenderConfig:v9];
  }
}

- (void)_setPasscodeOutlineAlpha:(double)a3
{
  if ([(UIKeyboard *)self isActive])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v4 = [v5 _layout];
    [v4 setPasscodeOutlineAlpha:a3];
  }
}

- (void)_setDisableUpdateMaskForSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  passcodeObscuringInteraction = self->_passcodeObscuringInteraction;
  if (v3)
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

- (void)_setDisableTouchInput:(BOOL)a3
{
  v3 = a3;
  self->m_disableTouchInput = a3;
  if ([(UIKeyboard *)self isActive])
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v4 = [v5 _layout];
    [v4 setDisableTouchInput:v3];
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
  v3 = [(UIView *)self superview];

  if (v3)
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
  v3 = [(UIView *)self superview];

  if (v3)
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

- (void)setMinimized:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboard *)self isAutomatic])
  {
    v5 = +[UIKeyboardImpl sharedInstance];
    v6 = [v5 textInputTraits];
    v7 = [v6 keyboardAppearance];

    v8 = v7 != 127 && v3;
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
      v11 = [v10 resigningFirstResponder];

      if ((v11 & 1) == 0)
      {
        [(UIKeyboard *)self maximize];
      }
    }
  }
}

- (void)keyboardMinMaximized:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIPeripheralHost sharedInstance];
  [(UIKeyboard *)self geometryForMinimize:v3];
  [v5 postDidShowNotificationForGeometry:v6];

  if (v3)
  {
    [(UIKeyboard *)self geometryChangeDone:0];
  }
}

- (UIPeripheralAnimationGeometry)geometryForImplHeightDelta:(SEL)a3
{
  v6 = [(UIView *)self _keyboardOrientation];
  retstr->bounds.origin.x = 0.0;
  retstr->bounds.origin.y = 0.0;
  [UIKeyboard defaultSizeForInterfaceOrientation:v6];
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
  v11 = v6 - 3;
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
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

- (void)prepareForImplBoundsHeightChange:(double)a3 suppressNotification:(BOOL)a4
{
  if (!a4)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    [(UIKeyboard *)self geometryForImplHeightDelta:a3];
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

- (void)implBoundsHeightChangeDone:(double)a3 suppressNotification:(BOOL)a4
{
  self->m_respondingToImplGeometryChange = 1;
  [(UIView *)self frame];
  [(UIKeyboard *)self setFrame:?];
  self->m_respondingToImplGeometryChange = 0;
  if (!a4)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(UIKeyboard *)self geometryForImplHeightDelta:a3];
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
  v3 = [v2 showsCandidateInline];

  return v3;
}

- (void)setShowsCandidatesInline:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setShowsCandidateInline:v3];
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v4 = a3;
  [(UIKeyboard *)self updateKeyFocusGuides];
  [(UIKeyboard *)self _toggleMenuGestureRecognizer:([(UIKeyboard *)self _isDictationCurrentView]| ([(UIKeyboard *)self cursorLocation]>> 7)) & 1];
  v5 = +[UIPeripheralHost sharedInstance];
  v6 = [v5 automaticAppearanceEnabled];

  if (v6)
  {
    if ([v4 sizeDidChange])
    {
      [v4 size];
      self->_preferredSize.width = v7;
      self->_preferredSize.height = v8;
      [(UIView *)self invalidateIntrinsicContentSize];
      if (([v4 isDynamicLayout] & 1) == 0 && !+[UIKeyboard resizable](UIKeyboard, "resizable"))
      {
        [(UIView *)self frame];
        v10 = v9;
        [v4 size];
        v12 = v11;
        [v4 size];
        [(UIKeyboard *)self setFrame:0.0, v10, v12, v13];
      }
    }

    v14.receiver = self;
    v14.super_class = UIKeyboard;
    [(UIView *)&v14 _didChangeKeyplaneWithContext:v4];
  }
}

+ (BOOL)isSafari
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__UIKeyboard_isSafari__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic() != 1;
  }

  return v4;
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
  v3 = [v2 _layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 pathEffectView];

    if (v5)
    {
      v6 = [v4 pathEffectView];
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
      v6 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setAlpha:0.0];
      [v4 setPathEffectView:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)setServiceRole:(unint64_t)a3
{
  if ([a1 platformSupportsKeyboardServiceRole:?])
  {
    [a1 serviceRole];
    qword_1ED49C498 = a3;
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setServiceRole:a3];
  }
}

+ (void)resetServiceRole
{
  if ([a1 usesInputSystemUI])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 usesInputSystemUIForAutoFillOnly];
  }

  [a1 setServiceRole:v3];
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
  v3 = [v2 _getCurrentKeyplaneName];

  return v3;
}

- (id)_getCurrentKeyboardName
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 _getCurrentKeyboardName];

  return v3;
}

- (id)_getLocalizedInputMode
{
  v2 = +[UIKeyboardImpl sharedInstance];
  v3 = [v2 _getLocalizedInputMode];

  return v3;
}

- (id)_baseKeyForRepresentedString:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _layout];
  v6 = [v5 canProduceString:v3];

  if (v6)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 _layout];
    v9 = [v8 baseKeyForString:v3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_keyplaneForKey:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _layout];
  v6 = [v5 keyplaneForKey:v3];

  return v6;
}

- (id)_keyplaneNamed:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _layout];
  v6 = [v5 keyplaneNamed:v3];

  return v6;
}

- (void)_changeToKeyplane:(id)a3
{
  v3 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v4 = [v5 _layout];
  [v4 changeToKeyplane:v3];
}

- (id)_touchPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 _setNeedsCandidates:1];

  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 _layout];
  v8 = [v7 simulateTouch:{x, y}];

  return v8;
}

- (id)_typeCharacter:(id)a3 withError:(CGPoint)a4 shouldTypeVariants:(BOOL)a5 baseKeyForVariants:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = +[UIKeyboardImpl activeInstance];
  [v11 _setNeedsCandidates:1];

  v12 = +[UIKeyboardImpl activeInstance];
  v13 = [v12 _layout];
  v14 = [v13 simulateTouchForCharacter:v10 errorVector:v7 shouldTypeVariants:v6 baseKeyForVariants:{x, y}];

  return v14;
}

- (void)_setInputMode:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setInputMode:v3];
}

- (void)_setAutocorrects:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 _setAutocorrects:v3];
}

- (id)_getAutocorrection
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _getAutocorrection];

  return v3;
}

- (void)_acceptCurrentCandidate
{
  v3 = +[UIKeyboardImpl activeInstance];
  v2 = [v3 acceptCurrentCandidate];
}

- (BOOL)_hasCandidates
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([v2 _needsCandidates])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v3 = [v4 _hasCandidates];
  }

  return v3;
}

- (int64_t)_positionInCandidateList:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 _positionInCandidateList:v3];

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
    v7 = [(UIView *)self _rootInputWindowController];
    v8 = [v7 hosting];
    v9 = [v8 itemForPurpose:0];

    v10 = [v9 applicator];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 draggableView];
      v13 = [v12 superview];
      [v12 frame];
      [v13 convertRect:self toView:?];
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
  v3 = [v2 usesCandidateSelection];

  v4 = +[UIKeyboardImpl sharedInstance];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 candidateController];
    v7 = +[UIKeyboard activeKeyboard];
    [v6 candidateBarHeightForOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v10 = [v4 traitCollection];

    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v6 systemInputAssistantViewController];
    v7 = v11;
    if (v11 && ([v11 isEmojiSearchResultsVisible] & 1) == 0)
    {
      [v7 preferredHeightForTraitCollection:v10];
    }

    else
    {
      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v10];
    }

    v9 = v12;
  }

  return v9;
}

+ (UIEdgeInsets)keyplanePadding
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];

  [v3 keyplanePadding];
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
  if ([a1 usesInputSystemUI])
  {
    v2 = +[UIKeyboardUIClient sharedInstance];
    v3 = [v2 snapshotViewForOptions:2];
LABEL_3:
    v4 = v3;
    goto LABEL_12;
  }

  v5 = +[UIKeyboardImpl sharedInstance];
  v6 = [v5 usesCandidateSelection];

  if (v6)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      v2 = +[UIKeyboardImpl activeInstance];
      v7 = [v2 candidateController];
      [v7 candidateBar];
    }

    else
    {
      v2 = +[UIKeyboardImpl sharedInstance];
      v7 = [v2 candidateController];
      [v7 snapshot];
    }
    v4 = ;

    goto LABEL_12;
  }

  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v9 = [v8 systemInputAssistantViewController];
  v10 = [v9 view];

  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = v10;
    v2 = v3;
    goto LABEL_3;
  }

  v2 = [v10 snapshotView];

  v11 = [UIView alloc];
  [v2 bounds];
  v4 = [(UIView *)v11 initWithFrame:?];
  [(UIView *)v4 setClipsToBounds:1];
  [(UIView *)v4 addSubview:v2];
LABEL_12:

  return v4;
}

+ (id)snapshotViewForOptions:(unint64_t)a3
{
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"UIKeyboard.m" lineNumber:2993 description:@"snapshotViewForOptions only supports OOP keyboard"];
  }

  v6 = +[UIKeyboardUIClient sharedInstance];
  v7 = [v6 snapshotViewForOptions:a3];

  return v7;
}

+ (void)forceKeyboardAlpha:(double)a3
{
  if ([a1 usesInputSystemUI])
  {
    v4 = +[UIKeyboardUIClient sharedInstance];
    [v4 setKeyboardAlpha:1 force:a3];
  }
}

+ (void)setKeyboardAlpha:(double)a3 remote:(BOOL)a4 force:(BOOL)a5 processId:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v8 = a4;
  v38 = *MEMORY[0x1E69E9840];
  if ([a1 usesInputSystemUI])
  {
    v11 = _UIKeyboardLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Setting keyboard alpha: %f", buf, 0xCu);
    }

    v12 = +[UIKeyboardUIClient sharedInstance];
    [v12 setKeyboardAlpha:v7 force:a3];
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
    if (v15 && v8 && !v7)
    {
      if (a3 == 0.0)
      {
        [qword_1ED49C4A0 addObject:v15];
      }

      else
      {
        [qword_1ED49C4A0 removeObject:v15];
      }
    }

    else if (v15 && !v7 && [qword_1ED49C4A0 containsObject:v15])
    {
      a3 = 0.0;
    }

    v17 = _UIKeyboardLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 134218242;
      *v28 = a3;
      *&v28[8] = 2112;
      *&v28[10] = v16;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Setting keyboard alpha: %f, key=%@", v27, 0x16u);
    }

    if (([a1 isKeyboardProcess] & 1) == 0)
    {
      v18 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      v19 = [v18 keyboardWindow];

      v20 = [v19 rootViewController];
      v21 = [v20 view];
      [v21 setAlpha:a3];
    }

    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v23 = [v22 containerRootController];
    v24 = [v23 view];

    [v24 setAlpha:a3];
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
  v3 = [v2 prewarmsPredictiveCandidates];

  return v3;
}

+ (void)setPredictionViewPrewarmsPredictiveCandidates:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setPrewarmsPredictiveCandidates:v3];
}

+ (BOOL)candidateDisplayIsExtended
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 candidateController];

  LOBYTE(v2) = [v3 isExtended];
  return v2;
}

+ (id)obtainHideDisambiguationCandidatesAssertionForReason:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 candidateController];

  v6 = [v5 obtainHideDisambiguationCandidatesAssertionForReason:v3];

  return v6;
}

+ (id)obtainHideInlineCandidatesAssertionForReason:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 obtainHideInlineCandidatesAssertionForReason:v3];

  return v5;
}

@end