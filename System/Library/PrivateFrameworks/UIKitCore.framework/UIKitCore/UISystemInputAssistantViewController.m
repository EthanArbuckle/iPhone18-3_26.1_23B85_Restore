@interface UISystemInputAssistantViewController
+ (BOOL)shouldShowSystemInputAssistantItems;
+ (double)_defaultPreferredHeightForTraitCollection:(id)a3;
+ (double)_defaultPreferredHeightForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4;
+ (double)floatingAssistantBottomPadding;
+ (int64_t)keyboardOrientation;
- (BOOL)_allowedToShowBarButtonItemsInline:(id)a3;
- (BOOL)_assistantItemsVisibleForResponder:(id)a3;
- (BOOL)_canShowCenterBarButtonItem;
- (BOOL)_centerPredictionViewVisibleForInputDelegate:(id)a3 inputViews:(id)a4;
- (BOOL)_hasCustomCenterViewControllerWidth;
- (BOOL)_hidesCenterViewForActiveWindowingMode;
- (BOOL)_isAssistantPreferenceEnabled;
- (BOOL)_isEmojiInputMode;
- (BOOL)_shouldCheckItemsVisibility;
- (BOOL)_shouldCollapseEmojiSearchView;
- (BOOL)_shouldShowExpandableButtonBarItemsForResponder:(id)a3;
- (BOOL)_usesCustomBackground;
- (BOOL)isEmojiSearchResultsVisible;
- (BOOL)isInputAssistantItemEmpty;
- (BOOL)isVisibleWhenMinimized;
- (BOOL)layoutHasBuiltinAssistantView;
- (BOOL)shouldBeShownForInputDelegate:(id)a3 inputViews:(id)a4;
- (BOOL)shouldShowEmojiSearchViewControllerForInputDelegate:(id)a3;
- (BOOL)shouldUseCustomBackground:(id)a3;
- (BOOL)supportsCompactStyle;
- (BOOL)updateFloatingAssistantRectEdge:(unint64_t)a3 position:(CGPoint)a4;
- (CGRect)barFrame;
- (TUISystemInputAssistantLayout)compactAssistantViewLayout;
- (TUISystemInputAssistantLayout)floatAssistantViewLayout;
- (TUISystemInputAssistantLayoutSplit)splitAssistantViewLayout;
- (TUISystemInputAssistantLayoutStandard)standardAssistantViewLayout;
- (TUISystemInputAssistantStyleCompact)compactStyle;
- (TUISystemInputAssistantStyleFloat)floatStyle;
- (TUISystemInputAssistantStyleStandard)standardStyle;
- (UISystemInputAssistantViewController)init;
- (UITextInputAssistantItem)observedInputAssistantItem;
- (UIView)popoverSourceView;
- (UIViewController)expandedItemsController;
- (double)_buttonBarWidthForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4;
- (double)_centerViewWidthForTraitCollection:(id)a3;
- (double)_centerViewWidthForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4;
- (double)preferredHeightForTraitCollection:(id)a3;
- (double)preferredHeightForTraitCollection:(id)a3 orientation:(int64_t)a4;
- (id)UIAssistantItemForRTIAssistantItem:(id)a3;
- (id)UIGroupsForRTIGroups:(id)a3;
- (id)_currentInputDelegate;
- (id)_customCenterBarButtonItem:(id)a3;
- (id)_customCenterViewController:(id)a3;
- (id)_defaultTintColor;
- (id)_emojiSearchField;
- (id)_inputDelegateAsResponder:(id)a3;
- (id)_popoverViewControllerForBarButtonItemGroup:(id)a3;
- (id)animatableElement;
- (id)candidateViewController;
- (id)compatibilityViewController;
- (id)inputWindowController;
- (id)layoutFromAssistantBarStyle:(int64_t)a3;
- (id)placeholderItemOfWidth:(double)a3;
- (id)predictionViewController;
- (id)styleFromAssistantBarStyle:(int64_t)a3;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_beginObservingInputAssistantItemForRelevantItemChanges:(id)a3;
- (void)_candidatesChanged;
- (void)_collapseBarItems;
- (void)_didChangePlacementOrInputSourceNotification:(id)a3;
- (void)_didChangeTextEffectsRotationNotification:(id)a3;
- (void)_dismissEmojiSearch;
- (void)_expandBarItems;
- (void)_inputModeChanged:(id)a3;
- (void)_keyboardDictationAvailabilityDidChangeNotification:(id)a3;
- (void)_queueResponderChangedForNewResponder:(id)a3;
- (void)_registerForAssistantViewNotifications;
- (void)_responderCapabilitiesChangedNotification:(id)a3;
- (void)_responderChangedNotification:(id)a3;
- (void)_showCandidates;
- (void)_updateCenterViewWidthAndRenderConfig;
- (void)_updateCenterViewWidthForInterfaceOrientation:(int64_t)a3;
- (void)_updateLanguageIndicatorPointerInteractionAndImage;
- (void)_updateSystemInputAssistantViewStylingForInputAssistantItem:(id)a3;
- (void)_updateViewsForAssistantBarStyle:(int64_t)a3;
- (void)_willChangePlacementNotification:(id)a3;
- (void)_willChangeTextEffectsRotationNotification:(id)a3;
- (void)_writingDirectionChanged:(id)a3;
- (void)applyRemoteAssistantItem:(id)a3;
- (void)autocorrectionController:(id)a3 didUpdateAutocorrectionList:(id)a4;
- (void)automaticallySetCenterViewControllerBasedOnInputDelegate:(id)a3;
- (void)dealloc;
- (void)dismissDictationMenuIfNeeded;
- (void)dismissKeyboardItemIfNeeded;
- (void)dismissLanguageIndicatorMenuIfNeeded;
- (void)emojiSearchTextFieldDidBecomeActive:(id)a3;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeActive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3;
- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4;
- (void)loadView;
- (void)maskInputAssistantView:(BOOL)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preferencesControllerChanged:(id)a3;
- (void)prepareForFloating:(BOOL)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)prepareTransition:(id)a3 animated:(BOOL)a4;
- (void)setCenterViewController:(id)a3;
- (void)setInputAssistantButtonItemsForResponder:(id)a3;
- (void)setNeedsValidation;
- (void)setOverrideSafeAreaInsets;
- (void)setRemoteAssistantViewInfo:(id)a3;
- (void)showEmojiSearch:(BOOL)a3;
- (void)systemInputAssistantView:(id)a3 wantsToShowCollapsedItemGroup:(id)a4 fromView:(id)a5;
- (void)updateAssistantBarStyle:(int64_t)a3;
- (void)updateAssistantPreferences;
- (void)updateCenterViewVisibilityStateForInputDelegate:(id)a3;
- (void)updateRemoteAssistantViewHidden;
- (void)viewDidLoad;
@end

@implementation UISystemInputAssistantViewController

- (id)_currentInputDelegate
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegateManager];
  v4 = [v3 keyInputDelegate];

  return v4;
}

- (void)updateAssistantPreferences
{
  if (![(UISystemInputAssistantViewController *)self hasCheckedPreferences]&& ![(UISystemInputAssistantViewController *)self currentlyCheckingPreferences])
  {
    [(UISystemInputAssistantViewController *)self setCurrentlyCheckingPreferences:1];
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__UISystemInputAssistantViewController_updateAssistantPreferences__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (TUISystemInputAssistantStyleStandard)standardStyle
{
  standardStyle = self->_standardStyle;
  if (!standardStyle)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUISystemInputAssistantStyleStandardClass_softClass;
    v13 = getTUISystemInputAssistantStyleStandardClass_softClass;
    if (!getTUISystemInputAssistantStyleStandardClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUISystemInputAssistantStyleStandardClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUISystemInputAssistantStyleStandardClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_standardStyle;
    self->_standardStyle = v6;

    standardStyle = self->_standardStyle;
  }

  return standardStyle;
}

- (BOOL)_hidesCenterViewForActiveWindowingMode
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 useVisualModeWindowed];

  v6 = [(UIViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 traitCollection];
  v9 = [v8 horizontalSizeClass] == 1;

  return v9 & v5;
}

- (BOOL)isInputAssistantItemEmpty
{
  v3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  if ([v3 isInputAssistantItemHidden])
  {
    v4 = [(UISystemInputAssistantViewController *)self centerViewController];
    v5 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v6 = [v4 isVisibleForInputDelegate:v5 inputViews:0] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)updateRemoteAssistantViewHidden
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  assistantBarStyle = self->_assistantBarStyle;
  v5 = assistantBarStyle > 1 || v3 == 1;
  if (v3 == 1 && assistantBarStyle <= 1)
  {
    v6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v5 = [v6 showsButtonBarItemsInline] ^ 1;
  }

  remoteAssistantView = self->_remoteAssistantView;

  [(UIView *)remoteAssistantView setHidden:v5];
}

- (void)setOverrideSafeAreaInsets
{
  v3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return;
  }

  if (!+[UIKeyboard usesInputSystemUI])
  {
    v16 = +[UIKeyboardImpl activeInstance];
    if ([v16 isMinimized] && (_UISolariumEnabled() & 1) != 0)
    {
      v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v18 = [v17 preferencesActions];
      v19 = [v18 colorAdaptiveKeyboardEnabled];

      v14 = 0.0;
      if (v19)
      {
        [objc_opt_class() floatingAssistantBottomPadding];
        v15 = v20;
LABEL_13:
        v10 = 0.0;
        v8 = 0.0;
        goto LABEL_14;
      }
    }

    else
    {

      v14 = 0.0;
    }

LABEL_12:
    v15 = 0.0;
    goto LABEL_13;
  }

  if (!self->_assistantBarStyle)
  {
    v21 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v14 = 0.0;
    [v21 setSafeAreaInsets:{0.0, 0.0, 0.0, 0.0}];

    goto LABEL_12;
  }

  v5 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v6 = [v5 _window];
  [v6 safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v12 - *&UIFloatingAssistantBottomMargin;
LABEL_14:
  v22 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v22 setOverrideSafeAreaInsets:{v8, v10, v15, v14}];
}

- (BOOL)layoutHasBuiltinAssistantView
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_4;
  }

  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 _layout];
  v5 = [v4 candidateList];
  if (!v5)
  {
    LOBYTE(v8) = 0;
LABEL_7:

    return v8;
  }

  v6 = v5;
  v7 = +[UIKeyboardImpl isSplit];

  if (!v7)
  {
    v3 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v4 = [v3 emojiSearchView];
    v9 = [v4 searchTextField];
    v8 = [v9 isActive] ^ 1;

    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v8) = 0;
  return v8;
}

- (BOOL)supportsCompactStyle
{
  v3 = [(UISystemInputAssistantViewController *)self centerViewController];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 allowsCompactAssistantBar];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  v6 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v5];

  if (v6 && ([v6 _writingToolsWantsKeyboardSuppression] & 1) != 0)
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_canShowCenterBarButtonItem
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];

  v6 = [(UISystemInputAssistantViewController *)self _allowedToShowBarButtonItemsInline:v5];
  return v6;
}

+ (BOOL)shouldShowSystemInputAssistantItems
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (UISystemInputAssistantViewController)init
{
  v6.receiver = self;
  v6.super_class = UISystemInputAssistantViewController;
  v2 = [(UIInputViewController *)&v6 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(UISystemInputAssistantViewController *)v2 setCachedPredictiveViewControllers:v3];

    v2->_hasCheckedPreferences = 0;
    v2->_currentlyCheckingPreferences = 0;
    [(UISystemInputAssistantViewController *)v2 updateAssistantPreferences];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
  }

  return v2;
}

- (void)loadView
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getTUISystemInputAssistantViewClass_softClass;
  v12 = getTUISystemInputAssistantViewClass_softClass;
  if (!getTUISystemInputAssistantViewClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getTUISystemInputAssistantViewClass_block_invoke;
    v8[3] = &unk_1E70F2F20;
    v8[4] = &v9;
    __getTUISystemInputAssistantViewClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setBackgroundVisible:0];
  [v6 setDelegate:self];
  [v6 setAccessibilityIdentifier:@"SystemInputAssistantView"];
  v7 = [v6 layer];
  [v7 addObserver:self forKeyPath:@"bounds" options:3 context:0];

  [(UISystemInputAssistantViewController *)self setAssistantViewCanAnimate:objc_opt_respondsToSelector() & 1];
  [(UIInputViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  [(UISystemInputAssistantViewController *)self _registerForAssistantViewNotifications];
  v5 = [(UIViewController *)self view];
  v3 = [v5 _inheritedRenderConfig];
  v4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v4 setRenderConfig:v3];
}

- (void)_registerForAssistantViewNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__responderChangedNotification_ name:@"UITextInputResponderDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__responderCapabilitiesChangedNotification_ name:@"UITextInputResponderCapabilitiesChangedNotification" object:0];
  [v3 addObserver:self selector:sel__responderChangedNotification_ name:@"UIKeyboardLayoutDidChangedNotification" object:0];
  [v3 addObserver:self selector:sel__showCandidates name:@"UIKeyboardCandidatesAvailable" object:0];
  [v3 addObserver:self selector:sel__collapseBarItems name:@"UIKeyboardPredictionsAvailable" object:0];
  [v3 addObserver:self selector:sel__willChangeTextEffectsRotationNotification_ name:@"UITextEffectsWindowViewControllerWillRotateNotification" object:0];
  [v3 addObserver:self selector:sel__didChangeTextEffectsRotationNotification_ name:@"UITextEffectsWindowViewControllerDidRotateNotification" object:0];
  [v3 addObserver:self selector:sel__didChangePlacementOrInputSourceNotification_ name:@"UITextInputSourceDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__willChangePlacementNotification_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  [v3 addObserver:self selector:sel__didChangePlacementOrInputSourceNotification_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
  [v3 addObserver:self selector:sel__expandBarItems name:@"UIKeyboardShouldExpandAssistantBarItems" object:0];
  [v3 addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v3 addObserver:self selector:sel__candidatesChanged name:@"UIKeyboardCandidatesChanged" object:0];
  [v3 addObserver:self selector:sel__inputModeChanged_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__writingDirectionChanged_ name:0x1EFB79210 object:0];
  [v3 addObserver:self selector:sel__textDidChange name:@"UITextFieldTextDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__textDidChange name:@"UITextViewTextDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__willShowKeyboardSwitcher name:0x1EFB791F0 object:0];
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    [v3 addObserver:self selector:sel__keyboardDictationAvailabilityDidChangeNotification_ name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
  }
}

- (id)inputWindowController
{
  if (+[UIKeyboard inputUIOOP])
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 containerRootController];
  }

  else
  {
    v5 = [(UIViewController *)self view];
    v4 = [v5 _rootInputWindowController];

    if (v4)
    {
      goto LABEL_6;
    }

    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v6 = [v3 keyboardWindow];
    v4 = [v6 rootViewController];
  }

LABEL_6:

  return v4;
}

- (BOOL)_isEmojiInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isEmojiInputMode];

  return v4;
}

- (BOOL)_hasCustomCenterViewControllerWidth
{
  v2 = [(UISystemInputAssistantViewController *)self _customCenterViewController:0];
  if (v2)
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)_isAssistantPreferenceEnabled
{
  if (![(UISystemInputAssistantViewController *)self hasCheckedPreferences])
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v4 = [v3 preferencesActions];
    -[UISystemInputAssistantViewController setAssistantEnabledPreference:](self, "setAssistantEnabledPreference:", [v4 BOOLForPreferenceKey:*MEMORY[0x1E69D97F8]]);

    [(UISystemInputAssistantViewController *)self setHasCheckedPreferences:1];
  }

  return [(UISystemInputAssistantViewController *)self assistantEnabledPreference];
}

+ (int64_t)keyboardOrientation
{
  if (+[UIKeyboard usesInputSystemUI])
  {

    return +[UIKeyboardSceneDelegate interfaceOrientation];
  }

  else
  {
    v3 = +[UIKeyboard activeKeyboard];
    v4 = [v3 interfaceOrientation];

    return v4;
  }
}

- (TUISystemInputAssistantLayoutStandard)standardAssistantViewLayout
{
  if (!self->_standardAssistantViewLayout)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getTUISystemInputAssistantLayoutStandardClass_softClass;
    v18 = getTUISystemInputAssistantLayoutStandardClass_softClass;
    if (!getTUISystemInputAssistantLayoutStandardClass_softClass)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getTUISystemInputAssistantLayoutStandardClass_block_invoke;
      v14[3] = &unk_1E70F2F20;
      v14[4] = &v15;
      __getTUISystemInputAssistantLayoutStandardClass_block_invoke(v14);
      v3 = v16[3];
    }

    v4 = v3;
    _Block_object_dispose(&v15, 8);
    v5 = objc_alloc_init(v3);
    standardAssistantViewLayout = self->_standardAssistantViewLayout;
    self->_standardAssistantViewLayout = v5;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (+[UIKeyboardImpl isSplit])
    {
      v8 = [v7 centerFilled] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    [(TUISystemInputAssistantLayoutStandard *)self->_standardAssistantViewLayout setIsSplit:v8];
    [v7 frameForKeylayoutName:@"split-left"];
    [(TUISystemInputAssistantLayoutStandard *)self->_standardAssistantViewLayout setLeftSplitWidth:v9];
    [v7 frameForKeylayoutName:@"split-right"];
    [(TUISystemInputAssistantLayoutStandard *)self->_standardAssistantViewLayout setRightSplitWidth:v10];
  }

  v11 = self->_standardAssistantViewLayout;
  v12 = v11;

  return v11;
}

void __66__UISystemInputAssistantViewController_updateAssistantPreferences__block_invoke(uint64_t a1)
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  [*(a1 + 32) setAssistantEnabledPreference:{objc_msgSend(v3, "BOOLForPreferenceKey:", *MEMORY[0x1E69D97F8])}];

  if (os_variant_has_internal_diagnostics())
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 preferencesActions];
    [*(a1 + 32) setAssistantOniPhonePreference:{objc_msgSend(v5, "BOOLForPreferenceKey:", @"KeyboardAssistantOniPhone"}];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UISystemInputAssistantViewController_updateAssistantPreferences__block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)predictionViewController
{
  v3 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    v6 = [(UISystemInputAssistantViewController *)self predictiveViewController];
    goto LABEL_6;
  }

  v4 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)isEmojiSearchResultsVisible
{
  v3 = [(UISystemInputAssistantViewController *)self centerViewController];
  v4 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  if (v3 == v4)
  {
    v6 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    v5 = [v6 predictionViewVisible] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (UITextInputAssistantItem)observedInputAssistantItem
{
  WeakRetained = objc_loadWeakRetained(&self->_observedInputAssistantItem);

  return WeakRetained;
}

- (id)_defaultTintColor
{
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v3 = [v2 renderConfig];
  if ([v3 lightKeyboard])
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v4 = ;

  return v4;
}

- (void)_updateLanguageIndicatorPointerInteractionAndImage
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v4 = [v3 placement];
  v5 = UIAssistantViewPlacement(v4);

  v21 = v5;
  v22 = [v5 isMemberOfClass:objc_opt_class()];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v7 = [v6 systemInputAssistantItem];
  v8 = [v7 leadingBarButtonGroups];

  v24 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = [v10 barButtonItems];
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              if ([v16 tag] == 1735287116)
              {
                v17 = [v16 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v19 = [v16 view];
                  [v19 setPointerInteractionEnabled:v22 ^ 1u];

                  v20 = +[UIAssistantBarButtonItemProvider languageIndicatorImage];
                  [v16 setImage:v20];

                  goto LABEL_17;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v24 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }
}

- (void)_updateCenterViewWidthAndRenderConfig
{
  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  v5 = [(UIViewController *)self view];
  v3 = [v5 _inheritedRenderConfig];
  v4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v4 setRenderConfig:v3];
}

- (id)animatableElement
{
  if ([(UISystemInputAssistantViewController *)self assistantViewCanAnimate])
  {
    v3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)expandedItemsController
{
  WeakRetained = objc_loadWeakRetained(&self->_expandedItemsController);

  return WeakRetained;
}

uint64_t __66__UISystemInputAssistantViewController_updateAssistantPreferences__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentlyCheckingPreferences:0];
  v2 = *(a1 + 32);

  return [v2 setHasCheckedPreferences:1];
}

- (void)_dismissEmojiSearch
{
  v3 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  v4 = [v3 emojiSearchView];
  v5 = [v4 searchTextField];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v8 = [v7 emojiSearchView];
    v9 = [v8 searchTextField];
    [v9 resignFirstResponder];
  }

  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    v10 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
    [v10 _setLocalOverrideTraitCollection:0];
  }
}

- (void)dealloc
{
  [(UISystemInputAssistantViewController *)self _beginObservingInputAssistantItemForRelevantItemChanges:0];
  v3 = [(UIViewController *)self view];
  v4 = [v3 layer];
  [v4 removeObserver:self forKeyPath:@"bounds"];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

  v6.receiver = self;
  v6.super_class = UISystemInputAssistantViewController;
  [(UIInputViewController *)&v6 dealloc];
}

- (CGRect)barFrame
{
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v2 containerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (double)_defaultPreferredHeightForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[UIKeyboard activeKeyboard];
  v7 = [v6 _rootInputWindowController];
  v8 = [v7 placement];
  v9 = UIAssistantViewPlacement(v8);

  if (!v9 || ([v9 isFloating] & 1) == 0 && !objc_msgSend(v9, "isHiddenForFloatingTransition"))
  {
    v11 = [v5 userInterfaceIdiom];
    v12 = +[UIKeyboardImpl keyboardScreen];
    v13 = [UIKBScreenTraits traitsWithScreen:v12 orientation:a4];

    if (v11 == -1)
    {
      v11 = [v13 idiom];
    }

    v14 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v13, v11, 0);
    if ((v14 - 23) < 4 || (v15 = v14, v14 == 1))
    {
      v16 = 1;
LABEL_10:
      v10 = __103__UISystemInputAssistantViewController__defaultPreferredHeightForTraitCollection_interfaceOrientation___block_invoke(v16);
LABEL_11:

      goto LABEL_12;
    }

    if (![v13 idiom])
    {
      v18 = +[UIKeyboardImpl activeInstance];
      v19 = [v18 isMinimized];

      if (v19)
      {
        v20 = __103__UISystemInputAssistantViewController__defaultPreferredHeightForTraitCollection_interfaceOrientation___block_invoke(0);
        v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v22 = [v21 existingContainerWindow];
        [v22 safeAreaInsets];
        v10 = v20 + v23;
LABEL_16:

        goto LABEL_11;
      }
    }

    v24 = +[UIKeyboardImpl activeInstance];
    v25 = [v24 shouldShowCandidateBar];

    if (!v25)
    {
      if ((a4 - 3) <= 1)
      {
        v16 = 0;
        goto LABEL_10;
      }

      if (v15 == 22)
      {
        if (!_UISolariumEnabled())
        {
          v10 = 45.0;
          goto LABEL_11;
        }

        v21 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v22 = [v21 preferencesActions];
        if ([v22 colorAdaptiveKeyboardEnabled])
        {
          v10 = 44.0;
        }

        else
        {
          v10 = 45.0;
        }

        goto LABEL_16;
      }

      if (v15 != 21)
      {
        v16 = v15;
        goto LABEL_10;
      }

      if (_UISolariumEnabled())
      {
        v48 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v49 = [v48 preferencesActions];
        [v49 colorAdaptiveKeyboardEnabled];
      }

      *&v50 = 44.0;
LABEL_44:
      v10 = *&v50;
      goto LABEL_11;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v27 = +[UIKeyboardImpl activeInstance];
    v28 = [v27 candidateController];
    v29 = [v28 screenTraits];
    v30 = [v29 idiom];
    if (!has_internal_diagnostics)
    {
      if (v30 == 1)
      {
LABEL_24:

LABEL_25:
        v37 = *(__UILogGetCategoryCachedImpl("Assert", &_defaultPreferredHeightForTraitCollection_interfaceOrientation____s_category) + 8);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v38 = v37;
        v39 = +[UIKeyboardImpl activeInstance];
        v40 = [v39 candidateController];
        v41 = [v40 screenTraits];
        *buf = 134218240;
        v106 = v15;
        v107 = 2048;
        v108 = [v41 idiom];
        _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "%ld != %ld", buf, 0x16u);

        goto LABEL_27;
      }

      v99 = v28;
      v102 = v27;
      v31 = +[UIKeyboardImpl activeInstance];
      v32 = [v31 candidateController];
      v33 = [v32 screenTraits];
      if ([v33 idiom] == 24)
      {
LABEL_23:

        v28 = v99;
        v27 = v102;
        goto LABEL_24;
      }

      v90 = v32;
      v93 = v31;
      v96 = v29;
      v34 = +[UIKeyboardImpl activeInstance];
      v35 = [v34 candidateController];
      v36 = [v35 screenTraits];
      if ([v36 idiom] == 25)
      {

        v31 = v93;
        v29 = v96;
        v32 = v90;
        goto LABEL_23;
      }

      v79 = v36;
      v82 = v35;
      v88 = v34;
      v76 = +[UIKeyboardImpl activeInstance];
      v72 = [v76 candidateController];
      v55 = [v72 screenTraits];
      if ([v55 idiom] == 26)
      {
        v85 = 1;
      }

      else
      {
        v70 = +[UIKeyboardImpl activeInstance];
        v65 = [v70 candidateController];
        v66 = [v65 screenTraits];
        v85 = [v66 idiom] == 23;
      }

      if (v85)
      {
        goto LABEL_25;
      }

LABEL_29:
      v42 = +[UIKeyboardImpl activeInstance];
      v43 = [v42 candidateController];
      v44 = [v43 screenTraits];
      if ([v44 idiom] == 1)
      {
      }

      else
      {
        v103 = v42;
        v45 = +[UIKeyboardImpl activeInstance];
        v46 = [v45 candidateController];
        v47 = [v46 screenTraits];
        if ([v47 idiom] == 24)
        {
        }

        else
        {
          v97 = v44;
          v100 = v43;
          v94 = v45;
          v51 = +[UIKeyboardImpl activeInstance];
          v52 = [v51 candidateController];
          v53 = [v52 screenTraits];
          if ([v53 idiom] != 25)
          {
            v81 = v53;
            v84 = v52;
            v91 = v51;
            v78 = +[UIKeyboardImpl activeInstance];
            v75 = [v78 candidateController];
            v54 = [v75 screenTraits];
            if ([v54 idiom] == 26)
            {
              v87 = 1;
            }

            else
            {
              v73 = +[UIKeyboardImpl activeInstance];
              v56 = [v73 candidateController];
              v57 = [v56 screenTraits];
              v87 = [v57 idiom] == 23;
            }

            if (!v87)
            {
              v58 = +[UIKeyboardImpl activeInstance];
              v59 = [v58 candidateController];
              [v59 candidateBarHeight];
              v61 = v60;
              v62 = +[UIKeyboardImpl activeInstance];
              v63 = [v62 candidateController];
              [v63 candidateBarEdgeInsetsForOrientation:a4];
              v10 = v61 + v64;

              goto LABEL_11;
            }

            goto LABEL_43;
          }
        }
      }

LABEL_43:
      *&v50 = 42.0;
      goto LABEL_44;
    }

    if (v30 != 1)
    {
      v104 = +[UIKeyboardImpl activeInstance];
      v101 = [v104 candidateController];
      v67 = [v101 screenTraits];
      if ([v67 idiom] != 24)
      {
        v98 = +[UIKeyboardImpl activeInstance];
        v95 = [v98 candidateController];
        v92 = [v95 screenTraits];
        if ([v92 idiom] != 25)
        {
          v89 = +[UIKeyboardImpl activeInstance];
          v83 = [v89 candidateController];
          v80 = [v83 screenTraits];
          if ([v80 idiom] == 26)
          {
            v86 = 1;
          }

          else
          {
            v77 = +[UIKeyboardImpl activeInstance];
            v74 = [v77 candidateController];
            v71 = [v74 screenTraits];
            v86 = [v71 idiom] == 23;
          }

          if (!v86)
          {
            goto LABEL_29;
          }

LABEL_67:
          v39 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_28;
          }

          v40 = +[UIKeyboardImpl activeInstance];
          v68 = [v40 candidateController];
          v69 = [v68 screenTraits];
          *buf = 134218240;
          v106 = v15;
          v107 = 2048;
          v108 = [v69 idiom];
          _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "%ld != %ld", buf, 0x16u);

LABEL_27:
LABEL_28:

          goto LABEL_29;
        }
      }
    }

    goto LABEL_67;
  }

  v10 = __103__UISystemInputAssistantViewController__defaultPreferredHeightForTraitCollection_interfaceOrientation___block_invoke(0);
LABEL_12:

  return v10;
}

double __103__UISystemInputAssistantViewController__defaultPreferredHeightForTraitCollection_interfaceOrientation___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 <= 1)
  {
    if (!a1)
    {
      if (!_UISolariumEnabled())
      {
        return 38.0;
      }

      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v10 = [v9 preferencesActions];
      if ([v10 colorAdaptiveKeyboardEnabled])
      {
        v2 = 44.0;
      }

      else
      {
        v2 = 38.0;
      }

      return v2;
    }

    if (a1 == 1)
    {
      v4 = +[UIKeyboardImpl activeInstance];
      if ([v4 isMinimized] && (_UISolariumEnabled() & 1) != 0)
      {
        v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v6 = [v5 preferencesActions];
        v7 = [v6 colorAdaptiveKeyboardEnabled];

        if (v7)
        {
          return 44.0;
        }

        else
        {
          return 55.0;
        }
      }

      else
      {

        return 55.0;
      }
    }
  }

  else
  {
    v2 = 0.0;
    if ((a1 - 2) < 4 || a1 == 8)
    {
      return v2;
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = 134217984;
      v13 = a1;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unexpected user interface idiom: %ld", &v12, 0xCu);
    }

    return -1.0;
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &kUISystemInputAssistantCenterViewLandscapeWidth_block_invoke___s_category) + 8);
    v2 = -1.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = a1;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected user interface idiom: %ld", &v12, 0xCu);
    }
  }

  return v2;
}

+ (double)_defaultPreferredHeightForTraitCollection:(id)a3
{
  v4 = a3;
  [objc_opt_class() _defaultPreferredHeightForTraitCollection:v4 interfaceOrientation:{objc_msgSend(a1, "keyboardOrientation")}];
  v6 = v5;

  return v6;
}

- (id)_inputDelegateAsResponder:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (([v3 __isKindOfUIResponder] & 1) == 0)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      v5 = [v6 delegateAsResponder];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)preferencesControllerChanged:(id)a3
{
  [(UISystemInputAssistantViewController *)self setHasCheckedPreferences:0];

  [(UISystemInputAssistantViewController *)self updateAssistantPreferences];
}

- (BOOL)_shouldCheckItemsVisibility
{
  v2 = +[UIKeyboardImpl activeInstance];
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v5 visualModeManager];
  v4 = [v3 useVisualModeWindowed];

  LOBYTE(v5) = 0;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && v4)
  {
    if ([v2 isMinimized])
    {
      LODWORD(v5) = [v2 _showsScribbleIconsInAssistantView] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_assistantItemsVisibleForResponder:(id)a3
{
  v4 = a3;
  if (([v4 _isDisplayingWritingToolsSessionInUCB] & 1) == 0)
  {
    v6 = [(UISystemInputAssistantViewController *)self _isAssistantPreferenceEnabled];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__69;
    v37[4] = __Block_byref_object_dispose__69;
    v38 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__UISystemInputAssistantViewController__assistantItemsVisibleForResponder___block_invoke;
    aBlock[3] = &unk_1E7106408;
    v36 = v37;
    v7 = v4;
    v35 = v7;
    v8 = _Block_copy(aBlock);
    v31 = v8;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v10 = v8[2]();
      v9 = [v10 allowsHidingShortcuts] ^ 1;
    }

    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 _showsScribbleIconsInAssistantView];

    v13 = [(UISystemInputAssistantViewController *)self inputWindowController];
    v14 = [v13 placement];
    if ([v14 isFloating])
    {
      v15 = 1;
    }

    else
    {
      v16 = [(UISystemInputAssistantViewController *)self inputWindowController];
      v17 = [v16 placement];
      v15 = [v17 isHiddenForFloatingTransition];
    }

    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && +[UIKeyboard usesInputSystemUI])
    {
      if ((+[UIKeyboard usesLocalKeyboard]& v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (!v9)
    {
      goto LABEL_21;
    }

    v18 = +[UIDevice currentDevice];
    if ([v18 userInterfaceIdiom] == 6)
    {
    }

    else
    {
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {

        if (((v12 ^ 1) & v15) != 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v9 = [(UISystemInputAssistantViewController *)self _shouldShowExpandableButtonBarItemsForResponder:v7];
    }

LABEL_21:
    v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v20 = [v19 visualModeManager];
    v21 = [v20 useVisualModeWindowed];

    if (!v9)
    {
      goto LABEL_26;
    }

    if (v21)
    {
      v22 = [v7 inputView];
      if (v22)
      {
        v5 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v24 = [v23 hasCustomInputViewController];

    if (v24)
    {
LABEL_26:
      v5 = 0;
LABEL_40:

      _Block_object_dispose(v37, 8);
      goto LABEL_41;
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__UISystemInputAssistantViewController__assistantItemsVisibleForResponder___block_invoke_3;
    v32[3] = &unk_1E7106450;
    v33 = &__block_literal_global_69_0;
    v25 = _Block_copy(v32);
    v26 = v31[2]();
    if ([(UISystemInputAssistantViewController *)self _shouldCheckItemsVisibility])
    {
      v27 = [v26 leadingBarButtonGroups];
      if ((v25[2](v25, v27) & 1) == 0)
      {
        v28 = [v26 trailingBarButtonGroups];
        if ((v25[2](v25, v28) & 1) == 0)
        {
          v29 = [v26 _centerBarButtonGroups];
          v5 = v25[2](v25, v29);
LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v27 = [v26 leadingBarButtonGroups];
      if (![v27 count])
      {
        v28 = [v26 trailingBarButtonGroups];
        if (![v28 count])
        {
          v29 = [v26 _centerBarButtonGroups];
          v5 = [v29 count] != 0;
          goto LABEL_36;
        }

LABEL_34:
        v5 = 1;
LABEL_37:

        goto LABEL_38;
      }
    }

    v5 = 1;
LABEL_38:

    v22 = v33;
    goto LABEL_39;
  }

  v5 = 0;
LABEL_41:

  return v5;
}

id __75__UISystemInputAssistantViewController__assistantItemsVisibleForResponder___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = _UIResponderFindInputAssistantItem(*(a1 + 32));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

uint64_t __75__UISystemInputAssistantViewController__assistantItemsVisibleForResponder___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a2 barButtonItems];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHidden])
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

uint64_t __75__UISystemInputAssistantViewController__assistantItemsVisibleForResponder___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 isHidden] & 1) == 0)
        {
          v9 = [v8 representativeItem];
          v10 = [v9 isHidden];

          if (v10 & 1) == 0 && ((*(*(a1 + 32) + 16))())
          {
            v11 = 1;
            goto LABEL_13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)_centerPredictionViewVisibleForInputDelegate:(id)a3 inputViews:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!v8)
  {
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:v6];
  }

  v9 = [(UISystemInputAssistantViewController *)self centerViewController];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(UISystemInputAssistantViewController *)self centerViewController];
    v11 = [v10 requiresKeyboard];

    if (v11)
    {
      v12 = [v7 keyboard];

      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

  v13 = [(UISystemInputAssistantViewController *)self centerViewController];
  v14 = [v13 isVisibleForInputDelegate:v6 inputViews:v7];

  if (v14)
  {
    v15 = 1;
    goto LABEL_13;
  }

LABEL_10:
  if ([(UISystemInputAssistantViewController *)self _canShowCenterBarButtonItem])
  {
    v16 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v6];
    v17 = _UIResponderFindInputAssistantItem(v16);

    v18 = [v17 _centerBarButtonGroups];
    v15 = [v18 count] != 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_13:

  return v15;
}

- (BOOL)shouldBeShownForInputDelegate:(id)a3 inputViews:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v6 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v8 = [v16 inputViews];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 currentInputMode];

  v11 = [v10 identifier];
  v12 = [v11 containsString:@"dictation"];

  v13 = [v10 isEmojiInputMode];
  v14 = [v10 isSpecializedInputMode];
  if (!v14)
  {
    goto LABEL_6;
  }

  if ((+[UIKeyboard isMajelEnabled]& v12) != 1)
  {
    LOBYTE(v15) = 1;
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v4 = +[UIKeyboardImpl activeInstance];
  if (![v4 isMinimized])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
LABEL_6:
    LOBYTE(v15) = v13;
    if (_os_feature_enabled_impl())
    {
      v15 = +[UIKeyboard usesInputSystemUI]& v13;
      if (!v14)
      {
LABEL_8:
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    else if (!v14)
    {
      goto LABEL_8;
    }
  }

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_18:
  v17 = [v8 keyboard];
  if (v17)
  {
  }

  else
  {
    v44 = [v8 inputAccessoryView];
    if (v44)
    {
      v45 = v44;
      v46 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];

      if (v46)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_20:
  if (+[UIKeyboard usesInputSystemUI])
  {
    v18 = +[UIKeyboardImpl activeInstance];
    v19 = [v18 showingEmojiSearch];

    goto LABEL_24;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_46:
    LOBYTE(v43) = 0;
    goto LABEL_47;
  }

  v19 = [v6 keyboardType] == 122;
LABEL_24:
  v20 = (v12 ^ 1) & v15;
  if (!v19)
  {
    v20 = v15;
  }

  if (v20)
  {
    goto LABEL_46;
  }

LABEL_29:
  v21 = [(UISystemInputAssistantViewController *)self _centerPredictionViewVisibleForInputDelegate:v6 inputViews:v8];
  if (!v21 || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v22 = objc_claimAutoreleasedReturnValue(), [v22 _rootInputWindowController], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "placement"), v24 = objc_claimAutoreleasedReturnValue(), UIAssistantViewPlacement(v24), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isFloating"), v25, v24, v23, v22, (v26 & 1) == 0))
  {
    v27 = +[UIKeyboardImpl activeInstance];
    v28 = [v27 _shouldSuppressAssistantBar];

    if (v28)
    {
      goto LABEL_46;
    }
  }

  if (([v6 conformsToProtocol:&unk_1EFE8B2D0] & 1) == 0 && (objc_msgSend(v6, "conformsToProtocol:", &unk_1F016C7B0) & 1) == 0 && !objc_msgSend(v6, "conformsToProtocol:", &unk_1F016C810))
  {
    goto LABEL_46;
  }

  v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v30 = [v29 hideSystemInputAssistantView];

  if (v30)
  {
    goto LABEL_46;
  }

  v31 = +[UIKeyboardImpl activeInstance];
  v32 = [v31 disableInputBars];

  if (v32)
  {
    goto LABEL_46;
  }

  v33 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v34 = [v33 visualModeManager];
  v35 = [v34 useVisualModeWindowed];

  LODWORD(v34) = [(UISystemInputAssistantViewController *)self layoutHasBuiltinAssistantView];
  v36 = +[UIKeyboardImpl activeInstance];
  v37 = [v36 _showsScribbleIconsInAssistantView];

  if (v34)
  {
    if ((v35 & 1) == 0 && !v37)
    {
      goto LABEL_46;
    }
  }

  v38 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v6];
  v39 = [(UISystemInputAssistantViewController *)self _assistantItemsVisibleForResponder:v38];

  v40 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v41 = [v40 placement];
  v42 = UIAssistantViewPlacement(v41);

  v43 = v21 || v39;
  if ([v42 isFloatingAssistantView] && ((v43 | v35 & ~v37) & 1) == 0)
  {
    LOBYTE(v43) = +[UIAssistantBarButtonItemProvider isKeyboardGroupVisible];
  }

LABEL_47:
  return v43;
}

- (BOOL)shouldShowEmojiSearchViewControllerForInputDelegate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl() && !+[UIKeyboard usesInputSystemUI])
  {
    if (!v4)
    {
      v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    }

    v7 = [(UISystemInputAssistantViewController *)self _isEmojiInputMode];
    v8 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v9 = [v8 emojiSearchView];
    v10 = [v9 searchTextField];
    v5 = [v10 isActive];

    if (v7)
    {
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = [v11 activeInputModes];
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([*(*(&v17 + 1) + 8 * i) supportsEmojiSearch])
            {
              v5 = 1;
              goto LABEL_18;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v12 = [v11 currentSystemInputModeExcludingEmoji:1];
      v5 = [v12 supportsEmojiSearch];
LABEL_18:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldCollapseEmojiSearchView
{
  v2 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  v3 = [v2 emojiSearchView];
  v4 = [v3 searchTextField];
  v5 = [v4 isActive];

  return v5 ^ 1;
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  v4 = a3;
  -[UISystemInputAssistantViewController preferredHeightForTraitCollection:orientation:](self, "preferredHeightForTraitCollection:orientation:", v4, [objc_opt_class() keyboardOrientation]);
  v6 = v5;

  return v6;
}

- (double)preferredHeightForTraitCollection:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  v7 = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!v7)
  {
    v8 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:v8];
  }

  v9 = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!v9 || (-[UISystemInputAssistantViewController centerViewController](self, "centerViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 preferredHeightForTraitCollection:v6], v12 = v11, v10, v12 == -1.0))
  {
    [objc_opt_class() _defaultPreferredHeightForTraitCollection:v6 interfaceOrientation:a4];
    v12 = v13;
  }

  remoteAssistantView = self->_remoteAssistantView;
  if (remoteAssistantView)
  {
    if (![(UIView *)remoteAssistantView isHidden])
    {
      [(UIRemoteInputViewInfo *)self->_remoteAssistantViewInfo size];
      if (v12 < v15)
      {
        v12 = v15;
      }
    }
  }

  return v12;
}

- (void)_showCandidates
{
  v3 = [(UISystemInputAssistantViewController *)self candidateViewController];

  if (v3)
  {
    v4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v4 setButtonBarItemsExpanded:0 animated:0];
  }
}

- (void)_candidatesChanged
{
  if ([(UISystemInputAssistantViewController *)self shouldShowEmojiSearchViewControllerForInputDelegate:0])
  {
    v3 = [(UISystemInputAssistantViewController *)self candidateViewController];

    if (v3)
    {
      v4 = +[UIKeyboardImpl activeInstance];
      v10 = [v4 candidateController];

      v7 = 0;
      if ([v10 hasCandidates])
      {
        v5 = +[UIKeyboardImpl activeInstance];
        v6 = [v5 hasMarkedText];

        if (v6)
        {
          v7 = 1;
        }
      }

      v8 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      v9 = [v8 emojiSearchView];
      [v9 setPredictionViewVisible:v7 animated:1];
    }
  }
}

- (void)_inputModeChanged:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  v6 = [v5 emojiSearchView];
  v7 = [v6 searchTextField];

  v8 = [v7 isActive];
  if ([(UISystemInputAssistantViewController *)self _isEmojiInputMode])
  {
    [(UISystemInputAssistantViewController *)self _dismissEmojiSearch];
  }

  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:@"UITextInputFromInputModeKey"];

  if ([v10 isEmojiInputMode] & 1) == 0 && ((-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") | v8))
  {
    v19 = @"UIKeyboardSwitchToEmojiIsEmojiInputMode";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode")}];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"UIKeyboardSwitchToEmoji" object:0 userInfo:v12];

    v14 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    self->_isButtonBarItemsInlineVisible = [v14 showsButtonBarItemsInline];

    v15 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v15 setShowsButtonBarItemsInline:0];

LABEL_12:
    goto LABEL_14;
  }

  if ([v10 isEmojiInputMode] && ((-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") | v8) & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

    isButtonBarItemsInlineVisible = self->_isButtonBarItemsInlineVisible;
    v18 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v18 setShowsButtonBarItemsInline:isButtonBarItemsInlineVisible];

    self->_postedSwitchFromEmojiNotification = 1;
    goto LABEL_14;
  }

  if ([v10 isEmojiInputMode] && !-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") && ((v8 ^ 1) & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"UIKeyboardSwitchToEmojiSearch" object:0];
    goto LABEL_12;
  }

LABEL_14:
  [(UISystemInputAssistantViewController *)self dismissKeyboardItemIfNeeded];
  [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
}

- (void)_writingDirectionChanged:(id)a3
{
  v17 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];

  if (([v5 isEmojiInputMode] & 1) == 0)
  {
    v6 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    v7 = [v6 searchTextField];
    v8 = [v7 isActive];

    if (!v8)
    {
      if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    v9 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    v10 = [v9 searchTextField];
    v11 = [v10 isActive];

    if ((v11 & 1) == 0)
    {
LABEL_7:
      v15 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
      [v15 _setLocalOverrideTraitCollection:0];
      goto LABEL_8;
    }
  }

  v12 = [v17 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"writingDirection"];
  v14 = [v13 intValue];

  v15 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
  v16 = [UITraitCollection traitCollectionWithLayoutDirection:v14 == 1];
  [v15 _setLocalOverrideTraitCollection:v16];

LABEL_8:
LABEL_9:
}

- (void)_expandBarItems
{
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v2 setButtonBarItemsExpanded:1 animated:1];
}

- (void)_collapseBarItems
{
  v3 = [(UISystemInputAssistantViewController *)self predictionViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v6 = [v5 centerViewHidden];

    if ((v6 & 1) == 0)
    {
      v7 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [v7 setButtonBarItemsExpanded:0 animated:1];
    }
  }
}

- (TUISystemInputAssistantLayout)floatAssistantViewLayout
{
  floatAssistantViewLayout = self->_floatAssistantViewLayout;
  if (!floatAssistantViewLayout)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUISystemInputAssistantLayoutFloatClass_softClass;
    v13 = getTUISystemInputAssistantLayoutFloatClass_softClass;
    if (!getTUISystemInputAssistantLayoutFloatClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUISystemInputAssistantLayoutFloatClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUISystemInputAssistantLayoutFloatClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_floatAssistantViewLayout;
    self->_floatAssistantViewLayout = v6;

    floatAssistantViewLayout = self->_floatAssistantViewLayout;
  }

  return floatAssistantViewLayout;
}

- (TUISystemInputAssistantLayout)compactAssistantViewLayout
{
  if (!self->_compactAssistantViewLayout)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getTUISystemInputAssistantLayoutCompactClass_softClass;
    v13 = getTUISystemInputAssistantLayoutCompactClass_softClass;
    if (!getTUISystemInputAssistantLayoutCompactClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUISystemInputAssistantLayoutCompactClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUISystemInputAssistantLayoutCompactClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    compactAssistantViewLayout = self->_compactAssistantViewLayout;
    self->_compactAssistantViewLayout = v5;
  }

  v7 = self->_compactAssistantViewLayout;

  return v7;
}

- (TUISystemInputAssistantLayoutSplit)splitAssistantViewLayout
{
  if (!self->_splitAssistantViewLayout)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getTUISystemInputAssistantLayoutSplitClass_softClass;
    v18 = getTUISystemInputAssistantLayoutSplitClass_softClass;
    if (!getTUISystemInputAssistantLayoutSplitClass_softClass)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getTUISystemInputAssistantLayoutSplitClass_block_invoke;
      v14[3] = &unk_1E70F2F20;
      v14[4] = &v15;
      __getTUISystemInputAssistantLayoutSplitClass_block_invoke(v14);
      v3 = v16[3];
    }

    v4 = v3;
    _Block_object_dispose(&v15, 8);
    v5 = objc_alloc_init(v3);
    splitAssistantViewLayout = self->_splitAssistantViewLayout;
    self->_splitAssistantViewLayout = v5;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = v7;
  if (v7)
  {
    [v7 frameForKeylayoutName:@"split-left"];
    [(TUISystemInputAssistantLayoutSplit *)self->_splitAssistantViewLayout setLeftSplitWidth:v9];
    [v8 frameForKeylayoutName:@"split-right"];
    [(TUISystemInputAssistantLayoutSplit *)self->_splitAssistantViewLayout setRightSplitWidth:v10];
  }

  v11 = self->_splitAssistantViewLayout;
  v12 = v11;

  return v11;
}

- (TUISystemInputAssistantStyleFloat)floatStyle
{
  floatStyle = self->_floatStyle;
  if (!floatStyle)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUISystemInputAssistantStyleFloatClass_softClass;
    v13 = getTUISystemInputAssistantStyleFloatClass_softClass;
    if (!getTUISystemInputAssistantStyleFloatClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUISystemInputAssistantStyleFloatClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUISystemInputAssistantStyleFloatClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_floatStyle;
    self->_floatStyle = v6;

    floatStyle = self->_floatStyle;
  }

  return floatStyle;
}

- (TUISystemInputAssistantStyleCompact)compactStyle
{
  compactStyle = self->_compactStyle;
  if (!compactStyle)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getTUISystemInputAssistantStyleCompactClass_softClass;
    v13 = getTUISystemInputAssistantStyleCompactClass_softClass;
    if (!getTUISystemInputAssistantStyleCompactClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTUISystemInputAssistantStyleCompactClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getTUISystemInputAssistantStyleCompactClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_compactStyle;
    self->_compactStyle = v6;

    compactStyle = self->_compactStyle;
  }

  return compactStyle;
}

- (void)automaticallySetCenterViewControllerBasedOnInputDelegate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(UISystemInputAssistantViewController *)self assistantBarStyle];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 suppressUpdateLayout];

  if ((v7 & 1) == 0)
  {
    v8 = [(UISystemInputAssistantViewController *)self inputWindowController];
    v9 = [v8 animationAwarePlacement];
    v10 = UIAssistantViewPlacement(v9);

    if (([v10 showsInputOrAssistantViews] & 1) != 0 || objc_msgSend(v10, "isUndocked"))
    {
      v5 = UIGetAssistantBarStyleFromPlacement(v10);
    }
  }

  v11 = [(UISystemInputAssistantViewController *)self _customCenterBarButtonItem:v4];
  v12 = [(UISystemInputAssistantViewController *)self _customCenterViewController:v4];
  if (!v11)
  {
    if (+[UIKeyboard usesInputSystemUI]|| [(UISystemInputAssistantViewController *)self showsRemoteInputDashViewController])
    {
      v13 = +[UIKeyboardImpl activeInstance];
      [v13 showsCandidateBar];
    }

    else
    {
      v56 = +[UIKeyboardImpl activeInstance];
      v57 = [v56 showsCandidateBar];

      if ((v57 & 1) == 0)
      {
        v58 = +[UIKeyboardImpl activeInstance];
        v59 = [v58 _layout];
        v60 = [v59 hasCandidateKeys];

        if ((v60 & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v61 = +[UIKeyboardInputModeController sharedInputModeController];
            v62 = [v61 currentInputMode];
            if ([v62 showsTransliterationCandidates])
            {
              v63 = +[UIKeyboardImpl activeInstance];
              [v63 isMinimized];
            }

            else
            {
            }
          }
        }
      }
    }
  }

  v14 = objc_opt_class();
  v15 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  if (!v15 || (v16 = v15, [(UISystemInputAssistantViewController *)self predictiveViewController], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_opt_class(), v17, v16, v18 != v14))
  {
    v19 = NSStringFromClass(v14);
    v20 = [(UISystemInputAssistantViewController *)self cachedPredictiveViewControllers];
    v21 = [v20 objectForKey:v19];

    if (!v21)
    {
      v21 = [[v14 alloc] initWithNibName:0 bundle:0];
      if (v21)
      {
        v22 = [(UISystemInputAssistantViewController *)self cachedPredictiveViewControllers];
        [v22 setObject:v21 forKey:v19];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 setShowsRemoteInputDashViewController:{-[UISystemInputAssistantViewController showsRemoteInputDashViewController](self, "showsRemoteInputDashViewController")}];
    }

    [(UISystemInputAssistantViewController *)self setPredictiveViewController:v21];
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 postNotificationName:@"_uisavcccn" object:0];
  }

  if ([(UISystemInputAssistantViewController *)self shouldShowEmojiSearchViewControllerForInputDelegate:v4])
  {
    v24 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];

    if (!v24)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v25 = getTUIEmojiSearchInputViewControllerClass_softClass_0;
      v68 = getTUIEmojiSearchInputViewControllerClass_softClass_0;
      if (!getTUIEmojiSearchInputViewControllerClass_softClass_0)
      {
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __getTUIEmojiSearchInputViewControllerClass_block_invoke_0;
        v64[3] = &unk_1E70F2F20;
        v64[4] = &v65;
        __getTUIEmojiSearchInputViewControllerClass_block_invoke_0(v64);
        v25 = v66[3];
      }

      v26 = v25;
      _Block_object_dispose(&v65, 8);
      v27 = [[v25 alloc] initWithNibName:0 bundle:0];
      [(UISystemInputAssistantViewController *)self setEmojiSearchViewController:v27];

      v28 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      [v28 setDelegate:self];
    }

    v29 = [(UISystemInputAssistantViewController *)self _shouldCollapseEmojiSearchView];
    v30 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v31 = [v30 emojiSearchView];
    [v31 setCollapsed:v29];

    v32 = [(UISystemInputAssistantViewController *)self predictiveViewController];
    v33 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    [v33 setChildPredictionViewController:v32];

    v34 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    [(UISystemInputAssistantViewController *)self setCenterViewController:v34];

    v35 = +[UIKeyboardImpl activeInstance];
    v36 = [v35 autocorrectionController];
    [v36 addAutocorrectionObserver:self];

    v37 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v38 = [v37 emojiSearchView];
    v39 = [v38 searchTextField];
    [v39 setKeyboardType:122];

    v40 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v41 = [v40 emojiSearchView];
    v42 = [v41 searchTextField];
    [v42 setReturnKeyType:9];

    v11 = 0;
  }

  else
  {
    v43 = [(UISystemInputAssistantViewController *)self centerViewController];
    v44 = v43;
    if (v12)
    {

      if (v44 != v12)
      {
        [(UISystemInputAssistantViewController *)self setCenterViewController:v12];
      }
    }

    else
    {
      v45 = [(UISystemInputAssistantViewController *)self predictiveViewController];

      if (v44 != v45)
      {
        v46 = +[UIKeyboardImpl activeInstance];
        v47 = [v46 autocorrectionController];
        [v47 removeAutocorrectionObserver:self];

        v48 = [(UISystemInputAssistantViewController *)self predictiveViewController];
        [(UISystemInputAssistantViewController *)self setCenterViewController:v48];
      }
    }
  }

  v49 = [v11 customView];
  if (v49)
  {
    v50 = v49;
    v51 = [(UISystemInputAssistantViewController *)self compatibilityViewController];
    v52 = [v51 customView];
    v53 = [v11 customView];

    if (v52 != v53)
    {
      v54 = [v11 customView];
      v55 = [(UISystemInputAssistantViewController *)self compatibilityViewController];
      [v55 setCustomView:v54];
    }
  }

  [(UISystemInputAssistantViewController *)self _updateViewsForAssistantBarStyle:v5];
  [(UISystemInputAssistantViewController *)self updateCenterViewVisibilityStateForInputDelegate:v4];
  [(UISystemInputAssistantViewController *)self updateAssistantBarStyle:v5];
}

- (BOOL)updateFloatingAssistantRectEdge:(unint64_t)a3 position:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v9 = [v8 layout];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v12 = [v11 layout];
    [v12 trackHorizontalMovement:{x, y}];

    v13 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v14 = [v13 layout];
    [v14 setCurrentRectEdge:a3];
  }

  return v10 & 1;
}

- (void)prepareTransition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = UIAssistantViewPlacement(a3);
  v7 = UIGetAssistantBarStyleFromPlacement(v6);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__UISystemInputAssistantViewController_prepareTransition_animated___block_invoke;
  v13[3] = &unk_1E70F32F0;
  v13[4] = self;
  v13[5] = v7;
  v8 = _Block_copy(v13);
  v9 = v8;
  if (v4)
  {
    v10 = [(UISystemInputAssistantViewController *)self layoutFromAssistantBarStyle:v7];
    v11 = [(UISystemInputAssistantViewController *)self styleFromAssistantBarStyle:v7];
    v12 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v12 transitionToLayout:v10 withStyle:v11 start:v9];
  }

  else
  {
    (*(v8 + 2))(v8);
  }

  [(UISystemInputAssistantViewController *)self _updateViewsForAssistantBarStyle:v7];
}

void __67__UISystemInputAssistantViewController_prepareTransition_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateAssistantBarStyle:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 observedInputAssistantItem];
  [v2 _updateSystemInputAssistantViewStylingForInputAssistantItem:v3];
}

- (void)_updateViewsForAssistantBarStyle:(int64_t)a3
{
  v5 = [(UISystemInputAssistantViewController *)self layoutFromAssistantBarStyle:?];
  v6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v6 setLayout:v5];

  v7 = [(UISystemInputAssistantViewController *)self styleFromAssistantBarStyle:a3];
  v8 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v8 setStyle:v7];

  v9 = [(UISystemInputAssistantViewController *)self centerViewController];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(UISystemInputAssistantViewController *)self centerViewController];
    [v10 setAssistantBarStyle:a3];
  }
}

- (void)setCenterViewController:(id)a3
{
  v5 = a3;
  centerViewController = self->_centerViewController;
  if (centerViewController != v5)
  {
    v13 = v5;
    [(UIPredictiveViewController *)centerViewController removeFromParentViewController];
    v7 = [(UIPredictiveViewController *)self->_centerViewController view];
    [v7 removeFromSuperview];

    emojiSearchViewController = self->_emojiSearchViewController;
    if (emojiSearchViewController != v13)
    {
      self->_emojiSearchViewController = 0;
    }

    objc_storeStrong(&self->_centerViewController, a3);
    if (v13)
    {
      v9 = [(TUIEmojiSearchInputViewController *)v13 view];
      [v9 removeFromSuperview];

      [(UIViewController *)self addChildViewController:v13];
      v10 = [(TUIEmojiSearchInputViewController *)v13 view];
      v11 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [v11 setCenterView:v10];
    }

    v12 = objc_opt_respondsToSelector();
    v5 = v13;
    if (v12)
    {
      [(TUIEmojiSearchInputViewController *)v13 setAssistantBarStyle:self->_assistantBarStyle];
      v5 = v13;
    }
  }
}

- (void)updateCenterViewVisibilityStateForInputDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  v49 = v4;
  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];
  v6 = +[UIKeyboard activeKeyboard];
  v7 = [v6 _rootInputWindowController];
  v8 = [v7 placement];
  v9 = UIAssistantViewPlacement(v8);

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = [v9 isFloating];
  }

  else
  {
    v10 = 1;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = +[UIKeyboard activeKeyboard];
  v13 = [v12 _rootInputWindowController];
  v14 = [v13 isSplitting];

  v15 = [v5 _disableAutomaticKeyboardUI];
  v16 = [(UISystemInputAssistantViewController *)self centerViewController];
  v17 = [v16 isVisibleForInputDelegate:v49 inputViews:0];

  isKindOfClass = 0;
  if (+[UIKeyboard usesInputSystemUI]&& v10)
  {
    v19 = [(UISystemInputAssistantViewController *)self centerViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v20 = [(UISystemInputAssistantViewController *)self _hidesCenterViewForActiveWindowingMode];
  v21 = +[UIKeyboard usesInputSystemUI];
  if ((v21 & v17) == 1)
  {
    v22 = [v11 showingEmojiSearch] ^ 1;
  }

  else
  {
    LOBYTE(v22) = !v21 & v17;
  }

  v23 = v14 | v15 | ~v22 | isKindOfClass | v20;
  v24 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v25 = [v24 centerViewHidden];

  v26 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v27 = v23 & 1;
  [v26 setCenterViewHidden:v27];

  if (v25 != v27)
  {
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v28 postNotificationName:@"_uisavcvcn" object:v29];
  }

  v30 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v32 setScrollEnabled:{+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") ^ 1}];
  }

  v33 = [(UIViewController *)self view];
  v34 = [v33 _inheritedRenderConfig];
  if (([v34 colorAdaptiveBackground] & 1) == 0)
  {

    goto LABEL_21;
  }

  v35 = [(UISystemInputAssistantViewController *)self centerViewController];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v33 = [(UISystemInputAssistantViewController *)self centerViewController];
    if (![v33 performSelector:sel_extendsFromKeyplane])
    {
      v37 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;
LABEL_22:

      goto LABEL_24;
    }

LABEL_21:
    v37 = 0;
    goto LABEL_22;
  }

  v37 = 0;
LABEL_24:
  [(UISystemInputAssistantViewController *)self maskInputAssistantView:v37];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v38 = 1;
  }

  else
  {
    v39 = [(UISystemInputAssistantViewController *)self centerViewController];
    v40 = objc_opt_respondsToSelector();

    if (v40)
    {
      v41 = [(UISystemInputAssistantViewController *)self centerViewController];
      v38 = [v41 hidesExpandableButton];
    }

    else
    {
      v38 = 0;
    }
  }

  v42 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v42 setHidesExpandableButton:v38];

  v43 = [(UISystemInputAssistantViewController *)self _shouldShowExpandableButtonBarItemsForResponder:v5];
  v44 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v44 setShowsExpandableButtonBarItems:v43];

  v45 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v46 = [v45 showsExpandableButtonBarItems];
  v47 = +[UIKeyboardImpl activeInstance];
  v48 = [v47 candidateController];
  [v48 setReuseArrowButtonToExpandAssistantBarItems:v46];

  if ([(UISystemInputAssistantViewController *)self _hasCustomCenterViewControllerWidth])
  {
    [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  }
}

- (void)setInputAssistantButtonItemsForResponder:(id)a3
{
  v19 = a3;
  if ([(UISystemInputAssistantViewController *)self layoutHasBuiltinAssistantView])
  {
    [(UISystemInputAssistantViewController *)self _beginObservingInputAssistantItemForRelevantItemChanges:0];
    goto LABEL_25;
  }

  if (v19)
  {
    v4 = _UIResponderFindInputAssistantItem(v19);
    if ([(UISystemInputAssistantViewController *)self _shouldCheckItemsVisibility])
    {
      v5 = [v4 leadingBarButtonGroups];
      __81__UISystemInputAssistantViewController_setInputAssistantButtonItemsForResponder___block_invoke(v5);

      v6 = [v4 trailingBarButtonGroups];
      __81__UISystemInputAssistantViewController_setInputAssistantButtonItemsForResponder___block_invoke(v6);
    }

    if ([(UISystemInputAssistantViewController *)self _assistantItemsVisibleForResponder:v19])
    {
      v7 = [(UISystemInputAssistantViewController *)self remoteAssistantItem];

      if (v7)
      {
        v8 = [(UISystemInputAssistantViewController *)self remoteAssistantItem];

        v4 = v8;
      }

      if (!-[UISystemInputAssistantViewController _isAssistantPreferenceEnabled](self, "_isAssistantPreferenceEnabled") && [v4 allowsHidingShortcuts])
      {

        v4 = 0;
      }

      v9 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [v9 setInputAssistantItem:v4];

      [(UISystemInputAssistantViewController *)self _beginObservingInputAssistantItemForRelevantItemChanges:v4];
      [(UISystemInputAssistantViewController *)self _updateSystemInputAssistantViewStylingForInputAssistantItem:v4];
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
    if ([(UISystemInputAssistantViewController *)self _assistantItemsVisibleForResponder:0])
    {
LABEL_14:
      v10 = [(UISystemInputAssistantViewController *)self inputWindowController];
      v11 = [v10 expectedPlacement];
      v12 = UIAssistantViewPlacement(v11);

      v13 = UIGetAssistantBarStyleFromPlacement(v12);
      if (self->_assistantBarStyle != v13)
      {
        v14 = v13;
        if (([v12 showsInputOrAssistantViews] & 1) != 0 || objc_msgSend(v12, "isUndocked"))
        {
          [(UISystemInputAssistantViewController *)self _updateViewsForAssistantBarStyle:v14];
          self->_assistantBarStyle = v14;
        }

        [(UISystemInputAssistantViewController *)self setOverrideSafeAreaInsets];
      }

      if ([objc_opt_class() shouldShowSystemInputAssistantItems])
      {
        v15 = [UIAssistantBarButtonItemProvider unmodifiableSystemAssistantItem:self->_assistantBarStyle];
        v16 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [v16 setSystemInputAssistantItem:v15];
      }

      goto LABEL_23;
    }
  }

  v17 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v17 setInputAssistantItem:0 force:1];

  v18 = [v19 _writingToolsInputDashboardViewController];

  if (v18)
  {
    v12 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [v12 setSystemInputAssistantItem:0];
LABEL_23:
  }

LABEL_25:
}

void __81__UISystemInputAssistantViewController_setInputAssistantButtonItemsForResponder___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 representativeItem];
        [v7 _executeValidationHandler];

        if (([v6 isHidden] & 1) == 0)
        {
          v8 = [v6 representativeItem];
          v9 = [v8 isHidden];

          if ((v9 & 1) == 0)
          {
            [v6 _validateAllItems];
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)setNeedsValidation
{
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v2 setNeedsValidation];
}

- (void)dismissKeyboardItemIfNeeded
{
  [(UISystemInputAssistantViewController *)self dismissLanguageIndicatorMenuIfNeeded];

  [(UISystemInputAssistantViewController *)self dismissDictationMenuIfNeeded];
}

- (void)dismissLanguageIndicatorMenuIfNeeded
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v3 = [v2 systemInputAssistantItem];
  v4 = [v3 leadingBarButtonGroups];

  obj = v4;
  v19 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [v6 barButtonItems];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              if ([v12 tag] == 1735287116)
              {
                v13 = [v12 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v15 = [v12 view];
                  v16 = [v15 contextMenuInteraction];
                  [v16 dismissMenu];

                  goto LABEL_17;
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }
}

- (void)dismissDictationMenuIfNeeded
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v3 = [v2 systemInputAssistantItem];
  v4 = [v3 trailingBarButtonGroups];

  obj = v4;
  v19 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [v6 barButtonItems];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              if ([v12 tag] == 1944175551)
              {
                v13 = [v12 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v15 = [v12 view];
                  v16 = [v15 contextMenuInteraction];
                  [v16 dismissMenu];

                  goto LABEL_17;
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }
}

- (void)setRemoteAssistantViewInfo:(id)a3
{
  v33 = a3;
  objc_storeStrong(&self->_remoteAssistantViewInfo, a3);
  [v33 size];
  v6 = v5;
  v8 = v7;
  [v33 insets];
  v11 = v10;
  if (v9 <= 50.0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 50.0;
  }

  if ([v33 contextId])
  {
    v13 = v11 + fmin(v8, 120.0);
    v14 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v15 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v16 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v15];

    if ([(UISystemInputAssistantViewController *)self _shouldShowExpandableButtonBarItemsForResponder:v16])
    {
      v17 = objc_opt_respondsToSelector();
    }

    else
    {
      v17 = 0;
    }

    v18 = v13 + v12;
    v19 = [v33 contextId];
    v20 = [(_UILayerHostView *)self->_remoteAssistantView contextID];
    v21 = MEMORY[0x1E695EFF8];
    v22 = -v11;
    if (v19 != v20)
    {
      [(UIView *)self->_remoteAssistantView removeFromSuperview];
      v23 = -[_UILayerHostView initWithFrame:pid:contextID:]([_UILayerHostView alloc], "initWithFrame:pid:contextID:", [v33 processId], objc_msgSend(v33, "contextId"), 0.0, v22, v6, v18);
      remoteAssistantView = self->_remoteAssistantView;
      self->_remoteAssistantView = v23;

      [(UIView *)self->_remoteAssistantView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_remoteAssistantView setClipsToBounds:1];
      [self->_remoteAssistantView setAccessibilityIdentifier:@"RemoteAssistantView"];
      v25 = [[UIView alloc] initWithFrame:*v21, v21[1], v6, v18];
      remoteAssistantContainerView = self->_remoteAssistantContainerView;
      self->_remoteAssistantContainerView = v25;

      [(UIView *)self->_remoteAssistantContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [self->_remoteAssistantContainerView setAccessibilityIdentifier:@"RemoteAssistantContainerView"];
      [(UIView *)self->_remoteAssistantContainerView addSubview:self->_remoteAssistantView];
    }

    if (v17)
    {
      [v14 setSecondaryView:self->_remoteAssistantContainerView];
    }

    else
    {
      v27 = [(UIView *)self->_remoteAssistantContainerView superview];

      if (v27 != v14)
      {
        [v14 insertSubview:self->_remoteAssistantContainerView atIndex:0];
      }
    }

    [(UIView *)self->_remoteAssistantView frame];
    if (v6 != v29 || v18 != v28)
    {
      [(UIView *)self->_remoteAssistantContainerView setFrame:*v21, v21[1], v6, v18];
      [(UIView *)self->_remoteAssistantView frame];
      [(UIView *)self->_remoteAssistantView setFrame:?];
      v30 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v31 = [v30 containerRootController];
      [v31 updateViewSizingConstraints];
    }
  }

  else
  {
    [(UIView *)self->_remoteAssistantView removeFromSuperview];
    v14 = self->_remoteAssistantView;
    self->_remoteAssistantView = 0;
  }

  if (self->_remoteAssistantView)
  {
    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
    v32 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:v32];
  }
}

- (void)applyRemoteAssistantItem:(id)a3
{
  v4 = a3;
  v5 = [(UISystemInputAssistantViewController *)self UIAssistantItemForRTIAssistantItem:v4];
  [(UISystemInputAssistantViewController *)self setRemoteAssistantItem:v5];

  -[UISystemInputAssistantViewController setShowsRemoteInputDashViewController:](self, "setShowsRemoteInputDashViewController:", [v4 showsInputDashboardViewController]);
  [v4 centerViewPreferredWidth];
  v7 = v6;

  [(UISystemInputAssistantViewController *)self setRemoteCenterViewPreferredWidth:v7];
}

- (id)placeholderItemOfWidth:(double)a3
{
  v4 = [UIBarButtonItem alloc];
  v5 = objc_alloc_init(UIView);
  v6 = [(UIBarButtonItem *)v4 initWithCustomView:v5];

  [(UIBarButtonItem *)v6 setWidth:a3];

  return v6;
}

- (id)UIGroupsForRTIGroups:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = objc_alloc_init(UIBarButtonItemGroup);
        [v8 representativeItemWidth];
        if (v10 > 0.0)
        {
          [v8 representativeItemWidth];
          v12 = [(UISystemInputAssistantViewController *)self placeholderItemOfWidth:v11];
          [(UIBarButtonItemGroup *)v9 setRepresentativeItem:v12];
        }

        v13 = objc_alloc(MEMORY[0x1E695DF70]);
        v14 = [v8 itemWidths];
        v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = [v8 itemWidths];
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [*(*(&v27 + 1) + 8 * j) floatValue];
              v22 = [(UISystemInputAssistantViewController *)self placeholderItemOfWidth:v21];
              [v15 addObject:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v18);
        }

        [(UIBarButtonItemGroup *)v9 setBarButtonItems:v15];
        [v26 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  return v26;
}

- (id)UIAssistantItemForRTIAssistantItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(UITextInputAssistantItem);
    -[UITextInputAssistantItem _setShowsBarButtonItemsInline:](v5, "_setShowsBarButtonItemsInline:", [v4 showsBarButtonItemsInline]);
    v6 = [v4 detachedTintColor];
    [(UITextInputAssistantItem *)v5 _setDetachedTintColor:v6];

    v7 = [v4 detachedBackgroundColor];
    [(UITextInputAssistantItem *)v5 _setDetachedBackgroundColor:v7];

    -[UITextInputAssistantItem _setVisibleWhenMinimized:](v5, "_setVisibleWhenMinimized:", [v4 visibleWhenMinimized]);
    v8 = [v4 leadingBarButtonGroups];
    v9 = [(UISystemInputAssistantViewController *)self UIGroupsForRTIGroups:v8];
    [(UITextInputAssistantItem *)v5 setLeadingBarButtonGroups:v9];

    v10 = [v4 trailingBarButtonGroups];

    v11 = [(UISystemInputAssistantViewController *)self UIGroupsForRTIGroups:v10];
    [(UITextInputAssistantItem *)v5 setTrailingBarButtonGroups:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSystemInputAssistantViewStylingForInputAssistantItem:(id)a3
{
  v21 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 inputViews];

  v6 = +[UIKeyboardImpl activeInstance];
  if ([v6 isMinimized] & 1) != 0 || (objc_msgSend(v5, "isCustomInputView"))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 inputView];
    v7 = v8 == 0;
  }

  v9 = +[UIColor clearColor];
  v10 = [(UISystemInputAssistantViewController *)self _defaultTintColor];
  if (v7)
  {
    v11 = [v21 _detachedTintColor];

    if (v11)
    {
      v12 = [v21 _detachedTintColor];

      v10 = v12;
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      goto LABEL_9;
    }

    v13 = [v21 _detachedBackgroundEffect];

    v7 = v13 != 0;
    if (v13)
    {
      v14 = [v21 _detachedBackgroundEffect];
      v15 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      v16 = [v15 backdropView];
      [v16 setEffect:v14];
    }

    else
    {
      v17 = [v21 _detachedBackgroundColor];

      if (!v17)
      {
LABEL_9:
        v7 = 0;
LABEL_15:
        [(UISystemInputAssistantViewController *)self _dismissEmojiSearch];
        goto LABEL_16;
      }

      [v21 _detachedBackgroundColor];
      v9 = v14 = v9;
    }

    goto LABEL_15;
  }

LABEL_16:
  v18 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v18 setTintColor:v10];

  v19 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v19 setBackgroundColor:v9];

  v20 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v20 setBackgroundVisible:v7];
}

- (BOOL)_allowedToShowBarButtonItemsInline:(id)a3
{
  v4 = [(UIViewController *)self view];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (os_variant_has_internal_diagnostics())
  {
    if ([(UISystemInputAssistantViewController *)self hasCheckedPreferences])
    {
      v7 = [(UISystemInputAssistantViewController *)self assistantOniPhonePreference];
    }

    else
    {
      v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v16 = [v15 preferencesActions];
      v7 = [v16 BOOLForPreferenceKey:@"KeyboardAssistantOniPhone"];
    }
  }

  else
  {
    v7 = 0;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 inputSystemSourceSession];
    v10 = [v9 documentTraits];
    v11 = [v10 bundleId];
  }

  else
  {
    v11 = _UIMainBundleIdentifier();
  }

  v12 = v6 == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  if (((v13 | v7) & 1) == 0)
  {
    v12 = [&unk_1EFE2BD70 containsObject:v11];
  }

  return v12;
}

- (BOOL)_shouldShowExpandableButtonBarItemsForResponder:(id)a3
{
  v4 = a3;
  if (v4 && [(UISystemInputAssistantViewController *)self _allowedToShowBarButtonItemsInline:v4])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      [(UISystemInputAssistantViewController *)self remoteAssistantItem];
    }

    else
    {
      _UIResponderFindInputAssistantItem(v4);
    }
    v6 = ;
    if ([v6 _showsBarButtonItemsInline])
    {
      v7 = [v6 leadingBarButtonGroups];
      if ([v7 count])
      {
        v5 = 1;
      }

      else
      {
        v8 = [v6 trailingBarButtonGroups];
        v5 = [v8 count] != 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  v4 = +[UIPeripheralHost sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__UISystemInputAssistantViewController__applicationDidBecomeActiveNotification___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v4 queueDelayedTask:v6 forKey:v5];
}

- (void)_willChangeTextEffectsRotationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"UITextEffectsWindow_toOrientation"];
  v6 = [v5 integerValue];

  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:v6];
}

- (void)_didChangeTextEffectsRotationNotification:(id)a3
{
  v3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v3 setNeedsValidation];
}

- (void)_beginObservingInputAssistantItemForRelevantItemChanges:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1ED499E48 != -1)
  {
    dispatch_once(&qword_1ED499E48, &__block_literal_global_701);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = _MergedGlobals_17_1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];

        if (v11)
        {
          v12 = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
          [v12 removeObserver:self forKeyPath:v10];
        }

        if (v4)
        {
          [v4 addObserver:self forKeyPath:v10 options:3 context:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(UISystemInputAssistantViewController *)self setObservedInputAssistantItem:v4];
}

void __96__UISystemInputAssistantViewController__beginObservingInputAssistantItemForRelevantItemChanges___block_invoke()
{
  v0 = _MergedGlobals_17_1;
  _MergedGlobals_17_1 = &unk_1EFE2BD88;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v39 = a3;
  v8 = a5;
  if ([v39 isEqualToString:@"bounds"])
  {
    v9 = [v8 objectForKey:*MEMORY[0x1E696A4F0]];
    [v9 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v8 objectForKey:*MEMORY[0x1E696A500]];
    [v18 CGRectValue];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v41.origin.x = v11;
    v41.origin.y = v13;
    v41.size.width = v15;
    v41.size.height = v17;
    v42.origin.x = v20;
    v42.origin.y = v22;
    v42.size.width = v24;
    v42.size.height = v26;
    if (!CGRectEqualToRect(v41, v42))
    {
      v27 = [(UIViewController *)self view];
      v28 = [v27 window];
      if (v28)
      {
        v29 = [(UIViewController *)self view];
        v30 = [v29 window];
        v31 = [v30 _toWindowOrientation];
      }

      else
      {
        v31 = [objc_opt_class() keyboardOrientation];
      }

      [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:v31];
    }
  }

  else
  {
    if ([v39 isEqualToString:@"centerBarButtonGroups"])
    {
      v32 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
      [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:v32];
    }

    else
    {
      v33 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [v33 setNeedsValidation];

      v32 = [v8 objectForKey:*MEMORY[0x1E696A4F0]];
      v34 = [v8 objectForKey:*MEMORY[0x1E696A500]];
      if ([v39 hasSuffix:@"BarButtonGroups"] && (v34 != v32 || (objc_msgSend(v34, "isEqual:", v32) & 1) == 0))
      {
        v35 = +[UIKeyboardImpl activeInstance];
        v36 = [v35 remoteTextInputPartner];
        [v36 documentTraitsChanged];

        v37 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        if (objc_opt_respondsToSelector())
        {
          v38 = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
          [v37 setInputAssistantItem:v38 force:1];
        }
      }
    }
  }
}

- (void)_willChangePlacementNotification:(id)a3
{
  v4 = [(UISystemInputAssistantViewController *)self expandedItemsController];
  v5 = [v4 presentingViewController];

  if (v5)
  {
    v6 = [(UISystemInputAssistantViewController *)self expandedItemsController];
    v7 = [v6 presentationController];
    v8 = [v7 presentedView];
    [v8 setHidden:1];

    [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

  v9 = +[UIKeyboardSceneDelegate interfaceOrientation];

  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:v9];
}

- (void)_didChangePlacementOrInputSourceNotification:(id)a3
{
  v11 = a3;
  v4 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v5 = [v4 isTransitioning];

  if ((v5 & 1) == 0)
  {
    [(UISystemInputAssistantViewController *)self updateCenterViewVisibilityStateForInputDelegate:0];
  }

  v6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v6 setNeedsValidation];

  v7 = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
  [(UISystemInputAssistantViewController *)self _updateSystemInputAssistantViewStylingForInputAssistantItem:v7];

  [(UISystemInputAssistantViewController *)self _updateLanguageIndicatorPointerInteractionAndImage];
  v8 = +[UIKeyboardImpl activeInstance];
  if ([v8 _shouldMinimizeForHardwareKeyboard])
  {
    v9 = [v11 name];
    v10 = [v9 isEqualToString:@"UITextInputSourceDidChangeNotification"];

    if (v10)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_720);
    }
  }

  else
  {
  }
}

void __85__UISystemInputAssistantViewController__didChangePlacementOrInputSourceNotification___block_invoke()
{
  +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 updateAssistantView];
}

- (void)_keyboardDictationAvailabilityDidChangeNotification:(id)a3
{
  v4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v4 setNeedsValidation];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v6 responder];
  [(UISystemInputAssistantViewController *)self setInputAssistantButtonItemsForResponder:v5];
}

- (double)_buttonBarWidthForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4
{
  v5 = +[UIKeyboardImpl keyboardScreen];
  v6 = [UIKBScreenTraits traitsWithScreen:v5 orientation:1];

  [v6 assistantViewWindowBounds];
  v8 = v7;
  [v6 assistantViewWindowBounds];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = a4 - 3;
  if (v10 >= 1024.0)
  {
    v12 = v11 >= 2;
    v13 = 283.0;
    v14 = 352.0;
  }

  else
  {
    if (v10 >= 834.0)
    {
      v15 = dbl_18A679D60[v11 < 2];
      goto LABEL_12;
    }

    v12 = v11 >= 2;
    v13 = 152.0;
    v14 = 178.0;
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

LABEL_12:

  return v15;
}

- (double)_centerViewWidthForTraitCollection:(id)a3
{
  v4 = a3;
  -[UISystemInputAssistantViewController _centerViewWidthForTraitCollection:interfaceOrientation:](self, "_centerViewWidthForTraitCollection:interfaceOrientation:", v4, [objc_opt_class() keyboardOrientation]);
  v6 = v5;

  return v6;
}

- (double)_centerViewWidthForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v8 = [v7 inputAssistantItem];
  v9 = [v8 _centerBarButtonGroups];

  v10 = 0.0;
  if ([v9 count])
  {
    v11 = [v9 firstObject];
    v12 = [v11 barButtonItems];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v9 firstObject];
      v15 = [v14 barButtonItems];
      v16 = [v15 firstObject];

      [v16 width];
      if (v17 <= 0.0)
      {
        goto LABEL_45;
      }

      [v16 width];
      v10 = v18;
    }
  }

  if ([(UISystemInputAssistantViewController *)self _hasCustomCenterViewControllerWidth])
  {
    v19 = [(UISystemInputAssistantViewController *)self _customCenterViewController:0];
    [v19 preferredWidthForTraitCollection:v6];
    if (v20 == -1.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v20;
    }
  }

  [(UISystemInputAssistantViewController *)self remoteCenterViewPreferredWidth];
  if (v21 > 0.0)
  {
    [(UISystemInputAssistantViewController *)self remoteCenterViewPreferredWidth];
    v10 = v22;
  }

  v23 = +[UIKeyboardImpl keyboardScreen];
  v16 = [UIKBScreenTraits traitsWithScreen:v23 orientation:a4];

  [(UISystemInputAssistantViewController *)self _buttonBarWidthForTraitCollection:v6 interfaceOrientation:a4];
  v25 = v24;
  v26 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v27 = [v26 expectedPlacement];
  if ([v27 isFloatingAssistantView])
  {
  }

  else
  {
    v28 = +[UIKeyboardImpl activeInstance];
    v29 = [v28 _showsScribbleIconsInAssistantView];

    if ((v29 & 1) == 0)
    {
      [v16 assistantViewWidth];
      v31 = v30 - v25;
      if (v10 > v31)
      {
        v10 = v31;
      }
    }
  }

  if (v10 == 0.0)
  {
    v32 = [(UISystemInputAssistantViewController *)self inputWindowController];
    v33 = [v32 expectedPlacement];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = [v33 isFloating];
    }

    else
    {
      v35 = 1;
    }

    v36 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v37 = [v36 showsExpandableButtonBarItems];

    if (![v33 isFloatingAssistantView] || (v38 = 1.0, (objc_msgSend(v33, "isCompactAssistantView") & 1) == 0))
    {
      if ([v33 isFloatingAssistantView])
      {
        v39 = (a4 - 3) < 2;
        v40 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
        if ([v40 wantsAssistantWhileSuppressingKeyboard])
        {
          v41 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          v42 = [v41 disableBecomeFirstResponder];
        }

        else
        {
          v42 = 0;
        }

        v38 = dbl_18A679D70[v39];

        v43 = [(UIViewController *)self view];
        v44 = [v43 window];
        v45 = [v44 windowScene];
        v46 = [v45 _enhancedWindowingEnabled];

        if (v46 && (v42 & 1) == 0)
        {
          [v16 assistantViewWidth];
          v48 = v47 - (v25 + v25);
          if (v38 < v48)
          {
            v48 = v38;
          }

          v38 = fmax(v48, 1.0);
        }
      }

      else if ((v35 | isKindOfClass))
      {
        if (v10 < 667.0 || ((a4 - 5) < 0xFFFFFFFFFFFFFFFELL) | v37 & 1)
        {
          v38 = v10;
        }

        else
        {
          v57 = +[UIKeyboardImpl activeInstance];
          v58 = [v57 _layout];
          v59 = [v58 currentKeyplane];
          [v59 keyUnionFrame];
          v61 = v60;

          if (v61 <= 0.0)
          {
            v38 = v10;
          }

          else
          {
            v38 = v61;
          }
        }
      }

      else
      {
        v49 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
        v50 = [v49 emojiSearchView];
        v51 = [v50 searchTextField];
        v52 = [v51 isActive];

        v53 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
        v54 = [(UISystemInputAssistantViewController *)self centerViewController];

        if ((v52 & 1) != 0 || +[UIKeyboard isRemoteEmojiCollectionViewEnabled]&& v53 == v54)
        {
          [v16 keyboardWidth];
          v38 = v55;
        }

        else
        {
          [v16 keyboardWidth];
          v38 = v56 - (v25 + v25);
        }
      }
    }

    v10 = v38;
  }

LABEL_45:

  return v10;
}

- (void)_updateCenterViewWidthForInterfaceOrientation:(int64_t)a3
{
  v5 = [(UISystemInputAssistantViewController *)self inputWindowController];
  v6 = [v5 expectedPlacement];
  v24 = UIAssistantViewPlacement(v6);

  v7 = [v24 isHiddenForFloatingTransition];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = [v24 isFloating];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(UISystemInputAssistantViewController *)self _isEmojiInputMode];
  v10 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  v11 = [v10 emojiSearchView];
  v12 = [v11 searchTextField];
  v13 = v9 | [v12 isActive];

  if (v13 == 1)
  {
    v14 = v24;
    if ((v8 & 1) == 0)
    {
      if ([v24 showsKeyboard])
      {
        v14 = v24;
        if (!v7)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ([v24 showsInputOrAssistantViews] & 1) != 0 || (v15 = objc_msgSend(v24, "accessoryViewWillAppear"), v14 = v24, ((v15 | v7)))
      {
LABEL_12:
        [(UISystemInputAssistantViewController *)self _dismissEmojiSearch];
        v14 = v24;
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = v24;
  }

LABEL_13:
  if (((v8 | v7) & 1) != 0 || v13)
  {
    if ([v14 isFloating])
    {
      v7 = +[UIKeyboardImpl activeInstance];
      v17 = [v7 _showsScribbleIconsInAssistantView];
      v16 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  v18 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v18 setShowsButtonBarItemsInline:v17];

  if (v16)
  {
  }

  v19 = [(UIViewController *)self view];
  v20 = [v19 traitCollection];

  [(UISystemInputAssistantViewController *)self _centerViewWidthForTraitCollection:v20 interfaceOrientation:a3];
  v22 = v21;
  v23 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v23 setCenterViewWidth:v22];

  [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
}

- (void)_queueResponderChangedForNewResponder:(id)a3
{
  objc_storeWeak(&self->_pendingResponderForChangedNotification, a3);
  if (!self->_pendingResponderChangedTimer)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__UISystemInputAssistantViewController__queueResponderChangedForNewResponder___block_invoke;
    v6[3] = &unk_1E7106478;
    v6[4] = self;
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v6 block:0.0];
    pendingResponderChangedTimer = self->_pendingResponderChangedTimer;
    self->_pendingResponderChangedTimer = v4;
  }
}

void __78__UISystemInputAssistantViewController__queueResponderChangedForNewResponder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1032));
  v3 = [WeakRetained __isKindOfUIView];

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1032));
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v5 = [v4 keyboardSceneDelegate];
  v6 = [v5 systemInputAssistantViewController];
  v7 = *(a1 + 32);

  v8 = v14;
  if (v6 == v7)
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 1032));

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = objc_loadWeakRetained(v10 + 129);
      [v10 automaticallySetCenterViewControllerBasedOnInputDelegate:v11];
    }

    [*(a1 + 32) _responderCapabilitiesChangedNotification:0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1040);
    *(v12 + 1040) = 0;

    objc_storeWeak((*(a1 + 32) + 1032), 0);
    v8 = v14;
  }
}

- (void)_responderChangedNotification:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 valueForKey:@"UITextInputResponderCapabilitiesChangedInputResponderKey"];
  if (!v4)
  {
    v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  [(UISystemInputAssistantViewController *)self _queueResponderChangedForNewResponder:v4];
}

- (void)_responderCapabilitiesChangedNotification:(id)a3
{
  v25 = a3;
  v4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [v4 setNeedsValidation];

  v5 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  if ([v5 showsExpandableButtonBarItems])
  {
    v6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v7 = [v6 centerViewHidden];

    if (v7)
    {
      goto LABEL_25;
    }

    v8 = +[UIKeyboard usesInputSystemUI];
    if (+[UIKeyboard isKeyboardProcess])
    {
      v9 = +[UIKeyboardImpl activeInstance];
      v10 = [v9 inputDelegateManager];
      v11 = [v10 forwardingInputDelegate];
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = [v25 userInfo];
    v5 = [v13 objectForKey:@"UITextInputResponderCapabilitiesChangedKeyboardOutputKey"];

    v14 = [v25 userInfo];
    v15 = [v14 objectForKey:@"UITextInputResponderCapabilitiesChangedSelectionDidChangeKey"];
    v16 = [v15 BOOLValue];

    if (v5)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if ((v17 | v8))
    {
      if ((v16 | v8))
      {
        goto LABEL_17;
      }

      if (![v5 deletionCount])
      {
        v18 = [v5 insertionText];
        v19 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        if (v18)
        {
          v16 = [v18 rangeOfCharacterFromSet:v19] != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = 0;
        }

LABEL_17:
        if ((v12 & (v16 | v8)) == 1)
        {
          v20 = +[UIKeyboardImpl activeInstance];
          if ([v20 shouldCollapseButtonBarForFeedbackUI])
          {
            v21 = 0;
          }

          else
          {
            v22 = +[UIKeyboardImpl activeInstance];
            v23 = [v22 delegateAsResponder];
            v21 = [v23 _shouldDisplayWritingToolsCandidateOptions] ^ 1;
          }
        }

        else
        {
          v21 = 0;
        }

        v24 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [v24 setButtonBarItemsExpanded:v21 animated:1];
      }
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_25:
}

- (id)_popoverViewControllerForBarButtonItemGroup:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _expandStyle];
  if (v5 == 1)
  {
LABEL_14:
    v14 = [(UISystemInputAssistantViewController *)self popoverSourceView];
    v15 = [v14 _lightStyleRenderConfig];

    v16 = [_UIButtonGroupViewController alloc];
    v27 = v4;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v18 = [(_UIButtonGroupViewController *)v16 initWithBarButtonItemGroups:v17 overLightKeyboard:v15];

    v13 = v18;
    v19 = 0.2;
    if (v15)
    {
      v19 = 1.0;
    }

    v20 = [UIColor colorWithWhite:v19 alpha:0.8];
    [(UIExpandedBarItemsTableViewController *)v13 setBackgroundColor:v20];

    v21 = [(UISystemInputAssistantViewController *)self _defaultTintColor];
    [(UIExpandedBarItemsTableViewController *)v13 setTintColor:v21];
  }

  else
  {
    if (!v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = [v4 barButtonItems];
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v23 + 1) + 8 * i) title];
            v12 = [v11 length];

            if (!v12)
            {

              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    v13 = [[UIExpandedBarItemsTableViewController alloc] initWithBarButtonGroup:v4];
  }

  return v13;
}

- (void)systemInputAssistantView:(id)a3 wantsToShowCollapsedItemGroup:(id)a4 fromView:(id)a5
{
  v7 = a4;
  [(UISystemInputAssistantViewController *)self setPopoverSourceView:a5];
  v9 = [(UISystemInputAssistantViewController *)self _popoverViewControllerForBarButtonItemGroup:v7];

  [v9 setModalPresentationStyle:7];
  v8 = [v9 presentationController];
  [v8 setDelegate:self];

  [(UIViewController *)self presentViewController:v9 animated:1 completion:0];
  [(UISystemInputAssistantViewController *)self setExpandedItemsController:v9];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v6 = a3;
  v4 = [(UISystemInputAssistantViewController *)self popoverSourceView];
  [v6 setSourceView:v4];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = [(UISystemInputAssistantViewController *)self popoverSourceView];
    [v5 bounds];
    [v6 setSourceRect:?];
  }

  [v6 setPermittedArrowDirections:2];
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)a3
{
  v4 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  v3 = [v4 emojiSearchView];
  [v3 setCollapsed:0];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)a3
{
  self->_postedSwitchFromEmojiNotification = 0;
  v3 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:v3];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3
{
  v3 = +[UIKeyboardImpl sharedInstance];
  [v3 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3
{
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 updateAssistantView];

  if (!self->_postedSwitchFromEmojiNotification)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

    self->_postedSwitchFromEmojiNotification = 1;
  }
}

- (void)emojiSearchWillInsertEmoji:(id)a3 forSearchQuery:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIKeyboardImpl activeInstance];
  [v7 emojiSearchWillInsertEmoji:v6 forSearchQuery:v5];
}

- (void)autocorrectionController:(id)a3 didUpdateAutocorrectionList:(id)a4
{
  v10 = a4;
  v5 = [(UISystemInputAssistantViewController *)self centerViewController];
  v6 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];

  if (v5 == v6)
  {
    v7 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      [v9 autocorrectionListDidBecomeAvailable:v10];
    }
  }
}

- (id)layoutFromAssistantBarStyle:(int64_t)a3
{
  if ((a3 - 2) < 3)
  {
    v4 = [(UISystemInputAssistantViewController *)self compactAssistantViewLayout];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v4 = [(UISystemInputAssistantViewController *)self floatAssistantViewLayout];
    goto LABEL_5;
  }

  v5 = [(UISystemInputAssistantViewController *)self standardAssistantViewLayout];
  v7 = +[UIKeyboardImpl activeInstance];
  if ([v7 showsCandidateBar] && +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 centerFilled];

    if ((v9 & 1) == 0)
    {
      v10 = [(UISystemInputAssistantViewController *)self splitAssistantViewLayout];

      v5 = v10;
    }
  }

  else
  {
  }

LABEL_6:

  return v5;
}

- (id)styleFromAssistantBarStyle:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    if (a3 == 1)
    {
      [(UISystemInputAssistantViewController *)self floatStyle];
    }

    else
    {
      [(UISystemInputAssistantViewController *)self standardStyle];
    }
    v3 = ;
  }

  else
  {
    v3 = [(UISystemInputAssistantViewController *)self compactStyle];
  }

  return v3;
}

+ (double)floatingAssistantBottomPadding
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 visualModeManager];
  v4 = [v3 useVisualModeWindowed];

  result = 24.0;
  if (v4)
  {
    return 22.0;
  }

  return result;
}

- (void)updateAssistantBarStyle:(int64_t)a3
{
  v5 = (a3 - 2) <= 2 && (self->_assistantBarStyle - 2) < 3;
  obj = [MEMORY[0x1E696B098] valueWithPointer:{-[UISystemInputAssistantViewController _currentInputDelegate](self, "_currentInputDelegate")}];
  if (self->_assistantBarStyle != a3 || self->_isInputAssistantItemEmpty != [(UISystemInputAssistantViewController *)self isInputAssistantItemEmpty]|| self->_assistantBarStyle == 1 && ![(NSValue *)self->_currentInputDelegatePointerValue isEqualToValue:obj])
  {
    self->_isInputAssistantItemEmpty = [(UISystemInputAssistantViewController *)self isInputAssistantItemEmpty];
    if (!v5)
    {
      if ([objc_opt_class() shouldShowSystemInputAssistantItems])
      {
        v6 = [UIAssistantBarButtonItemProvider unmodifiableSystemAssistantItem:a3];
        v7 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [v7 setSystemInputAssistantItem:v6];
      }

      [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
    }

    self->_assistantBarStyle = a3;
    [(UISystemInputAssistantViewController *)self setOverrideSafeAreaInsets];
    objc_storeStrong(&self->_currentInputDelegatePointerValue, obj);
    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
  }
}

- (BOOL)shouldUseCustomBackground:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboard keyboardBundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.Playgrounds"];

  if (v6)
  {
    if (!v4)
    {
      v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    }

    v7 = [(UISystemInputAssistantViewController *)self remoteAssistantItem];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v11 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];
      v9 = _UIResponderFindInputAssistantItem(v11);
    }

    v10 = UIShouldUseCustomBackground(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_usesCustomBackground
{
  v2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v3 = [v2 inputAssistantItem];

  LOBYTE(v2) = UIShouldUseCustomBackground(v3);
  return v2;
}

- (id)_customCenterBarButtonItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  if ([(UISystemInputAssistantViewController *)self _canShowCenterBarButtonItem])
  {
    v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];
    v6 = _UIResponderFindInputAssistantItem(v5);

    v7 = [v6 _centerBarButtonGroups];
    v8 = [v7 count];

    if (v8)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      if ([v9 showsCandidateBar] && (objc_msgSend(v9, "candidateController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "hasCandidates"), v10, (v11 & 1) != 0))
      {
        v8 = 0;
      }

      else
      {
        v12 = [v6 _centerBarButtonGroups];
        v13 = [v12 firstObject];
        v14 = [v13 barButtonItems];
        v8 = [v14 firstObject];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_customCenterViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 inputDashboardViewController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isVisibleWhenMinimized
{
  if (+[UIKeyboard isInputSystemUI])
  {
    v3 = [(UISystemInputAssistantViewController *)self remoteAssistantItem];
  }

  else
  {
    v4 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:v4];
    v3 = _UIResponderFindInputAssistantItem(v5);
  }

  v6 = [v3 _isVisibleWhenMinimized];

  return v6;
}

- (void)maskInputAssistantView:(BOOL)a3
{
  v3 = a3;
  v10 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v5 = [v10 layer];
  v6 = v5;
  if (v3)
  {
    [v5 setMaskedCorners:3];

    v7 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v8 = [v7 layer];
    [v8 setCornerRadius:27.0];

    v10 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v5 = [v10 layer];
    v6 = v5;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [v5 setMasksToBounds:v9];
}

- (id)candidateViewController
{
  v3 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)compatibilityViewController
{
  v3 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)popoverSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverSourceView);

  return WeakRetained;
}

- (void)showEmojiSearch:(BOOL)a3
{
  if (a3)
  {
    v4 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    [v4 setCollapsed:0];

    v7 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    v5 = [v7 searchTextField];
    [v5 becomeFirstResponder];
  }

  else
  {
    v6 = [(UISystemInputAssistantViewController *)self _shouldCollapseEmojiSearchView];
    v7 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    [v7 setCollapsed:v6];
  }
}

- (void)prepareForFloating:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISystemInputAssistantViewController *)self centerViewController];
  emojiSearchViewController = self->_emojiSearchViewController;

  if (v5 == emojiSearchViewController)
  {
    [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController setUsesFloatingStyle:v3];
  }

  if (self->_remoteAssistantView)
  {

    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
  }
}

- (id)_emojiSearchField
{
  v2 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
  v3 = [v2 searchTextField];

  return v3;
}

@end