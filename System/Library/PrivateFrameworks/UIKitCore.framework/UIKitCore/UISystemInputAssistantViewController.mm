@interface UISystemInputAssistantViewController
+ (BOOL)shouldShowSystemInputAssistantItems;
+ (double)_defaultPreferredHeightForTraitCollection:(id)collection;
+ (double)_defaultPreferredHeightForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation;
+ (double)floatingAssistantBottomPadding;
+ (int64_t)keyboardOrientation;
- (BOOL)_allowedToShowBarButtonItemsInline:(id)inline;
- (BOOL)_assistantItemsVisibleForResponder:(id)responder;
- (BOOL)_canShowCenterBarButtonItem;
- (BOOL)_centerPredictionViewVisibleForInputDelegate:(id)delegate inputViews:(id)views;
- (BOOL)_hasCustomCenterViewControllerWidth;
- (BOOL)_hidesCenterViewForActiveWindowingMode;
- (BOOL)_isAssistantPreferenceEnabled;
- (BOOL)_isEmojiInputMode;
- (BOOL)_shouldCheckItemsVisibility;
- (BOOL)_shouldCollapseEmojiSearchView;
- (BOOL)_shouldShowExpandableButtonBarItemsForResponder:(id)responder;
- (BOOL)_usesCustomBackground;
- (BOOL)isEmojiSearchResultsVisible;
- (BOOL)isInputAssistantItemEmpty;
- (BOOL)isVisibleWhenMinimized;
- (BOOL)layoutHasBuiltinAssistantView;
- (BOOL)shouldBeShownForInputDelegate:(id)delegate inputViews:(id)views;
- (BOOL)shouldShowEmojiSearchViewControllerForInputDelegate:(id)delegate;
- (BOOL)shouldUseCustomBackground:(id)background;
- (BOOL)supportsCompactStyle;
- (BOOL)updateFloatingAssistantRectEdge:(unint64_t)edge position:(CGPoint)position;
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
- (double)_buttonBarWidthForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation;
- (double)_centerViewWidthForTraitCollection:(id)collection;
- (double)_centerViewWidthForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation;
- (double)preferredHeightForTraitCollection:(id)collection;
- (double)preferredHeightForTraitCollection:(id)collection orientation:(int64_t)orientation;
- (id)UIAssistantItemForRTIAssistantItem:(id)item;
- (id)UIGroupsForRTIGroups:(id)groups;
- (id)_currentInputDelegate;
- (id)_customCenterBarButtonItem:(id)item;
- (id)_customCenterViewController:(id)controller;
- (id)_defaultTintColor;
- (id)_emojiSearchField;
- (id)_inputDelegateAsResponder:(id)responder;
- (id)_popoverViewControllerForBarButtonItemGroup:(id)group;
- (id)animatableElement;
- (id)candidateViewController;
- (id)compatibilityViewController;
- (id)inputWindowController;
- (id)layoutFromAssistantBarStyle:(int64_t)style;
- (id)placeholderItemOfWidth:(double)width;
- (id)predictionViewController;
- (id)styleFromAssistantBarStyle:(int64_t)style;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_beginObservingInputAssistantItemForRelevantItemChanges:(id)changes;
- (void)_candidatesChanged;
- (void)_collapseBarItems;
- (void)_didChangePlacementOrInputSourceNotification:(id)notification;
- (void)_didChangeTextEffectsRotationNotification:(id)notification;
- (void)_dismissEmojiSearch;
- (void)_expandBarItems;
- (void)_inputModeChanged:(id)changed;
- (void)_keyboardDictationAvailabilityDidChangeNotification:(id)notification;
- (void)_queueResponderChangedForNewResponder:(id)responder;
- (void)_registerForAssistantViewNotifications;
- (void)_responderCapabilitiesChangedNotification:(id)notification;
- (void)_responderChangedNotification:(id)notification;
- (void)_showCandidates;
- (void)_updateCenterViewWidthAndRenderConfig;
- (void)_updateCenterViewWidthForInterfaceOrientation:(int64_t)orientation;
- (void)_updateLanguageIndicatorPointerInteractionAndImage;
- (void)_updateSystemInputAssistantViewStylingForInputAssistantItem:(id)item;
- (void)_updateViewsForAssistantBarStyle:(int64_t)style;
- (void)_willChangePlacementNotification:(id)notification;
- (void)_willChangeTextEffectsRotationNotification:(id)notification;
- (void)_writingDirectionChanged:(id)changed;
- (void)applyRemoteAssistantItem:(id)item;
- (void)autocorrectionController:(id)controller didUpdateAutocorrectionList:(id)list;
- (void)automaticallySetCenterViewControllerBasedOnInputDelegate:(id)delegate;
- (void)dealloc;
- (void)dismissDictationMenuIfNeeded;
- (void)dismissKeyboardItemIfNeeded;
- (void)dismissLanguageIndicatorMenuIfNeeded;
- (void)emojiSearchTextFieldDidBecomeActive:(id)active;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillBecomeActive:(id)active;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive;
- (void)emojiSearchWillInsertEmoji:(id)emoji forSearchQuery:(id)query;
- (void)loadView;
- (void)maskInputAssistantView:(BOOL)view;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preferencesControllerChanged:(id)changed;
- (void)prepareForFloating:(BOOL)floating;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)prepareTransition:(id)transition animated:(BOOL)animated;
- (void)setCenterViewController:(id)controller;
- (void)setInputAssistantButtonItemsForResponder:(id)responder;
- (void)setNeedsValidation;
- (void)setOverrideSafeAreaInsets;
- (void)setRemoteAssistantViewInfo:(id)info;
- (void)showEmojiSearch:(BOOL)search;
- (void)systemInputAssistantView:(id)view wantsToShowCollapsedItemGroup:(id)group fromView:(id)fromView;
- (void)updateAssistantBarStyle:(int64_t)style;
- (void)updateAssistantPreferences;
- (void)updateCenterViewVisibilityStateForInputDelegate:(id)delegate;
- (void)updateRemoteAssistantViewHidden;
- (void)viewDidLoad;
@end

@implementation UISystemInputAssistantViewController

- (id)_currentInputDelegate
{
  v2 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v2 inputDelegateManager];
  keyInputDelegate = [inputDelegateManager keyInputDelegate];

  return keyInputDelegate;
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
  visualModeManager = [v3 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  view = [(UIViewController *)self view];
  window = [view window];
  traitCollection = [window traitCollection];
  v9 = [traitCollection horizontalSizeClass] == 1;

  return v9 & useVisualModeWindowed;
}

- (BOOL)isInputAssistantItemEmpty
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  if ([systemInputAssistantView isInputAssistantItemHidden])
  {
    centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
    _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v6 = [centerViewController isVisibleForInputDelegate:_currentInputDelegate inputViews:0] ^ 1;
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
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v5 = [systemInputAssistantView showsButtonBarItemsInline] ^ 1;
  }

  remoteAssistantView = self->_remoteAssistantView;

  [(UIView *)remoteAssistantView setHidden:v5];
}

- (void)setOverrideSafeAreaInsets
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
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
      preferencesActions = [v17 preferencesActions];
      colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];

      v14 = 0.0;
      if (colorAdaptiveKeyboardEnabled)
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
    systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    v14 = 0.0;
    [systemInputAssistantView2 setSafeAreaInsets:{0.0, 0.0, 0.0, 0.0}];

    goto LABEL_12;
  }

  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  _window = [inputWindowController _window];
  [_window safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v12 - *&UIFloatingAssistantBottomMargin;
LABEL_14:
  systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView3 setOverrideSafeAreaInsets:{v8, v10, v15, v14}];
}

- (BOOL)layoutHasBuiltinAssistantView
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_4;
  }

  emojiSearchViewController = +[UIKeyboardImpl activeInstance];
  _layout = [emojiSearchViewController _layout];
  candidateList = [_layout candidateList];
  if (!candidateList)
  {
    LOBYTE(v8) = 0;
LABEL_7:

    return v8;
  }

  v6 = candidateList;
  v7 = +[UIKeyboardImpl isSplit];

  if (!v7)
  {
    emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    _layout = [emojiSearchViewController emojiSearchView];
    searchTextField = [_layout searchTextField];
    v8 = [searchTextField isActive] ^ 1;

    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v8) = 0;
  return v8;
}

- (BOOL)supportsCompactStyle
{
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  if (centerViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    allowsCompactAssistantBar = [centerViewController allowsCompactAssistantBar];
  }

  else
  {
    allowsCompactAssistantBar = 1;
  }

  _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  v6 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:_currentInputDelegate];

  if (v6 && ([v6 _writingToolsWantsKeyboardSuppression] & 1) != 0)
  {
    allowsCompactAssistantBar = 0;
  }

  return allowsCompactAssistantBar;
}

- (BOOL)_canShowCenterBarButtonItem
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:_currentInputDelegate];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_preferencesControllerChanged_ name:*MEMORY[0x1E69D9908] object:0];
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
  layer = [v6 layer];
  [layer addObserver:self forKeyPath:@"bounds" options:3 context:0];

  [(UISystemInputAssistantViewController *)self setAssistantViewCanAnimate:objc_opt_respondsToSelector() & 1];
  [(UIInputViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  [(UISystemInputAssistantViewController *)self _registerForAssistantViewNotifications];
  view = [(UIViewController *)self view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setRenderConfig:_inheritedRenderConfig];
}

- (void)_registerForAssistantViewNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__responderChangedNotification_ name:@"UITextInputResponderDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__responderCapabilitiesChangedNotification_ name:@"UITextInputResponderCapabilitiesChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__responderChangedNotification_ name:@"UIKeyboardLayoutDidChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__showCandidates name:@"UIKeyboardCandidatesAvailable" object:0];
  [defaultCenter addObserver:self selector:sel__collapseBarItems name:@"UIKeyboardPredictionsAvailable" object:0];
  [defaultCenter addObserver:self selector:sel__willChangeTextEffectsRotationNotification_ name:@"UITextEffectsWindowViewControllerWillRotateNotification" object:0];
  [defaultCenter addObserver:self selector:sel__didChangeTextEffectsRotationNotification_ name:@"UITextEffectsWindowViewControllerDidRotateNotification" object:0];
  [defaultCenter addObserver:self selector:sel__didChangePlacementOrInputSourceNotification_ name:@"UITextInputSourceDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__willChangePlacementNotification_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  [defaultCenter addObserver:self selector:sel__didChangePlacementOrInputSourceNotification_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
  [defaultCenter addObserver:self selector:sel__expandBarItems name:@"UIKeyboardShouldExpandAssistantBarItems" object:0];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel__candidatesChanged name:@"UIKeyboardCandidatesChanged" object:0];
  [defaultCenter addObserver:self selector:sel__inputModeChanged_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__writingDirectionChanged_ name:0x1EFB79210 object:0];
  [defaultCenter addObserver:self selector:sel__textDidChange name:@"UITextFieldTextDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__textDidChange name:@"UITextViewTextDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__willShowKeyboardSwitcher name:0x1EFB791F0 object:0];
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    [defaultCenter addObserver:self selector:sel__keyboardDictationAvailabilityDidChangeNotification_ name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
  }
}

- (id)inputWindowController
{
  if (+[UIKeyboard inputUIOOP])
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v3 containerRootController];
  }

  else
  {
    view = [(UIViewController *)self view];
    containerRootController = [view _rootInputWindowController];

    if (containerRootController)
    {
      goto LABEL_6;
    }

    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    keyboardWindow = [v3 keyboardWindow];
    containerRootController = [keyboardWindow rootViewController];
  }

LABEL_6:

  return containerRootController;
}

- (BOOL)_isEmojiInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  isEmojiInputMode = [currentInputMode isEmojiInputMode];

  return isEmojiInputMode;
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
    preferencesActions = [v3 preferencesActions];
    -[UISystemInputAssistantViewController setAssistantEnabledPreference:](self, "setAssistantEnabledPreference:", [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D97F8]]);

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
    interfaceOrientation = [v3 interfaceOrientation];

    return interfaceOrientation;
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
  predictiveViewController = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    predictiveViewController2 = [(UISystemInputAssistantViewController *)self predictiveViewController];
    goto LABEL_6;
  }

  predictiveViewController3 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  predictiveViewController2 = 0;
LABEL_6:

  return predictiveViewController2;
}

- (BOOL)isEmojiSearchResultsVisible
{
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  if (centerViewController == emojiSearchViewController)
  {
    emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    v5 = [emojiSearchView predictionViewVisible] ^ 1;
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
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  renderConfig = [systemInputAssistantView renderConfig];
  if ([renderConfig lightKeyboard])
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
  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  placement = [inputWindowController placement];
  v5 = UIAssistantViewPlacement(placement);

  v21 = v5;
  v22 = [v5 isMemberOfClass:objc_opt_class()];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  systemInputAssistantItem = [systemInputAssistantView systemInputAssistantItem];
  leadingBarButtonGroups = [systemInputAssistantItem leadingBarButtonGroups];

  v24 = [leadingBarButtonGroups countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(leadingBarButtonGroups);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        barButtonItems = [v10 barButtonItems];
        v12 = [barButtonItems countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(barButtonItems);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              if ([v16 tag] == 1735287116)
              {
                view = [v16 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  view2 = [v16 view];
                  [view2 setPointerInteractionEnabled:v22 ^ 1u];

                  v20 = +[UIAssistantBarButtonItemProvider languageIndicatorImage];
                  [v16 setImage:v20];

                  goto LABEL_17;
                }
              }
            }

            v13 = [barButtonItems countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v24 = [leadingBarButtonGroups countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }
}

- (void)_updateCenterViewWidthAndRenderConfig
{
  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  view = [(UIViewController *)self view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setRenderConfig:_inheritedRenderConfig];
}

- (id)animatableElement
{
  if ([(UISystemInputAssistantViewController *)self assistantViewCanAnimate])
  {
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  }

  else
  {
    systemInputAssistantView = 0;
  }

  return systemInputAssistantView;
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
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  emojiSearchView = [emojiSearchViewController emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];
  isActive = [searchTextField isActive];

  if (isActive)
  {
    emojiSearchViewController2 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    emojiSearchView2 = [emojiSearchViewController2 emojiSearchView];
    searchTextField2 = [emojiSearchView2 searchTextField];
    [searchTextField2 resignFirstResponder];
  }

  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    view = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
    [view _setLocalOverrideTraitCollection:0];
  }
}

- (void)dealloc
{
  [(UISystemInputAssistantViewController *)self _beginObservingInputAssistantItemForRelevantItemChanges:0];
  view = [(UIViewController *)self view];
  layer = [view layer];
  [layer removeObserver:self forKeyPath:@"bounds"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

  v6.receiver = self;
  v6.super_class = UISystemInputAssistantViewController;
  [(UIInputViewController *)&v6 dealloc];
}

- (CGRect)barFrame
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView containerFrame];
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

+ (double)_defaultPreferredHeightForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation
{
  v109 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v6 = +[UIKeyboard activeKeyboard];
  _rootInputWindowController = [v6 _rootInputWindowController];
  placement = [_rootInputWindowController placement];
  v9 = UIAssistantViewPlacement(placement);

  if (!v9 || ([v9 isFloating] & 1) == 0 && !objc_msgSend(v9, "isHiddenForFloatingTransition"))
  {
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    v12 = +[UIKeyboardImpl keyboardScreen];
    v13 = [UIKBScreenTraits traitsWithScreen:v12 orientation:orientation];

    if (userInterfaceIdiom == -1)
    {
      userInterfaceIdiom = [v13 idiom];
    }

    v14 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(v13, userInterfaceIdiom, 0);
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
      isMinimized = [v18 isMinimized];

      if (isMinimized)
      {
        v20 = __103__UISystemInputAssistantViewController__defaultPreferredHeightForTraitCollection_interfaceOrientation___block_invoke(0);
        v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        existingContainerWindow = [v21 existingContainerWindow];
        [existingContainerWindow safeAreaInsets];
        v10 = v20 + v23;
LABEL_16:

        goto LABEL_11;
      }
    }

    v24 = +[UIKeyboardImpl activeInstance];
    shouldShowCandidateBar = [v24 shouldShowCandidateBar];

    if (!shouldShowCandidateBar)
    {
      if ((orientation - 3) <= 1)
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
        existingContainerWindow = [v21 preferencesActions];
        if ([existingContainerWindow colorAdaptiveKeyboardEnabled])
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
        preferencesActions = [v48 preferencesActions];
        [preferencesActions colorAdaptiveKeyboardEnabled];
      }

      *&v50 = 44.0;
LABEL_44:
      v10 = *&v50;
      goto LABEL_11;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v27 = +[UIKeyboardImpl activeInstance];
    candidateController = [v27 candidateController];
    screenTraits = [candidateController screenTraits];
    idiom = [screenTraits idiom];
    if (!has_internal_diagnostics)
    {
      if (idiom == 1)
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
        candidateController2 = [v39 candidateController];
        screenTraits2 = [candidateController2 screenTraits];
        *buf = 134218240;
        v106 = v15;
        v107 = 2048;
        idiom2 = [screenTraits2 idiom];
        _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "%ld != %ld", buf, 0x16u);

        goto LABEL_27;
      }

      v99 = candidateController;
      v102 = v27;
      v31 = +[UIKeyboardImpl activeInstance];
      candidateController3 = [v31 candidateController];
      screenTraits3 = [candidateController3 screenTraits];
      if ([screenTraits3 idiom] == 24)
      {
LABEL_23:

        candidateController = v99;
        v27 = v102;
        goto LABEL_24;
      }

      v90 = candidateController3;
      v93 = v31;
      v96 = screenTraits;
      v34 = +[UIKeyboardImpl activeInstance];
      candidateController4 = [v34 candidateController];
      screenTraits4 = [candidateController4 screenTraits];
      if ([screenTraits4 idiom] == 25)
      {

        v31 = v93;
        screenTraits = v96;
        candidateController3 = v90;
        goto LABEL_23;
      }

      v79 = screenTraits4;
      v82 = candidateController4;
      v88 = v34;
      v76 = +[UIKeyboardImpl activeInstance];
      candidateController5 = [v76 candidateController];
      screenTraits5 = [candidateController5 screenTraits];
      if ([screenTraits5 idiom] == 26)
      {
        v85 = 1;
      }

      else
      {
        v70 = +[UIKeyboardImpl activeInstance];
        candidateController6 = [v70 candidateController];
        screenTraits6 = [candidateController6 screenTraits];
        v85 = [screenTraits6 idiom] == 23;
      }

      if (v85)
      {
        goto LABEL_25;
      }

LABEL_29:
      v42 = +[UIKeyboardImpl activeInstance];
      candidateController7 = [v42 candidateController];
      screenTraits7 = [candidateController7 screenTraits];
      if ([screenTraits7 idiom] == 1)
      {
      }

      else
      {
        v103 = v42;
        v45 = +[UIKeyboardImpl activeInstance];
        candidateController8 = [v45 candidateController];
        screenTraits8 = [candidateController8 screenTraits];
        if ([screenTraits8 idiom] == 24)
        {
        }

        else
        {
          v97 = screenTraits7;
          v100 = candidateController7;
          v94 = v45;
          v51 = +[UIKeyboardImpl activeInstance];
          candidateController9 = [v51 candidateController];
          screenTraits9 = [candidateController9 screenTraits];
          if ([screenTraits9 idiom] != 25)
          {
            v81 = screenTraits9;
            v84 = candidateController9;
            v91 = v51;
            v78 = +[UIKeyboardImpl activeInstance];
            candidateController10 = [v78 candidateController];
            screenTraits10 = [candidateController10 screenTraits];
            if ([screenTraits10 idiom] == 26)
            {
              v87 = 1;
            }

            else
            {
              v73 = +[UIKeyboardImpl activeInstance];
              candidateController11 = [v73 candidateController];
              screenTraits11 = [candidateController11 screenTraits];
              v87 = [screenTraits11 idiom] == 23;
            }

            if (!v87)
            {
              v58 = +[UIKeyboardImpl activeInstance];
              candidateController12 = [v58 candidateController];
              [candidateController12 candidateBarHeight];
              v61 = v60;
              v62 = +[UIKeyboardImpl activeInstance];
              candidateController13 = [v62 candidateController];
              [candidateController13 candidateBarEdgeInsetsForOrientation:orientation];
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

    if (idiom != 1)
    {
      v104 = +[UIKeyboardImpl activeInstance];
      candidateController14 = [v104 candidateController];
      screenTraits12 = [candidateController14 screenTraits];
      if ([screenTraits12 idiom] != 24)
      {
        v98 = +[UIKeyboardImpl activeInstance];
        candidateController15 = [v98 candidateController];
        screenTraits13 = [candidateController15 screenTraits];
        if ([screenTraits13 idiom] != 25)
        {
          v89 = +[UIKeyboardImpl activeInstance];
          candidateController16 = [v89 candidateController];
          screenTraits14 = [candidateController16 screenTraits];
          if ([screenTraits14 idiom] == 26)
          {
            v86 = 1;
          }

          else
          {
            v77 = +[UIKeyboardImpl activeInstance];
            candidateController17 = [v77 candidateController];
            screenTraits15 = [candidateController17 screenTraits];
            v86 = [screenTraits15 idiom] == 23;
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

          candidateController2 = +[UIKeyboardImpl activeInstance];
          v40CandidateController = [candidateController2 candidateController];
          screenTraits16 = [v40CandidateController screenTraits];
          *buf = 134218240;
          v106 = v15;
          v107 = 2048;
          idiom2 = [screenTraits16 idiom];
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

+ (double)_defaultPreferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [objc_opt_class() _defaultPreferredHeightForTraitCollection:collectionCopy interfaceOrientation:{objc_msgSend(self, "keyboardOrientation")}];
  v6 = v5;

  return v6;
}

- (id)_inputDelegateAsResponder:(id)responder
{
  responderCopy = responder;
  v4 = responderCopy;
  if (responderCopy)
  {
    delegateAsResponder = responderCopy;
    if (([responderCopy __isKindOfUIResponder] & 1) == 0)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      delegateAsResponder = [v6 delegateAsResponder];
    }
  }

  else
  {
    delegateAsResponder = 0;
  }

  return delegateAsResponder;
}

- (void)preferencesControllerChanged:(id)changed
{
  [(UISystemInputAssistantViewController *)self setHasCheckedPreferences:0];

  [(UISystemInputAssistantViewController *)self updateAssistantPreferences];
}

- (BOOL)_shouldCheckItemsVisibility
{
  v2 = +[UIKeyboardImpl activeInstance];
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v5 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  LOBYTE(v5) = 0;
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && useVisualModeWindowed)
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

- (BOOL)_assistantItemsVisibleForResponder:(id)responder
{
  responderCopy = responder;
  if (([responderCopy _isDisplayingWritingToolsSessionInUCB] & 1) == 0)
  {
    _isAssistantPreferenceEnabled = [(UISystemInputAssistantViewController *)self _isAssistantPreferenceEnabled];
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
    v7 = responderCopy;
    v35 = v7;
    v8 = _Block_copy(aBlock);
    v31 = v8;
    if (_isAssistantPreferenceEnabled)
    {
      v9 = 1;
    }

    else
    {
      v10 = v8[2]();
      v9 = [v10 allowsHidingShortcuts] ^ 1;
    }

    v11 = +[UIKeyboardImpl activeInstance];
    _showsScribbleIconsInAssistantView = [v11 _showsScribbleIconsInAssistantView];

    inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
    placement = [inputWindowController placement];
    if ([placement isFloating])
    {
      isHiddenForFloatingTransition = 1;
    }

    else
    {
      inputWindowController2 = [(UISystemInputAssistantViewController *)self inputWindowController];
      placement2 = [inputWindowController2 placement];
      isHiddenForFloatingTransition = [placement2 isHiddenForFloatingTransition];
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

        if (((_showsScribbleIconsInAssistantView ^ 1) & isHiddenForFloatingTransition) != 1)
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
    visualModeManager = [v19 visualModeManager];
    useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

    if (!v9)
    {
      goto LABEL_26;
    }

    if (useVisualModeWindowed)
    {
      inputView = [v7 inputView];
      if (inputView)
      {
        v5 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hasCustomInputViewController = [v23 hasCustomInputViewController];

    if (hasCustomInputViewController)
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
      leadingBarButtonGroups = [v26 leadingBarButtonGroups];
      if ((v25[2](v25, leadingBarButtonGroups) & 1) == 0)
      {
        trailingBarButtonGroups = [v26 trailingBarButtonGroups];
        if ((v25[2](v25, trailingBarButtonGroups) & 1) == 0)
        {
          _centerBarButtonGroups = [v26 _centerBarButtonGroups];
          v5 = v25[2](v25, _centerBarButtonGroups);
LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    else
    {
      leadingBarButtonGroups = [v26 leadingBarButtonGroups];
      if (![leadingBarButtonGroups count])
      {
        trailingBarButtonGroups = [v26 trailingBarButtonGroups];
        if (![trailingBarButtonGroups count])
        {
          _centerBarButtonGroups = [v26 _centerBarButtonGroups];
          v5 = [_centerBarButtonGroups count] != 0;
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

    inputView = v33;
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

- (BOOL)_centerPredictionViewVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  delegateCopy = delegate;
  viewsCopy = views;
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!centerViewController)
  {
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:delegateCopy];
  }

  centerViewController2 = [(UISystemInputAssistantViewController *)self centerViewController];
  if (objc_opt_respondsToSelector())
  {
    centerViewController3 = [(UISystemInputAssistantViewController *)self centerViewController];
    requiresKeyboard = [centerViewController3 requiresKeyboard];

    if (requiresKeyboard)
    {
      keyboard = [viewsCopy keyboard];

      if (!keyboard)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

  centerViewController4 = [(UISystemInputAssistantViewController *)self centerViewController];
  v14 = [centerViewController4 isVisibleForInputDelegate:delegateCopy inputViews:viewsCopy];

  if (v14)
  {
    v15 = 1;
    goto LABEL_13;
  }

LABEL_10:
  if ([(UISystemInputAssistantViewController *)self _canShowCenterBarButtonItem])
  {
    v16 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:delegateCopy];
    v17 = _UIResponderFindInputAssistantItem(v16);

    _centerBarButtonGroups = [v17 _centerBarButtonGroups];
    v15 = [_centerBarButtonGroups count] != 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_13:

  return v15;
}

- (BOOL)shouldBeShownForInputDelegate:(id)delegate inputViews:(id)views
{
  delegateCopy = delegate;
  viewsCopy = views;
  inputViews = viewsCopy;
  if (!delegateCopy)
  {
    delegateCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    if (inputViews)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    inputViews = [v16 inputViews];

    goto LABEL_3;
  }

  if (!viewsCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v9 currentInputMode];

  identifier = [currentInputMode identifier];
  v12 = [identifier containsString:@"dictation"];

  isEmojiInputMode = [currentInputMode isEmojiInputMode];
  isSpecializedInputMode = [currentInputMode isSpecializedInputMode];
  if (!isSpecializedInputMode)
  {
    goto LABEL_6;
  }

  if ((+[UIKeyboard isMajelEnabled]& v12) != 1)
  {
    LOBYTE(v15) = 1;
    if (!isEmojiInputMode)
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
    LOBYTE(v15) = isEmojiInputMode;
    if (_os_feature_enabled_impl())
    {
      v15 = +[UIKeyboard usesInputSystemUI]& isEmojiInputMode;
      if (!isSpecializedInputMode)
      {
LABEL_8:
        if (!isEmojiInputMode)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    else if (!isSpecializedInputMode)
    {
      goto LABEL_8;
    }
  }

  if (!isEmojiInputMode)
  {
    goto LABEL_20;
  }

LABEL_18:
  keyboard = [inputViews keyboard];
  if (keyboard)
  {
  }

  else
  {
    inputAccessoryView = [inputViews inputAccessoryView];
    if (inputAccessoryView)
    {
      v45 = inputAccessoryView;
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
    showingEmojiSearch = [v18 showingEmojiSearch];

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

  showingEmojiSearch = [delegateCopy keyboardType] == 122;
LABEL_24:
  v20 = (v12 ^ 1) & v15;
  if (!showingEmojiSearch)
  {
    v20 = v15;
  }

  if (v20)
  {
    goto LABEL_46;
  }

LABEL_29:
  v21 = [(UISystemInputAssistantViewController *)self _centerPredictionViewVisibleForInputDelegate:delegateCopy inputViews:inputViews];
  if (!v21 || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v22 = objc_claimAutoreleasedReturnValue(), [v22 _rootInputWindowController], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "placement"), v24 = objc_claimAutoreleasedReturnValue(), UIAssistantViewPlacement(v24), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isFloating"), v25, v24, v23, v22, (v26 & 1) == 0))
  {
    v27 = +[UIKeyboardImpl activeInstance];
    _shouldSuppressAssistantBar = [v27 _shouldSuppressAssistantBar];

    if (_shouldSuppressAssistantBar)
    {
      goto LABEL_46;
    }
  }

  if (([delegateCopy conformsToProtocol:&unk_1EFE8B2D0] & 1) == 0 && (objc_msgSend(delegateCopy, "conformsToProtocol:", &unk_1F016C7B0) & 1) == 0 && !objc_msgSend(delegateCopy, "conformsToProtocol:", &unk_1F016C810))
  {
    goto LABEL_46;
  }

  v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  hideSystemInputAssistantView = [v29 hideSystemInputAssistantView];

  if (hideSystemInputAssistantView)
  {
    goto LABEL_46;
  }

  v31 = +[UIKeyboardImpl activeInstance];
  disableInputBars = [v31 disableInputBars];

  if (disableInputBars)
  {
    goto LABEL_46;
  }

  v33 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v33 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  LODWORD(visualModeManager) = [(UISystemInputAssistantViewController *)self layoutHasBuiltinAssistantView];
  v36 = +[UIKeyboardImpl activeInstance];
  _showsScribbleIconsInAssistantView = [v36 _showsScribbleIconsInAssistantView];

  if (visualModeManager)
  {
    if ((useVisualModeWindowed & 1) == 0 && !_showsScribbleIconsInAssistantView)
    {
      goto LABEL_46;
    }
  }

  v38 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:delegateCopy];
  v39 = [(UISystemInputAssistantViewController *)self _assistantItemsVisibleForResponder:v38];

  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  placement = [inputWindowController placement];
  v42 = UIAssistantViewPlacement(placement);

  v43 = v21 || v39;
  if ([v42 isFloatingAssistantView] && ((v43 | useVisualModeWindowed & ~_showsScribbleIconsInAssistantView) & 1) == 0)
  {
    LOBYTE(v43) = +[UIAssistantBarButtonItemProvider isKeyboardGroupVisible];
  }

LABEL_47:
  return v43;
}

- (BOOL)shouldShowEmojiSearchViewControllerForInputDelegate:(id)delegate
{
  v22 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (_os_feature_enabled_impl() && !+[UIKeyboard usesInputSystemUI])
  {
    if (!delegateCopy)
    {
      delegateCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    }

    _isEmojiInputMode = [(UISystemInputAssistantViewController *)self _isEmojiInputMode];
    emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    emojiSearchView = [emojiSearchViewController emojiSearchView];
    searchTextField = [emojiSearchView searchTextField];
    isActive = [searchTextField isActive];

    if (_isEmojiInputMode)
    {
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      activeInputModes = [v11 activeInputModes];
      v13 = [activeInputModes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(activeInputModes);
            }

            if ([*(*(&v17 + 1) + 8 * i) supportsEmojiSearch])
            {
              isActive = 1;
              goto LABEL_18;
            }
          }

          v14 = [activeInputModes countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      activeInputModes = [v11 currentSystemInputModeExcludingEmoji:1];
      isActive = [activeInputModes supportsEmojiSearch];
LABEL_18:
    }
  }

  else
  {
    isActive = 0;
  }

  return isActive;
}

- (BOOL)_shouldCollapseEmojiSearchView
{
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  emojiSearchView = [emojiSearchViewController emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];
  isActive = [searchTextField isActive];

  return isActive ^ 1;
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  -[UISystemInputAssistantViewController preferredHeightForTraitCollection:orientation:](self, "preferredHeightForTraitCollection:orientation:", collectionCopy, [objc_opt_class() keyboardOrientation]);
  v6 = v5;

  return v6;
}

- (double)preferredHeightForTraitCollection:(id)collection orientation:(int64_t)orientation
{
  collectionCopy = collection;
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!centerViewController)
  {
    _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:_currentInputDelegate];
  }

  centerViewController2 = [(UISystemInputAssistantViewController *)self centerViewController];

  if (!centerViewController2 || (-[UISystemInputAssistantViewController centerViewController](self, "centerViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 preferredHeightForTraitCollection:collectionCopy], v12 = v11, v10, v12 == -1.0))
  {
    [objc_opt_class() _defaultPreferredHeightForTraitCollection:collectionCopy interfaceOrientation:orientation];
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
  candidateViewController = [(UISystemInputAssistantViewController *)self candidateViewController];

  if (candidateViewController)
  {
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView setButtonBarItemsExpanded:0 animated:0];
  }
}

- (void)_candidatesChanged
{
  if ([(UISystemInputAssistantViewController *)self shouldShowEmojiSearchViewControllerForInputDelegate:0])
  {
    candidateViewController = [(UISystemInputAssistantViewController *)self candidateViewController];

    if (candidateViewController)
    {
      v4 = +[UIKeyboardImpl activeInstance];
      candidateController = [v4 candidateController];

      v7 = 0;
      if ([candidateController hasCandidates])
      {
        v5 = +[UIKeyboardImpl activeInstance];
        hasMarkedText = [v5 hasMarkedText];

        if (hasMarkedText)
        {
          v7 = 1;
        }
      }

      emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      emojiSearchView = [emojiSearchViewController emojiSearchView];
      [emojiSearchView setPredictionViewVisible:v7 animated:1];
    }
  }
}

- (void)_inputModeChanged:(id)changed
{
  v20[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  emojiSearchView = [emojiSearchViewController emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];

  isActive = [searchTextField isActive];
  if ([(UISystemInputAssistantViewController *)self _isEmojiInputMode])
  {
    [(UISystemInputAssistantViewController *)self _dismissEmojiSearch];
  }

  userInfo = [changedCopy userInfo];
  v10 = [userInfo objectForKey:@"UITextInputFromInputModeKey"];

  if ([v10 isEmojiInputMode] & 1) == 0 && ((-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") | isActive))
  {
    v19 = @"UIKeyboardSwitchToEmojiIsEmojiInputMode";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode")}];
    v20[0] = v11;
    defaultCenter3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardSwitchToEmoji" object:0 userInfo:defaultCenter3];

    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    self->_isButtonBarItemsInlineVisible = [systemInputAssistantView showsButtonBarItemsInline];

    systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView2 setShowsButtonBarItemsInline:0];

LABEL_12:
    goto LABEL_14;
  }

  if ([v10 isEmojiInputMode] && ((-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") | isActive) & 1) == 0)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

    isButtonBarItemsInlineVisible = self->_isButtonBarItemsInlineVisible;
    systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView3 setShowsButtonBarItemsInline:isButtonBarItemsInlineVisible];

    self->_postedSwitchFromEmojiNotification = 1;
    goto LABEL_14;
  }

  if ([v10 isEmojiInputMode] && !-[UISystemInputAssistantViewController _isEmojiInputMode](self, "_isEmojiInputMode") && ((isActive ^ 1) & 1) == 0)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"UIKeyboardSwitchToEmojiSearch" object:0];
    goto LABEL_12;
  }

LABEL_14:
  [(UISystemInputAssistantViewController *)self dismissKeyboardItemIfNeeded];
  [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
}

- (void)_writingDirectionChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];

  if (([currentInputMode isEmojiInputMode] & 1) == 0)
  {
    emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    searchTextField = [emojiSearchView searchTextField];
    isActive = [searchTextField isActive];

    if (!isActive)
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
    emojiSearchView2 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    searchTextField2 = [emojiSearchView2 searchTextField];
    isActive2 = [searchTextField2 isActive];

    if ((isActive2 & 1) == 0)
    {
LABEL_7:
      view = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
      [view _setLocalOverrideTraitCollection:0];
      goto LABEL_8;
    }
  }

  userInfo = [changedCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"writingDirection"];
  intValue = [v13 intValue];

  view = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController view];
  v16 = [UITraitCollection traitCollectionWithLayoutDirection:intValue == 1];
  [view _setLocalOverrideTraitCollection:v16];

LABEL_8:
LABEL_9:
}

- (void)_expandBarItems
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setButtonBarItemsExpanded:1 animated:1];
}

- (void)_collapseBarItems
{
  predictionViewController = [(UISystemInputAssistantViewController *)self predictionViewController];
  if (predictionViewController)
  {
    v4 = predictionViewController;
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    centerViewHidden = [systemInputAssistantView centerViewHidden];

    if ((centerViewHidden & 1) == 0)
    {
      systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [systemInputAssistantView2 setButtonBarItemsExpanded:0 animated:1];
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

- (void)automaticallySetCenterViewControllerBasedOnInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_opt_class();
  assistantBarStyle = [(UISystemInputAssistantViewController *)self assistantBarStyle];
  v6 = +[UIKeyboardImpl activeInstance];
  suppressUpdateLayout = [v6 suppressUpdateLayout];

  if ((suppressUpdateLayout & 1) == 0)
  {
    inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
    animationAwarePlacement = [inputWindowController animationAwarePlacement];
    v10 = UIAssistantViewPlacement(animationAwarePlacement);

    if (([v10 showsInputOrAssistantViews] & 1) != 0 || objc_msgSend(v10, "isUndocked"))
    {
      assistantBarStyle = UIGetAssistantBarStyleFromPlacement(v10);
    }
  }

  v11 = [(UISystemInputAssistantViewController *)self _customCenterBarButtonItem:delegateCopy];
  v12 = [(UISystemInputAssistantViewController *)self _customCenterViewController:delegateCopy];
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
      showsCandidateBar = [v56 showsCandidateBar];

      if ((showsCandidateBar & 1) == 0)
      {
        v58 = +[UIKeyboardImpl activeInstance];
        _layout = [v58 _layout];
        hasCandidateKeys = [_layout hasCandidateKeys];

        if ((hasCandidateKeys & 1) == 0)
        {
          if (_os_feature_enabled_impl())
          {
            v61 = +[UIKeyboardInputModeController sharedInputModeController];
            currentInputMode = [v61 currentInputMode];
            if ([currentInputMode showsTransliterationCandidates])
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
  predictiveViewController = [(UISystemInputAssistantViewController *)self predictiveViewController];
  if (!predictiveViewController || (v16 = predictiveViewController, [(UISystemInputAssistantViewController *)self predictiveViewController], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_opt_class(), v17, v16, v18 != v14))
  {
    v19 = NSStringFromClass(v14);
    cachedPredictiveViewControllers = [(UISystemInputAssistantViewController *)self cachedPredictiveViewControllers];
    v21 = [cachedPredictiveViewControllers objectForKey:v19];

    if (!v21)
    {
      v21 = [[v14 alloc] initWithNibName:0 bundle:0];
      if (v21)
      {
        cachedPredictiveViewControllers2 = [(UISystemInputAssistantViewController *)self cachedPredictiveViewControllers];
        [cachedPredictiveViewControllers2 setObject:v21 forKey:v19];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 setShowsRemoteInputDashViewController:{-[UISystemInputAssistantViewController showsRemoteInputDashViewController](self, "showsRemoteInputDashViewController")}];
    }

    [(UISystemInputAssistantViewController *)self setPredictiveViewController:v21];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_uisavcccn" object:0];
  }

  if ([(UISystemInputAssistantViewController *)self shouldShowEmojiSearchViewControllerForInputDelegate:delegateCopy])
  {
    emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];

    if (!emojiSearchViewController)
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

      emojiSearchViewController2 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      [emojiSearchViewController2 setDelegate:self];
    }

    _shouldCollapseEmojiSearchView = [(UISystemInputAssistantViewController *)self _shouldCollapseEmojiSearchView];
    emojiSearchViewController3 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    emojiSearchView = [emojiSearchViewController3 emojiSearchView];
    [emojiSearchView setCollapsed:_shouldCollapseEmojiSearchView];

    predictiveViewController2 = [(UISystemInputAssistantViewController *)self predictiveViewController];
    emojiSearchViewController4 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    [emojiSearchViewController4 setChildPredictionViewController:predictiveViewController2];

    emojiSearchViewController5 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    [(UISystemInputAssistantViewController *)self setCenterViewController:emojiSearchViewController5];

    v35 = +[UIKeyboardImpl activeInstance];
    autocorrectionController = [v35 autocorrectionController];
    [autocorrectionController addAutocorrectionObserver:self];

    emojiSearchViewController6 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    emojiSearchView2 = [emojiSearchViewController6 emojiSearchView];
    searchTextField = [emojiSearchView2 searchTextField];
    [searchTextField setKeyboardType:122];

    emojiSearchViewController7 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    emojiSearchView3 = [emojiSearchViewController7 emojiSearchView];
    searchTextField2 = [emojiSearchView3 searchTextField];
    [searchTextField2 setReturnKeyType:9];

    v11 = 0;
  }

  else
  {
    centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
    v44 = centerViewController;
    if (v12)
    {

      if (v44 != v12)
      {
        [(UISystemInputAssistantViewController *)self setCenterViewController:v12];
      }
    }

    else
    {
      predictiveViewController3 = [(UISystemInputAssistantViewController *)self predictiveViewController];

      if (v44 != predictiveViewController3)
      {
        v46 = +[UIKeyboardImpl activeInstance];
        autocorrectionController2 = [v46 autocorrectionController];
        [autocorrectionController2 removeAutocorrectionObserver:self];

        predictiveViewController4 = [(UISystemInputAssistantViewController *)self predictiveViewController];
        [(UISystemInputAssistantViewController *)self setCenterViewController:predictiveViewController4];
      }
    }
  }

  customView = [v11 customView];
  if (customView)
  {
    v50 = customView;
    compatibilityViewController = [(UISystemInputAssistantViewController *)self compatibilityViewController];
    customView2 = [compatibilityViewController customView];
    customView3 = [v11 customView];

    if (customView2 != customView3)
    {
      customView4 = [v11 customView];
      compatibilityViewController2 = [(UISystemInputAssistantViewController *)self compatibilityViewController];
      [compatibilityViewController2 setCustomView:customView4];
    }
  }

  [(UISystemInputAssistantViewController *)self _updateViewsForAssistantBarStyle:assistantBarStyle];
  [(UISystemInputAssistantViewController *)self updateCenterViewVisibilityStateForInputDelegate:delegateCopy];
  [(UISystemInputAssistantViewController *)self updateAssistantBarStyle:assistantBarStyle];
}

- (BOOL)updateFloatingAssistantRectEdge:(unint64_t)edge position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  layout = [systemInputAssistantView layout];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    layout2 = [systemInputAssistantView2 layout];
    [layout2 trackHorizontalMovement:{x, y}];

    systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    layout3 = [systemInputAssistantView3 layout];
    [layout3 setCurrentRectEdge:edge];
  }

  return v10 & 1;
}

- (void)prepareTransition:(id)transition animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = UIAssistantViewPlacement(transition);
  v7 = UIGetAssistantBarStyleFromPlacement(v6);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__UISystemInputAssistantViewController_prepareTransition_animated___block_invoke;
  v13[3] = &unk_1E70F32F0;
  v13[4] = self;
  v13[5] = v7;
  v8 = _Block_copy(v13);
  v9 = v8;
  if (animatedCopy)
  {
    v10 = [(UISystemInputAssistantViewController *)self layoutFromAssistantBarStyle:v7];
    v11 = [(UISystemInputAssistantViewController *)self styleFromAssistantBarStyle:v7];
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView transitionToLayout:v10 withStyle:v11 start:v9];
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

- (void)_updateViewsForAssistantBarStyle:(int64_t)style
{
  v5 = [(UISystemInputAssistantViewController *)self layoutFromAssistantBarStyle:?];
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setLayout:v5];

  v7 = [(UISystemInputAssistantViewController *)self styleFromAssistantBarStyle:style];
  systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView2 setStyle:v7];

  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  LOBYTE(systemInputAssistantView2) = objc_opt_respondsToSelector();

  if (systemInputAssistantView2)
  {
    centerViewController2 = [(UISystemInputAssistantViewController *)self centerViewController];
    [centerViewController2 setAssistantBarStyle:style];
  }
}

- (void)setCenterViewController:(id)controller
{
  controllerCopy = controller;
  centerViewController = self->_centerViewController;
  if (centerViewController != controllerCopy)
  {
    v13 = controllerCopy;
    [(UIPredictiveViewController *)centerViewController removeFromParentViewController];
    view = [(UIPredictiveViewController *)self->_centerViewController view];
    [view removeFromSuperview];

    emojiSearchViewController = self->_emojiSearchViewController;
    if (emojiSearchViewController != v13)
    {
      self->_emojiSearchViewController = 0;
    }

    objc_storeStrong(&self->_centerViewController, controller);
    if (v13)
    {
      view2 = [(TUIEmojiSearchInputViewController *)v13 view];
      [view2 removeFromSuperview];

      [(UIViewController *)self addChildViewController:v13];
      view3 = [(TUIEmojiSearchInputViewController *)v13 view];
      systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [systemInputAssistantView setCenterView:view3];
    }

    v12 = objc_opt_respondsToSelector();
    controllerCopy = v13;
    if (v12)
    {
      [(TUIEmojiSearchInputViewController *)v13 setAssistantBarStyle:self->_assistantBarStyle];
      controllerCopy = v13;
    }
  }
}

- (void)updateCenterViewVisibilityStateForInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    delegateCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  v49 = delegateCopy;
  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:delegateCopy];
  v6 = +[UIKeyboard activeKeyboard];
  _rootInputWindowController = [v6 _rootInputWindowController];
  placement = [_rootInputWindowController placement];
  v9 = UIAssistantViewPlacement(placement);

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    isFloating = [v9 isFloating];
  }

  else
  {
    isFloating = 1;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = +[UIKeyboard activeKeyboard];
  _rootInputWindowController2 = [v12 _rootInputWindowController];
  isSplitting = [_rootInputWindowController2 isSplitting];

  _disableAutomaticKeyboardUI = [v5 _disableAutomaticKeyboardUI];
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  v17 = [centerViewController isVisibleForInputDelegate:v49 inputViews:0];

  isKindOfClass = 0;
  if (+[UIKeyboard usesInputSystemUI]&& isFloating)
  {
    centerViewController2 = [(UISystemInputAssistantViewController *)self centerViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  _hidesCenterViewForActiveWindowingMode = [(UISystemInputAssistantViewController *)self _hidesCenterViewForActiveWindowingMode];
  v21 = +[UIKeyboard usesInputSystemUI];
  if ((v21 & v17) == 1)
  {
    v22 = [v11 showingEmojiSearch] ^ 1;
  }

  else
  {
    LOBYTE(v22) = !v21 & v17;
  }

  v23 = isSplitting | _disableAutomaticKeyboardUI | ~v22 | isKindOfClass | _hidesCenterViewForActiveWindowingMode;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  centerViewHidden = [systemInputAssistantView centerViewHidden];

  systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v27 = v23 & 1;
  [systemInputAssistantView2 setCenterViewHidden:v27];

  if (centerViewHidden != v27)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [defaultCenter postNotificationName:@"_uisavcvcn" object:systemInputAssistantView3];
  }

  systemInputAssistantView4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    systemInputAssistantView5 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView5 setScrollEnabled:{+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") ^ 1}];
  }

  view = [(UIViewController *)self view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];
  if (([_inheritedRenderConfig colorAdaptiveBackground] & 1) == 0)
  {

    goto LABEL_21;
  }

  centerViewController3 = [(UISystemInputAssistantViewController *)self centerViewController];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    view = [(UISystemInputAssistantViewController *)self centerViewController];
    if (![view performSelector:sel_extendsFromKeyplane])
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
    hidesExpandableButton = 1;
  }

  else
  {
    centerViewController4 = [(UISystemInputAssistantViewController *)self centerViewController];
    v40 = objc_opt_respondsToSelector();

    if (v40)
    {
      centerViewController5 = [(UISystemInputAssistantViewController *)self centerViewController];
      hidesExpandableButton = [centerViewController5 hidesExpandableButton];
    }

    else
    {
      hidesExpandableButton = 0;
    }
  }

  systemInputAssistantView6 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView6 setHidesExpandableButton:hidesExpandableButton];

  v43 = [(UISystemInputAssistantViewController *)self _shouldShowExpandableButtonBarItemsForResponder:v5];
  systemInputAssistantView7 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView7 setShowsExpandableButtonBarItems:v43];

  systemInputAssistantView8 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  showsExpandableButtonBarItems = [systemInputAssistantView8 showsExpandableButtonBarItems];
  v47 = +[UIKeyboardImpl activeInstance];
  candidateController = [v47 candidateController];
  [candidateController setReuseArrowButtonToExpandAssistantBarItems:showsExpandableButtonBarItems];

  if ([(UISystemInputAssistantViewController *)self _hasCustomCenterViewControllerWidth])
  {
    [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  }
}

- (void)setInputAssistantButtonItemsForResponder:(id)responder
{
  responderCopy = responder;
  if ([(UISystemInputAssistantViewController *)self layoutHasBuiltinAssistantView])
  {
    [(UISystemInputAssistantViewController *)self _beginObservingInputAssistantItemForRelevantItemChanges:0];
    goto LABEL_25;
  }

  if (responderCopy)
  {
    v4 = _UIResponderFindInputAssistantItem(responderCopy);
    if ([(UISystemInputAssistantViewController *)self _shouldCheckItemsVisibility])
    {
      leadingBarButtonGroups = [v4 leadingBarButtonGroups];
      __81__UISystemInputAssistantViewController_setInputAssistantButtonItemsForResponder___block_invoke(leadingBarButtonGroups);

      trailingBarButtonGroups = [v4 trailingBarButtonGroups];
      __81__UISystemInputAssistantViewController_setInputAssistantButtonItemsForResponder___block_invoke(trailingBarButtonGroups);
    }

    if ([(UISystemInputAssistantViewController *)self _assistantItemsVisibleForResponder:responderCopy])
    {
      remoteAssistantItem = [(UISystemInputAssistantViewController *)self remoteAssistantItem];

      if (remoteAssistantItem)
      {
        remoteAssistantItem2 = [(UISystemInputAssistantViewController *)self remoteAssistantItem];

        v4 = remoteAssistantItem2;
      }

      if (!-[UISystemInputAssistantViewController _isAssistantPreferenceEnabled](self, "_isAssistantPreferenceEnabled") && [v4 allowsHidingShortcuts])
      {

        v4 = 0;
      }

      systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [systemInputAssistantView setInputAssistantItem:v4];

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
      inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
      expectedPlacement = [inputWindowController expectedPlacement];
      systemInputAssistantView4 = UIAssistantViewPlacement(expectedPlacement);

      v13 = UIGetAssistantBarStyleFromPlacement(systemInputAssistantView4);
      if (self->_assistantBarStyle != v13)
      {
        v14 = v13;
        if (([systemInputAssistantView4 showsInputOrAssistantViews] & 1) != 0 || objc_msgSend(systemInputAssistantView4, "isUndocked"))
        {
          [(UISystemInputAssistantViewController *)self _updateViewsForAssistantBarStyle:v14];
          self->_assistantBarStyle = v14;
        }

        [(UISystemInputAssistantViewController *)self setOverrideSafeAreaInsets];
      }

      if ([objc_opt_class() shouldShowSystemInputAssistantItems])
      {
        v15 = [UIAssistantBarButtonItemProvider unmodifiableSystemAssistantItem:self->_assistantBarStyle];
        systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [systemInputAssistantView2 setSystemInputAssistantItem:v15];
      }

      goto LABEL_23;
    }
  }

  systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView3 setInputAssistantItem:0 force:1];

  _writingToolsInputDashboardViewController = [responderCopy _writingToolsInputDashboardViewController];

  if (_writingToolsInputDashboardViewController)
  {
    systemInputAssistantView4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    [systemInputAssistantView4 setSystemInputAssistantItem:0];
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
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setNeedsValidation];
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
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  systemInputAssistantItem = [systemInputAssistantView systemInputAssistantItem];
  leadingBarButtonGroups = [systemInputAssistantItem leadingBarButtonGroups];

  obj = leadingBarButtonGroups;
  v19 = [leadingBarButtonGroups countByEnumeratingWithState:&v24 objects:v29 count:16];
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
        barButtonItems = [v6 barButtonItems];
        v8 = [barButtonItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(barButtonItems);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              if ([v12 tag] == 1735287116)
              {
                view = [v12 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  view2 = [v12 view];
                  contextMenuInteraction = [view2 contextMenuInteraction];
                  [contextMenuInteraction dismissMenu];

                  goto LABEL_17;
                }
              }
            }

            v9 = [barButtonItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  systemInputAssistantItem = [systemInputAssistantView systemInputAssistantItem];
  trailingBarButtonGroups = [systemInputAssistantItem trailingBarButtonGroups];

  obj = trailingBarButtonGroups;
  v19 = [trailingBarButtonGroups countByEnumeratingWithState:&v24 objects:v29 count:16];
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
        barButtonItems = [v6 barButtonItems];
        v8 = [barButtonItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(barButtonItems);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              if ([v12 tag] == 1944175551)
              {
                view = [v12 view];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  view2 = [v12 view];
                  contextMenuInteraction = [view2 contextMenuInteraction];
                  [contextMenuInteraction dismissMenu];

                  goto LABEL_17;
                }
              }
            }

            v9 = [barButtonItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (void)setRemoteAssistantViewInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_remoteAssistantViewInfo, info);
  [infoCopy size];
  v6 = v5;
  v8 = v7;
  [infoCopy insets];
  v11 = v10;
  if (v9 <= 50.0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 50.0;
  }

  if ([infoCopy contextId])
  {
    v13 = v11 + fmin(v8, 120.0);
    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v16 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:_currentInputDelegate];

    if ([(UISystemInputAssistantViewController *)self _shouldShowExpandableButtonBarItemsForResponder:v16])
    {
      v17 = objc_opt_respondsToSelector();
    }

    else
    {
      v17 = 0;
    }

    v18 = v13 + v12;
    contextId = [infoCopy contextId];
    contextID = [(_UILayerHostView *)self->_remoteAssistantView contextID];
    v21 = MEMORY[0x1E695EFF8];
    v22 = -v11;
    if (contextId != contextID)
    {
      [(UIView *)self->_remoteAssistantView removeFromSuperview];
      v23 = -[_UILayerHostView initWithFrame:pid:contextID:]([_UILayerHostView alloc], "initWithFrame:pid:contextID:", [infoCopy processId], objc_msgSend(infoCopy, "contextId"), 0.0, v22, v6, v18);
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
      [systemInputAssistantView setSecondaryView:self->_remoteAssistantContainerView];
    }

    else
    {
      superview = [(UIView *)self->_remoteAssistantContainerView superview];

      if (superview != systemInputAssistantView)
      {
        [systemInputAssistantView insertSubview:self->_remoteAssistantContainerView atIndex:0];
      }
    }

    [(UIView *)self->_remoteAssistantView frame];
    if (v6 != v29 || v18 != v28)
    {
      [(UIView *)self->_remoteAssistantContainerView setFrame:*v21, v21[1], v6, v18];
      [(UIView *)self->_remoteAssistantView frame];
      [(UIView *)self->_remoteAssistantView setFrame:?];
      v30 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerRootController = [v30 containerRootController];
      [containerRootController updateViewSizingConstraints];
    }
  }

  else
  {
    [(UIView *)self->_remoteAssistantView removeFromSuperview];
    systemInputAssistantView = self->_remoteAssistantView;
    self->_remoteAssistantView = 0;
  }

  if (self->_remoteAssistantView)
  {
    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
    _currentInputDelegate2 = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:_currentInputDelegate2];
  }
}

- (void)applyRemoteAssistantItem:(id)item
{
  itemCopy = item;
  v5 = [(UISystemInputAssistantViewController *)self UIAssistantItemForRTIAssistantItem:itemCopy];
  [(UISystemInputAssistantViewController *)self setRemoteAssistantItem:v5];

  -[UISystemInputAssistantViewController setShowsRemoteInputDashViewController:](self, "setShowsRemoteInputDashViewController:", [itemCopy showsInputDashboardViewController]);
  [itemCopy centerViewPreferredWidth];
  v7 = v6;

  [(UISystemInputAssistantViewController *)self setRemoteCenterViewPreferredWidth:v7];
}

- (id)placeholderItemOfWidth:(double)width
{
  v4 = [UIBarButtonItem alloc];
  v5 = objc_alloc_init(UIView);
  v6 = [(UIBarButtonItem *)v4 initWithCustomView:v5];

  [(UIBarButtonItem *)v6 setWidth:width];

  return v6;
}

- (id)UIGroupsForRTIGroups:(id)groups
{
  v37 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = groupsCopy;
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
        itemWidths = [v8 itemWidths];
        v15 = [v13 initWithCapacity:{objc_msgSend(itemWidths, "count")}];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        itemWidths2 = [v8 itemWidths];
        v17 = [itemWidths2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(itemWidths2);
              }

              [*(*(&v27 + 1) + 8 * j) floatValue];
              v22 = [(UISystemInputAssistantViewController *)self placeholderItemOfWidth:v21];
              [v15 addObject:v22];
            }

            v18 = [itemWidths2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (id)UIAssistantItemForRTIAssistantItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    v5 = objc_alloc_init(UITextInputAssistantItem);
    -[UITextInputAssistantItem _setShowsBarButtonItemsInline:](v5, "_setShowsBarButtonItemsInline:", [itemCopy showsBarButtonItemsInline]);
    detachedTintColor = [itemCopy detachedTintColor];
    [(UITextInputAssistantItem *)v5 _setDetachedTintColor:detachedTintColor];

    detachedBackgroundColor = [itemCopy detachedBackgroundColor];
    [(UITextInputAssistantItem *)v5 _setDetachedBackgroundColor:detachedBackgroundColor];

    -[UITextInputAssistantItem _setVisibleWhenMinimized:](v5, "_setVisibleWhenMinimized:", [itemCopy visibleWhenMinimized]);
    leadingBarButtonGroups = [itemCopy leadingBarButtonGroups];
    v9 = [(UISystemInputAssistantViewController *)self UIGroupsForRTIGroups:leadingBarButtonGroups];
    [(UITextInputAssistantItem *)v5 setLeadingBarButtonGroups:v9];

    trailingBarButtonGroups = [itemCopy trailingBarButtonGroups];

    v11 = [(UISystemInputAssistantViewController *)self UIGroupsForRTIGroups:trailingBarButtonGroups];
    [(UITextInputAssistantItem *)v5 setTrailingBarButtonGroups:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSystemInputAssistantViewStylingForInputAssistantItem:(id)item
{
  itemCopy = item;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v4 inputViews];

  v6 = +[UIKeyboardImpl activeInstance];
  if ([v6 isMinimized] & 1) != 0 || (objc_msgSend(inputViews, "isCustomInputView"))
  {
    v7 = 1;
  }

  else
  {
    inputView = [inputViews inputView];
    v7 = inputView == 0;
  }

  v9 = +[UIColor clearColor];
  _defaultTintColor = [(UISystemInputAssistantViewController *)self _defaultTintColor];
  if (v7)
  {
    _detachedTintColor = [itemCopy _detachedTintColor];

    if (_detachedTintColor)
    {
      _detachedTintColor2 = [itemCopy _detachedTintColor];

      _defaultTintColor = _detachedTintColor2;
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      goto LABEL_9;
    }

    _detachedBackgroundEffect = [itemCopy _detachedBackgroundEffect];

    v7 = _detachedBackgroundEffect != 0;
    if (_detachedBackgroundEffect)
    {
      _detachedBackgroundEffect2 = [itemCopy _detachedBackgroundEffect];
      systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      backdropView = [systemInputAssistantView backdropView];
      [backdropView setEffect:_detachedBackgroundEffect2];
    }

    else
    {
      _detachedBackgroundColor = [itemCopy _detachedBackgroundColor];

      if (!_detachedBackgroundColor)
      {
LABEL_9:
        v7 = 0;
LABEL_15:
        [(UISystemInputAssistantViewController *)self _dismissEmojiSearch];
        goto LABEL_16;
      }

      [itemCopy _detachedBackgroundColor];
      v9 = _detachedBackgroundEffect2 = v9;
    }

    goto LABEL_15;
  }

LABEL_16:
  systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView2 setTintColor:_defaultTintColor];

  systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView3 setBackgroundColor:v9];

  systemInputAssistantView4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView4 setBackgroundVisible:v7];
}

- (BOOL)_allowedToShowBarButtonItemsInline:(id)inline
{
  view = [(UIViewController *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (os_variant_has_internal_diagnostics())
  {
    if ([(UISystemInputAssistantViewController *)self hasCheckedPreferences])
    {
      assistantOniPhonePreference = [(UISystemInputAssistantViewController *)self assistantOniPhonePreference];
    }

    else
    {
      v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v15 preferencesActions];
      assistantOniPhonePreference = [preferencesActions BOOLForPreferenceKey:@"KeyboardAssistantOniPhone"];
    }
  }

  else
  {
    assistantOniPhonePreference = 0;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    inputSystemSourceSession = [v8 inputSystemSourceSession];
    documentTraits = [inputSystemSourceSession documentTraits];
    bundleId = [documentTraits bundleId];
  }

  else
  {
    bundleId = _UIMainBundleIdentifier();
  }

  v12 = userInterfaceIdiom == 0;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  if (((v13 | assistantOniPhonePreference) & 1) == 0)
  {
    v12 = [&unk_1EFE2BD70 containsObject:bundleId];
  }

  return v12;
}

- (BOOL)_shouldShowExpandableButtonBarItemsForResponder:(id)responder
{
  responderCopy = responder;
  if (responderCopy && [(UISystemInputAssistantViewController *)self _allowedToShowBarButtonItemsInline:responderCopy])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      [(UISystemInputAssistantViewController *)self remoteAssistantItem];
    }

    else
    {
      _UIResponderFindInputAssistantItem(responderCopy);
    }
    v6 = ;
    if ([v6 _showsBarButtonItemsInline])
    {
      leadingBarButtonGroups = [v6 leadingBarButtonGroups];
      if ([leadingBarButtonGroups count])
      {
        v5 = 1;
      }

      else
      {
        trailingBarButtonGroups = [v6 trailingBarButtonGroups];
        v5 = [trailingBarButtonGroups count] != 0;
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

- (void)_applicationDidBecomeActiveNotification:(id)notification
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

- (void)_willChangeTextEffectsRotationNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"UITextEffectsWindow_toOrientation"];
  integerValue = [v5 integerValue];

  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:integerValue];
}

- (void)_didChangeTextEffectsRotationNotification:(id)notification
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setNeedsValidation];
}

- (void)_beginObservingInputAssistantItemForRelevantItemChanges:(id)changes
{
  v18 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
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
        observedInputAssistantItem = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];

        if (observedInputAssistantItem)
        {
          observedInputAssistantItem2 = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
          [observedInputAssistantItem2 removeObserver:self forKeyPath:v10];
        }

        if (changesCopy)
        {
          [changesCopy addObserver:self forKeyPath:v10 options:3 context:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(UISystemInputAssistantViewController *)self setObservedInputAssistantItem:changesCopy];
}

void __96__UISystemInputAssistantViewController__beginObservingInputAssistantItemForRelevantItemChanges___block_invoke()
{
  v0 = _MergedGlobals_17_1;
  _MergedGlobals_17_1 = &unk_1EFE2BD88;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"bounds"])
  {
    v9 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [v9 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
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
      view = [(UIViewController *)self view];
      window = [view window];
      if (window)
      {
        view2 = [(UIViewController *)self view];
        window2 = [view2 window];
        _toWindowOrientation = [window2 _toWindowOrientation];
      }

      else
      {
        _toWindowOrientation = [objc_opt_class() keyboardOrientation];
      }

      [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:_toWindowOrientation];
    }
  }

  else
  {
    if ([pathCopy isEqualToString:@"centerBarButtonGroups"])
    {
      _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
      [(UISystemInputAssistantViewController *)self automaticallySetCenterViewControllerBasedOnInputDelegate:_currentInputDelegate];
    }

    else
    {
      systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
      [systemInputAssistantView setNeedsValidation];

      _currentInputDelegate = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
      v34 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
      if ([pathCopy hasSuffix:@"BarButtonGroups"] && (v34 != _currentInputDelegate || (objc_msgSend(v34, "isEqual:", _currentInputDelegate) & 1) == 0))
      {
        v35 = +[UIKeyboardImpl activeInstance];
        remoteTextInputPartner = [v35 remoteTextInputPartner];
        [remoteTextInputPartner documentTraitsChanged];

        systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        if (objc_opt_respondsToSelector())
        {
          observedInputAssistantItem = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
          [systemInputAssistantView2 setInputAssistantItem:observedInputAssistantItem force:1];
        }
      }
    }
  }
}

- (void)_willChangePlacementNotification:(id)notification
{
  expandedItemsController = [(UISystemInputAssistantViewController *)self expandedItemsController];
  presentingViewController = [expandedItemsController presentingViewController];

  if (presentingViewController)
  {
    expandedItemsController2 = [(UISystemInputAssistantViewController *)self expandedItemsController];
    presentationController = [expandedItemsController2 presentationController];
    presentedView = [presentationController presentedView];
    [presentedView setHidden:1];

    [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

  v9 = +[UIKeyboardSceneDelegate interfaceOrientation];

  [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:v9];
}

- (void)_didChangePlacementOrInputSourceNotification:(id)notification
{
  notificationCopy = notification;
  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  isTransitioning = [inputWindowController isTransitioning];

  if ((isTransitioning & 1) == 0)
  {
    [(UISystemInputAssistantViewController *)self updateCenterViewVisibilityStateForInputDelegate:0];
  }

  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setNeedsValidation];

  observedInputAssistantItem = [(UISystemInputAssistantViewController *)self observedInputAssistantItem];
  [(UISystemInputAssistantViewController *)self _updateSystemInputAssistantViewStylingForInputAssistantItem:observedInputAssistantItem];

  [(UISystemInputAssistantViewController *)self _updateLanguageIndicatorPointerInteractionAndImage];
  v8 = +[UIKeyboardImpl activeInstance];
  if ([v8 _shouldMinimizeForHardwareKeyboard])
  {
    name = [notificationCopy name];
    v10 = [name isEqualToString:@"UITextInputSourceDidChangeNotification"];

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

- (void)_keyboardDictationAvailabilityDidChangeNotification:(id)notification
{
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setNeedsValidation];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v6 responder];
  [(UISystemInputAssistantViewController *)self setInputAssistantButtonItemsForResponder:responder];
}

- (double)_buttonBarWidthForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation
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

  v11 = orientation - 3;
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

- (double)_centerViewWidthForTraitCollection:(id)collection
{
  collectionCopy = collection;
  -[UISystemInputAssistantViewController _centerViewWidthForTraitCollection:interfaceOrientation:](self, "_centerViewWidthForTraitCollection:interfaceOrientation:", collectionCopy, [objc_opt_class() keyboardOrientation]);
  v6 = v5;

  return v6;
}

- (double)_centerViewWidthForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation
{
  collectionCopy = collection;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  inputAssistantItem = [systemInputAssistantView inputAssistantItem];
  _centerBarButtonGroups = [inputAssistantItem _centerBarButtonGroups];

  v10 = 0.0;
  if ([_centerBarButtonGroups count])
  {
    firstObject = [_centerBarButtonGroups firstObject];
    barButtonItems = [firstObject barButtonItems];
    v13 = [barButtonItems count];

    if (v13)
    {
      firstObject2 = [_centerBarButtonGroups firstObject];
      barButtonItems2 = [firstObject2 barButtonItems];
      firstObject3 = [barButtonItems2 firstObject];

      [firstObject3 width];
      if (v17 <= 0.0)
      {
        goto LABEL_45;
      }

      [firstObject3 width];
      v10 = v18;
    }
  }

  if ([(UISystemInputAssistantViewController *)self _hasCustomCenterViewControllerWidth])
  {
    v19 = [(UISystemInputAssistantViewController *)self _customCenterViewController:0];
    [v19 preferredWidthForTraitCollection:collectionCopy];
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
  firstObject3 = [UIKBScreenTraits traitsWithScreen:v23 orientation:orientation];

  [(UISystemInputAssistantViewController *)self _buttonBarWidthForTraitCollection:collectionCopy interfaceOrientation:orientation];
  v25 = v24;
  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  expectedPlacement = [inputWindowController expectedPlacement];
  if ([expectedPlacement isFloatingAssistantView])
  {
  }

  else
  {
    v28 = +[UIKeyboardImpl activeInstance];
    _showsScribbleIconsInAssistantView = [v28 _showsScribbleIconsInAssistantView];

    if ((_showsScribbleIconsInAssistantView & 1) == 0)
    {
      [firstObject3 assistantViewWidth];
      v31 = v30 - v25;
      if (v10 > v31)
      {
        v10 = v31;
      }
    }
  }

  if (v10 == 0.0)
  {
    inputWindowController2 = [(UISystemInputAssistantViewController *)self inputWindowController];
    expectedPlacement2 = [inputWindowController2 expectedPlacement];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      isFloating = [expectedPlacement2 isFloating];
    }

    else
    {
      isFloating = 1;
    }

    systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    showsExpandableButtonBarItems = [systemInputAssistantView2 showsExpandableButtonBarItems];

    if (![expectedPlacement2 isFloatingAssistantView] || (v38 = 1.0, (objc_msgSend(expectedPlacement2, "isCompactAssistantView") & 1) == 0))
    {
      if ([expectedPlacement2 isFloatingAssistantView])
      {
        v39 = (orientation - 3) < 2;
        v40 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
        if ([v40 wantsAssistantWhileSuppressingKeyboard])
        {
          v41 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          disableBecomeFirstResponder = [v41 disableBecomeFirstResponder];
        }

        else
        {
          disableBecomeFirstResponder = 0;
        }

        v38 = dbl_18A679D70[v39];

        view = [(UIViewController *)self view];
        window = [view window];
        windowScene = [window windowScene];
        _enhancedWindowingEnabled = [windowScene _enhancedWindowingEnabled];

        if (_enhancedWindowingEnabled && (disableBecomeFirstResponder & 1) == 0)
        {
          [firstObject3 assistantViewWidth];
          v48 = v47 - (v25 + v25);
          if (v38 < v48)
          {
            v48 = v38;
          }

          v38 = fmax(v48, 1.0);
        }
      }

      else if ((isFloating | isKindOfClass))
      {
        if (v10 < 667.0 || ((orientation - 5) < 0xFFFFFFFFFFFFFFFELL) | showsExpandableButtonBarItems & 1)
        {
          v38 = v10;
        }

        else
        {
          v57 = +[UIKeyboardImpl activeInstance];
          _layout = [v57 _layout];
          currentKeyplane = [_layout currentKeyplane];
          [currentKeyplane keyUnionFrame];
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
        emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
        emojiSearchView = [emojiSearchViewController emojiSearchView];
        searchTextField = [emojiSearchView searchTextField];
        isActive = [searchTextField isActive];

        emojiSearchViewController2 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
        centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];

        if ((isActive & 1) != 0 || +[UIKeyboard isRemoteEmojiCollectionViewEnabled]&& emojiSearchViewController2 == centerViewController)
        {
          [firstObject3 keyboardWidth];
          v38 = v55;
        }

        else
        {
          [firstObject3 keyboardWidth];
          v38 = v56 - (v25 + v25);
        }
      }
    }

    v10 = v38;
  }

LABEL_45:

  return v10;
}

- (void)_updateCenterViewWidthForInterfaceOrientation:(int64_t)orientation
{
  inputWindowController = [(UISystemInputAssistantViewController *)self inputWindowController];
  expectedPlacement = [inputWindowController expectedPlacement];
  v24 = UIAssistantViewPlacement(expectedPlacement);

  isHiddenForFloatingTransition = [v24 isHiddenForFloatingTransition];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    isFloating = [v24 isFloating];
  }

  else
  {
    isFloating = 1;
  }

  _isEmojiInputMode = [(UISystemInputAssistantViewController *)self _isEmojiInputMode];
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  emojiSearchView = [emojiSearchViewController emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];
  v13 = _isEmojiInputMode | [searchTextField isActive];

  if (v13 == 1)
  {
    v14 = v24;
    if ((isFloating & 1) == 0)
    {
      if ([v24 showsKeyboard])
      {
        v14 = v24;
        if (!isHiddenForFloatingTransition)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ([v24 showsInputOrAssistantViews] & 1) != 0 || (v15 = objc_msgSend(v24, "accessoryViewWillAppear"), v14 = v24, ((v15 | isHiddenForFloatingTransition)))
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
  if (((isFloating | isHiddenForFloatingTransition) & 1) != 0 || v13)
  {
    if ([v14 isFloating])
    {
      isHiddenForFloatingTransition = +[UIKeyboardImpl activeInstance];
      _showsScribbleIconsInAssistantView = [isHiddenForFloatingTransition _showsScribbleIconsInAssistantView];
      v16 = 1;
    }

    else
    {
      v16 = 0;
      _showsScribbleIconsInAssistantView = 0;
    }
  }

  else
  {
    v16 = 0;
    _showsScribbleIconsInAssistantView = 1;
  }

  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setShowsButtonBarItemsInline:_showsScribbleIconsInAssistantView];

  if (v16)
  {
  }

  view = [(UIViewController *)self view];
  traitCollection = [view traitCollection];

  [(UISystemInputAssistantViewController *)self _centerViewWidthForTraitCollection:traitCollection interfaceOrientation:orientation];
  v22 = v21;
  systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView2 setCenterViewWidth:v22];

  [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
}

- (void)_queueResponderChangedForNewResponder:(id)responder
{
  objc_storeWeak(&self->_pendingResponderForChangedNotification, responder);
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

- (void)_responderChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  _currentInputDelegate = [userInfo valueForKey:@"UITextInputResponderCapabilitiesChangedInputResponderKey"];
  if (!_currentInputDelegate)
  {
    _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  [(UISystemInputAssistantViewController *)self _queueResponderChangedForNewResponder:_currentInputDelegate];
}

- (void)_responderCapabilitiesChangedNotification:(id)notification
{
  notificationCopy = notification;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  [systemInputAssistantView setNeedsValidation];

  systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  if ([systemInputAssistantView2 showsExpandableButtonBarItems])
  {
    systemInputAssistantView3 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    centerViewHidden = [systemInputAssistantView3 centerViewHidden];

    if (centerViewHidden)
    {
      goto LABEL_25;
    }

    v8 = +[UIKeyboard usesInputSystemUI];
    if (+[UIKeyboard isKeyboardProcess])
    {
      v9 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager = [v9 inputDelegateManager];
      forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];
      v12 = forwardingInputDelegate == 0;
    }

    else
    {
      v12 = 1;
    }

    userInfo = [notificationCopy userInfo];
    systemInputAssistantView2 = [userInfo objectForKey:@"UITextInputResponderCapabilitiesChangedKeyboardOutputKey"];

    userInfo2 = [notificationCopy userInfo];
    v15 = [userInfo2 objectForKey:@"UITextInputResponderCapabilitiesChangedSelectionDidChangeKey"];
    bOOLValue = [v15 BOOLValue];

    if (systemInputAssistantView2)
    {
      v17 = 1;
    }

    else
    {
      v17 = bOOLValue;
    }

    if ((v17 | v8))
    {
      if ((bOOLValue | v8))
      {
        goto LABEL_17;
      }

      if (![systemInputAssistantView2 deletionCount])
      {
        insertionText = [systemInputAssistantView2 insertionText];
        newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
        if (insertionText)
        {
          bOOLValue = [insertionText rangeOfCharacterFromSet:newlineCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          bOOLValue = 0;
        }

LABEL_17:
        if ((v12 & (bOOLValue | v8)) == 1)
        {
          v20 = +[UIKeyboardImpl activeInstance];
          if ([v20 shouldCollapseButtonBarForFeedbackUI])
          {
            v21 = 0;
          }

          else
          {
            v22 = +[UIKeyboardImpl activeInstance];
            delegateAsResponder = [v22 delegateAsResponder];
            v21 = [delegateAsResponder _shouldDisplayWritingToolsCandidateOptions] ^ 1;
          }
        }

        else
        {
          v21 = 0;
        }

        systemInputAssistantView4 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [systemInputAssistantView4 setButtonBarItemsExpanded:v21 animated:1];
      }
    }

    else
    {
      systemInputAssistantView2 = 0;
    }
  }

LABEL_25:
}

- (id)_popoverViewControllerForBarButtonItemGroup:(id)group
{
  v29 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  _expandStyle = [groupCopy _expandStyle];
  if (_expandStyle == 1)
  {
LABEL_14:
    popoverSourceView = [(UISystemInputAssistantViewController *)self popoverSourceView];
    _lightStyleRenderConfig = [popoverSourceView _lightStyleRenderConfig];

    v16 = [_UIButtonGroupViewController alloc];
    v27 = groupCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v18 = [(_UIButtonGroupViewController *)v16 initWithBarButtonItemGroups:v17 overLightKeyboard:_lightStyleRenderConfig];

    v13 = v18;
    v19 = 0.2;
    if (_lightStyleRenderConfig)
    {
      v19 = 1.0;
    }

    v20 = [UIColor colorWithWhite:v19 alpha:0.8];
    [(UIExpandedBarItemsTableViewController *)v13 setBackgroundColor:v20];

    _defaultTintColor = [(UISystemInputAssistantViewController *)self _defaultTintColor];
    [(UIExpandedBarItemsTableViewController *)v13 setTintColor:_defaultTintColor];
  }

  else
  {
    if (!_expandStyle)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      barButtonItems = [groupCopy barButtonItems];
      v7 = [barButtonItems countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(barButtonItems);
            }

            title = [*(*(&v23 + 1) + 8 * i) title];
            v12 = [title length];

            if (!v12)
            {

              goto LABEL_14;
            }
          }

          v8 = [barButtonItems countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    v13 = [[UIExpandedBarItemsTableViewController alloc] initWithBarButtonGroup:groupCopy];
  }

  return v13;
}

- (void)systemInputAssistantView:(id)view wantsToShowCollapsedItemGroup:(id)group fromView:(id)fromView
{
  groupCopy = group;
  [(UISystemInputAssistantViewController *)self setPopoverSourceView:fromView];
  v9 = [(UISystemInputAssistantViewController *)self _popoverViewControllerForBarButtonItemGroup:groupCopy];

  [v9 setModalPresentationStyle:7];
  presentationController = [v9 presentationController];
  [presentationController setDelegate:self];

  [(UIViewController *)self presentViewController:v9 animated:1 completion:0];
  [(UISystemInputAssistantViewController *)self setExpandedItemsController:v9];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  popoverSourceView = [(UISystemInputAssistantViewController *)self popoverSourceView];
  [presentationCopy setSourceView:popoverSourceView];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    popoverSourceView2 = [(UISystemInputAssistantViewController *)self popoverSourceView];
    [popoverSourceView2 bounds];
    [presentationCopy setSourceRect:?];
  }

  [presentationCopy setPermittedArrowDirections:2];
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)active
{
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
  emojiSearchView = [emojiSearchViewController emojiSearchView];
  [emojiSearchView setCollapsed:0];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)active
{
  self->_postedSwitchFromEmojiNotification = 0;
  activeCopy = active;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:activeCopy];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive
{
  v3 = +[UIKeyboardImpl sharedInstance];
  [v3 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive
{
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 updateAssistantView];

  if (!self->_postedSwitchFromEmojiNotification)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

    self->_postedSwitchFromEmojiNotification = 1;
  }
}

- (void)emojiSearchWillInsertEmoji:(id)emoji forSearchQuery:(id)query
{
  queryCopy = query;
  emojiCopy = emoji;
  v7 = +[UIKeyboardImpl activeInstance];
  [v7 emojiSearchWillInsertEmoji:emojiCopy forSearchQuery:queryCopy];
}

- (void)autocorrectionController:(id)controller didUpdateAutocorrectionList:(id)list
{
  listCopy = list;
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  emojiSearchViewController = [(UISystemInputAssistantViewController *)self emojiSearchViewController];

  if (centerViewController == emojiSearchViewController)
  {
    emojiSearchViewController2 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      emojiSearchViewController3 = [(UISystemInputAssistantViewController *)self emojiSearchViewController];
      [emojiSearchViewController3 autocorrectionListDidBecomeAvailable:listCopy];
    }
  }
}

- (id)layoutFromAssistantBarStyle:(int64_t)style
{
  if ((style - 2) < 3)
  {
    compactAssistantViewLayout = [(UISystemInputAssistantViewController *)self compactAssistantViewLayout];
LABEL_5:
    standardAssistantViewLayout = compactAssistantViewLayout;
    goto LABEL_6;
  }

  if (style == 1)
  {
    compactAssistantViewLayout = [(UISystemInputAssistantViewController *)self floatAssistantViewLayout];
    goto LABEL_5;
  }

  standardAssistantViewLayout = [(UISystemInputAssistantViewController *)self standardAssistantViewLayout];
  v7 = +[UIKeyboardImpl activeInstance];
  if ([v7 showsCandidateBar] && +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
  {
    v8 = +[UIKeyboardImpl activeInstance];
    centerFilled = [v8 centerFilled];

    if ((centerFilled & 1) == 0)
    {
      splitAssistantViewLayout = [(UISystemInputAssistantViewController *)self splitAssistantViewLayout];

      standardAssistantViewLayout = splitAssistantViewLayout;
    }
  }

  else
  {
  }

LABEL_6:

  return standardAssistantViewLayout;
}

- (id)styleFromAssistantBarStyle:(int64_t)style
{
  if ((style - 2) >= 3)
  {
    if (style == 1)
    {
      [(UISystemInputAssistantViewController *)self floatStyle];
    }

    else
    {
      [(UISystemInputAssistantViewController *)self standardStyle];
    }
    compactStyle = ;
  }

  else
  {
    compactStyle = [(UISystemInputAssistantViewController *)self compactStyle];
  }

  return compactStyle;
}

+ (double)floatingAssistantBottomPadding
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v2 visualModeManager];
  useVisualModeWindowed = [visualModeManager useVisualModeWindowed];

  result = 24.0;
  if (useVisualModeWindowed)
  {
    return 22.0;
  }

  return result;
}

- (void)updateAssistantBarStyle:(int64_t)style
{
  v5 = (style - 2) <= 2 && (self->_assistantBarStyle - 2) < 3;
  obj = [MEMORY[0x1E696B098] valueWithPointer:{-[UISystemInputAssistantViewController _currentInputDelegate](self, "_currentInputDelegate")}];
  if (self->_assistantBarStyle != style || self->_isInputAssistantItemEmpty != [(UISystemInputAssistantViewController *)self isInputAssistantItemEmpty]|| self->_assistantBarStyle == 1 && ![(NSValue *)self->_currentInputDelegatePointerValue isEqualToValue:obj])
  {
    self->_isInputAssistantItemEmpty = [(UISystemInputAssistantViewController *)self isInputAssistantItemEmpty];
    if (!v5)
    {
      if ([objc_opt_class() shouldShowSystemInputAssistantItems])
      {
        v6 = [UIAssistantBarButtonItemProvider unmodifiableSystemAssistantItem:style];
        systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
        [systemInputAssistantView setSystemInputAssistantItem:v6];
      }

      [(UISystemInputAssistantViewController *)self _updateCenterViewWidthForInterfaceOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
    }

    self->_assistantBarStyle = style;
    [(UISystemInputAssistantViewController *)self setOverrideSafeAreaInsets];
    objc_storeStrong(&self->_currentInputDelegatePointerValue, obj);
    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
  }
}

- (BOOL)shouldUseCustomBackground:(id)background
{
  backgroundCopy = background;
  v5 = +[UIKeyboard keyboardBundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.Playgrounds"];

  if (v6)
  {
    if (!backgroundCopy)
    {
      backgroundCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    }

    remoteAssistantItem = [(UISystemInputAssistantViewController *)self remoteAssistantItem];
    v8 = remoteAssistantItem;
    if (remoteAssistantItem)
    {
      v9 = remoteAssistantItem;
    }

    else
    {
      v11 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:backgroundCopy];
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
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  inputAssistantItem = [systemInputAssistantView inputAssistantItem];

  LOBYTE(systemInputAssistantView) = UIShouldUseCustomBackground(inputAssistantItem);
  return systemInputAssistantView;
}

- (id)_customCenterBarButtonItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    itemCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  if ([(UISystemInputAssistantViewController *)self _canShowCenterBarButtonItem])
  {
    v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:itemCopy];
    v6 = _UIResponderFindInputAssistantItem(v5);

    _centerBarButtonGroups = [v6 _centerBarButtonGroups];
    firstObject2 = [_centerBarButtonGroups count];

    if (firstObject2)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      if ([v9 showsCandidateBar] && (objc_msgSend(v9, "candidateController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "hasCandidates"), v10, (v11 & 1) != 0))
      {
        firstObject2 = 0;
      }

      else
      {
        _centerBarButtonGroups2 = [v6 _centerBarButtonGroups];
        firstObject = [_centerBarButtonGroups2 firstObject];
        barButtonItems = [firstObject barButtonItems];
        firstObject2 = [barButtonItems firstObject];
      }
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)_customCenterViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    controllerCopy = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
  }

  v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:controllerCopy];
  v6 = v5;
  if (v5)
  {
    inputDashboardViewController = [v5 inputDashboardViewController];
  }

  else
  {
    inputDashboardViewController = 0;
  }

  return inputDashboardViewController;
}

- (BOOL)isVisibleWhenMinimized
{
  if (+[UIKeyboard isInputSystemUI])
  {
    remoteAssistantItem = [(UISystemInputAssistantViewController *)self remoteAssistantItem];
  }

  else
  {
    _currentInputDelegate = [(UISystemInputAssistantViewController *)self _currentInputDelegate];
    v5 = [(UISystemInputAssistantViewController *)self _inputDelegateAsResponder:_currentInputDelegate];
    remoteAssistantItem = _UIResponderFindInputAssistantItem(v5);
  }

  _isVisibleWhenMinimized = [remoteAssistantItem _isVisibleWhenMinimized];

  return _isVisibleWhenMinimized;
}

- (void)maskInputAssistantView:(BOOL)view
{
  viewCopy = view;
  systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
  layer = [systemInputAssistantView layer];
  v6 = layer;
  if (viewCopy)
  {
    [layer setMaskedCorners:3];

    systemInputAssistantView2 = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    layer2 = [systemInputAssistantView2 layer];
    [layer2 setCornerRadius:27.0];

    systemInputAssistantView = [(UISystemInputAssistantViewController *)self systemInputAssistantView];
    layer = [systemInputAssistantView layer];
    v6 = layer;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [layer setMasksToBounds:v9];
}

- (id)candidateViewController
{
  predictiveViewController = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    predictiveViewController2 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  }

  else
  {
    predictiveViewController2 = 0;
  }

  return predictiveViewController2;
}

- (id)compatibilityViewController
{
  predictiveViewController = [(UISystemInputAssistantViewController *)self predictiveViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    predictiveViewController2 = [(UISystemInputAssistantViewController *)self predictiveViewController];
  }

  else
  {
    predictiveViewController2 = 0;
  }

  return predictiveViewController2;
}

- (UIView)popoverSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverSourceView);

  return WeakRetained;
}

- (void)showEmojiSearch:(BOOL)search
{
  if (search)
  {
    emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    [emojiSearchView setCollapsed:0];

    emojiSearchView2 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    searchTextField = [emojiSearchView2 searchTextField];
    [searchTextField becomeFirstResponder];
  }

  else
  {
    _shouldCollapseEmojiSearchView = [(UISystemInputAssistantViewController *)self _shouldCollapseEmojiSearchView];
    emojiSearchView2 = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
    [emojiSearchView2 setCollapsed:_shouldCollapseEmojiSearchView];
  }
}

- (void)prepareForFloating:(BOOL)floating
{
  floatingCopy = floating;
  centerViewController = [(UISystemInputAssistantViewController *)self centerViewController];
  emojiSearchViewController = self->_emojiSearchViewController;

  if (centerViewController == emojiSearchViewController)
  {
    [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController setUsesFloatingStyle:floatingCopy];
  }

  if (self->_remoteAssistantView)
  {

    [(UISystemInputAssistantViewController *)self updateRemoteAssistantViewHidden];
  }
}

- (id)_emojiSearchField
{
  emojiSearchView = [(TUIEmojiSearchInputViewController *)self->_emojiSearchViewController emojiSearchView];
  searchTextField = [emojiSearchView searchTextField];

  return searchTextField;
}

@end