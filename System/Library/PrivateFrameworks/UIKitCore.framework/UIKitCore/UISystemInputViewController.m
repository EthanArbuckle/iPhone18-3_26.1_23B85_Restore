@interface UISystemInputViewController
+ (BOOL)canUseSystemInputViewControllerForResponder:(id)a3;
+ (id)_carPlay_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6;
+ (id)_iOS_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6;
+ (id)_tvOS_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6;
+ (id)systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5;
+ (void)setKeyboardInteractionModel:(unint64_t)a3;
- (BOOL)keyboardCanBecomeFocusedWithZeroAlpha;
- (BOOL)willShowRecentsList;
- (UIEdgeInsets)unfocusedFocusGuideOutsets;
- (UISystemInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_accessoryViewControllerForEdge:(int64_t)a3;
- (id)_remoteInputSessionIdentifier;
- (id)_traitCollectionForUserInterfaceStyle;
- (id)accessoryViewControllerForEdge:(int64_t)a3;
- (id)alignmentConstraintArrayForAxis:(int64_t)a3;
- (id)alignmentConstraintForAxis:(int64_t)a3;
- (id)constraintsForEdge:(int64_t)a3;
- (id)doneButtonStringForCurrentInputDelegate;
- (id)preferredFocusEnvironments;
- (id)viewForFocusHeading:(unint64_t)a3 fromView:(id)a4;
- (unint64_t)_horizontalLayoutTypeForEdge:(int64_t)a3;
- (unint64_t)_verticalLayoutTypeForEdge:(int64_t)a3;
- (void)_addAccessoryViewController:(id)a3;
- (void)_addChildInputViewController;
- (void)_clearCursorLocationIfNotFirstResponder;
- (void)_createKeyboardIfNecessary;
- (void)_didSuspend:(id)a3;
- (void)_dismissSystemInputViewController;
- (void)_removeAccessoryViewController:(id)a3;
- (void)_resetDelegate;
- (void)_responderIsReloaded;
- (void)_restoreKeyboardIfNecessary;
- (void)_returnButtonPressed;
- (void)_setNonInputViewVisibility:(BOOL)a3;
- (void)_setSystemInputInteractionActive:(BOOL)a3;
- (void)_willResume:(id)a3;
- (void)_windowDidBecomeApplicationKey:(id)a3;
- (void)_windowWillBecomeApplicationKey:(id)a3;
- (void)configureRecentsVCIfNecessary;
- (void)dealloc;
- (void)didSelectRecentInput;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)findNextInputDelegate;
- (void)inputModeDidChange:(id)a3;
- (void)notifyDelegateWithAccessoryVisibility:(BOOL)a3;
- (void)populateCoreHierarchy;
- (void)prepareForRelease;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reloadInputViewsForPersistentDelegate;
- (void)setAccessoryViewController:(id)a3 forEdge:(int64_t)a4;
- (void)setAlignmentConstraint:(id)a3 forAxis:(int64_t)a4;
- (void)setAlignmentConstraintArray:(id)a3 forAxis:(int64_t)a4;
- (void)setConstraints:(id)a3 forEdge:(int64_t)a4;
- (void)setDelegate:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setInputVC:(id)a3;
- (void)setKeyboardCanBecomeFocusedWithZeroAlpha:(BOOL)a3;
- (void)setPersistentDelegate:(id)a3;
- (void)setRecentsVC:(id)a3;
- (void)setRequestedInteractionModel:(unint64_t)a3;
- (void)setSupportsRecentInputsIntegration:(BOOL)a3;
- (void)setSystemInputViewControllerDelegate:(id)a3;
- (void)setUnfocusedFocusGuideOutsets:(UIEdgeInsets)a3;
- (void)setupKeyboard;
- (void)switchToKeyboard;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAlignmentConstraints;
- (void)updateBackdropForCarPlay;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation UISystemInputViewController

+ (void)setKeyboardInteractionModel:(unint64_t)a3
{
  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 setRequestedInteractionModel:a3];
}

+ (BOOL)canUseSystemInputViewControllerForResponder:(id)a3
{
  v3 = a3;
  if (![v3 conformsToProtocol:&unk_1EFE8B2D0] || (objc_msgSend(v3, "_disableAutomaticKeyboardUI") & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isHardwareKeyboardAvailable"), v4, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v8 = [v3 traitCollection];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v3 _responderWindow];
      v12 = [v11 screen];
      v10 = [v12 traitCollection];
    }

    v6 = [v10 userInterfaceIdiom] == 2;
  }

  return v6;
}

+ (id)systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 _disableAutomaticKeyboardUI];
  v12 = [v8 conformsToProtocol:&unk_1EFE8B2D0];
  if (v11)
  {
    if (v12)
    {
      v13 = [v9 window];

      if (v13)
      {
        v14 = 0;
        goto LABEL_19;
      }
    }
  }

  v15 = [v10 traitCollection];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = [v10 _responderWindow];
    v18 = [v17 screen];
    v16 = [v18 traitCollection];

    if (((v16 == 0) & v11) == 1)
    {
      v19 = [objc_opt_self() mainScreen];
      v16 = [v19 traitCollection];
    }
  }

  v20 = [v16 userInterfaceIdiom];
  v21 = 0;
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v21 = [a1 _carPlay_systemInputViewControllerForResponder:v8 editorView:v9 containingResponder:v10 traitCollection:v16];
      goto LABEL_18;
    }

    if (v20 != 8)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v20 >= 2)
  {
    if (v20 != 2)
    {
      goto LABEL_18;
    }

LABEL_16:
    v21 = [a1 _tvOS_systemInputViewControllerForResponder:v8 editorView:v9 containingResponder:v10 traitCollection:v16];
    goto LABEL_18;
  }

  v21 = [a1 _iOS_systemInputViewControllerForResponder:v8 editorView:v9 containingResponder:v10 traitCollection:v16];
LABEL_18:
  v14 = v21;

LABEL_19:

  return v14;
}

+ (id)_carPlay_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 userInterfaceIdiom] == 3)
  {
    v14 = [v12 _disableAutomaticKeyboardUI];
    if ([v10 conformsToProtocol:&unk_1EFE8B2D0])
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [[a1 alloc] initWithNibName:0 bundle:0];
    [v17 setSupportsTouchInput:{objc_msgSend(v13, "primaryInteractionModel") & 1}];
    [v17 setPersistentDelegate:v16];
    [v17 setWillUpdateBackgroundEffectOnInputModeChange:0];
    [v17 setIsAutomaticResponderTransition:__automaticNextFocusResponder == v10];
    *(v17 + 1041) = v14 ^ 1;
    *(v17 + 1016) = v12;
    v18 = [UITextInputTraits traitsByAdoptingTraits:v16];
    [v17 setTextInputTraits:v18];
    v19 = [v17 textInputTraits];
    v20 = [v19 keyboardAppearance];

    v21 = _UISolariumEnabled();
    v60 = v12;
    v58 = v18;
    v55 = v20;
    if ((v20 - 1) > 9)
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

      v23 = v22[v20 - 1];
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
    v31 = [MEMORY[0x1E695DF70] array];
    if (v11)
    {
      v32 = [UIViewController viewControllerForView:v11];
      if (!v32)
      {
        v32 = [[UIViewController alloc] initWithNibName:0 bundle:0];
        [(UIViewController *)v32 setView:v11];
      }

      v33 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v32];
      [v33 setVerticalLayoutType:4];
      if (([v17 supportsTouchInput] | v14))
      {
        if ((v14 & 1) == 0)
        {
          [v33 setMinimumInsets:{0.0, 0.0, 32.0, 0.0}];
        }

        [v17 setEditorVC:v33];
      }

      else
      {
        [v33 setHorizontalLayoutType:3];
        [v31 addObject:v33];
      }
    }

    v34 = [v16 inputView];
    v59 = v16;
    v35 = [v16 inputViewController];
    if (!v35 && v34)
    {
      v35 = [UICompatibilityInputViewController inputViewControllerWithView:v34];
    }

    [v17 setInputVC:v35];
    [v17 populateCoreHierarchy];
    [v17 updateViewConstraints];
    v56 = v34;
    v57 = v31;
    if ((v14 & 1) == 0 && [v31 count])
    {
      v54 = v11;
      v36 = [(UIViewController *)[UIKBStackViewController alloc] initWithNibName:0 bundle:0];
      v37 = [(UIKBStackViewController *)v36 stackView];
      [v37 setAxis:1];

      v38 = [(UIKBStackViewController *)v36 stackView];
      [v38 setAlignment:0];

      v39 = [(UIKBStackViewController *)v36 stackView];
      [v39 setDistribution:0];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v40 = v31;
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
      v11 = v54;
    }

    if ([v13 interactionModel])
    {
      v45 = [[UIKBInputBackdropView alloc] initWithFrame:v25, v26, v27, v28];
      [(UIView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v17 setBackdropView:v45];
      v46 = +[UIKeyboardInputModeController sharedInputModeController];
      v47 = [v46 currentInputMode];
      v48 = [UIKBRenderConfig configForAppearance:v55 inputMode:v47 traitEnvironment:0];

      [(UIKBInputBackdropView *)v45 _setRenderConfig:v48];
      v49 = [v17 contentLayoutView];
      [v49 addSubview:v45];
    }

    v50 = [v17 contentLayoutView];
    v51 = [v17 keyboardVC];
    v52 = [v51 view];
    [v50 bringSubviewToFront:v52];

    v12 = v60;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_tvOS_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 userInterfaceIdiom] != 2 && objc_msgSend(v13, "userInterfaceIdiom") != 8)
  {
    v17 = 0;
    goto LABEL_98;
  }

  v138 = v13;
  v14 = [v12 _disableAutomaticKeyboardUI];
  if ([v10 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[a1 alloc] initWithNibName:0 bundle:0];
  v137 = [UITextInputTraits traitsByAdoptingTraits:v16];
  [v17 setTextInputTraits:?];
  [v17 setPersistentDelegate:v16];
  [v17 setWillPresentFullscreen:v14 ^ 1u];
  [v17 setWillUpdateBackgroundEffectOnInputModeChange:0];
  [v17 setIsAutomaticResponderTransition:__automaticNextFocusResponder == v10];
  *(v17 + 1041) = v14 ^ 1;
  *(v17 + 1016) = v12;
  *(v17 + 1043) = 1;
  v18 = [v17 textInputTraits];
  v19 = [v18 keyboardAppearance];

  v20 = _UISolariumEnabled();
  if ((v19 - 1) > 9)
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

    v22 = v21[v19 - 1];
  }

  [v17 setBlurEffectStyle:v22];
  v136 = v12;
  if (v14)
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
    v27 = [(UIKBFocusVCView *)v24 contentView];
    [v17 setContainingView:v27];
  }

  v142 = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    v28 = [UIViewController viewControllerForView:v11];
    if (!v28)
    {
      v28 = [[UIViewController alloc] initWithNibName:0 bundle:0];
      [(UIViewController *)v28 setView:v11];
    }

    v29 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v28];
    [v29 setVerticalLayoutType:4];
    if (([v17 supportsTouchInput] | v14))
    {
      if ((v14 & 1) == 0)
      {
        [v29 setMinimumInsets:{0.0, 0.0, 32.0, 0.0}];
      }

      [v17 setEditorVC:v29];
    }

    else
    {
      [v29 setHorizontalLayoutType:3];
      [v142 addObject:v29];
    }
  }

  v30 = [v16 inputView];
  v31 = [v16 inputViewController];
  if (!v31 && v30)
  {
    v31 = [UICompatibilityInputViewController inputViewControllerWithView:v30];
  }

  v135 = v30;
  v141 = v31;
  [v17 setInputVC:v31];
  [v17 populateCoreHierarchy];
  if (v14)
  {
    v139 = 0;
    goto LABEL_41;
  }

  [v17 findNextInputDelegate];
  v32 = [UIButton buttonWithType:1];
  v33 = [v17 doneButtonStringForCurrentInputDelegate];
  [v32 setTitle:v33 forState:0];

  [v32 addTarget:v17 action:sel__returnButtonPressed forControlEvents:0x2000];
  if (v19 == 2)
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
    v39 = [v32 _contentBackdropView];
    [v39 setEffect:v38];

    goto LABEL_37;
  }

  if ((v19 & 0xFFFFFFFFFFFFFFF7) == 1)
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
    [v142 addObject:v42];
  }

  v43 = [[UITapGestureRecognizer alloc] initWithTarget:v17 action:sel__returnButtonPressed];
  [(UITapGestureRecognizer *)v43 setAllowedPressTypes:&unk_1EFE2C2C8];
  [(UIGestureRecognizer *)v43 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  v44 = [v17 view];
  [v44 addGestureRecognizer:v43];

  [v17 setDoneButton:v32];
LABEL_41:
  v45 = [v16 inputAccessoryView];
  v46 = [v16 inputAccessoryViewController];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    goto LABEL_43;
  }

  if ((v45 != 0) | v14 & 1)
  {
    v48 = 0;
    if (!v45)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v45 = 0;
    goto LABEL_72;
  }

  v62 = [v16 _defaultPromptString];
  v48 = v62 != 0;
  if (!v62)
  {
    v45 = 0;
    goto LABEL_70;
  }

  v63 = [v138 userInterfaceStyle];
  v64 = [[UILabel alloc] initWithFrame:0.0, 0.0, 300.0, 70.0];
  v65 = [v137 keyboardAppearance];
  v66 = 0;
  if (v65 > 8)
  {
    if (v65 != 9)
    {
      if (v65 != 10)
      {
        goto LABEL_69;
      }

      if (v63 <= 1)
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

  if (v65 == 1)
  {
    goto LABEL_67;
  }

  if (v65 == 2)
  {
    goto LABEL_66;
  }

LABEL_69:
  [(UILabel *)v64 setTextColor:v66];
  [(UIView *)v64 setOpaque:0];
  [(UIView *)v64 setBackgroundColor:0];
  [(UILabel *)v64 setText:v62];
  v68 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleTitle2"];
  [(UILabel *)v64 setFont:v68];

  [(UIView *)v64 sizeToFit];
  [v17 set_promptLabel:v64];

  v45 = v64;
LABEL_70:

  if (!v45)
  {
    goto LABEL_72;
  }

LABEL_71:
  v47 = [UICompatibilityInputViewController inputViewControllerWithView:v45];
  if (v47)
  {
LABEL_43:
    v140 = v45;
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
      [v142 insertObject:v49 atIndex:0];
    }

    v51 = [v47 view];
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      v53 = [v141 view];
      [v53 _alignmentOffset];
      v55 = v54;
      v57 = v56;
      v58 = [v17 alignmentConstraintForAxis:0];
      [v58 setConstant:v55];

      v59 = 1;
      v60 = [v17 alignmentConstraintForAxis:1];
      [v60 setConstant:v57];

      v61 = [v17 view];
      [v61 setNeedsLayout];

      if (v14)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v59 = 1;
      if (v14)
      {
        goto LABEL_97;
      }
    }

LABEL_73:
    if ([v142 count])
    {
      v133 = v10;
      v134 = v11;
      v69 = [(UIViewController *)[UIKBStackViewController alloc] initWithNibName:0 bundle:0];
      v70 = [(UIKBStackViewController *)v69 stackView];
      [v70 setAxis:1];

      v71 = [(UIKBStackViewController *)v69 stackView];
      [v71 setAlignment:0];

      v72 = [(UIKBStackViewController *)v69 stackView];
      [v72 setDistribution:0];

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v73 = v142;
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
      v78 = [v17 supportsTouchInput];
      v79 = [v17 _accessoryViewControllerForEdge:3];
      v80 = v79;
      if (v78)
      {
        [v79 setMinimumInsets:{0.0, -300.0, 0.0, 0.0}];

        v80 = [v17 _accessoryViewControllerForEdge:3];
        [v80 setCenteredOffsets:{0.0, -140.0}];
      }

      else
      {
        [v79 setMinimumInsets:{0.0, -292.0, 0.0, 0.0}];
      }

      v10 = v133;
      v11 = v134;
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

        v83 = [v82 view];
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

        v86 = [v17 view];
        [v86 addLayoutGuide:v81];

        v115 = MEMORY[0x1E69977A0];
        v127 = [(UILayoutGuide *)v81 leadingAnchor];
        v131 = [v17 keyboardVC];
        v125 = [v131 focusSafeAreaLayoutGuide];
        v123 = [v125 trailingAnchor];
        v121 = [v127 constraintEqualToAnchor:v123];
        v149[0] = v121;
        v117 = [(UILayoutGuide *)v81 trailingAnchor];
        v119 = [v17 view];
        v113 = [v119 trailingAnchor];
        v111 = [v117 constraintEqualToAnchor:v113];
        v149[1] = v111;
        v109 = [(UILayoutGuide *)v81 topAnchor];
        v107 = [v83 topAnchor];
        v105 = [v109 constraintEqualToAnchor:v107];
        v149[2] = v105;
        v130 = v81;
        v87 = [(UILayoutGuide *)v81 bottomAnchor];
        v129 = v83;
        v88 = [v83 bottomAnchor];
        v89 = [v87 constraintEqualToAnchor:v88];
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
        v92 = [v17 doneButton];
        v148 = v92;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
        [(UIFocusGuide *)v91 setPreferredFocusEnvironments:v93];

        v94 = [v17 view];
        [v94 addLayoutGuide:v91];

        v114 = MEMORY[0x1E69977A0];
        v126 = [(UILayoutGuide *)v91 leadingAnchor];
        v128 = [v17 keyboardVC];
        v124 = [v128 focusSafeAreaLayoutGuide];
        v122 = [v124 trailingAnchor];
        v120 = [v126 constraintEqualToAnchor:v122];
        v147[0] = v120;
        v116 = [(UILayoutGuide *)v91 trailingAnchor];
        v118 = [v17 view];
        v110 = [v118 trailingAnchor];
        v108 = [v116 constraintEqualToAnchor:v110];
        v147[1] = v108;
        v106 = [(UILayoutGuide *)v91 topAnchor];
        v104 = [v132 topAnchor];
        v103 = [v106 constraintEqualToAnchor:v104];
        v147[2] = v103;
        v95 = [(UILayoutGuide *)v91 bottomAnchor];
        [v132 bottomAnchor];
        v96 = v112 = v91;
        v97 = [v95 constraintEqualToAnchor:v96];
        v147[3] = v97;
        v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:4];
        [v114 activateConstraints:v98];

        v11 = v134;
      }
    }

    goto LABEL_97;
  }

LABEL_72:
  v140 = v45;
  [v17 updateViewConstraints];
  v59 = 0;
  v47 = 0;
  v49 = 0;
  if ((v14 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_97:
  v99 = [v17 contentLayoutView];
  v100 = [v17 keyboardVC];
  v101 = [v100 view];
  [v99 bringSubviewToFront:v101];

  v12 = v136;
  v13 = v138;
LABEL_98:
  +[_UIKeyboardUsageTracking keyboardSupportsTouch:](_UIKeyboardUsageTracking, "keyboardSupportsTouch:", [v17 supportsTouchInput]);

  return v17;
}

+ (id)_iOS_systemInputViewControllerForResponder:(id)a3 editorView:(id)a4 containingResponder:(id)a5 traitCollection:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v11 userInterfaceIdiom] && objc_msgSend(v11, "userInterfaceIdiom") != 1)
  {
    v15 = 0;
  }

  else
  {
    v36 = v11;
    v12 = [v10 _disableAutomaticKeyboardUI];
    if ([v9 conformsToProtocol:&unk_1EFE8B2D0])
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [[a1 alloc] initWithNibName:0 bundle:0];
    *(v15 + 1040) = 1;
    [v15 setPersistentDelegate:v14];
    [v15 setWillPresentFullscreen:v12 ^ 1u];
    [v15 setWillUpdateBackgroundEffectOnInputModeChange:1];
    [v15 setIsAutomaticResponderTransition:__automaticNextFocusResponder == v9];
    *(v15 + 1041) = 1;
    v37 = v10;
    *(v15 + 1016) = v10;
    v35 = [UITextInputTraits traitsByAdoptingTraits:v14];
    [v15 setTextInputTraits:?];
    v16 = [v15 textInputTraits];
    v17 = [v16 keyboardAppearance];

    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    v19 = [v18 currentInputMode];
    v20 = [UIKBRenderConfig configForAppearance:v17 inputMode:v19 traitEnvironment:0];
    v21 = [v20 blurEffectStyle];

    [v15 setBlurEffectStyle:v21];
    if (v12)
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
      v26 = [(UIKBFocusVCView *)v23 contentView];
      [v15 setContainingView:v26];
    }

    v27 = [v14 inputView];
    v28 = [v14 inputViewController];
    if (!v28 && v27)
    {
      v28 = [UICompatibilityInputViewController inputViewControllerWithView:v27];
    }

    [v15 setInputVC:v28];
    [v15 populateCoreHierarchy];
    v29 = [v14 inputAccessoryView];
    v30 = [v14 inputAccessoryViewController];
    if (!v30 && v29)
    {
      v30 = [UICompatibilityInputViewController inputViewControllerWithView:v29];
    }

    if (v30)
    {
      if ([v15 supportsTouchInput])
      {
        [v15 setAccessoryViewController:v30 forEdge:0];
      }
    }

    else
    {
      [v15 updateViewConstraints];
    }

    v31 = [v15 contentLayoutView];
    v32 = [v15 keyboardVC];
    v33 = [v32 view];
    [v31 bringSubviewToFront:v33];

    v11 = v36;
    v10 = v37;
  }

  return v15;
}

- (void)_restoreKeyboardIfNecessary
{
  v3 = [(UISystemInputViewController *)self keyboardVC];
  v4 = [v3 parentViewController];

  if (v4 != self)
  {
    v5 = [(UISystemInputViewController *)self keyboardVC];
    v6 = [(UISystemInputViewController *)self keyboard];
    [v5 setDeferredSystemView:v6];

    [(UISystemInputViewController *)self _addChildInputViewController];
    [(UISystemInputViewController *)self updateViewConstraints];
    v9 = [(UISystemInputViewController *)self contentLayoutView];
    v7 = [(UISystemInputViewController *)self keyboardVC];
    v8 = [v7 view];
    [v9 bringSubviewToFront:v8];
  }
}

- (void)populateCoreHierarchy
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [UIView alloc];
  v4 = [(UISystemInputViewController *)self containingView];
  [v4 bounds];
  v5 = [(UIView *)v3 initWithFrame:?];
  [(UISystemInputViewController *)self setContentLayoutView:v5];

  v6 = [(UISystemInputViewController *)self contentLayoutView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(UISystemInputViewController *)self contentLayoutView];
  [v7 setOpaque:0];

  v8 = [(UISystemInputViewController *)self containingView];
  v9 = [(UISystemInputViewController *)self contentLayoutView];
  [v8 addSubview:v9];

  [(UISystemInputViewController *)self _addChildInputViewController];
  v10 = [(UISystemInputViewController *)self editorVC];

  if (v10)
  {
    v11 = [(UISystemInputViewController *)self editorVC];
    [(UISystemInputViewController *)self _addAccessoryViewController:v11];
  }

  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {

    [(UISystemInputViewController *)self updateAlignmentConstraints];
  }

  else
  {
    v12 = MEMORY[0x1E69977A0];
    v29 = [(UISystemInputViewController *)self contentLayoutView];
    v28 = [(UISystemInputViewController *)self containingView];
    v27 = [v12 constraintWithItem:v29 attribute:3 relatedBy:0 toItem:v28 attribute:3 multiplier:1.0 constant:0.0];
    v30[0] = v27;
    v13 = MEMORY[0x1E69977A0];
    v26 = [(UISystemInputViewController *)self contentLayoutView];
    v14 = [(UISystemInputViewController *)self containingView];
    v15 = [v13 constraintWithItem:v26 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    v30[1] = v15;
    v16 = MEMORY[0x1E69977A0];
    v17 = [(UISystemInputViewController *)self contentLayoutView];
    v18 = [(UISystemInputViewController *)self containingView];
    v19 = [v16 constraintWithItem:v17 attribute:1 relatedBy:0 toItem:v18 attribute:1 multiplier:1.0 constant:0.0];
    v30[2] = v19;
    v20 = MEMORY[0x1E69977A0];
    v21 = [(UISystemInputViewController *)self contentLayoutView];
    v22 = [(UISystemInputViewController *)self containingView];
    v23 = [v20 constraintWithItem:v21 attribute:2 relatedBy:0 toItem:v22 attribute:2 multiplier:1.0 constant:0.0];
    v30[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

    v25 = [(UISystemInputViewController *)self containingView];
    [v25 addConstraints:v24];
  }
}

- (id)_traitCollectionForUserInterfaceStyle
{
  v3 = [(UIViewController *)self _window];
  v4 = [v3 screen];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 3 && ([(UISystemInputViewController *)self persistentDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    v9 = [(UISystemInputViewController *)self persistentDelegate];
    v10 = [v9 traitCollection];
  }

  else
  {
    if (![(UISystemInputViewController *)self willPresentFullscreen])
    {
      v19.receiver = self;
      v19.super_class = UISystemInputViewController;
      v14 = [(UIViewController *)&v19 traitCollection];
      goto LABEL_18;
    }

    v11 = [(UITraitEnvironment *)self->_containingResponder traitCollection];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v20.receiver = self;
      v20.super_class = UISystemInputViewController;
      v13 = [(UIViewController *)&v20 traitCollection];
    }

    v9 = v13;

    v15 = [(UISystemInputViewController *)self textInputTraits];
    v16 = [v15 keyboardAppearance];

    switch(v16)
    {
      case 9:
        v17 = 1000;
        break;
      case 2:
        v17 = 1;
        break;
      case 1:
        v17 = 2;
        break;
      default:
        v17 = [v9 userInterfaceStyle];
        break;
    }

    v10 = [v9 _traitCollectionByReplacingNSIntegerValue:v17 forTraitToken:0x1EFE323B0];
  }

  v14 = v10;

LABEL_18:

  return v14;
}

- (void)_setNonInputViewVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISystemInputViewController *)self editorVC];

  if (v5)
  {
    v6 = [(UISystemInputViewController *)self editorVC];
    v7 = [v6 view];
    [v7 setHidden:!v3];
  }

  v8 = [(UISystemInputViewController *)self doneButton];

  if (v8)
  {
    v9 = [(UISystemInputViewController *)self doneButton];
    [v9 setHidden:!v3];
  }

  accessoryViewControllers = self->_accessoryViewControllers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UISystemInputViewController__setNonInputViewVisibility___block_invoke;
  v11[3] = &__block_descriptor_33_e43_v32__0__NSNumber_8__UIViewController_16_B24l;
  v12 = v3;
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
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(UIViewController *)self view];
  v6 = [v5 isEligibleForFocusWithZeroAlpha];

  return v6;
}

- (void)setKeyboardCanBecomeFocusedWithZeroAlpha:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(UIViewController *)self view];
    [v7 setIsEligibleForFocusWithZeroAlpha:v3];
  }
}

- (void)_addChildInputViewController
{
  v3 = [(UISystemInputViewController *)self recentsVC];

  if (v3)
  {
    v4 = [(UIViewController *)self childViewControllers];
    v5 = [(UISystemInputViewController *)self recentsVC];
    v6 = [v4 containsObject:v5];

    if (v6)
    {
      goto LABEL_10;
    }

    v7 = [(UISystemInputViewController *)self recentsVC];
  }

  else
  {
    v8 = [(UISystemInputViewController *)self inputVC];

    if (v8)
    {
      v9 = [(UIViewController *)self childViewControllers];
      v10 = [(UISystemInputViewController *)self inputVC];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
        goto LABEL_10;
      }

      v7 = [(UISystemInputViewController *)self inputVC];
    }

    else
    {
      [(UISystemInputViewController *)self _createKeyboardIfNecessary];
      v12 = [(UIViewController *)self childViewControllers];
      v13 = [(UISystemInputViewController *)self keyboardVC];
      v14 = [v12 containsObject:v13];

      if (v14)
      {
        goto LABEL_10;
      }

      v7 = [(UISystemInputViewController *)self keyboardVC];
    }
  }

  v15 = v7;
  [(UISystemInputViewController *)self _addAccessoryViewController:v7];

LABEL_10:
  [(UISystemInputViewController *)self _setNonInputViewVisibility:v3 == 0];

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
  v3 = [(UISystemInputViewController *)self keyboard];

  if (!v3)
  {
    v4 = [[UIKeyboard alloc] initLazily];
    [(UISystemInputViewController *)self setKeyboard:v4];

    v5 = [(UISystemInputViewController *)self keyboard];
    [v5 _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

    v6 = [(UISystemInputViewController *)self keyboard];
    [v6 _setUseLinearLayout:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput")}];

    v7 = [(UISystemInputViewController *)self requestedInteractionModel];
    v8 = [(UISystemInputViewController *)self keyboard];
    [v8 setRequestedInteractionModel:v7];

    v9 = [(UISystemInputViewController *)self keyboard];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(UISystemInputViewController *)self keyboard];
    v11 = [UICompatibilityInputViewController deferredInputModeControllerWithKeyboard:v10];
    [(UISystemInputViewController *)self setKeyboardVC:v11];
  }

  v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v13 = [v12 preferencesActions];
  v14 = [v13 currentInputModeSupportsCrescendo];

  if ((v14 & 1) == 0)
  {
    v15 = [(UISystemInputViewController *)self keyboardVC];
    v16 = [v15 view];
    LODWORD(v17) = 1148846080;
    [v16 setContentCompressionResistancePriority:1 forAxis:v17];

    v20 = [(UISystemInputViewController *)self keyboardVC];
    v18 = [v20 view];
    LODWORD(v19) = 1148846080;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];
  }
}

- (void)_windowWillBecomeApplicationKey:(id)a3
{
  v4 = a3;
  v11 = +[UIWindow _applicationKeyWindow];
  v5 = [v4 object];

  v6 = [v11 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  v8 = [(UIResponder *)self _responderWindow];
  if (v5 != v8 || v5 == v11)
  {
    goto LABEL_6;
  }

  v9 = [(UISystemInputViewController *)self persistentDelegate];
  v10 = [v9 isFirstResponder];

  if (v10 && v7 != 3)
  {
    v8 = [v11 firstResponder];
    [v8 resignFirstResponder];
LABEL_6:
  }
}

- (void)_windowDidBecomeApplicationKey:(id)a3
{
  v7 = [a3 object];
  v4 = [(UIResponder *)self _responderWindow];
  if (v7 == v4)
  {
    v5 = [(UISystemInputViewController *)self persistentDelegate];
    v6 = [v5 isFirstResponder];

    if (v6)
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
  v9 = [(UISystemInputViewController *)self persistentDelegate];
  if ([v9 isFirstResponder])
  {
    v3 = [(UISystemInputViewController *)self persistentDelegate];
    v4 = [v3 _responderWindow];
    v5 = [v4 traitCollection];
    if ([v5 userInterfaceIdiom] == 3)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      v7 = [v6 delegateAsResponder];
      v8 = [(UISystemInputViewController *)self persistentDelegate];

      if (v7 == v8)
      {
        return;
      }

      v9 = [(UISystemInputViewController *)self persistentDelegate];
      [v9 resignFirstResponder];
    }

    else
    {
    }
  }
}

- (void)setRequestedInteractionModel:(unint64_t)a3
{
  if (self->_requestedInteractionModel != a3)
  {
    self->_requestedInteractionModel = a3;
    self->_supportsTouchInput = a3 < 2;
    v5 = [(UISystemInputViewController *)self keyboard];

    if (v5)
    {
      v6 = [(UISystemInputViewController *)self keyboard];
      [v6 setRequestedInteractionModel:a3];
    }
  }
}

- (void)setInputVC:(id)a3
{
  v5 = a3;
  inputVC = self->_inputVC;
  if (inputVC != v5)
  {
    v14 = v5;
    if (inputVC)
    {
      v7 = [(UIViewController *)self childViewControllers];
      v8 = [v7 containsObject:self->_inputVC];

      v5 = v14;
      if (v8)
      {
        [(UISystemInputViewController *)self _removeAccessoryViewController:self->_inputVC];
        v5 = v14;
      }
    }

    if (v5)
    {
      if (self->_keyboardVC)
      {
        v9 = [(UIViewController *)self childViewControllers];
        v10 = [v9 containsObject:self->_keyboardVC];

        if (v10)
        {
          [(UISystemInputViewController *)self _removeAccessoryViewController:self->_keyboardVC];
        }
      }
    }

    objc_storeStrong(&self->_inputVC, a3);
    [(UISystemInputViewController *)self _addChildInputViewController];
    v11 = [(UIViewController *)self view];
    v12 = [v11 window];

    if (v12)
    {
      [(UISystemInputViewController *)self updateViewConstraints];
      [(UISystemInputViewController *)self updateAlignmentConstraints];
    }

    else
    {
      v13 = [(UIViewController *)self view];
      [v13 setNeedsUpdateConstraints];
    }

    v5 = v14;
  }
}

- (void)setRecentsVC:(id)a3
{
  v5 = a3;
  recentsVC = self->_recentsVC;
  if (recentsVC != v5)
  {
    v14 = v5;
    if (recentsVC)
    {
      v7 = [(UIViewController *)self childViewControllers];
      v8 = [v7 containsObject:self->_recentsVC];

      v5 = v14;
      if (v8)
      {
        [(UISystemInputViewController *)self _removeAccessoryViewController:self->_recentsVC];
        v5 = v14;
      }
    }

    if (v5)
    {
      if (self->_keyboardVC)
      {
        v9 = [(UIViewController *)self childViewControllers];
        v10 = [v9 containsObject:self->_keyboardVC];

        if (v10)
        {
          [(UISystemInputViewController *)self _removeAccessoryViewController:self->_keyboardVC];
        }
      }
    }

    objc_storeStrong(&self->_recentsVC, a3);
    [(UISystemInputViewController *)self _addChildInputViewController];
    v11 = [(UIViewController *)self view];
    v12 = [v11 window];

    if (v12)
    {
      [(UISystemInputViewController *)self updateViewConstraints];
      [(UISystemInputViewController *)self updateAlignmentConstraints];
    }

    else
    {
      v13 = [(UIViewController *)self view];
      [v13 setNeedsUpdateConstraints];
    }

    v5 = v14;
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
    v3 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
      [v5 systemInputViewControllerDidAcceptRecentInput:self];
    }
  }
}

- (void)switchToKeyboard
{
  [(UISystemInputViewController *)self setRecentsVC:0];
  [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:1];

  [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
}

- (void)setSupportsRecentInputsIntegration:(BOOL)a3
{
  v3 = a3;
  self->_supportsRecentInputsIntegration = a3;
  if (a3)
  {
    v5 = [(UISystemInputViewController *)self recentsVC];
    if (!v5)
    {
LABEL_11:

      [(UISystemInputViewController *)self configureRecentsVCIfNecessary];
      return;
    }

    if (self->_supportsRecentInputsIntegration)
    {

      return;
    }

    v7 = v5;
  }

  v6 = [(UISystemInputViewController *)self recentsVC];

  if (v3)
  {
  }

  if (v6)
  {
    goto LABEL_11;
  }
}

- (void)configureRecentsVCIfNecessary
{
  if ([(UISystemInputViewController *)self willShowRecentsList]&& ![(UISystemInputViewController *)self didDisplayRecents])
  {
    v12 = [(UITableViewController *)[UIRecentsInputViewController alloc] initWithStyle:0];
    v3 = [(UISystemInputViewController *)self textInputTraits];
    -[UIRecentsInputViewController setCanManageList:](v12, "setCanManageList:", [v3 manageRecentInputs]);

    v4 = [(UISystemInputViewController *)self persistentDelegate];
    v5 = [v4 recentsAccessoryView];
    [(UIRecentsInputViewController *)v12 setCustomHeaderView:v5];

    v6 = [UIBlurEffect effectWithStyle:[(UISystemInputViewController *)self blurEffectStyle]];
    v7 = [(UITraitEnvironment *)self->_containingResponder traitCollection];
    v8 = [v6 effectForUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];

    -[UIRecentsInputViewController setContainingEffectStyle:](v12, "setContainingEffectStyle:", [v8 _style]);
    [(UISystemInputViewController *)self setRecentsVC:v12];
    v9 = [(UISystemInputViewController *)self recentsVC];
    [v9 setRecentInputDelegate:self];

    v10 = [(UISystemInputViewController *)self cachedRecents];
    v11 = [(UISystemInputViewController *)self recentsVC];
    [v11 setRecentInputs:v10];

    [(UISystemInputViewController *)self setDidDisplayRecents:1];
    [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:0];
  }
}

- (void)setSystemInputViewControllerDelegate:(id)a3
{
  if (self->_systemInputViewControllerDelegate != a3)
  {
    self->_systemInputViewControllerDelegate = a3;
    v5 = [(UISystemInputViewController *)self recentsVC];
    [(UISystemInputViewController *)self notifyDelegateWithAccessoryVisibility:v5 == 0];
  }
}

- (void)notifyDelegateWithAccessoryVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UISystemInputViewController *)self systemInputViewControllerDelegate];
      [v9 systemInputViewController:self didChangeAccessoryVisibility:v3];
    }
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(v6, 5))
  {
    v8 = [(UIViewController *)self _window];
    v9 = [v8 firstResponder];

    if (!v9)
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesBegan:v6 withEvent:v7];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(v6, 5))
  {
    v8 = [(UIViewController *)self _window];
    v9 = [v8 firstResponder];

    if (v9)
    {
      [v9 _nonDestructivelyResignFirstResponder];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesEnded:v6 withEvent:v7];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesEnded:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISystemInputViewController *)self willPresentFullscreen]&& _UIPressesContainsPressType(v6, 5))
  {
    v8 = [(UIViewController *)self _window];
    v9 = [v8 firstResponder];

    if (!v9)
    {
      v11.receiver = self;
      v11.super_class = UISystemInputViewController;
      [(UIResponder *)&v11 pressesCancelled:v6 withEvent:v7];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISystemInputViewController;
    [(UIResponder *)&v10 pressesCancelled:v6 withEvent:v7];
  }
}

- (void)_dismissSystemInputViewController
{
  v3 = [(UISystemInputViewController *)self nextInputDelegate];

  if (v3)
  {
    v4 = [(UISystemInputViewController *)self nextInputDelegate];
    v5 = __automaticNextFocusResponder;
    __automaticNextFocusResponder = v4;

    [(UISystemInputViewController *)self setIsAutomaticResponderTransition:1];
    v6 = [(UISystemInputViewController *)self keyboard];
    [v6 setDisableInteraction:1];

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
    v8 = [(UISystemInputViewController *)self persistentDelegate];
    [v8 resignFirstResponder];
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
  v3 = [(UISystemInputViewController *)self persistentDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardInput:v3 shouldInsertText:@"\n" isMarkedText:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 sendActionsForControlEvents:0x80000];
  }

  [(UISystemInputViewController *)self _dismissSystemInputViewController];
}

- (UISystemInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = UISystemInputViewController;
  result = [(UIViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_supportsTouchInput = 1;
  }

  return result;
}

- (void)dealloc
{
  v11[10] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
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
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 delegate];
  persistentDelegate = self->_persistentDelegate;

  if (v6 == persistentDelegate)
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
  v4 = [v3 delegate];
  persistentDelegate = self->_persistentDelegate;

  if (v4 == persistentDelegate)
  {
    if (self->_isVisible)
    {
      [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
    }

    [(UISystemInputViewController *)self setDelegate:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UISystemInputViewController;
  [(UIViewController *)&v9 viewDidAppear:a3];
  self->_isVisible = 1;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [(UIResponder *)self _responderWindow];
  [v4 addObserver:self selector:sel__windowWillBecomeApplicationKey_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:v5];

  v6 = [(UIResponder *)self _responderWindow];
  [v4 addObserver:self selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:v6];

  [v4 addObserver:self selector:sel__responderIsReloaded name:@"UITextInputResponderIsReloadedNotification" object:0];
  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {
    v7 = [(UIViewController *)self presentationController];
    [v7 _disableMenuPressForBackGesture];
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
  v3 = [(UISystemInputViewController *)self recentsVC];

  if (v3)
  {
    v4 = [(UISystemInputViewController *)self recentsVC];
    v12[0] = v4;
    v5 = v12;
LABEL_7:
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:{1, v10, v11, v12[0]}];

    goto LABEL_8;
  }

  v6 = [(UISystemInputViewController *)self inputVC];

  if (v6)
  {
    v4 = [(UISystemInputViewController *)self inputVC];
    v11 = v4;
    v5 = &v11;
    goto LABEL_7;
  }

  v7 = [(UISystemInputViewController *)self keyboardVC];

  if (v7)
  {
    v4 = [(UISystemInputViewController *)self keyboardVC];
    v10 = v4;
    v5 = &v10;
    goto LABEL_7;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = UISystemInputViewController;
  [(UIViewController *)&v6 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(UISystemInputViewController *)self _updateRemoteTextEditingSession];
  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    v5 = [(UISystemInputViewController *)self keyboard];
    -[UISystemInputViewController _setSystemInputInteractionActive:](self, "_setSystemInputInteractionActive:", [v5 isFocused]);
  }
}

- (UIEdgeInsets)unfocusedFocusGuideOutsets
{
  v2 = [(UISystemInputViewController *)self keyboard];
  [v2 unfocusedFocusGuideOutsets];
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

- (void)setUnfocusedFocusGuideOutsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = [(UISystemInputViewController *)self keyboard];
  v8 = [(UIViewController *)self view];
  [v9 setUnfocusedFocusGuideOutsets:v8 fromView:{top, left, bottom, right}];
}

- (id)viewForFocusHeading:(unint64_t)a3 fromView:(id)a4
{
  v7 = a4;
  if (v7)
  {
    if (a3)
    {
LABEL_3:
      v8 = [UIFocusSystem focusSystemForEnvironment:v7];
      v9 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:v8];
      v10 = _UIFocusEnvironmentContainingView(v7);
      v11 = [_UIFocusItemInfo infoWithItem:v10];
      [(_UIFocusMovementRequest *)v9 setFocusedItemInfo:v11];

      v12 = [[_UIFocusMovementInfo alloc] initWithHeading:a3 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
      [(_UIFocusMovementRequest *)v9 setMovementInfo:v12];

      v13 = [v8 _movementPerformer];
      v14 = [v13 contextForFocusMovement:v9];

      v15 = [v14 nextFocusedView];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v7;
      }

      v18 = v17;

      goto LABEL_9;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UISystemInputViewController.m" lineNumber:1760 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v18 = v7;
LABEL_9:

  return v18;
}

- (void)findNextInputDelegate
{
  v3 = [(UISystemInputViewController *)self persistentDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(UITextInput *)self->_persistentDelegate _responderWindow];
    v5 = [v10 _focusEventRecognizer];
    if (v5)
    {
      v6 = [(UISystemInputViewController *)self persistentDelegate];
      v7 = [(UISystemInputViewController *)self viewForFocusHeading:16 fromView:v6];
      v8 = v7;
      if (v7 && v7 != v6 && [v7 conformsToProtocol:&unk_1EFE8B2D0])
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
  v3 = [(UISystemInputViewController *)self persistentDelegate];
  v4 = [v3 returnKeyType];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 9;
  }

  v6 = [(UISystemInputViewController *)self nextInputDelegate];

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = v5;
  }

  return UIKeyboardLocalizedReturnKeyName(v7);
}

- (void)setDoneButton:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_doneButton, a3);
  doneButton = self->_doneButton;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = v6;
  if (doneButton)
  {
    [v6 addObserver:self selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }

  else
  {
    [v6 removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [v4 _responderWindow];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 3)
  {
    [(UISystemInputViewController *)self _restoreKeyboardIfNecessary];
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 delegateAsResponder];

  v10 = +[UIKeyboardImpl activeInstance];
  [v10 setDelegate:v4];

  v11 = +[UIKeyboardImpl activeInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__UISystemInputViewController_setDelegate___block_invoke;
  v17[3] = &unk_1E710E718;
  v17[4] = self;
  [v11 handleTraitChangeObserver:v9 newResponder:v4 updateTraitCollection:v17];

  if (v4 && v9 != v4)
  {
    v12 = [v4 _responderWindow];
    v13 = [v12 traitCollection];
    if ([v13 userInterfaceIdiom] == 3)
    {
      v14 = [v9 _responderWindow];
      v15 = [v14 traitCollection];
      v16 = [v15 userInterfaceIdiom];

      if (v16 != 3)
      {
        [v9 resignFirstResponder];
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

- (void)inputModeDidChange:(id)a3
{
  v4 = [(UISystemInputViewController *)self doneButton];

  if (v4)
  {
    v5 = [(UISystemInputViewController *)self doneButton];
    v6 = [(UISystemInputViewController *)self doneButtonStringForCurrentInputDelegate];
    [v5 setTitle:v6 forState:0];
  }

  if ([(UISystemInputViewController *)self willPresentFullscreen])
  {
    if ([(UISystemInputViewController *)self willUpdateBackgroundEffectOnInputModeChange])
    {
      v7 = [(UIViewController *)self view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [(UISystemInputViewController *)self textInputTraits];
        v10 = [v9 keyboardAppearance];
        v11 = +[UIKeyboardInputModeController sharedInputModeController];
        v12 = [v11 currentInputMode];
        v13 = [UIKBRenderConfig configForAppearance:v10 inputMode:v12 traitEnvironment:0];
        v14 = [v13 blurEffectStyle];

        [(UISystemInputViewController *)self setBlurEffectStyle:v14];
        v16 = [(UIViewController *)self view];
        v15 = [UIBlurEffect effectWithStyle:[(UISystemInputViewController *)self blurEffectStyle]];
        [v16 setEffect:v15];
      }
    }
  }
}

- (void)reloadInputViewsForPersistentDelegate
{
  v38 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(UIViewController *)self _window];
    v4 = [v3 screen];
    v5 = [v4 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 3)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      v8 = [v7 inputDelegate];

      v9 = +[UIWindowScene _keyWindowScene];
      v10 = [v9 screen];

      if (v8)
      {
        v11 = [v8 _responderWindow];
        v12 = [v11 screen];
        v13 = v12;
        if (v12 == v10)
        {
          v14 = [(UIViewController *)self _window];
          v15 = [v14 screen];

          if (v15 != v10)
          {
            [v8 resignFirstResponder];
          }
        }

        else
        {
        }
      }
    }
  }

  v16 = [(UISystemInputViewController *)self persistentDelegate];
  v17 = [v16 isFirstResponder];

  if (v17)
  {
    v18 = [(UISystemInputViewController *)self persistentDelegate];
    [(UISystemInputViewController *)self setDelegate:v18];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [(UIViewController *)self childViewControllers];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = [(UISystemInputViewController *)self keyboardVC];

          if (v24 != v25)
          {
            v26 = [(UISystemInputViewController *)self traitCollection];
            [v24 traitCollectionDidChange:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v21);
    }

    return;
  }

  v27 = [(UISystemInputViewController *)self textInputTraits];
  if (([v27 forceSpellingDictation] & 1) == 0)
  {
    v28 = [(UISystemInputViewController *)self textInputTraits];
    if (!UIKeyboardTypeSupportsDictationSpelling([v28 dictationKeyboardType]))
    {
      v30 = [(UISystemInputViewController *)self textInputTraits];
      v31 = [v30 isSecureTextEntry];

      if ((v31 & 1) == 0)
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
  v32 = [(UIViewController *)self view];
  [v32 setNeedsUpdateConstraints];
}

- (BOOL)willShowRecentsList
{
  v3 = [(UISystemInputViewController *)self cachedRecents];
  if (!v3)
  {
    v4 = [(UISystemInputViewController *)self textInputTraits];
    v5 = [v4 isSecureTextEntry];

    if (v5)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x1E69D96E0];
    v7 = [(UISystemInputViewController *)self textInputTraits];
    v3 = [v6 traitsForUITextInputTraits:v7];

    v8 = MEMORY[0x1E69D9690];
    v9 = [v3 recentInputIdentifier];
    v10 = [v8 recentInputForIdentifier:v9];

    v11 = [UILexicon _lexiconWithTILexicon:v10];
    [(UISystemInputViewController *)self setCachedRecents:v11];
  }

LABEL_5:
  v12 = [(UISystemInputViewController *)self cachedRecents];
  v13 = [v12 entries];
  if ([v13 count])
  {
    v14 = [(UISystemInputViewController *)self supportsRecentInputsIntegration];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateAlignmentConstraints
{
  if (![(UISystemInputViewController *)self willPresentFullscreen])
  {
    return;
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v3 = [(UISystemInputViewController *)self alignmentConstraintForAxis:0];
  if (!v3)
  {
    v4 = MEMORY[0x1E69977A0];
    v5 = [(UISystemInputViewController *)self contentLayoutView];
    v6 = [(UISystemInputViewController *)self containingView];
    v3 = [v4 constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v6 attribute:9 multiplier:1.0 constant:0.0];

    [(UISystemInputViewController *)self setAlignmentConstraint:v3 forAxis:0];
    [v22 addObject:v3];
  }

  v7 = [(UISystemInputViewController *)self contentLayoutView];
  v8 = [(UISystemInputViewController *)self recentsVC];
  if (v8)
  {
    v9 = v8;
    v10 = [(UIViewController *)self childViewControllers];
    v11 = [(UISystemInputViewController *)self recentsVC];
    v12 = [v10 containsObject:v11];

    if (v12)
    {
      v13 = [(UISystemInputViewController *)self recentsVC];
      v14 = [v13 view];

      v7 = v14;
    }
  }

  v15 = [(UISystemInputViewController *)self alignmentConstraintForAxis:1];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v15 firstItem];

  if (v17 != v7)
  {
    v18 = [(UISystemInputViewController *)self containingView];
    [v18 removeConstraint:v16];

    [(UISystemInputViewController *)self setAlignmentConstraint:0 forAxis:1];
LABEL_10:
    v19 = MEMORY[0x1E69977A0];
    v20 = [(UISystemInputViewController *)self containingView];
    v16 = [v19 constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v20 attribute:10 multiplier:1.0 constant:0.0];

    [(UISystemInputViewController *)self setAlignmentConstraint:v16 forAxis:1];
    [v22 addObject:v16];
  }

  v21 = [(UISystemInputViewController *)self containingView];
  [v21 addConstraints:v22];
}

- (void)updateViewConstraints
{
  v116[1] = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = UISystemInputViewController;
  [(UIViewController *)&v108 updateViewConstraints];
  v3 = [(UISystemInputViewController *)self contentLayoutView];
  v4 = [(UISystemInputViewController *)self recentsVC];
  v5 = [v4 view];
  v6 = [v5 isDescendantOfView:v3];

  v96 = v6;
  v100 = v3;
  if (v6)
  {
    v7 = [(UISystemInputViewController *)self recentsVC];
LABEL_7:
    v14 = v7;
    v15 = [v7 view];

    goto LABEL_8;
  }

  v8 = [(UISystemInputViewController *)self inputVC];
  v9 = [v8 view];
  v10 = [v9 isDescendantOfView:v3];

  if (v10)
  {
    v7 = [(UISystemInputViewController *)self inputVC];
    goto LABEL_7;
  }

  v11 = [(UISystemInputViewController *)self keyboardVC];
  v12 = [v11 view];
  v13 = [v12 isDescendantOfView:v3];

  if (v13)
  {
    v7 = [(UISystemInputViewController *)self keyboardVC];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:
  v16 = [(UISystemInputViewController *)self editorVC];
  v17 = [v16 view];

  v18 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:0];
  v19 = [v18 view];

  v20 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:2];
  v21 = [v20 view];

  v22 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:1];
  v23 = [v22 view];

  v24 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:3];
  v25 = [v24 view];

  v105 = v19;
  if (v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = v100;
  }

  v99 = v17;
  if (v17)
  {
    v26 = v17;
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

  v103 = v23;
  if (v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v100;
  }

  if (v23)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v101 = v30;
  v107 = v29;
  v31 = v25 == 0;
  v102 = v25;
  if (v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = v100;
  }

  v33 = v21;
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
  if (v15)
  {
    v37 = v15;
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
    v38 = v15;
  }

  v39 = v38;
  if (v15)
  {
    v40 = [(UISystemInputViewController *)self keyboardConstraints];

    if (v40)
    {
      v41 = [(UISystemInputViewController *)self keyboardConstraints];
      [v100 removeConstraints:v41];
    }

    if (v96)
    {
      v97 = [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:1 relatedBy:1 toItem:v107 attribute:1 multiplier:1.0 constant:0.0];
      [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:2 relatedBy:-1 toItem:v36 attribute:2 multiplier:1.0 constant:0.0];
    }

    else
    {
      v97 = [(UISystemInputViewController *)self constraintFromView:v15 attribute:1 toView:v107 attribute:v101];
      [(UISystemInputViewController *)self constraintFromView:v15 attribute:2 toView:v36 attribute:v35];
    }
    v42 = ;
    v43 = [(UISystemInputViewController *)self constraintFromView:v15 attribute:3 toView:v27 attribute:v28];
    v44 = [(UISystemInputViewController *)self traitCollection];
    v94 = v43;
    if ([v44 userInterfaceIdiom] == 3)
    {
      v45 = [(UISystemInputViewController *)self supportsTouchInput];

      if (v45)
      {
        v116[0] = v43;
        v46 = MEMORY[0x1E695DEC8];
        v47 = v116;
        v48 = 1;
LABEL_45:
        v49 = [v46 arrayWithObjects:v47 count:v48];
        if ([(UISystemInputViewController *)self supportsTouchInput])
        {
          v50 = [v15 superview];
          v51 = [(UISystemInputViewController *)self constraintFromView:v15 attribute:9 toView:v50 attribute:9];

          v52 = [v49 arrayByAddingObject:v51];

          v49 = v52;
        }

        v95 = v42;
        if (!v106)
        {
          v53 = [v100 safeAreaLayoutGuide];
          v54 = [v53 bottomAnchor];
          [v15 bottomAnchor];
          v55 = v39;
          v56 = v15;
          v57 = v36;
          v59 = v58 = v27;
          v60 = [v54 constraintEqualToAnchor:v59];

          v27 = v58;
          v36 = v57;
          v15 = v56;
          v39 = v55;
          v34 = v100;

          v61 = [v49 arrayByAddingObject:v60];

          v49 = v61;
        }

        [(UISystemInputViewController *)self setKeyboardConstraints:v49];
        v62 = [(UISystemInputViewController *)self keyboardConstraints];
        [v34 addConstraints:v62];

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
    v63 = [(UISystemInputViewController *)self editorConstraints];

    if (v63)
    {
      v64 = [(UISystemInputViewController *)self editorConstraints];
      [v34 removeConstraints:v64];
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

    v70 = [(UISystemInputViewController *)self editorConstraints];
    [v34 addConstraints:v70];
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
      v75 = v15;
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
    if (v15)
    {
      v80 = v15;
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
  v3 = [(UISystemInputViewController *)self keyboardBackdropConstraints];
  if (v3)
  {
  }

  else
  {
    v4 = [(UISystemInputViewController *)self backdropView];

    if (v4)
    {
      v38 = [(UISystemInputViewController *)self backdropView];
      v36 = [v38 leadingAnchor];
      v37 = [(UIViewController *)self view];
      v35 = [v37 leadingAnchor];
      v34 = [v36 constraintEqualToAnchor:v35 constant:4.0];
      v39[0] = v34;
      v33 = [(UIViewController *)self view];
      v31 = [v33 trailingAnchor];
      v32 = [(UISystemInputViewController *)self backdropView];
      v30 = [v32 trailingAnchor];
      v29 = [v31 constraintEqualToAnchor:v30 constant:4.0];
      v39[1] = v29;
      v28 = [(UISystemInputViewController *)self backdropView];
      v26 = [v28 topAnchor];
      v27 = [(UIViewController *)self view];
      v25 = [v27 topAnchor];
      v24 = [v26 constraintEqualToAnchor:v25 constant:0.0];
      v39[2] = v24;
      v22 = [(UISystemInputViewController *)self backdropView];
      v5 = [v22 bottomAnchor];
      v6 = [(UIViewController *)self view];
      v7 = [v6 bottomAnchor];
      v8 = [v5 constraintEqualToAnchor:v7 constant:0.0];
      v39[3] = v8;
      v9 = [(UISystemInputViewController *)self backdropView];
      v10 = [v9 centerXAnchor];
      v11 = [(UIViewController *)self view];
      v12 = [v11 centerXAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v39[4] = v13;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];

      [(UISystemInputViewController *)self setKeyboardBackdropConstraints:v23];
      v14 = [(UIViewController *)self view];
      v15 = [(UISystemInputViewController *)self keyboardBackdropConstraints];
      [v14 addConstraints:v15];
    }
  }

  v16 = [(UISystemInputViewController *)self backdropView];

  if (v16)
  {
    v17 = +[UIColor clearColor];
    v18 = [(UISystemInputViewController *)self containingView];
    [v18 setBackgroundColor:v17];
  }

  else
  {
    v19 = [(UISystemInputViewController *)self containingView];
    v20 = [v19 layer];
    [v20 setCornerRadius:22.0];

    v17 = [(UISystemInputViewController *)self containingView];
    v18 = [v17 layer];
    [v18 setMasksToBounds:1];
  }

  v21 = [(UISystemInputViewController *)self backdropView];
  [v21 updateCornersWithRadius:1 usingCornerRadii:22.0];
}

- (id)constraintsForEdge:(int64_t)a3
{
  accessoryConstraints = self->_accessoryConstraints;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)accessoryConstraints objectForKey:v4];

  return v5;
}

- (void)setConstraints:(id)a3 forEdge:(int64_t)a4
{
  v10 = a3;
  v6 = [(UISystemInputViewController *)self constraintsForEdge:a4];
  if (v6)
  {
    v7 = [(UISystemInputViewController *)self contentLayoutView];
    [v7 removeConstraints:v6];
  }

  accessoryConstraints = self->_accessoryConstraints;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v10)
  {
    [(NSMutableDictionary *)accessoryConstraints setObject:v10 forKey:v9];

    v9 = [(UISystemInputViewController *)self contentLayoutView];
    [v9 addConstraints:v10];
  }

  else
  {
    [(NSMutableDictionary *)accessoryConstraints removeObjectForKey:v9];
  }
}

- (void)_addAccessoryViewController:(id)a3
{
  if (a3)
  {
    v9 = a3;
    [(UIViewController *)self addChildViewController:v9];
    v4 = [(UISystemInputViewController *)self contentLayoutView];
    v5 = [v9 view];
    [v4 addSubview:v5];

    v6 = [(UISystemInputViewController *)self contentLayoutView];
    v7 = [(UISystemInputViewController *)self keyboardVC];
    v8 = [v7 view];
    [v6 bringSubviewToFront:v8];

    [v9 didMoveToParentViewController:self];
  }
}

- (void)_removeAccessoryViewController:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v3 = [v4 view];
    [v3 removeFromSuperview];

    [v4 removeFromParentViewController];
  }
}

- (unint64_t)_verticalLayoutTypeForEdge:(int64_t)a3
{
  if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_horizontalLayoutTypeForEdge:(int64_t)a3
{
  if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)_accessoryViewControllerForEdge:(int64_t)a3
{
  accessoryViewControllers = self->_accessoryViewControllers;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)accessoryViewControllers objectForKey:v4];

  return v5;
}

- (id)accessoryViewControllerForEdge:(int64_t)a3
{
  v3 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:a3];
  v4 = [v3 childViewControllers];
  v5 = [v4 firstObject];

  return v5;
}

- (void)setAccessoryViewController:(id)a3 forEdge:(int64_t)a4
{
  v15 = a3;
  if (!self->_accessoryViewControllers)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    accessoryViewControllers = self->_accessoryViewControllers;
    self->_accessoryViewControllers = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    accessoryConstraints = self->_accessoryConstraints;
    self->_accessoryConstraints = v8;
  }

  v10 = [(UISystemInputViewController *)self _accessoryViewControllerForEdge:a4];
  [(UISystemInputViewController *)self _removeAccessoryViewController:v10];
  if (v15)
  {
    v11 = [UIKBSystemLayoutViewController systemLayoutViewControllerWithViewController:v15];
    [v11 setVerticalLayoutType:{-[UISystemInputViewController _verticalLayoutTypeForEdge:](self, "_verticalLayoutTypeForEdge:", a4)}];
    [v11 setHorizontalLayoutType:{-[UISystemInputViewController _horizontalLayoutTypeForEdge:](self, "_horizontalLayoutTypeForEdge:", a4)}];
    v12 = self->_accessoryViewControllers;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v13];

    [(UISystemInputViewController *)self _addAccessoryViewController:v11];
  }

  else
  {
    v14 = self->_accessoryViewControllers;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v14 removeObjectForKey:v11];
  }

  [(UISystemInputViewController *)self updateViewConstraints];
}

- (id)alignmentConstraintArrayForAxis:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(UISystemInputViewController *)self verticalAlignments];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(UISystemInputViewController *)self horizontalAlignments];
  }

  return v3;
}

- (void)setAlignmentConstraintArray:(id)a3 forAxis:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = v6;
    [(UISystemInputViewController *)self setVerticalAlignments:v6];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(UISystemInputViewController *)self setHorizontalAlignments:v6];
  }

  v6 = v7;
LABEL_6:
}

- (id)alignmentConstraintForAxis:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(UISystemInputViewController *)self verticalAlignments];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = [(UISystemInputViewController *)self horizontalAlignments];
LABEL_5:
    v4 = v3;
    v5 = [v3 firstObject];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setAlignmentConstraint:(id)a3 forAxis:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    if (!v6)
    {
      [(UISystemInputViewController *)self setVerticalAlignments:0];
      goto LABEL_10;
    }

    v9 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [(UISystemInputViewController *)self setVerticalAlignments:v8];
LABEL_7:

    goto LABEL_10;
  }

  if (!a4)
  {
    if (!v6)
    {
      [(UISystemInputViewController *)self setHorizontalAlignments:0];
      goto LABEL_10;
    }

    v10[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UISystemInputViewController *)self setHorizontalAlignments:v8];
    goto LABEL_7;
  }

LABEL_10:
}

- (void)setPersistentDelegate:(id)a3
{
  v8 = a3;
  v5 = [(UISystemInputViewController *)self persistentDelegate];
  v6 = [v5 isFirstResponder];

  objc_storeStrong(&self->_persistentDelegate, a3);
  if ((v6 & 1) != 0 || [v8 isFirstResponder])
  {
    v7 = [(UISystemInputViewController *)self persistentDelegate];
    [(UISystemInputViewController *)self setDelegate:v7];
  }
}

- (void)_resetDelegate
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 setTextInputChangesIgnored:1];

  v4 = [(UISystemInputViewController *)self persistentDelegate];
  v5 = [v4 isFirstResponder];

  if ((v5 & 1) == 0)
  {
    v6 = [(UISystemInputViewController *)self persistentDelegate];
    [v6 becomeFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 setTextInputChangesIgnored:0];

  v8 = [(UISystemInputViewController *)self persistentDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = +[UIKeyboardImpl sharedInstance];
    v11 = [v10 delegate];
    v12 = [(UISystemInputViewController *)self persistentDelegate];

    if (v11 != v12)
    {
      v13 = [(UISystemInputViewController *)self persistentDelegate];
      [(UISystemInputViewController *)self setDelegate:v13];
    }
  }
}

- (void)_clearCursorLocationIfNotFirstResponder
{
  v3 = [(UISystemInputViewController *)self persistentDelegate];
  v4 = [v3 isFirstResponder];

  if ((v4 & 1) == 0)
  {
    v5 = [(UISystemInputViewController *)self keyboard];
    [v5 setCursorLocation:0];
  }
}

- (void)setupKeyboard
{
  v3 = [(UISystemInputViewController *)self keyboard];
  [v3 _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

  v4 = [(UISystemInputViewController *)self keyboard];
  [v4 _setUseLinearLayout:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput")}];

  v5 = [(UISystemInputViewController *)self keyboard];
  [v5 _setUseRecentsAlert:{-[UISystemInputViewController supportsRecentInputsIntegration](self, "supportsRecentInputsIntegration") ^ 1}];

  [(UISystemInputViewController *)self _resetDelegate];
  v6 = [(UIViewController *)self _window];

  if (v6)
  {
    v7 = [(UISystemInputViewController *)self keyboardVC];
    [v7 assertCurrentInputModeIfNecessary];
  }

  [(UISystemInputViewController *)self configureRecentsVCIfNecessary];
  v8 = [(UISystemInputViewController *)self keyboard];
  v9 = [v8 isActive];

  if ((v9 & 1) == 0)
  {
    v10 = [(UISystemInputViewController *)self keyboard];
    [v10 activate];

    v11 = [(UIViewController *)self view];
    [v11 setNeedsLayout];

    v12 = [(UISystemInputViewController *)self contentLayoutView];
    [v12 setNeedsLayout];
  }

  [(UISystemInputViewController *)self _clearCursorLocationIfNotFirstResponder];
  v13 = [(UISystemInputViewController *)self keyboard];
  [v13 _setDisableTouchInput:{-[UISystemInputViewController supportsTouchInput](self, "supportsTouchInput") ^ 1}];

  v14 = [(UISystemInputViewController *)self keyboard];
  [v14 _setUseRecentsAlert:{-[UISystemInputViewController supportsRecentInputsIntegration](self, "supportsRecentInputsIntegration") ^ 1}];

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
  v2 = [(UISystemInputViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 updateLayout];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = UISystemInputViewController;
  [(UIViewController *)&v12 viewWillAppear:a3];
  needsSetupAgain = self->_needsSetupAgain;
  if (needsSetupAgain)
  {
    self->_needsSetupAgain = 0;
    [(UISystemInputViewController *)self _addChildInputViewController];
    [(UISystemInputViewController *)self setupKeyboard];
  }

  v5 = 1;
  self->_isVisible = 1;
  v6 = [(UISystemInputViewController *)self recentsVC];
  if (v6)
  {
    v7 = [(UIViewController *)self childViewControllers];
    v8 = [(UISystemInputViewController *)self recentsVC];
    v9 = [v7 containsObject:v8];

    v5 = v9 ^ 1;
  }

  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    v10 = [(UISystemInputViewController *)self keyboard];
    v11 = [v10 isFocused];
  }

  else
  {
    v11 = 1;
  }

  if ((v5 & (!needsSetupAgain | v11)) == 1)
  {
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = UISystemInputViewController;
  [(UIViewController *)&v14 viewWillDisappear:a3];
  v4 = [(UISystemInputViewController *)self textInputTraits];
  if (([v4 forceSpellingDictation] & 1) == 0)
  {
    v5 = [(UISystemInputViewController *)self textInputTraits];
    if (!UIKeyboardTypeSupportsDictationSpelling([v5 dictationKeyboardType]))
    {
      v12 = [(UISystemInputViewController *)self textInputTraits];
      v13 = [v12 isSecureTextEntry];

      if ((v13 & 1) == 0)
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
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [(UIResponder *)self _responderWindow];
  [v7 removeObserver:self name:@"_UIWindowWillBecomeApplicationKeyNotification" object:v8];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = [(UIResponder *)self _responderWindow];
  [v9 removeObserver:self name:@"_UIWindowDidBecomeApplicationKeyNotification" object:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 removeObserver:self name:@"UITextInputResponderIsReloadedNotification" object:0];

  self->_isVisible = 0;
  [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  [(UISystemInputViewController *)self traitCollection];

  v5.receiver = self;
  v5.super_class = UISystemInputViewController;
  [(UIViewController *)&v5 traitCollectionDidChange:v4];
}

- (void)_didSuspend:(id)a3
{
  if (self->_isVisible)
  {
    v5 = +[UIDictationController activeInstance];
    [v5 setPauseUpdatingHelperMessage:1];

    [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
  }
}

- (void)_willResume:(id)a3
{
  if ([(UISystemInputViewController *)self notifyKeyboardOnScreenOnFocusOnly])
  {
    v4 = [(UISystemInputViewController *)self keyboard];
    v5 = [v4 isFocused];
  }

  else
  {
    v5 = 1;
  }

  if (self->_isVisible && v5 != 0)
  {
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:1];
    [(UISystemInputViewController *)self _updateRemoteTextEditingSession];
  }

  v7 = [(UISystemInputViewController *)self keyboard];
  v8 = [v7 isActive];

  if (v8)
  {
    [(UISystemInputViewController *)self _resetDelegate];
    v9 = [(UISystemInputViewController *)self keyboard];
    [v9 activate];

    [(UISystemInputViewController *)self _clearCursorLocationIfNotFirstResponder];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    self->_isVisible = 0;
    [(UISystemInputViewController *)self _setSystemInputInteractionActive:0];
  }

  v7.receiver = self;
  v7.super_class = UISystemInputViewController;
  [(UIViewController *)&v7 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
}

- (void)_setSystemInputInteractionActive:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIPeripheralHost sharedInstance];
  [v5 setKeyboardOnScreenNotifyKey:v3];

  activeSystemInputInteraction = self->_activeSystemInputInteraction;
  if (v3)
  {
    if (activeSystemInputInteraction)
    {
      return;
    }

    v7 = objc_alloc_init(_UISystemInputActivityInteraction);
    v8 = self->_activeSystemInputInteraction;
    self->_activeSystemInputInteraction = v7;

    v11 = [(UIViewController *)self view];
    [v11 addInteraction:self->_activeSystemInputInteraction];
    v9 = v11;
  }

  else
  {
    if (!activeSystemInputInteraction)
    {
      return;
    }

    v10 = [(UIViewController *)self view];
    [v10 removeInteraction:self->_activeSystemInputInteraction];

    v9 = self->_activeSystemInputInteraction;
    self->_activeSystemInputInteraction = 0;
  }
}

@end