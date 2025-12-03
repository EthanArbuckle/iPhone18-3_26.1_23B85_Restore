@interface UISystemInputViewController
+ (BOOL)canUseSystemInputViewControllerForResponder:(id)responder;
+ (id)_carPlay_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection;
+ (id)_iOS_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection;
+ (id)_tvOS_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection;
+ (id)systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder;
+ (void)setKeyboardInteractionModel:(unint64_t)model;
- (BOOL)keyboardCanBecomeFocusedWithZeroAlpha;
- (BOOL)willShowRecentsList;
- (UIEdgeInsets)unfocusedFocusGuideOutsets;
- (UISystemInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_accessoryViewControllerForEdge:(int64_t)edge;
- (id)_remoteInputSessionIdentifier;
- (id)_traitCollectionForUserInterfaceStyle;
- (id)accessoryViewControllerForEdge:(int64_t)edge;
- (id)alignmentConstraintArrayForAxis:(int64_t)axis;
- (id)alignmentConstraintForAxis:(int64_t)axis;
- (id)constraintsForEdge:(int64_t)edge;
- (id)doneButtonStringForCurrentInputDelegate;
- (id)preferredFocusEnvironments;
- (id)viewForFocusHeading:(unint64_t)heading fromView:(id)view;
- (unint64_t)_horizontalLayoutTypeForEdge:(int64_t)edge;
- (unint64_t)_verticalLayoutTypeForEdge:(int64_t)edge;
- (void)_addAccessoryViewController:(id)controller;
- (void)_addChildInputViewController;
- (void)_clearCursorLocationIfNotFirstResponder;
- (void)_createKeyboardIfNecessary;
- (void)_didSuspend:(id)suspend;
- (void)_dismissSystemInputViewController;
- (void)_removeAccessoryViewController:(id)controller;
- (void)_resetDelegate;
- (void)_responderIsReloaded;
- (void)_restoreKeyboardIfNecessary;
- (void)_returnButtonPressed;
- (void)_setNonInputViewVisibility:(BOOL)visibility;
- (void)_setSystemInputInteractionActive:(BOOL)active;
- (void)_willResume:(id)resume;
- (void)_windowDidBecomeApplicationKey:(id)key;
- (void)_windowWillBecomeApplicationKey:(id)key;
- (void)configureRecentsVCIfNecessary;
- (void)dealloc;
- (void)didSelectRecentInput;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)findNextInputDelegate;
- (void)inputModeDidChange:(id)change;
- (void)notifyDelegateWithAccessoryVisibility:(BOOL)visibility;
- (void)populateCoreHierarchy;
- (void)prepareForRelease;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reloadInputViewsForPersistentDelegate;
- (void)setAccessoryViewController:(id)controller forEdge:(int64_t)edge;
- (void)setAlignmentConstraint:(id)constraint forAxis:(int64_t)axis;
- (void)setAlignmentConstraintArray:(id)array forAxis:(int64_t)axis;
- (void)setConstraints:(id)constraints forEdge:(int64_t)edge;
- (void)setDelegate:(id)delegate;
- (void)setDoneButton:(id)button;
- (void)setInputVC:(id)c;
- (void)setKeyboardCanBecomeFocusedWithZeroAlpha:(BOOL)alpha;
- (void)setPersistentDelegate:(id)delegate;
- (void)setRecentsVC:(id)c;
- (void)setRequestedInteractionModel:(unint64_t)model;
- (void)setSupportsRecentInputsIntegration:(BOOL)integration;
- (void)setSystemInputViewControllerDelegate:(id)delegate;
- (void)setUnfocusedFocusGuideOutsets:(UIEdgeInsets)outsets;
- (void)setupKeyboard;
- (void)switchToKeyboard;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAlignmentConstraints;
- (void)updateBackdropForCarPlay;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation UISystemInputViewController

+ (void)setKeyboardInteractionModel:(unint64_t)model
{
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setRequestedInteractionModel:model];
}

+ (BOOL)canUseSystemInputViewControllerForResponder:(id)responder
{
  responderCopy = responder;
  if (![responderCopy conformsToProtocol:&unk_1EFE8B2D0] || (objc_msgSend(responderCopy, "_disableAutomaticKeyboardUI") & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isHardwareKeyboardAvailable"), v4, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    traitCollection = [responderCopy traitCollection];
    v9 = traitCollection;
    if (traitCollection)
    {
      traitCollection2 = traitCollection;
    }

    else
    {
      _responderWindow = [responderCopy _responderWindow];
      screen = [_responderWindow screen];
      traitCollection2 = [screen traitCollection];
    }

    v6 = [traitCollection2 userInterfaceIdiom] == 2;
  }

  return v6;
}

+ (id)systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder
{
  responderCopy = responder;
  viewCopy = view;
  containingResponderCopy = containingResponder;
  _disableAutomaticKeyboardUI = [containingResponderCopy _disableAutomaticKeyboardUI];
  v12 = [responderCopy conformsToProtocol:&unk_1EFE8B2D0];
  if (_disableAutomaticKeyboardUI)
  {
    if (v12)
    {
      window = [viewCopy window];

      if (window)
      {
        v14 = 0;
        goto LABEL_19;
      }
    }
  }

  traitCollection = [containingResponderCopy traitCollection];
  if (traitCollection)
  {
    traitCollection2 = traitCollection;
  }

  else
  {
    _responderWindow = [containingResponderCopy _responderWindow];
    screen = [_responderWindow screen];
    traitCollection2 = [screen traitCollection];

    if (((traitCollection2 == 0) & _disableAutomaticKeyboardUI) == 1)
    {
      mainScreen = [objc_opt_self() mainScreen];
      traitCollection2 = [mainScreen traitCollection];
    }
  }

  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
  v21 = 0;
  if (userInterfaceIdiom > 2)
  {
    if (userInterfaceIdiom == 3)
    {
      v21 = [self _carPlay_systemInputViewControllerForResponder:responderCopy editorView:viewCopy containingResponder:containingResponderCopy traitCollection:traitCollection2];
      goto LABEL_18;
    }

    if (userInterfaceIdiom != 8)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (userInterfaceIdiom >= 2)
  {
    if (userInterfaceIdiom != 2)
    {
      goto LABEL_18;
    }

LABEL_16:
    v21 = [self _tvOS_systemInputViewControllerForResponder:responderCopy editorView:viewCopy containingResponder:containingResponderCopy traitCollection:traitCollection2];
    goto LABEL_18;
  }

  v21 = [self _iOS_systemInputViewControllerForResponder:responderCopy editorView:viewCopy containingResponder:containingResponderCopy traitCollection:traitCollection2];
LABEL_18:
  v14 = v21;

LABEL_19:

  return v14;
}

+ (id)_carPlay_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection
{
  v66 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  viewCopy = view;
  containingResponderCopy = containingResponder;
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] == 3)
  {
    _disableAutomaticKeyboardUI = [containingResponderCopy _disableAutomaticKeyboardUI];
    if ([responderCopy conformsToProtocol:&unk_1EFE8B2D0])
    {
      v15 = responderCopy;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [[self alloc] initWithNibName:0 bundle:0];
    [v17 setSupportsTouchInput:{objc_msgSend(collectionCopy, "primaryInteractionModel") & 1}];
    [v17 setPersistentDelegate:v16];
    [v17 setWillUpdateBackgroundEffectOnInputModeChange:0];
    [v17 setIsAutomaticResponderTransition:__automaticNextFocusResponder == responderCopy];
    *(v17 + 1041) = _disableAutomaticKeyboardUI ^ 1;
    *(v17 + 1016) = containingResponderCopy;
    v18 = [UITextInputTraits traitsByAdoptingTraits:v16];
    [v17 setTextInputTraits:v18];
    textInputTraits = [v17 textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    v21 = _UISolariumEnabled();
    v60 = containingResponderCopy;
    v58 = v18;
    v55 = keyboardAppearance;
    if ((keyboardAppearance - 1) > 9)
    {
      v23 = 1000;
    }

    else
    {
      v22 = &unk_18A67E930;
      if (v21)
      {
        v22 = &unk_18A67E8E0;
      }

      v23 = v22[keyboardAppearance - 1];
    }

    [v17 setBlurEffectStyle:v23];
    v24 = [UIKBFocusVCView alloc];
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
    v29 = [(UIView *)v24 initWithFrame:*MEMORY[0x1E695F058], v26, v27, v28];
    [(UIView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = +[UIColor tableBackgroundColor];
    [(UIView *)v29 setBackgroundColor:v30];

    [v17 setView:v29];
    [v17 setContainingView:v29];
    array = [MEMORY[0x1E695DF70] array];
    if (viewCopy)
    {
      v32 = [UIViewController viewControllerForView:viewCopy];
      if (!v32)
      {
        v32 = [[UIViewController alloc] initWithNibName:0 bundle:0];
        [(UIViewController *)v32 setView:viewCopy];
      }

      v33 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v32];
      [v33 setVerticalLayoutType:4];
      if (([v17 supportsTouchInput] | _disableAutomaticKeyboardUI))
      {
        if ((_disableAutomaticKeyboardUI & 1) == 0)
        {
          [v33 setMinimumInsets:{0.0, 0.0, 32.0, 0.0}];
        }

        [v17 setEditorVC:v33];
      }

      else
      {
        [v33 setHorizontalLayoutType:3];
        [array addObject:v33];
      }
    }

    inputView = [v16 inputView];
    v59 = v16;
    inputViewController = [v16 inputViewController];
    if (!inputViewController && inputView)
    {
      inputViewController = [UICompatibilityInputViewController inputViewControllerWithView:inputView];
    }

    [v17 setInputVC:inputViewController];
    [v17 populateCoreHierarchy];
    [v17 updateViewConstraints];
    v56 = inputView;
    v57 = array;
    if ((_disableAutomaticKeyboardUI & 1) == 0 && [array count])
    {
      v54 = viewCopy;
      v36 = [(UIViewController *)[UIKBStackViewController alloc] initWithNibName:0 bundle:0];
      stackView = [(UIKBStackViewController *)v36 stackView];
      [stackView setAxis:1];

      stackView2 = [(UIKBStackViewController *)v36 stackView];
      [stackView2 setAlignment:0];

      stackView3 = [(UIKBStackViewController *)v36 stackView];
      [stackView3 setDistribution:0];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v40 = array;
      v41 = [v40 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v62;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v62 != v43)
            {
              objc_enumerationMutation(v40);
            }

            [(UIKBStackViewController *)v36 addChildViewController:*(*(&v61 + 1) + 8 * i)];
          }

          v42 = [v40 countByEnumeratingWithState:&v61 objects:v65 count:16];
        }

        while (v42);
      }

      [v17 setAccessoryViewController:v36 forEdge:3];
      viewCopy = v54;
    }

    if ([collectionCopy interactionModel])
    {
      v45 = [[UIKBInputBackdropView alloc] initWithFrame:v25, v26, v27, v28];
      [(UIView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v17 setBackdropView:v45];
      v46 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v46 currentInputMode];
      v48 = [UIKBRenderConfig configForAppearance:v55 inputMode:currentInputMode traitEnvironment:0];

      [(UIKBInputBackdropView *)v45 _setRenderConfig:v48];
      contentLayoutView = [v17 contentLayoutView];
      [contentLayoutView addSubview:v45];
    }

    contentLayoutView2 = [v17 contentLayoutView];
    keyboardVC = [v17 keyboardVC];
    view = [keyboardVC view];
    [contentLayoutView2 bringSubviewToFront:view];

    containingResponderCopy = v60;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_tvOS_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection
{
  v153 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  viewCopy = view;
  containingResponderCopy = containingResponder;
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] != 2 && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 8)
  {
    v17 = 0;
    goto LABEL_98;
  }

  v138 = collectionCopy;
  _disableAutomaticKeyboardUI = [containingResponderCopy _disableAutomaticKeyboardUI];
  if ([responderCopy conformsToProtocol:&unk_1EFE8B2D0])
  {
    v15 = responderCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[self alloc] initWithNibName:0 bundle:0];
  v137 = [UITextInputTraits traitsByAdoptingTraits:v16];
  [v17 setTextInputTraits:?];
  [v17 setPersistentDelegate:v16];
  [v17 setWillPresentFullscreen:_disableAutomaticKeyboardUI ^ 1u];
  [v17 setWillUpdateBackgroundEffectOnInputModeChange:0];
  [v17 setIsAutomaticResponderTransition:__automaticNextFocusResponder == responderCopy];
  *(v17 + 1041) = _disableAutomaticKeyboardUI ^ 1;
  *(v17 + 1016) = containingResponderCopy;
  *(v17 + 1043) = 1;
  textInputTraits = [v17 textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  v20 = _UISolariumEnabled();
  if ((keyboardAppearance - 1) > 9)
  {
    v22 = 1000;
  }

  else
  {
    v21 = &unk_18A67E930;
    if (v20)
    {
      v21 = &unk_18A67E8E0;
    }

    v22 = v21[keyboardAppearance - 1];
  }

  [v17 setBlurEffectStyle:v22];
  v136 = containingResponderCopy;
  if (_disableAutomaticKeyboardUI)
  {
    v23 = [UIKBFocusVCView alloc];
    v24 = [(UIView *)v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setView:v24];
    [v17 setContainingView:v24];
  }

  else
  {
    [v17 setModalPresentationStyle:5];
    [v17 setModalTransitionStyle:2];
    v25 = [UIVisualEffectView alloc];
    v26 = +[UIBlurEffect effectWithStyle:](UIBlurEffect, "effectWithStyle:", [v17 blurEffectStyle]);
    v24 = [(UIVisualEffectView *)v25 initWithEffect:v26];

    [(UIKBFocusVCView *)v24 _setGroupName:@"UIKBBackdropGroupName"];
    [v17 setView:v24];
    contentView = [(UIKBFocusVCView *)v24 contentView];
    [v17 setContainingView:contentView];
  }

  array = [MEMORY[0x1E695DF70] array];
  if (viewCopy)
  {
    v28 = [UIViewController viewControllerForView:viewCopy];
    if (!v28)
    {
      v28 = [[UIViewController alloc] initWithNibName:0 bundle:0];
      [(UIViewController *)v28 setView:viewCopy];
    }

    v29 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v28];
    [v29 setVerticalLayoutType:4];
    if (([v17 supportsTouchInput] | _disableAutomaticKeyboardUI))
    {
      if ((_disableAutomaticKeyboardUI & 1) == 0)
      {
        [v29 setMinimumInsets:{0.0, 0.0, 32.0, 0.0}];
      }

      [v17 setEditorVC:v29];
    }

    else
    {
      [v29 setHorizontalLayoutType:3];
      [array addObject:v29];
    }
  }

  inputView = [v16 inputView];
  inputViewController = [v16 inputViewController];
  if (!inputViewController && inputView)
  {
    inputViewController = [UICompatibilityInputViewController inputViewControllerWithView:inputView];
  }

  v135 = inputView;
  v141 = inputViewController;
  [v17 setInputVC:inputViewController];
  [v17 populateCoreHierarchy];
  if (_disableAutomaticKeyboardUI)
  {
    v139 = 0;
    goto LABEL_41;
  }

  [v17 findNextInputDelegate];
  v32 = [UIButton buttonWithType:1];
  doneButtonStringForCurrentInputDelegate = [v17 doneButtonStringForCurrentInputDelegate];
  [v32 setTitle:doneButtonStringForCurrentInputDelegate forState:0];

  [v32 addTarget:v17 action:sel__returnButtonPressed forControlEvents:0x2000];
  if (keyboardAppearance == 2)
  {
    v34 = _UISolariumEnabled() == 0;
    v35 = 4005;
    v36 = 17;
LABEL_33:
    if (v34)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    v38 = [UIBlurEffect _effectWithStyle:v37 invertAutomaticStyle:0];
    _contentBackdropView = [v32 _contentBackdropView];
    [_contentBackdropView setEffect:v38];

    goto LABEL_37;
  }

  if ((keyboardAppearance & 0xFFFFFFFFFFFFFFF7) == 1)
  {
    v34 = _UISolariumEnabled() == 0;
    v35 = 4000;
    v36 = 12;
    goto LABEL_33;
  }

LABEL_37:
  v40 = [[UIViewController alloc] initWithNibName:0 bundle:0];
  [(UIViewController *)v40 setView:v32];
  if ([v17 supportsTouchInput])
  {
    [v17 setAccessoryViewController:v40 forEdge:2];
    v41 = [v17 _accessoryViewControllerForEdge:2];
    [v41 setMinimumInsets:{-112.0, 0.0, 0.0, 0.0}];

    [v32 _setSpeedBumpEdges:1];
    v139 = 0;
  }

  else
  {
    v42 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v40];
    [v42 setVerticalLayoutType:3];
    [v42 setMinimumInsets:{-112.0, 0.0, 0.0, 0.0}];
    v139 = v42;
    [array addObject:v42];
  }

  v43 = [[UITapGestureRecognizer alloc] initWithTarget:v17 action:sel__returnButtonPressed];
  [(UITapGestureRecognizer *)v43 setAllowedPressTypes:&unk_1EFE2C2C8];
  [(UIGestureRecognizer *)v43 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  view = [v17 view];
  [view addGestureRecognizer:v43];

  [v17 setDoneButton:v32];
LABEL_41:
  inputAccessoryView = [v16 inputAccessoryView];
  inputAccessoryViewController = [v16 inputAccessoryViewController];
  if (inputAccessoryViewController)
  {
    v47 = inputAccessoryViewController;
    v48 = 0;
    goto LABEL_43;
  }

  if ((inputAccessoryView != 0) | _disableAutomaticKeyboardUI & 1)
  {
    v48 = 0;
    if (!inputAccessoryView)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    inputAccessoryView = 0;
    goto LABEL_72;
  }

  _defaultPromptString = [v16 _defaultPromptString];
  v48 = _defaultPromptString != 0;
  if (!_defaultPromptString)
  {
    inputAccessoryView = 0;
    goto LABEL_70;
  }

  userInterfaceStyle = [v138 userInterfaceStyle];
  v64 = [[UILabel alloc] initWithFrame:0.0, 0.0, 300.0, 70.0];
  keyboardAppearance2 = [v137 keyboardAppearance];
  v66 = 0;
  if (keyboardAppearance2 > 8)
  {
    if (keyboardAppearance2 != 9)
    {
      if (keyboardAppearance2 != 10)
      {
        goto LABEL_69;
      }

      if (userInterfaceStyle <= 1)
      {
LABEL_66:
        v67 = +[UIColor darkTextColor];
LABEL_68:
        v66 = v67;
        goto LABEL_69;
      }
    }

LABEL_67:
    v67 = +[UIColor lightTextColor];
    goto LABEL_68;
  }

  if (keyboardAppearance2 == 1)
  {
    goto LABEL_67;
  }

  if (keyboardAppearance2 == 2)
  {
    goto LABEL_66;
  }

LABEL_69:
  [(UILabel *)v64 setTextColor:v66];
  [(UIView *)v64 setOpaque:0];
  [(UIView *)v64 setBackgroundColor:0];
  [(UILabel *)v64 setText:_defaultPromptString];
  v68 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleTitle2"];
  [(UILabel *)v64 setFont:v68];

  [(UIView *)v64 sizeToFit];
  [v17 set_promptLabel:v64];

  inputAccessoryView = v64;
LABEL_70:

  if (!inputAccessoryView)
  {
    goto LABEL_72;
  }

LABEL_71:
  v47 = [UICompatibilityInputViewController inputViewControllerWithView:inputAccessoryView];
  if (v47)
  {
LABEL_43:
    v140 = inputAccessoryView;
    if ([v17 supportsTouchInput])
    {
      [v17 setAccessoryViewController:v47 forEdge:0];
      v49 = 0;
      if (v48)
      {
        v50 = [v17 _accessoryViewControllerForEdge:0];
        [v50 setMinimumInsets:{0.0, 0.0, 70.0, 0.0}];

        v49 = 0;
      }
    }

    else
    {
      v49 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v47];
      [v49 setHorizontalLayoutType:1];
      [v49 setVerticalLayoutType:3];
      [v49 setMinimumInsets:{0.0, 0.0, 20.0, 0.0}];
      [array insertObject:v49 atIndex:0];
    }

    view2 = [v47 view];
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      view3 = [v141 view];
      [view3 _alignmentOffset];
      v55 = v54;
      v57 = v56;
      v58 = [v17 alignmentConstraintForAxis:0];
      [v58 setConstant:v55];

      v59 = 1;
      v60 = [v17 alignmentConstraintForAxis:1];
      [v60 setConstant:v57];

      view4 = [v17 view];
      [view4 setNeedsLayout];

      if (_disableAutomaticKeyboardUI)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v59 = 1;
      if (_disableAutomaticKeyboardUI)
      {
        goto LABEL_97;
      }
    }

LABEL_73:
    if ([array count])
    {
      v133 = responderCopy;
      v134 = viewCopy;
      v69 = [(UIViewController *)[UIKBStackViewController alloc] initWithNibName:0 bundle:0];
      stackView = [(UIKBStackViewController *)v69 stackView];
      [stackView setAxis:1];

      stackView2 = [(UIKBStackViewController *)v69 stackView];
      [stackView2 setAlignment:0];

      stackView3 = [(UIKBStackViewController *)v69 stackView];
      [stackView3 setDistribution:0];

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v73 = array;
      v74 = [v73 countByEnumeratingWithState:&v143 objects:v152 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v144;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v144 != v76)
            {
              objc_enumerationMutation(v73);
            }

            [(UIKBStackViewController *)v69 addChildViewController:*(*(&v143 + 1) + 8 * i)];
          }

          v75 = [v73 countByEnumeratingWithState:&v143 objects:v152 count:16];
        }

        while (v75);
      }

      [v17 setAccessoryViewController:v69 forEdge:3];
      supportsTouchInput = [v17 supportsTouchInput];
      v79 = [v17 _accessoryViewControllerForEdge:3];
      v80 = v79;
      if (supportsTouchInput)
      {
        [v79 setMinimumInsets:{0.0, -300.0, 0.0, 0.0}];

        v80 = [v17 _accessoryViewControllerForEdge:3];
        [v80 setCenteredOffsets:{0.0, -140.0}];
      }

      else
      {
        [v79 setMinimumInsets:{0.0, -292.0, 0.0, 0.0}];
      }

      responderCopy = v133;
      viewCopy = v134;
      if (([v17 supportsTouchInput] & 1) == 0 && ((v140 == 0) & ~v59) == 0)
      {
        v81 = objc_alloc_init(UIFocusGuide);
        if (v49)
        {
          v82 = v49;
        }

        else
        {
          v82 = v47;
        }

        view5 = [v82 view];
        if (v140)
        {
          v151 = v140;
          v84 = &v151;
        }

        else
        {
          v150 = v47;
          v84 = &v150;
        }

        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
        [(UIFocusGuide *)v81 setPreferredFocusEnvironments:v85];

        view6 = [v17 view];
        [view6 addLayoutGuide:v81];

        v115 = MEMORY[0x1E69977A0];
        leadingAnchor = [(UILayoutGuide *)v81 leadingAnchor];
        keyboardVC = [v17 keyboardVC];
        focusSafeAreaLayoutGuide = [keyboardVC focusSafeAreaLayoutGuide];
        trailingAnchor = [focusSafeAreaLayoutGuide trailingAnchor];
        v121 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
        v149[0] = v121;
        trailingAnchor2 = [(UILayoutGuide *)v81 trailingAnchor];
        view7 = [v17 view];
        trailingAnchor3 = [view7 trailingAnchor];
        v111 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
        v149[1] = v111;
        topAnchor = [(UILayoutGuide *)v81 topAnchor];
        topAnchor2 = [view5 topAnchor];
        v105 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v149[2] = v105;
        v130 = v81;
        bottomAnchor = [(UILayoutGuide *)v81 bottomAnchor];
        v129 = view5;
        bottomAnchor2 = [view5 bottomAnchor];
        v89 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v149[3] = v89;
        v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:4];
        [v115 activateConstraints:v90];

        v91 = objc_alloc_init(UIFocusGuide);
        if (v139)
        {
          [v139 view];
        }

        else
        {
          [v17 doneButton];
        }
        v132 = ;
        doneButton = [v17 doneButton];
        v148 = doneButton;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
        [(UIFocusGuide *)v91 setPreferredFocusEnvironments:v93];

        view8 = [v17 view];
        [view8 addLayoutGuide:v91];

        v114 = MEMORY[0x1E69977A0];
        leadingAnchor2 = [(UILayoutGuide *)v91 leadingAnchor];
        keyboardVC2 = [v17 keyboardVC];
        focusSafeAreaLayoutGuide2 = [keyboardVC2 focusSafeAreaLayoutGuide];
        trailingAnchor4 = [focusSafeAreaLayoutGuide2 trailingAnchor];
        v120 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor4];
        v147[0] = v120;
        trailingAnchor5 = [(UILayoutGuide *)v91 trailingAnchor];
        view9 = [v17 view];
        trailingAnchor6 = [view9 trailingAnchor];
        v108 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v147[1] = v108;
        topAnchor3 = [(UILayoutGuide *)v91 topAnchor];
        topAnchor4 = [v132 topAnchor];
        v103 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v147[2] = v103;
        bottomAnchor3 = [(UILayoutGuide *)v91 bottomAnchor];
        [v132 bottomAnchor];
        v96 = v112 = v91;
        v97 = [bottomAnchor3 constraintEqualToAnchor:v96];
        v147[3] = v97;
        v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:4];
        [v114 activateConstraints:v98];

        viewCopy = v134;
      }
    }

    goto LABEL_97;
  }

LABEL_72:
  v140 = inputAccessoryView;
  [v17 updateViewConstraints];
  v59 = 0;
  v47 = 0;
  v49 = 0;
  if ((_disableAutomaticKeyboardUI & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_97:
  contentLayoutView = [v17 contentLayoutView];
  keyboardVC3 = [v17 keyboardVC];
  view10 = [keyboardVC3 view];
  [contentLayoutView bringSubviewToFront:view10];

  containingResponderCopy = v136;
  collectionCopy = v138;
LABEL_98:
  +[_UIKeyboardUsageTracking keyboardSupportsTouch:](_UIKeyboardUsageTracking, "keyboardSupportsTouch:", [v17 supportsTouchInput]);

  return v17;
}

+ (id)_iOS_systemInputViewControllerForResponder:(id)responder editorView:(id)view containingResponder:(id)containingResponder traitCollection:(id)collection
{
  responderCopy = responder;
  containingResponderCopy = containingResponder;
  collectionCopy = collection;
  if ([collectionCopy userInterfaceIdiom] && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 1)
  {
    v15 = 0;
  }

  else
  {
    v36 = collectionCopy;
    _disableAutomaticKeyboardUI = [containingResponderCopy _disableAutomaticKeyboardUI];
    if ([responderCopy conformsToProtocol:&unk_1EFE8B2D0])
    {
      v13 = responderCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [[self alloc] initWithNibName:0 bundle:0];
    *(v15 + 1040) = 1;
    [v15 setPersistentDelegate:v14];
    [v15 setWillPresentFullscreen:_disableAutomaticKeyboardUI ^ 1u];
    [v15 setWillUpdateBackgroundEffectOnInputModeChange:1];
    [v15 setIsAutomaticResponderTransition:__automaticNextFocusResponder == responderCopy];
    *(v15 + 1041) = 1;
    v37 = containingResponderCopy;
    *(v15 + 1016) = containingResponderCopy;
    v35 = [UITextInputTraits traitsByAdoptingTraits:v14];
    [v15 setTextInputTraits:?];
    textInputTraits = [v15 textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v18 currentInputMode];
    v20 = [UIKBRenderConfig configForAppearance:keyboardAppearance inputMode:currentInputMode traitEnvironment:0];
    blurEffectStyle = [v20 blurEffectStyle];

    [v15 setBlurEffectStyle:blurEffectStyle];
    if (_disableAutomaticKeyboardUI)
    {
      v22 = [UIKBFocusVCView alloc];
      v23 = [(UIView *)v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v15 setView:v23];
      [v15 setContainingView:v23];
    }

    else
    {
      [v15 setModalPresentationStyle:5];
      [v15 setModalTransitionStyle:2];
      v24 = [UIVisualEffectView alloc];
      v25 = +[UIBlurEffect effectWithStyle:](UIBlurEffect, "effectWithStyle:", [v15 blurEffectStyle]);
      v23 = [(UIVisualEffectView *)v24 initWithEffect:v25];

      [(UIKBFocusVCView *)v23 _setGroupName:@"UIKBBackdropGroupName"];
      [v15 setView:v23];
      contentView = [(UIKBFocusVCView *)v23 contentView];
      [v15 setContainingView:contentView];
    }

    inputView = [v14 inputView];
    inputViewController = [v14 inputViewController];
    if (!inputViewController && inputView)
    {
      inputViewController = [UICompatibilityInputViewController inputViewControllerWithView:inputView];
    }

    [v15 setInputVC:inputViewController];
    [v15 populateCoreHierarchy];
    inputAccessoryView = [v14 inputAccessoryView];
    inputAccessoryViewController = [v14 inputAccessoryViewController];
    if (!inputAccessoryViewController && inputAccessoryView)
    {
      inputAccessoryViewController = [UICompatibilityInputViewController inputViewControllerWithView:inputAccessoryView];
    }

    if (inputAccessoryViewController)
    {
      if ([v15 supportsTouchInput])
      {
        [v15 setAccessoryViewController:inputAccessoryViewController forEdge:0];
      }
    }

    else
    {
      [v15 updateViewConstraints];
    }

    contentLayoutView = [v15 contentLayoutView];
    keyboardVC = [v15 keyboardVC];
    view = [keyboardVC view];
    [contentLayoutView bringSubviewToFront:view];

    collectionCopy = v36;
    containingResponderCopy = v37;
  }

  return v15;
}

- (void)_restoreKeyboardIfNecessary
{
  keyboardVC = [(UISystemInputViewController *)self keyboardVC];
  parentViewController = [keyboardVC parentViewController];

  if (parentViewController != self)
  {
    keyboardVC2 = [(UISystemInputViewController *)self keyboardVC];
    keyboard = [(UISystemInputViewController *)self keyboard];
    [keyboardVC2 setDeferredSystemView:keyboard];

    [(UISystemInputViewController *)self _addChildInputViewController];
    [(UISystemInputViewController *)self updateViewConstraints];
    contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
    keyboardVC3 = [(UISystemInputViewController *)self keyboardVC];
    view = [keyboardVC3 view];
    [contentLayoutView bringSubviewToFront:view];
  }
}

- (void)populateCoreHierarchy
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [UIView alloc];
  containingView = [(UISystemInputViewController *)self containingView];
  [containingView bounds];
  v5 = [(UIView *)v3 initWithFrame:?];
  [(UISystemInputViewController *)self setContentLayoutView:v5];

  contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
  [contentLayoutView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentLayoutView2 = [(UISystemInputViewController *)self contentLayoutView];
  [contentLayoutView2 setOpaque:0];

  containingView2 = [(UISystemInputViewController *)self containingView];
  contentLayoutView3 = [(UISystemInputViewController *)self contentLayoutView];
  [containingView2 addSubview:contentLayoutView3];

  [(UISystemInputViewController *)self _addChildInputViewController];
  editorVC = [(UISystemInputViewController *)self editorVC];

  if (editorVC)
  {
    editorVC2 = [(UISystemInputViewController *)self editorVC];
    [(UISystemInputViewController *)self _addAccessoryViewController:editorVC2];
  }

  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {

    [(UISystemInputViewController *)self updateAlignmentConstraints];
  }

  else
  {
    v12 = MEMORY[0x1E69977A0];
    contentLayoutView4 = [(UISystemInputViewController *)self contentLayoutView];
    containingView3 = [(UISystemInputViewController *)self containingView];
    v27 = [v12 constraintWithItem:contentLayoutView4 attribute:3 relatedBy:0 toItem:containingView3 attribute:3 multiplier:1.0 constant:0.0];
    v30[0] = v27;
    v13 = MEMORY[0x1E69977A0];
    contentLayoutView5 = [(UISystemInputViewController *)self contentLayoutView];
    containingView4 = [(UISystemInputViewController *)self containingView];
    v15 = [v13 constraintWithItem:contentLayoutView5 attribute:4 relatedBy:0 toItem:containingView4 attribute:4 multiplier:1.0 constant:0.0];
    v30[1] = v15;
    v16 = MEMORY[0x1E69977A0];
    contentLayoutView6 = [(UISystemInputViewController *)self contentLayoutView];
    containingView5 = [(UISystemInputViewController *)self containingView];
    v19 = [v16 constraintWithItem:contentLayoutView6 attribute:1 relatedBy:0 toItem:containingView5 attribute:1 multiplier:1.0 constant:0.0];
    v30[2] = v19;
    v20 = MEMORY[0x1E69977A0];
    contentLayoutView7 = [(UISystemInputViewController *)self contentLayoutView];
    containingView6 = [(UISystemInputViewController *)self containingView];
    v23 = [v20 constraintWithItem:contentLayoutView7 attribute:2 relatedBy:0 toItem:containingView6 attribute:2 multiplier:1.0 constant:0.0];
    v30[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

    containingView7 = [(UISystemInputViewController *)self containingView];
    [containingView7 addConstraints:v24];
  }
}

- (id)_traitCollectionForUserInterfaceStyle
{
  _window = [(UIViewController *)self _window];
  screen = [_window screen];
  traitCollection = [screen traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3 && ([(UISystemInputViewController *)self persistentDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
    traitCollection2 = [persistentDelegate traitCollection];
  }

  else
  {
    if (![(UISystemInputViewController *)self willPresentFullscreen])
    {
      v19.receiver = self;
      v19.super_class = UISystemInputViewController;
      traitCollection3 = [(UIViewController *)&v19 traitCollection];
      goto LABEL_18;
    }

    traitCollection4 = [(UITraitEnvironment *)self->_containingResponder traitCollection];
    v12 = traitCollection4;
    if (traitCollection4)
    {
      traitCollection5 = traitCollection4;
    }

    else
    {
      v20.receiver = self;
      v20.super_class = UISystemInputViewController;
      traitCollection5 = [(UIViewController *)&v20 traitCollection];
    }

    persistentDelegate = traitCollection5;

    textInputTraits = [(UISystemInputViewController *)self textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    switch(keyboardAppearance)
    {
      case 9:
        userInterfaceStyle = 1000;
        break;
      case 2:
        userInterfaceStyle = 1;
        break;
      case 1:
        userInterfaceStyle = 2;
        break;
      default:
        userInterfaceStyle = [persistentDelegate userInterfaceStyle];
        break;
    }

    traitCollection2 = [persistentDelegate _traitCollectionByReplacingNSIntegerValue:userInterfaceStyle forTraitToken:0x1EFE323B0];
  }

  traitCollection3 = traitCollection2;

LABEL_18:

  return traitCollection3;
}

- (void)_setNonInputViewVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  editorVC = [(UISystemInputViewController *)self editorVC];

  if (editorVC)
  {
    editorVC2 = [(UISystemInputViewController *)self editorVC];
    view = [editorVC2 view];
    [view setHidden:!visibilityCopy];
  }

  doneButton = [(UISystemInputViewController *)self doneButton];

  if (doneButton)
  {
    doneButton2 = [(UISystemInputViewController *)self doneButton];
    [doneButton2 setHidden:!visibilityCopy];
  }

  accessoryViewControllers = self->_accessoryViewControllers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UISystemInputViewController__setNonInputViewVisibility___block_invoke;
  v11[3] = &__block_descriptor_33_e43_v32__0__NSNumber_8__UIViewController_16_B24l;
  v12 = visibilityCopy;
  [(NSMutableDictionary *)accessoryViewControllers enumerateKeysAndObjectsUsingBlock:v11];
}

void __58__UISystemInputViewController__setNonInputViewVisibility___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 view];
  [v4 setHidden:(v3 & 1) == 0];
}

- (BOOL)keyboardCanBecomeFocusedWithZeroAlpha
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  view2 = [(UIViewController *)self view];
  isEligibleForFocusWithZeroAlpha = [view2 isEligibleForFocusWithZeroAlpha];

  return isEligibleForFocusWithZeroAlpha;
}

- (void)setKeyboardCanBecomeFocusedWithZeroAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  view = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(UIViewController *)self view];
    [view2 setIsEligibleForFocusWithZeroAlpha:alphaCopy];
  }
}

- (void)_addChildInputViewController
{
  recentsVC = [(UISystemInputViewController *)self recentsVC];

  if (recentsVC)
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
    v6 = [childViewControllers containsObject:recentsVC2];

    if (v6)
    {
      goto LABEL_10;
    }

    recentsVC3 = [(UISystemInputViewController *)self recentsVC];
  }

  else
  {
    inputVC = [(UISystemInputViewController *)self inputVC];

    if (inputVC)
    {
      childViewControllers2 = [(UIViewController *)self childViewControllers];
      inputVC2 = [(UISystemInputViewController *)self inputVC];
      v11 = [childViewControllers2 containsObject:inputVC2];

      if (v11)
      {
        goto LABEL_10;
      }

      recentsVC3 = [(UISystemInputViewController *)self inputVC];
    }

    else
    {
      [(UISystemInputViewController *)self _createKeyboardIfNecessary];
      childViewControllers3 = [(UIViewController *)self childViewControllers];
      keyboardVC = [(UISystemInputViewController *)self keyboardVC];
      v14 = [childViewControllers3 containsObject:keyboardVC];

      if (v14)
      {
        goto LABEL_10;
      }

      recentsVC3 = [(UISystemInputViewController *)self keyboardVC];
    }
  }

  v15 = recentsVC3;
  [(UISystemInputViewController *)self _addAccessoryViewController:recentsVC3];

LABEL_10:
  [(UISystemInputViewController *)self _setNonInputViewVisibility:recentsVC == 0];

  [(UISystemInputViewController *)self _updateRemoteTextEditingSession];
}

- (id)_remoteInputSessionIdentifier
{
  remoteInputSessionIdentifier = self->_remoteInputSessionIdentifier;
  if (!remoteInputSessionIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v5 = self->_remoteInputSessionIdentifier;
    self->_remoteInputSessionIdentifier = v4;

    remoteInputSessionIdentifier = self->_remoteInputSessionIdentifier;
  }

  return remoteInputSessionIdentifier;
}

- (void)_createKeyboardIfNecessary
{
  keyboard = [(UISystemInputViewController *)self keyboard];

  if (!keyboard)
  {
    initLazily = [[UIKeyboard alloc] initLazily];
    [(UISystemInputViewController *)self setKeyboard:initLazily];

    keyboard2 = [(UISystemInputViewController *)self keyboard];
    [keyboard2 _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

    keyboard3 = [(UISystemInputViewController *)self keyboard];
    [keyboard3 _setUseLinearLayout:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput")}];

    requestedInteractionModel = [(UISystemInputViewController *)self requestedInteractionModel];
    keyboard4 = [(UISystemInputViewController *)self keyboard];
    [keyboard4 setRequestedInteractionModel:requestedInteractionModel];

    keyboard5 = [(UISystemInputViewController *)self keyboard];
    [keyboard5 setTranslatesAutoresizingMaskIntoConstraints:0];

    keyboard6 = [(UISystemInputViewController *)self keyboard];
    v11 = [UICompatibilityInputViewController deferredInputModeControllerWithKeyboard:keyboard6];
    [(UISystemInputViewController *)self setKeyboardVC:v11];
  }

  v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v12 preferencesActions];
  currentInputModeSupportsCrescendo = [preferencesActions currentInputModeSupportsCrescendo];

  if ((currentInputModeSupportsCrescendo & 1) == 0)
  {
    keyboardVC = [(UISystemInputViewController *)self keyboardVC];
    view = [keyboardVC view];
    LODWORD(v17) = 1148846080;
    [view setContentCompressionResistancePriority:1 forAxis:v17];

    keyboardVC2 = [(UISystemInputViewController *)self keyboardVC];
    view2 = [keyboardVC2 view];
    LODWORD(v19) = 1148846080;
    [view2 setContentCompressionResistancePriority:0 forAxis:v19];
  }
}

- (void)_windowWillBecomeApplicationKey:(id)key
{
  keyCopy = key;
  v11 = +[UIWindow _applicationKeyWindow];
  object = [keyCopy object];

  traitCollection = [v11 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  _responderWindow = [(UIResponder *)self _responderWindow];
  if (object != _responderWindow || object == v11)
  {
    goto LABEL_6;
  }

  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  isFirstResponder = [persistentDelegate isFirstResponder];

  if (isFirstResponder && userInterfaceIdiom != 3)
  {
    _responderWindow = [v11 firstResponder];
    [_responderWindow resignFirstResponder];
LABEL_6:
  }
}

- (void)_windowDidBecomeApplicationKey:(id)key
{
  object = [key object];
  _responderWindow = [(UIResponder *)self _responderWindow];
  if (object == _responderWindow)
  {
    persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
    isFirstResponder = [persistentDelegate isFirstResponder];

    if (isFirstResponder)
    {
      [(UISystemInputViewController *)self _restoreKeyboardIfNecessary];
    }
  }

  else
  {
  }
}

- (void)_responderIsReloaded
{
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  if ([persistentDelegate isFirstResponder])
  {
    persistentDelegate2 = [(UISystemInputViewController *)self persistentDelegate];
    _responderWindow = [persistentDelegate2 _responderWindow];
    traitCollection = [_responderWindow traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      delegateAsResponder = [v6 delegateAsResponder];
      persistentDelegate3 = [(UISystemInputViewController *)self persistentDelegate];

      if (delegateAsResponder == persistentDelegate3)
      {
        return;
      }

      persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
      [persistentDelegate resignFirstResponder];
    }

    else
    {
    }
  }
}

- (void)setRequestedInteractionModel:(unint64_t)model
{
  if (self->_requestedInteractionModel != model)
  {
    self->_requestedInteractionModel = model;
    self->_supportsTouchInput = model < 2;
    keyboard = [(UISystemInputViewController *)self keyboard];

    if (keyboard)
    {
      keyboard2 = [(UISystemInputViewController *)self keyboard];
      [keyboard2 setRequestedInteractionModel:model];
    }
  }
}

- (void)setInputVC:(id)c
{
  cCopy = c;
  inputVC = self->_inputVC;
  if (inputVC != cCopy)
  {
    v14 = cCopy;
    if (inputVC)
    {
      childViewControllers = [(UIViewController *)self childViewControllers];
      v8 = [childViewControllers containsObject:self->_inputVC];

      cCopy = v14;
      if (v8)
      {
        [(UISystemInputViewController *)self _removeAccessoryViewController:self->_inputVC];
        cCopy = v14;
      }
    }

    if (cCopy)
    {
      if (self->_keyboardVC)
      {
        childViewControllers2 = [(UIViewController *)self childViewControllers];
        v10 = [childViewControllers2 containsObject:self->_keyboardVC];

        if (v10)
        {
          [(UISystemInputViewController *)self _removeAccessoryViewController:self->_keyboardVC];
        }
      }
    }

    objc_storeStrong(&self->_inputVC, c);
    [(UISystemInputViewController *)self _addChildInputViewController];
    view = [(UIViewController *)self view];
    window = [view window];

    if (window)
    {
      [(UISystemInputViewController *)self updateViewConstraints];
      [(UISystemInputViewController *)self updateAlignmentConstraints];
    }

    else
    {
      view2 = [(UIViewController *)self view];
      [view2 setNeedsUpdateConstraints];
    }

    cCopy = v14;
  }
}

- (void)setRecentsVC:(id)c
{
  cCopy = c;
  recentsVC = self->_recentsVC;
  if (recentsVC != cCopy)
  {
    v14 = cCopy;
    if (recentsVC)
    {
      childViewControllers = [(UIViewController *)self childViewControllers];
      v8 = [childViewControllers containsObject:self->_recentsVC];

      cCopy = v14;
      if (v8)
      {
        [(UISystemInputViewController *)self _removeAccessoryViewController:self->_recentsVC];
        cCopy = v14;
      }
    }

    if (cCopy)
    {
      if (self->_keyboardVC)
      {
        childViewControllers2 = [(UIViewController *)self childViewControllers];
        v10 = [childViewControllers2 containsObject:self->_keyboardVC];

        if (v10)
        {
          [(UISystemInputViewController *)self _removeAccessoryViewController:self->_keyboardVC];
        }
      }
    }

    objc_storeStrong(&self->_recentsVC, c);
    [(UISystemInputViewController *)self _addChildInputViewController];
    view = [(UIViewController *)self view];
    window = [view window];

    if (window)
    {
      [(UISystemInputViewController *)self updateViewConstraints];
      [(UISystemInputViewController *)self updateAlignmentConstraints];
    }

    else
    {
      view2 = [(UIViewController *)self view];
      [view2 setNeedsUpdateConstraints];
    }

    cCopy = v14;
  }
}

- (void)didSelectRecentInput
{
  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {

    [(UISystemInputViewController *)self _returnButtonPressed];
  }

  else
  {
    systemInputViewControllerDelegate = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      systemInputViewControllerDelegate2 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
      [systemInputViewControllerDelegate2 systemInputViewControllerDidAcceptRecentInput:self];
    }
  }
}

- (void)switchToKeyboard
{
  [(UISystemInputViewController *)self setRecentsVC:0];
  [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:1];

  [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
}

- (void)setSupportsRecentInputsIntegration:(BOOL)integration
{
  integrationCopy = integration;
  self->_supportsRecentInputsIntegration = integration;
  if (integration)
  {
    recentsVC = [(UISystemInputViewController *)self recentsVC];
    if (!recentsVC)
    {
LABEL_11:

      [(UISystemInputViewController *)self configureRecentsVCIfNecessary];
      return;
    }

    if (self->_supportsRecentInputsIntegration)
    {

      return;
    }

    v7 = recentsVC;
  }

  recentsVC2 = [(UISystemInputViewController *)self recentsVC];

  if (integrationCopy)
  {
  }

  if (recentsVC2)
  {
    goto LABEL_11;
  }
}

- (void)configureRecentsVCIfNecessary
{
  if ([(UISystemInputViewController *)self willShowRecentsList]&& ![(UISystemInputViewController *)self didDisplayRecents])
  {
    v12 = [(UITableViewController *)[UIRecentsInputViewController alloc] initWithStyle:0];
    textInputTraits = [(UISystemInputViewController *)self textInputTraits];
    -[UIRecentsInputViewController setCanManageList:](v12, "setCanManageList:", [textInputTraits manageRecentInputs]);

    persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
    recentsAccessoryView = [persistentDelegate recentsAccessoryView];
    [(UIRecentsInputViewController *)v12 setCustomHeaderView:recentsAccessoryView];

    v6 = [UIBlurEffect effectWithStyle:[(UISystemInputViewController *)self blurEffectStyle]];
    traitCollection = [(UITraitEnvironment *)self->_containingResponder traitCollection];
    v8 = [v6 effectForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    -[UIRecentsInputViewController setContainingEffectStyle:](v12, "setContainingEffectStyle:", [v8 _style]);
    [(UISystemInputViewController *)self setRecentsVC:v12];
    recentsVC = [(UISystemInputViewController *)self recentsVC];
    [recentsVC setRecentInputDelegate:self];

    cachedRecents = [(UISystemInputViewController *)self cachedRecents];
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
    [recentsVC2 setRecentInputs:cachedRecents];

    [(UISystemInputViewController *)self setDidDisplayRecents:1];
    [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:0];
  }
}

- (void)setSystemInputViewControllerDelegate:(id)delegate
{
  if (self->_systemInputViewControllerDelegate != delegate)
  {
    self->_systemInputViewControllerDelegate = delegate;
    recentsVC = [(UISystemInputViewController *)self recentsVC];
    [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:recentsVC == 0];
  }
}

- (void)notifyDelegateWithAccessoryVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  systemInputViewControllerDelegate = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
  if (systemInputViewControllerDelegate)
  {
    v6 = systemInputViewControllerDelegate;
    systemInputViewControllerDelegate2 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      systemInputViewControllerDelegate3 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
      [systemInputViewControllerDelegate3 systemInputViewController:self didChangeAccessoryVisibility:visibilityCopy];
    }
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(beganCopy, 5))
  {
    _window = [(UIViewController *)self _window];
    firstResponder = [_window firstResponder];

    if (!firstResponder)
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesBegan:beganCopy withEvent:eventCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(endedCopy, 5))
  {
    _window = [(UIViewController *)self _window];
    firstResponder = [_window firstResponder];

    if (firstResponder)
    {
      [firstResponder _nonDestructivelyResignFirstResponder];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesEnded:endedCopy withEvent:eventCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(cancelledCopy, 5))
  {
    _window = [(UIViewController *)self _window];
    firstResponder = [_window firstResponder];

    if (!firstResponder)
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesCancelled:cancelledCopy withEvent:eventCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_dismissSystemInputViewController
{
  nextInputDelegate = [(UISystemInputViewController *)self nextInputDelegate];

  if (nextInputDelegate)
  {
    nextInputDelegate2 = [(UISystemInputViewController *)self nextInputDelegate];
    v5 = __automaticNextFocusResponder;
    __automaticNextFocusResponder = nextInputDelegate2;

    [(UISystemInputViewController *)self setIsAutomaticResponderTransition:1];
    keyboard = [(UISystemInputViewController *)self keyboard];
    [keyboard setDisableInteraction:1];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__UISystemInputViewController__dismissSystemInputViewController__block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIViewController _performWithoutDeferringTransitions:v9];
    v7 = __automaticNextFocusResponder;
    __automaticNextFocusResponder = 0;
  }

  else
  {
    persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
    [persistentDelegate resignFirstResponder];
  }
}

void __64__UISystemInputViewController__dismissSystemInputViewController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistentDelegate];
  [v1 resignFirstResponder];

  [__automaticNextFocusResponder becomeFirstResponder];
  if (([__automaticNextFocusResponder isFirstResponder] & 1) == 0)
  {
    v2 = +[UIKeyboard activeKeyboard];
    [v2 setDisableInteraction:0];
  }
}

- (void)_returnButtonPressed
{
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [persistentDelegate keyboardInput:persistentDelegate shouldInsertText:@"\n" isMarkedText:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [persistentDelegate sendActionsForControlEvents:0x80000];
  }

  [(UISystemInputViewController *)self _dismissSystemInputViewController];
}

- (UISystemInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = UISystemInputViewController;
  result = [(UIViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_supportsTouchInput = 1;
  }

  return result;
}

- (void)dealloc
{
  v11[10] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"UIApplicationDidEnterBackgroundNotification";
  v11[1] = @"UIApplicationWillEnterForegroundNotification";
  v11[2] = @"UIApplicationWillResignActiveNotification";
  v11[3] = @"UIApplicationDidBecomeActiveNotification";
  v11[4] = 0x1EFBB4850;
  v11[5] = 0x1EFBB4830;
  v11[6] = @"UITextInputCurrentInputModeDidChangeNotification";
  v11[7] = @"_UIWindowWillBecomeApplicationKeyNotification";
  v11[8] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v11[9] = @"UITextInputResponderIsReloadedNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:10];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5 = +[UIKeyboardImpl activeInstance];
  delegate = [v5 delegate];
  persistentDelegate = self->_persistentDelegate;

  if (delegate == persistentDelegate)
  {
    [(UISystemInputViewController *)self setDelegate:0];
  }

  self->_systemInputViewControllerDelegate = 0;
  nextInputDelegate = self->_nextInputDelegate;
  self->_nextInputDelegate = 0;

  v9 = self->_persistentDelegate;
  self->_persistentDelegate = 0;

  self->_containingResponder = 0;
  v10.receiver = self;
  v10.super_class = UISystemInputViewController;
  [(UIViewController *)&v10 dealloc];
}

- (void)prepareForRelease
{
  v3 = +[UIKeyboardImpl activeInstance];
  delegate = [v3 delegate];
  persistentDelegate = self->_persistentDelegate;

  if (delegate == persistentDelegate)
  {
    if (self->_isVisible)
    {
      [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
    }

    [(UISystemInputViewController *)self setDelegate:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = UISystemInputViewController;
  [(UIViewController *)&v9 viewDidAppear:appear];
  self->_isVisible = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  _responderWindow = [(UIResponder *)self _responderWindow];
  [defaultCenter addObserver:self selector:sel__windowWillBecomeApplicationKey_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:_responderWindow];

  _responderWindow2 = [(UIResponder *)self _responderWindow];
  [defaultCenter addObserver:self selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:_responderWindow2];

  [defaultCenter addObserver:self selector:sel__responderIsReloaded name:@"UITextInputResponderIsReloadedNotification" object:0];
  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {
    presentationController = [(UIViewController *)self presentationController];
    [presentationController _disableMenuPressForBackGesture];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__UISystemInputViewController_viewDidAppear___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v8];
  }
}

void __45__UISystemInputViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _responderWindow];
  v3 = [v2 _focusSystem];
  v4 = [v3 focusedItem];
  v9 = _UIFocusEnvironmentContainingView(v4);

  v5 = [*(a1 + 32) keyboard];
  if ([v5 isFocused])
  {

LABEL_3:
    +[UIDictationController keyboardDidUpdateOnScreenStatus];
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) keyboard];
  v7 = [v6 cursorLocation];

  if (!v7 || !v9)
  {
    goto LABEL_3;
  }

  v8 = [*(a1 + 32) keyboard];
  [v8 setCursorLocation:0];

  [*(a1 + 32) _setSystemInputInteractionActive:0];
LABEL_7:
}

- (id)preferredFocusEnvironments
{
  v12[1] = *MEMORY[0x1E69E9840];
  recentsVC = [(UISystemInputViewController *)self recentsVC];

  if (recentsVC)
  {
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
    v12[0] = recentsVC2;
    v5 = v12;
LABEL_7:
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:{1, v10, v11, v12[0]}];

    goto LABEL_8;
  }

  inputVC = [(UISystemInputViewController *)self inputVC];

  if (inputVC)
  {
    recentsVC2 = [(UISystemInputViewController *)self inputVC];
    v11 = recentsVC2;
    v5 = &v11;
    goto LABEL_7;
  }

  keyboardVC = [(UISystemInputViewController *)self keyboardVC];

  if (keyboardVC)
  {
    recentsVC2 = [(UISystemInputViewController *)self keyboardVC];
    v10 = recentsVC2;
    v5 = &v10;
    goto LABEL_7;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v8;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = UISystemInputViewController;
  [(UIViewController *)&v6 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(UISystemInputViewController *)self _updateRemoteTextEditingSession];
  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    keyboard = [(UISystemInputViewController *)self keyboard];
    -[UISystemInputViewController _setSystemInputInteractionActive:](self, "_setSystemInputInteractionActive:", [keyboard isFocused]);
  }
}

- (UIEdgeInsets)unfocusedFocusGuideOutsets
{
  keyboard = [(UISystemInputViewController *)self keyboard];
  [keyboard unfocusedFocusGuideOutsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setUnfocusedFocusGuideOutsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  keyboard = [(UISystemInputViewController *)self keyboard];
  view = [(UIViewController *)self view];
  [keyboard setUnfocusedFocusGuideOutsets:view fromView:{top, left, bottom, right}];
}

- (id)viewForFocusHeading:(unint64_t)heading fromView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    if (heading)
    {
LABEL_3:
      v8 = [UIFocusSystem focusSystemForEnvironment:viewCopy];
      v9 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:v8];
      v10 = _UIFocusEnvironmentContainingView(viewCopy);
      v11 = [_UIFocusItemInfo infoWithItem:v10];
      [(_UIFocusMovementRequest *)v9 setFocusedItemInfo:v11];

      v12 = [[_UIFocusMovementInfo alloc] initWithHeading:heading linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
      [(_UIFocusMovementRequest *)v9 setMovementInfo:v12];

      _movementPerformer = [v8 _movementPerformer];
      v14 = [_movementPerformer contextForFocusMovement:v9];

      nextFocusedView = [v14 nextFocusedView];
      v16 = nextFocusedView;
      if (nextFocusedView)
      {
        v17 = nextFocusedView;
      }

      else
      {
        v17 = viewCopy;
      }

      v18 = v17;

      goto LABEL_9;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISystemInputViewController.m" lineNumber:1760 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (heading)
    {
      goto LABEL_3;
    }
  }

  v18 = viewCopy;
LABEL_9:

  return v18;
}

- (void)findNextInputDelegate
{
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _responderWindow = [(UITextInput *)self->_persistentDelegate _responderWindow];
    _focusEventRecognizer = [_responderWindow _focusEventRecognizer];
    if (_focusEventRecognizer)
    {
      persistentDelegate2 = [(UISystemInputViewController *)self persistentDelegate];
      v7 = [(UISystemInputViewController *)self viewForFocusHeading:16 fromView:persistentDelegate2];
      v8 = v7;
      if (v7 && v7 != persistentDelegate2 && [v7 conformsToProtocol:&unk_1EFE8B2D0])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if ([v9 isEditable])
          {
            [(UISystemInputViewController *)self setNextInputDelegate:v9];
          }
        }

        else
        {
          [(UISystemInputViewController *)self setNextInputDelegate:v8];
        }
      }
    }
  }
}

- (id)doneButtonStringForCurrentInputDelegate
{
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  returnKeyType = [persistentDelegate returnKeyType];

  if (returnKeyType)
  {
    v5 = returnKeyType;
  }

  else
  {
    v5 = 9;
  }

  nextInputDelegate = [(UISystemInputViewController *)self nextInputDelegate];

  if (nextInputDelegate)
  {
    v7 = 4;
  }

  else
  {
    v7 = v5;
  }

  return UIKeyboardLocalizedReturnKeyName(v7);
}

- (void)setDoneButton:(id)button
{
  buttonCopy = button;
  objc_storeStrong(&self->_doneButton, button);
  doneButton = self->_doneButton;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = defaultCenter;
  if (doneButton)
  {
    [defaultCenter addObserver:self selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  _responderWindow = [delegateCopy _responderWindow];
  traitCollection = [_responderWindow traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(UISystemInputViewController *)self _restoreKeyboardIfNecessary];
  }

  v8 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v8 delegateAsResponder];

  v10 = +[UIKeyboardImpl activeInstance];
  [v10 setDelegate:delegateCopy];

  v11 = +[UIKeyboardImpl activeInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__UISystemInputViewController_setDelegate___block_invoke;
  v17[3] = &unk_1E710E718;
  v17[4] = self;
  [v11 handleTraitChangeObserver:delegateAsResponder newResponder:delegateCopy updateTraitCollection:v17];

  if (delegateCopy && delegateAsResponder != delegateCopy)
  {
    _responderWindow2 = [delegateCopy _responderWindow];
    traitCollection2 = [_responderWindow2 traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 3)
    {
      _responderWindow3 = [delegateAsResponder _responderWindow];
      traitCollection3 = [_responderWindow3 traitCollection];
      userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

      if (userInterfaceIdiom2 != 3)
      {
        [delegateAsResponder resignFirstResponder];
      }
    }

    else
    {
    }
  }
}

uint64_t __43__UISystemInputViewController_setDelegate___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__UISystemInputViewController_setDelegate___block_invoke_2;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __43__UISystemInputViewController_setDelegate___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateTraitsIfNeeded];
  v1 = +[UIKeyboardImpl activeInstance];
  [v1 traitCollectionDidChange];
}

- (void)inputModeDidChange:(id)change
{
  doneButton = [(UISystemInputViewController *)self doneButton];

  if (doneButton)
  {
    doneButton2 = [(UISystemInputViewController *)self doneButton];
    doneButtonStringForCurrentInputDelegate = [(UISystemInputViewController *)self doneButtonStringForCurrentInputDelegate];
    [doneButton2 setTitle:doneButtonStringForCurrentInputDelegate forState:0];
  }

  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {
    if ([(UISystemInputViewController *)self willUpdateBackgroundEffectOnInputModeChange])
    {
      view = [(UIViewController *)self view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        textInputTraits = [(UISystemInputViewController *)self textInputTraits];
        keyboardAppearance = [textInputTraits keyboardAppearance];
        v11 = +[UIKeyboardInputModeController sharedInputModeController];
        currentInputMode = [v11 currentInputMode];
        v13 = [UIKBRenderConfig configForAppearance:keyboardAppearance inputMode:currentInputMode traitEnvironment:0];
        blurEffectStyle = [v13 blurEffectStyle];

        [(UISystemInputViewController *)self setBlurEffectStyle:blurEffectStyle];
        view2 = [(UIViewController *)self view];
        v15 = [UIBlurEffect effectWithStyle:[(UISystemInputViewController *)self blurEffectStyle]];
        [view2 setEffect:v15];
      }
    }
  }
}

- (void)reloadInputViewsForPersistentDelegate
{
  v38 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    _window = [(UIViewController *)self _window];
    screen = [_window screen];
    traitCollection = [screen traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      inputDelegate = [v7 inputDelegate];

      v9 = +[UIWindowScene _keyWindowScene];
      screen2 = [v9 screen];

      if (inputDelegate)
      {
        _responderWindow = [inputDelegate _responderWindow];
        screen3 = [_responderWindow screen];
        v13 = screen3;
        if (screen3 == screen2)
        {
          _window2 = [(UIViewController *)self _window];
          screen4 = [_window2 screen];

          if (screen4 != screen2)
          {
            [inputDelegate resignFirstResponder];
          }
        }

        else
        {
        }
      }
    }
  }

  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  isFirstResponder = [persistentDelegate isFirstResponder];

  if (isFirstResponder)
  {
    persistentDelegate2 = [(UISystemInputViewController *)self persistentDelegate];
    [(UISystemInputViewController *)self setDelegate:persistentDelegate2];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    childViewControllers = [(UIViewController *)self childViewControllers];
    v20 = [childViewControllers countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(childViewControllers);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          keyboardVC = [(UISystemInputViewController *)self keyboardVC];

          if (v24 != keyboardVC)
          {
            traitCollection2 = [(UISystemInputViewController *)self traitCollection];
            [v24 traitCollectionDidChange:traitCollection2];
          }
        }

        v21 = [childViewControllers countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v21);
    }

    return;
  }

  textInputTraits = [(UISystemInputViewController *)self textInputTraits];
  if (([textInputTraits forceSpellingDictation] & 1) == 0)
  {
    textInputTraits2 = [(UISystemInputViewController *)self textInputTraits];
    if (!UIKeyboardTypeSupportsDictationSpelling([textInputTraits2 dictationKeyboardType]))
    {
      textInputTraits3 = [(UISystemInputViewController *)self textInputTraits];
      isSecureTextEntry = [textInputTraits3 isSecureTextEntry];

      if ((isSecureTextEntry & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

LABEL_24:
  v29 = +[UIDictationController activeInstance];
  [v29 markKeyboardDidReset];

LABEL_25:
  [(UISystemInputViewController *)self setupKeyboard];
  view = [(UIViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (BOOL)willShowRecentsList
{
  cachedRecents = [(UISystemInputViewController *)self cachedRecents];
  if (!cachedRecents)
  {
    textInputTraits = [(UISystemInputViewController *)self textInputTraits];
    isSecureTextEntry = [textInputTraits isSecureTextEntry];

    if (isSecureTextEntry)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x1E69D96E0];
    textInputTraits2 = [(UISystemInputViewController *)self textInputTraits];
    cachedRecents = [v6 traitsForUITextInputTraits:textInputTraits2];

    v8 = MEMORY[0x1E69D9690];
    recentInputIdentifier = [cachedRecents recentInputIdentifier];
    v10 = [v8 recentInputForIdentifier:recentInputIdentifier];

    v11 = [UILexicon _lexiconWithTILexicon:v10];
    [(UISystemInputViewController *)self setCachedRecents:v11];
  }

LABEL_5:
  cachedRecents2 = [(UISystemInputViewController *)self cachedRecents];
  entries = [cachedRecents2 entries];
  if ([entries count])
  {
    supportsRecentInputsIntegration = [(UISystemInputViewController *)self supportsRecentInputsIntegration];
  }

  else
  {
    supportsRecentInputsIntegration = 0;
  }

  return supportsRecentInputsIntegration;
}

- (void)updateAlignmentConstraints
{
  if (![(UISystemInputViewController *)self willPresentFullscreen])
  {
    return;
  }

  array = [MEMORY[0x1E695DF70] array];
  v3 = [(UISystemInputViewController *)self alignmentConstraintForAxis:0];
  if (!v3)
  {
    v4 = MEMORY[0x1E69977A0];
    contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
    containingView = [(UISystemInputViewController *)self containingView];
    v3 = [v4 constraintWithItem:contentLayoutView attribute:9 relatedBy:0 toItem:containingView attribute:9 multiplier:1.0 constant:0.0];

    [(UISystemInputViewController *)self setAlignmentConstraint:v3 forAxis:0];
    [array addObject:v3];
  }

  contentLayoutView2 = [(UISystemInputViewController *)self contentLayoutView];
  recentsVC = [(UISystemInputViewController *)self recentsVC];
  if (recentsVC)
  {
    v9 = recentsVC;
    childViewControllers = [(UIViewController *)self childViewControllers];
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
    v12 = [childViewControllers containsObject:recentsVC2];

    if (v12)
    {
      recentsVC3 = [(UISystemInputViewController *)self recentsVC];
      view = [recentsVC3 view];

      contentLayoutView2 = view;
    }
  }

  v15 = [(UISystemInputViewController *)self alignmentConstraintForAxis:1];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  firstItem = [v15 firstItem];

  if (firstItem != contentLayoutView2)
  {
    containingView2 = [(UISystemInputViewController *)self containingView];
    [containingView2 removeConstraint:v16];

    [(UISystemInputViewController *)self setAlignmentConstraint:0 forAxis:1];
LABEL_10:
    v19 = MEMORY[0x1E69977A0];
    containingView3 = [(UISystemInputViewController *)self containingView];
    v16 = [v19 constraintWithItem:contentLayoutView2 attribute:10 relatedBy:0 toItem:containingView3 attribute:10 multiplier:1.0 constant:0.0];

    [(UISystemInputViewController *)self setAlignmentConstraint:v16 forAxis:1];
    [array addObject:v16];
  }

  containingView4 = [(UISystemInputViewController *)self containingView];
  [containingView4 addConstraints:array];
}

- (void)updateViewConstraints
{
  v116[1] = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = UISystemInputViewController;
  [(UIViewController *)&v108 updateViewConstraints];
  contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
  recentsVC = [(UISystemInputViewController *)self recentsVC];
  view = [recentsVC view];
  v6 = [view isDescendantOfView:contentLayoutView];

  v96 = v6;
  v100 = contentLayoutView;
  if (v6)
  {
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
LABEL_7:
    v14 = recentsVC2;
    view2 = [recentsVC2 view];

    goto LABEL_8;
  }

  inputVC = [(UISystemInputViewController *)self inputVC];
  view3 = [inputVC view];
  v10 = [view3 isDescendantOfView:contentLayoutView];

  if (v10)
  {
    recentsVC2 = [(UISystemInputViewController *)self inputVC];
    goto LABEL_7;
  }

  keyboardVC = [(UISystemInputViewController *)self keyboardVC];
  view4 = [keyboardVC view];
  v13 = [view4 isDescendantOfView:contentLayoutView];

  if (v13)
  {
    recentsVC2 = [(UISystemInputViewController *)self keyboardVC];
    goto LABEL_7;
  }

  view2 = 0;
LABEL_8:
  editorVC = [(UISystemInputViewController *)self editorVC];
  view5 = [editorVC view];

  v18 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:0];
  view6 = [v18 view];

  v20 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:2];
  view7 = [v20 view];

  v22 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:1];
  view8 = [v22 view];

  v24 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:3];
  view9 = [v24 view];

  v105 = view6;
  if (view6)
  {
    v26 = view6;
  }

  else
  {
    v26 = v100;
  }

  v99 = view5;
  if (view5)
  {
    v26 = view5;
  }

  v27 = v26;
  if (v27 == v100)
  {
    v28 = 3;
  }

  else
  {
    v28 = 4;
  }

  v103 = view8;
  if (view8)
  {
    v29 = view8;
  }

  else
  {
    v29 = v100;
  }

  if (view8)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v101 = v30;
  v107 = v29;
  v31 = view9 == 0;
  v102 = view9;
  if (view9)
  {
    v32 = view9;
  }

  else
  {
    v32 = v100;
  }

  v33 = view7;
  v34 = v100;
  if (v31)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  v36 = v32;
  if (view2)
  {
    v37 = view2;
  }

  else
  {
    v37 = v100;
  }

  v104 = v37;
  v106 = v33;
  if (v33)
  {
    v38 = v33;
  }

  else
  {
    v38 = view2;
  }

  v39 = v38;
  if (view2)
  {
    keyboardConstraints = [(UISystemInputViewController *)self keyboardConstraints];

    if (keyboardConstraints)
    {
      keyboardConstraints2 = [(UISystemInputViewController *)self keyboardConstraints];
      [v100 removeConstraints:keyboardConstraints2];
    }

    if (v96)
    {
      v97 = [MEMORY[0x1E69977A0] constraintWithItem:view2 attribute:1 relatedBy:1 toItem:v107 attribute:1 multiplier:1.0 constant:0.0];
      [MEMORY[0x1E69977A0] constraintWithItem:view2 attribute:2 relatedBy:-1 toItem:v36 attribute:2 multiplier:1.0 constant:0.0];
    }

    else
    {
      v97 = [(UISystemInputViewController *)self constraintFromView:view2 attribute:1 toView:v107 attribute:v101];
      [(UISystemInputViewController *)self constraintFromView:view2 attribute:2 toView:v36 attribute:v35];
    }
    v42 = ;
    v43 = [(UISystemInputViewController *)self constraintFromView:view2 attribute:3 toView:v27 attribute:v28];
    traitCollection = [(UISystemInputViewController *)self traitCollection];
    v94 = v43;
    if ([traitCollection userInterfaceIdiom] == 3)
    {
      supportsTouchInput = [(UISystemInputViewController *)self supportsTouchInput];

      if (supportsTouchInput)
      {
        v116[0] = v43;
        v46 = MEMORY[0x1E695DEC8];
        v47 = v116;
        v48 = 1;
LABEL_45:
        v49 = [v46 arrayWithObjects:v47 count:v48];
        if ([(UISystemInputViewController *)self supportsTouchInput])
        {
          superview = [view2 superview];
          v51 = [(UISystemInputViewController *)self constraintFromView:view2 attribute:9 toView:superview attribute:9];

          v52 = [v49 arrayByAddingObject:v51];

          v49 = v52;
        }

        v95 = v42;
        if (!v106)
        {
          safeAreaLayoutGuide = [v100 safeAreaLayoutGuide];
          bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
          [view2 bottomAnchor];
          v55 = v39;
          v56 = view2;
          v57 = v36;
          v59 = v58 = v27;
          v60 = [bottomAnchor constraintEqualToAnchor:v59];

          v27 = v58;
          v36 = v57;
          view2 = v56;
          v39 = v55;
          v34 = v100;

          v61 = [v49 arrayByAddingObject:v60];

          v49 = v61;
        }

        [(UISystemInputViewController *)self setKeyboardConstraints:v49];
        keyboardConstraints3 = [(UISystemInputViewController *)self keyboardConstraints];
        [v34 addConstraints:keyboardConstraints3];

        goto LABEL_50;
      }
    }

    else
    {
    }

    v115[0] = v97;
    v115[1] = v42;
    v115[2] = v43;
    v46 = MEMORY[0x1E695DEC8];
    v47 = v115;
    v48 = 3;
    goto LABEL_45;
  }

LABEL_50:
  v98 = v27;
  if (v99)
  {
    editorConstraints = [(UISystemInputViewController *)self editorConstraints];

    if (editorConstraints)
    {
      editorConstraints2 = [(UISystemInputViewController *)self editorConstraints];
      [v34 removeConstraints:editorConstraints2];
    }

    v65 = [(UISystemInputViewController *)self constraintFromView:v99 attribute:1 toView:v107 attribute:v101];
    v66 = [(UISystemInputViewController *)self constraintFromView:v99 attribute:7 toView:v104 attribute:7];
    v67 = v66;
    if (v105)
    {
      v113[0] = v65;
      v113[1] = v66;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
      [(UISystemInputViewController *)self setEditorConstraints:v68];
    }

    else
    {
      v68 = [(UISystemInputViewController *)self constraintFromView:v99 attribute:3 toView:v34 attribute:3];
      v114[0] = v65;
      v114[1] = v67;
      v114[2] = v68;
      v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
      [(UISystemInputViewController *)self setEditorConstraints:v69];
    }

    editorConstraints3 = [(UISystemInputViewController *)self editorConstraints];
    [v34 addConstraints:editorConstraints3];
  }

  v71 = v105;
  if (v105)
  {
    v72 = [(UISystemInputViewController *)self constraintFromView:v105 attribute:1 toView:v107 attribute:v101];
    v73 = [(UISystemInputViewController *)self constraintFromView:v105 attribute:7 toView:v104 attribute:7];
    v74 = [(UISystemInputViewController *)self constraintFromView:v105 attribute:3 toView:v34 attribute:3];
    if (v99)
    {
      v75 = v99;
    }

    else
    {
      v75 = view2;
    }

    v76 = [(UISystemInputViewController *)self constraintFromView:v105 attribute:4 toView:v75 attribute:3];
    v112[0] = v72;
    v112[1] = v73;
    v112[2] = v74;
    v112[3] = v76;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];
    [(UISystemInputViewController *)self setConstraints:v77 forEdge:0];

    v71 = v105;
  }

  if (v106)
  {
    v78 = [(UISystemInputViewController *)self constraintFromView:v106 attribute:1 toView:v107 attribute:v101];
    v79 = [(UISystemInputViewController *)self constraintFromView:v106 attribute:7 toView:v104 attribute:7];
    if (view2)
    {
      v80 = view2;
    }

    else
    {
      v80 = v99;
    }

    v81 = [(UISystemInputViewController *)self constraintFromView:v106 attribute:3 toView:v80 attribute:4];
    v82 = [(UISystemInputViewController *)self constraintFromView:v106 attribute:4 toView:v34 attribute:4];
    v111[0] = v78;
    v111[1] = v79;
    v111[2] = v81;
    v111[3] = v82;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:4];
    [(UISystemInputViewController *)self setConstraints:v83 forEdge:2];

    v71 = v105;
  }

  v84 = v103;
  if (v103)
  {
    v85 = [(UISystemInputViewController *)self constraintFromView:v103 attribute:3 toView:v34 attribute:3];
    v86 = [(UISystemInputViewController *)self constraintFromView:v103 attribute:4 toView:v39 attribute:4];
    v87 = [(UISystemInputViewController *)self constraintFromView:v103 attribute:1 toView:v34 attribute:1];
    v110[0] = v85;
    v110[1] = v86;
    v110[2] = v87;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:3];
    [(UISystemInputViewController *)self setConstraints:v88 forEdge:1];

    v84 = v103;
  }

  v89 = v102;
  if (v102)
  {
    v90 = [(UISystemInputViewController *)self constraintFromView:v102 attribute:3 toView:v34 attribute:3];
    v91 = [(UISystemInputViewController *)self constraintFromView:v102 attribute:4 toView:v39 attribute:4];
    v92 = [(UISystemInputViewController *)self constraintFromView:v102 attribute:2 toView:v34 attribute:2];
    v109[0] = v90;
    v109[1] = v91;
    v109[2] = v92;
    v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:3];
    [(UISystemInputViewController *)self setConstraints:v93 forEdge:3];

    v84 = v103;
    v89 = v102;
  }
}

- (void)updateBackdropForCarPlay
{
  v39[5] = *MEMORY[0x1E69E9840];
  keyboardBackdropConstraints = [(UISystemInputViewController *)self keyboardBackdropConstraints];
  if (keyboardBackdropConstraints)
  {
  }

  else
  {
    backdropView = [(UISystemInputViewController *)self backdropView];

    if (backdropView)
    {
      backdropView2 = [(UISystemInputViewController *)self backdropView];
      leadingAnchor = [backdropView2 leadingAnchor];
      view = [(UIViewController *)self view];
      leadingAnchor2 = [view leadingAnchor];
      v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
      v39[0] = v34;
      view2 = [(UIViewController *)self view];
      trailingAnchor = [view2 trailingAnchor];
      backdropView3 = [(UISystemInputViewController *)self backdropView];
      trailingAnchor2 = [backdropView3 trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
      v39[1] = v29;
      backdropView4 = [(UISystemInputViewController *)self backdropView];
      topAnchor = [backdropView4 topAnchor];
      view3 = [(UIViewController *)self view];
      topAnchor2 = [view3 topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v39[2] = v24;
      backdropView5 = [(UISystemInputViewController *)self backdropView];
      bottomAnchor = [backdropView5 bottomAnchor];
      view4 = [(UIViewController *)self view];
      bottomAnchor2 = [view4 bottomAnchor];
      v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      v39[3] = v8;
      backdropView6 = [(UISystemInputViewController *)self backdropView];
      centerXAnchor = [backdropView6 centerXAnchor];
      view5 = [(UIViewController *)self view];
      centerXAnchor2 = [view5 centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v39[4] = v13;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];

      [(UISystemInputViewController *)self setKeyboardBackdropConstraints:v23];
      view6 = [(UIViewController *)self view];
      keyboardBackdropConstraints2 = [(UISystemInputViewController *)self keyboardBackdropConstraints];
      [view6 addConstraints:keyboardBackdropConstraints2];
    }
  }

  backdropView7 = [(UISystemInputViewController *)self backdropView];

  if (backdropView7)
  {
    containingView3 = +[UIColor clearColor];
    containingView = [(UISystemInputViewController *)self containingView];
    [containingView setBackgroundColor:containingView3];
  }

  else
  {
    containingView2 = [(UISystemInputViewController *)self containingView];
    layer = [containingView2 layer];
    [layer setCornerRadius:22.0];

    containingView3 = [(UISystemInputViewController *)self containingView];
    containingView = [containingView3 layer];
    [containingView setMasksToBounds:1];
  }

  backdropView8 = [(UISystemInputViewController *)self backdropView];
  [backdropView8 updateCornersWithRadius:1 usingCornerRadii:22.0];
}

- (id)constraintsForEdge:(int64_t)edge
{
  accessoryConstraints = self->_accessoryConstraints;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
  v5 = [(NSMutableDictionary *)accessoryConstraints objectForKey:v4];

  return v5;
}

- (void)setConstraints:(id)constraints forEdge:(int64_t)edge
{
  constraintsCopy = constraints;
  v6 = [(UISystemInputViewController *)self constraintsForEdge:edge];
  if (v6)
  {
    contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
    [contentLayoutView removeConstraints:v6];
  }

  accessoryConstraints = self->_accessoryConstraints;
  contentLayoutView2 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
  if (constraintsCopy)
  {
    [(NSMutableDictionary *)accessoryConstraints setObject:constraintsCopy forKey:contentLayoutView2];

    contentLayoutView2 = [(UISystemInputViewController *)self contentLayoutView];
    [contentLayoutView2 addConstraints:constraintsCopy];
  }

  else
  {
    [(NSMutableDictionary *)accessoryConstraints removeObjectForKey:contentLayoutView2];
  }
}

- (void)_addAccessoryViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    [(UIViewController *)self addChildViewController:controllerCopy];
    contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
    view = [controllerCopy view];
    [contentLayoutView addSubview:view];

    contentLayoutView2 = [(UISystemInputViewController *)self contentLayoutView];
    keyboardVC = [(UISystemInputViewController *)self keyboardVC];
    view2 = [keyboardVC view];
    [contentLayoutView2 bringSubviewToFront:view2];

    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)_removeAccessoryViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    view = [controllerCopy view];
    [view removeFromSuperview];

    [controllerCopy removeFromParentViewController];
  }
}

- (unint64_t)_verticalLayoutTypeForEdge:(int64_t)edge
{
  if (((edge - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_horizontalLayoutTypeForEdge:(int64_t)edge
{
  if (((edge - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)_accessoryViewControllerForEdge:(int64_t)edge
{
  accessoryViewControllers = self->_accessoryViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
  v5 = [(NSMutableDictionary *)accessoryViewControllers objectForKey:v4];

  return v5;
}

- (id)accessoryViewControllerForEdge:(int64_t)edge
{
  v3 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:edge];
  childViewControllers = [v3 childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (void)setAccessoryViewController:(id)controller forEdge:(int64_t)edge
{
  controllerCopy = controller;
  if (!self->_accessoryViewControllers)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    accessoryViewControllers = self->_accessoryViewControllers;
    self->_accessoryViewControllers = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    accessoryConstraints = self->_accessoryConstraints;
    self->_accessoryConstraints = v8;
  }

  v10 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:edge];
  [(UISystemInputViewController *)self _removeAccessoryViewController:v10];
  if (controllerCopy)
  {
    v11 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:controllerCopy];
    [v11 setVerticalLayoutType:{-[UISystemInputViewController _verticalLayoutTypeForEdge:](self, "_verticalLayoutTypeForEdge:", edge)}];
    [v11 setHorizontalLayoutType:{-[UISystemInputViewController _horizontalLayoutTypeForEdge:](self, "_horizontalLayoutTypeForEdge:", edge)}];
    v12 = self->_accessoryViewControllers;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v13];

    [(UISystemInputViewController *)self _addAccessoryViewController:v11];
  }

  else
  {
    v14 = self->_accessoryViewControllers;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:edge];
    [(NSMutableDictionary *)v14 removeObjectForKey:v11];
  }

  [(UISystemInputViewController *)self updateViewConstraints];
}

- (id)alignmentConstraintArrayForAxis:(int64_t)axis
{
  if (axis == 1)
  {
    verticalAlignments = [(UISystemInputViewController *)self verticalAlignments];
  }

  else if (axis)
  {
    verticalAlignments = 0;
  }

  else
  {
    verticalAlignments = [(UISystemInputViewController *)self horizontalAlignments];
  }

  return verticalAlignments;
}

- (void)setAlignmentConstraintArray:(id)array forAxis:(int64_t)axis
{
  arrayCopy = array;
  if (axis == 1)
  {
    v7 = arrayCopy;
    [(UISystemInputViewController *)self setVerticalAlignments:arrayCopy];
  }

  else
  {
    if (axis)
    {
      goto LABEL_6;
    }

    v7 = arrayCopy;
    [(UISystemInputViewController *)self setHorizontalAlignments:arrayCopy];
  }

  arrayCopy = v7;
LABEL_6:
}

- (id)alignmentConstraintForAxis:(int64_t)axis
{
  if (axis == 1)
  {
    verticalAlignments = [(UISystemInputViewController *)self verticalAlignments];
    goto LABEL_5;
  }

  if (!axis)
  {
    verticalAlignments = [(UISystemInputViewController *)self horizontalAlignments];
LABEL_5:
    v4 = verticalAlignments;
    firstObject = [verticalAlignments firstObject];

    goto LABEL_7;
  }

  firstObject = 0;
LABEL_7:

  return firstObject;
}

- (void)setAlignmentConstraint:(id)constraint forAxis:(int64_t)axis
{
  v10[1] = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  v7 = constraintCopy;
  if (axis == 1)
  {
    if (!constraintCopy)
    {
      [(UISystemInputViewController *)self setVerticalAlignments:0];
      goto LABEL_10;
    }

    v9 = constraintCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [(UISystemInputViewController *)self setVerticalAlignments:v8];
LABEL_7:

    goto LABEL_10;
  }

  if (!axis)
  {
    if (!constraintCopy)
    {
      [(UISystemInputViewController *)self setHorizontalAlignments:0];
      goto LABEL_10;
    }

    v10[0] = constraintCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UISystemInputViewController *)self setHorizontalAlignments:v8];
    goto LABEL_7;
  }

LABEL_10:
}

- (void)setPersistentDelegate:(id)delegate
{
  delegateCopy = delegate;
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  isFirstResponder = [persistentDelegate isFirstResponder];

  objc_storeStrong(&self->_persistentDelegate, delegate);
  if ((isFirstResponder & 1) != 0 || [delegateCopy isFirstResponder])
  {
    persistentDelegate2 = [(UISystemInputViewController *)self persistentDelegate];
    [(UISystemInputViewController *)self setDelegate:persistentDelegate2];
  }
}

- (void)_resetDelegate
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 setTextInputChangesIgnored:1];

  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  isFirstResponder = [persistentDelegate isFirstResponder];

  if ((isFirstResponder & 1) == 0)
  {
    persistentDelegate2 = [(UISystemInputViewController *)self persistentDelegate];
    [persistentDelegate2 becomeFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 setTextInputChangesIgnored:0];

  persistentDelegate3 = [(UISystemInputViewController *)self persistentDelegate];
  if (persistentDelegate3)
  {
    v9 = persistentDelegate3;
    v10 = +[UIKeyboardImpl sharedInstance];
    delegate = [v10 delegate];
    persistentDelegate4 = [(UISystemInputViewController *)self persistentDelegate];

    if (delegate != persistentDelegate4)
    {
      persistentDelegate5 = [(UISystemInputViewController *)self persistentDelegate];
      [(UISystemInputViewController *)self setDelegate:persistentDelegate5];
    }
  }
}

- (void)_clearCursorLocationIfNotFirstResponder
{
  persistentDelegate = [(UISystemInputViewController *)self persistentDelegate];
  isFirstResponder = [persistentDelegate isFirstResponder];

  if ((isFirstResponder & 1) == 0)
  {
    keyboard = [(UISystemInputViewController *)self keyboard];
    [keyboard setCursorLocation:0];
  }
}

- (void)setupKeyboard
{
  keyboard = [(UISystemInputViewController *)self keyboard];
  [keyboard _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

  keyboard2 = [(UISystemInputViewController *)self keyboard];
  [keyboard2 _setUseLinearLayout:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput")}];

  keyboard3 = [(UISystemInputViewController *)self keyboard];
  [keyboard3 _setUseRecentsAlert:{-[UISystemInputViewController supportsRecentInputsIntegration](self, "supportsRecentInputsIntegration") ^ 1}];

  [(UISystemInputViewController *)self _resetDelegate];
  _window = [(UIViewController *)self _window];

  if (_window)
  {
    keyboardVC = [(UISystemInputViewController *)self keyboardVC];
    [keyboardVC assertCurrentInputModeIfNecessary];
  }

  [(UISystemInputViewController *)self configureRecentsVCIfNecessary];
  keyboard4 = [(UISystemInputViewController *)self keyboard];
  isActive = [keyboard4 isActive];

  if ((isActive & 1) == 0)
  {
    keyboard5 = [(UISystemInputViewController *)self keyboard];
    [keyboard5 activate];

    view = [(UIViewController *)self view];
    [view setNeedsLayout];

    contentLayoutView = [(UISystemInputViewController *)self contentLayoutView];
    [contentLayoutView setNeedsLayout];
  }

  [(UISystemInputViewController *)self _clearCursorLocationIfNotFirstResponder];
  keyboard6 = [(UISystemInputViewController *)self keyboard];
  [keyboard6 _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

  keyboard7 = [(UISystemInputViewController *)self keyboard];
  [keyboard7 _setUseRecentsAlert:{-[UISystemInputViewController supportsRecentInputsIntegration](self, "supportsRecentInputsIntegration") ^ 1}];

  +[UIDictationController keyboardDidUpdateOnScreenStatus];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = UISystemInputViewController;
  [(UIViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  traitCollection = [(UISystemInputViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 updateLayout];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = UISystemInputViewController;
  [(UIViewController *)&v12 viewWillAppear:appear];
  needsSetupAgain = self->_needsSetupAgain;
  if (needsSetupAgain)
  {
    self->_needsSetupAgain = 0;
    [(UISystemInputViewController *)self _addChildInputViewController];
    [(UISystemInputViewController *)self setupKeyboard];
  }

  v5 = 1;
  self->_isVisible = 1;
  recentsVC = [(UISystemInputViewController *)self recentsVC];
  if (recentsVC)
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    recentsVC2 = [(UISystemInputViewController *)self recentsVC];
    v9 = [childViewControllers containsObject:recentsVC2];

    v5 = v9 ^ 1;
  }

  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    keyboard = [(UISystemInputViewController *)self keyboard];
    isFocused = [keyboard isFocused];
  }

  else
  {
    isFocused = 1;
  }

  if ((v5 & (!needsSetupAgain | isFocused)) == 1)
  {
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = UISystemInputViewController;
  [(UIViewController *)&v14 viewWillDisappear:disappear];
  textInputTraits = [(UISystemInputViewController *)self textInputTraits];
  if (([textInputTraits forceSpellingDictation] & 1) == 0)
  {
    textInputTraits2 = [(UISystemInputViewController *)self textInputTraits];
    if (!UIKeyboardTypeSupportsDictationSpelling([textInputTraits2 dictationKeyboardType]))
    {
      textInputTraits3 = [(UISystemInputViewController *)self textInputTraits];
      isSecureTextEntry = [textInputTraits3 isSecureTextEntry];

      if ((isSecureTextEntry & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v6 = +[UIDictationController activeInstance];
  [v6 markKeyboardDidReset];

LABEL_6:
  self->_needsSetupAgain = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  _responderWindow = [(UIResponder *)self _responderWindow];
  [defaultCenter removeObserver:self name:@"_UIWindowWillBecomeApplicationKeyNotification" object:_responderWindow];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  _responderWindow2 = [(UIResponder *)self _responderWindow];
  [defaultCenter2 removeObserver:self name:@"_UIWindowDidBecomeApplicationKeyNotification" object:_responderWindow2];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"UITextInputResponderIsReloadedNotification" object:0];

  self->_isVisible = 0;
  [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  [(UISystemInputViewController *)self traitCollection];

  v5.receiver = self;
  v5.super_class = UISystemInputViewController;
  [(UIViewController *)&v5 traitCollectionDidChange:changeCopy];
}

- (void)_didSuspend:(id)suspend
{
  if (self->_isVisible)
  {
    v5 = +[UIDictationController activeInstance];
    [v5 setPauseUpdatingHelperMessage:1];

    [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
  }
}

- (void)_willResume:(id)resume
{
  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    keyboard = [(UISystemInputViewController *)self keyboard];
    isFocused = [keyboard isFocused];
  }

  else
  {
    isFocused = 1;
  }

  if (self->_isVisible && isFocused != 0)
  {
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
    [(UISystemInputViewController *)self _updateRemoteTextEditingSession];
  }

  keyboard2 = [(UISystemInputViewController *)self keyboard];
  isActive = [keyboard2 isActive];

  if (isActive)
  {
    [(UISystemInputViewController *)self _resetDelegate];
    keyboard3 = [(UISystemInputViewController *)self keyboard];
    [keyboard3 activate];

    [(UISystemInputViewController *)self _clearCursorLocationIfNotFirstResponder];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  if (!windowCopy)
  {
    self->_isVisible = 0;
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
  }

  v7.receiver = self;
  v7.super_class = UISystemInputViewController;
  [(UIViewController *)&v7 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
}

- (void)_setSystemInputInteractionActive:(BOOL)active
{
  activeCopy = active;
  v5 = +[UIPeripheralHost sharedInstance];
  [v5 setKeyboardOnScreenNotifyKey:activeCopy];

  activeSystemInputInteraction = self->_activeSystemInputInteraction;
  if (activeCopy)
  {
    if (activeSystemInputInteraction)
    {
      return;
    }

    v7 = objc_alloc_init(_UISystemInputActivityInteraction);
    v8 = self->_activeSystemInputInteraction;
    self->_activeSystemInputInteraction = v7;

    view = [(UIViewController *)self view];
    [view addInteraction:self->_activeSystemInputInteraction];
    v9 = view;
  }

  else
  {
    if (!activeSystemInputInteraction)
    {
      return;
    }

    view2 = [(UIViewController *)self view];
    [view2 removeInteraction:self->_activeSystemInputInteraction];

    v9 = self->_activeSystemInputInteraction;
    self->_activeSystemInputInteraction = 0;
  }
}

@end