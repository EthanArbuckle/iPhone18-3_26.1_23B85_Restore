@interface UICompatibilityInputViewController
+ (id)deferredInputModeControllerWithKeyboard:(id)a3;
+ (id)inputSnapshotViewForInputMode:(id)a3 orientation:(int64_t)a4;
+ (id)inputViewControllerWithView:(id)a3;
- (UILayoutGuide)focusSafeAreaLayoutGuide;
- (id)_compatView;
- (id)_compatibilityController;
- (id)_initAsDeferredController;
- (id)_keyboard;
- (id)_keyboardForThisViewController;
- (id)_systemViewControllerForInputMode:(id)a3;
- (id)animatableElement;
- (id)childCompatibilityController;
- (id)preferredFocusedView;
- (void)_tvUpdateAppearanceForUserInterfaceStyle;
- (void)addSnapshotViewForInputMode:(id)a3;
- (void)assertCurrentInputModeIfNecessary;
- (void)dealloc;
- (void)didFinishTranslation;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)didSuspend:(id)a3;
- (void)finishSplitTransition:(BOOL)a3;
- (void)generateCompatibleSizeConstraintsIfNecessary;
- (void)isHosted:(id)a3;
- (void)keyboardWillChangeFromDelegate:(id)a3 toDelegate:(id)a4;
- (void)killIncomingExtension;
- (void)loadView;
- (void)rebuildChildConstraints;
- (void)removeSnapshotView;
- (void)resetInputMode;
- (void)resetInputModeInMainThread;
- (void)setDeferredSystemView:(id)a3;
- (void)setInputMode:(id)a3;
- (void)shouldUpdateInputMode:(id)a3;
- (void)takeSnapshotView;
- (void)tearDownInputController;
- (void)validateInputModeIsDisplayed;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willBeginTranslation;
- (void)willResume:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation UICompatibilityInputViewController

- (id)_compatibilityController
{
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initAsDeferredController
{
  v7.receiver = self;
  v7.super_class = UICompatibilityInputViewController;
  v2 = [(UIViewController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v3 addObserver:v2 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v3 addObserver:v2 selector:sel_isHosted_ name:@"UITextEffectsWindowIsHostedNotification" object:0];
    [v3 addObserver:v2 selector:sel_shouldUpdateInputMode_ name:@"UICompatibilityInputViewControllerShouldUpdateNotification" object:0];
    if ([UIApp isSuspended])
    {
      v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v5 = [v4 containerWindow];
      v2->_shouldSuppressRemoteInputController = [v5 _isHostedInAnotherProcess] ^ 1;
    }

    else
    {
      v2->_shouldSuppressRemoteInputController = 0;
    }
  }

  return v2;
}

- (void)tearDownInputController
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 skipTearDownInputController];

  if ((v4 & 1) == 0)
  {
    [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:0];
    if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode])
    {
      v5 = [(UIKeyboardInputMode *)self->_inputMode extension];
      [v5 setRequestInterruptionBlock:0];
    }

    v6 = [(UICompatibilityInputViewController *)self inputController];

    if (v6)
    {
      v7 = [(UIInputViewController *)self _proxyInterface];
      v8 = [v7 forwardingInterface];
      [v8 _tearDownRemoteService];

      v9 = [(UIInputViewController *)self _proxyInterface];
      [v9 setForwardingInterface:0];

      v10 = [(UICompatibilityInputViewController *)self _compatView];
      [v10 setTouchableView:0];

      v11 = [(UICompatibilityInputViewController *)self inputController];
      v12 = [v11 view];
      [v12 removeFromSuperview];

      v13 = [(UICompatibilityInputViewController *)self inputController];
      [v13 removeFromParentViewController];

      [(UICompatibilityInputViewController *)self setInputController:0];
    }

    self->_tearingDownInputController = 0;
  }
}

- (void)loadView
{
  v3 = [_UIKBCompatInputView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIInputViewController *)self setView:v4];

  v5 = [(UIViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)removeSnapshotView
{
  v3 = [(UICompatibilityInputViewController *)self _compatibilityController];
  v4 = [v3 _compatView];
  v5 = [v4 snapshotView];

  if (v5)
  {
    v6 = [(UICompatibilityInputViewController *)self _compatibilityController];
    v7 = [v6 _compatView];
    v8 = [v7 snapshotView];
    [v8 removeFromSuperview];

    v10 = [(UICompatibilityInputViewController *)self _compatibilityController];
    v9 = [v10 _compatView];
    [v9 setSnapshotView:0];
  }
}

- (id)_compatView
{
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIViewController *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)rebuildChildConstraints
{
  v3 = [(UICompatibilityInputViewController *)self internalEdgeMatchConstraints];

  if (v3)
  {
    v4 = [(UIViewController *)self view];
    v5 = [(UICompatibilityInputViewController *)self internalEdgeMatchConstraints];
    [v4 removeConstraints:v5];

    [(UICompatibilityInputViewController *)self setInternalEdgeMatchConstraints:0];
  }

  v6 = [(UICompatibilityInputViewController *)self inputController];
  v30 = [v6 view];

  if (!v30)
  {
    v7 = [(UICompatibilityInputViewController *)self _compatView];
    v30 = [v7 touchableView];
  }

  v8 = [(UIViewController *)self view];
  v9 = [v30 isDescendantOfView:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = MEMORY[0x1E69977A0];
    v12 = [(UIViewController *)self view];
    v13 = [v11 constraintWithItem:v12 attribute:1 relatedBy:0 toItem:v30 attribute:1 multiplier:1.0 constant:0.0];
    [v10 addObject:v13];

    v14 = MEMORY[0x1E69977A0];
    v15 = [(UIViewController *)self view];
    v16 = [v14 constraintWithItem:v15 attribute:2 relatedBy:0 toItem:v30 attribute:2 multiplier:1.0 constant:0.0];
    [v10 addObject:v16];

    v17 = MEMORY[0x1E69977A0];
    v18 = [(UIViewController *)self view];
    v19 = [v17 constraintWithItem:v18 attribute:3 relatedBy:0 toItem:v30 attribute:3 multiplier:1.0 constant:0.0];
    [v10 addObject:v19];

    v20 = MEMORY[0x1E69977A0];
    v21 = [(UIViewController *)self view];
    v22 = [v20 constraintWithItem:v21 attribute:4 relatedBy:0 toItem:v30 attribute:4 multiplier:1.0 constant:0.0];
    [v10 addObject:v22];

    v23 = [(UICompatibilityInputViewController *)self inputController];
    v24 = [v23 view];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(UIViewController *)self view];
    [v25 addConstraints:v10];

    [(UICompatibilityInputViewController *)self setInternalEdgeMatchConstraints:v10];
  }

  v26 = [(UIViewController *)self view];
  [v26 invalidateIntrinsicContentSize];

  v27 = [(UIViewController *)self view];
  [v27 setNeedsLayout];

  v28 = [(UIViewController *)self view];
  v29 = [v28 _rootInputWindowController];
  [v29 updateViewSizingConstraints];
}

- (id)childCompatibilityController
{
  v3 = [(UICompatibilityInputViewController *)self inputController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UICompatibilityInputViewController *)self inputController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)generateCompatibleSizeConstraintsIfNecessary
{
  v3 = [(UIViewController *)self view];
  if ([v3 translatesAutoresizingMaskIntoConstraints])
  {
    v4 = [(UIViewController *)self view];
    v5 = ([v4 autoresizingMask] >> 4) & 1;
  }

  else
  {
    LODWORD(v5) = 1;
  }

  v6 = [(UIViewController *)self view];
  [v6 intrinsicContentSize];
  v8 = v7;
  v10 = v9;

  v11 = [(UICompatibilityInputViewController *)self _keyboard];
  if (v11)
  {

LABEL_9:
    v13 = [(UIViewController *)self view];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    goto LABEL_10;
  }

  v12 = v8 != -1.0;
  if (v10 != -1.0)
  {
    v12 = 1;
  }

  if (v12 & v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = [(UIViewController *)self view];
  [v14 _convertToAutolayoutSizingIfNecessary];
}

- (id)_keyboard
{
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIViewController *)self view];

    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if ([(UIInputViewController *)self _isPlaceholder])
  {
    v5 = [(UIViewController *)self view];
    v6 = [v5 placeheldView];
    v7 = [UIViewController viewControllerForView:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v7 _keyboard];

      if (v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v8 = [(UICompatibilityInputViewController *)self childCompatibilityController];
  v4 = [v8 _keyboard];

LABEL_11:

  return v4;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationDidEnterBackgroundNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v6[2] = @"UITextEffectsWindowIsHostedNotification";
  v6[3] = @"UICompatibilityInputViewControllerShouldUpdateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UICompatibilityInputViewController *)self tearDownInputController];
  v5.receiver = self;
  v5.super_class = UICompatibilityInputViewController;
  [(UIInputViewController *)&v5 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = UICompatibilityInputViewController;
  [(UIViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(UIViewController *)self parentViewController];
  if ([v3 conformsToProtocol:&unk_1F003A0E0])
  {
    v4 = [v3 controllerDelegate];
    [v4 controllerDidLayoutSubviews:v3];
  }
}

- (id)_keyboardForThisViewController
{
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIViewController *)self view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)animatableElement
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];
  v4 = [v3 animatableLayout];

  return v4;
}

+ (id)inputViewControllerWithView:(id)a3
{
  v3 = a3;
  v4 = [UIViewController viewControllerForView:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_13;
  }

  v6 = [v3 superview];
  v7 = [UIViewController viewControllerForView:v6];

  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [v3 superview];
    [UIViewController removeViewControllerForView:v8];

LABEL_7:
    v9 = [(UIInputViewController *)[UICompatibilityInputViewController alloc] initWithNibName:0 bundle:0];
    v5 = v9;
    if (v4)
    {
      [v3 _convertToAutolayoutSizingIfNecessary];
      [(UIViewController *)v5 addChildViewController:v4];
      v10 = [(UIViewController *)v5 view];
      [v10 addSubview:v3];

      [v4 didMoveToParentViewController:v5];
      [(UICompatibilityInputViewController *)v5 rebuildChildConstraints];
    }

    else
    {
      [(UIInputViewController *)v9 setView:v3];
    }

    v11 = objc_opt_class();
    Name = class_getName(v11);
    if (strcmp(Name, "CKMessageEntryView"))
    {
      [(UICompatibilityInputViewController *)v5 generateCompatibleSizeConstraintsIfNecessary];
    }

    goto LABEL_12;
  }

  v5 = v7;
LABEL_12:

LABEL_13:

  return v5;
}

+ (id)deferredInputModeControllerWithKeyboard:(id)a3
{
  v4 = a3;
  if (qword_1ED49C030 != -1)
  {
    dispatch_once(&qword_1ED49C030, &__block_literal_global_344);
  }

  v5 = qword_1ED49C028;
  if (*(qword_1ED49C028 + 1040) != v4)
  {
    [qword_1ED49C028 tearDownInputController];
    objc_storeStrong((qword_1ED49C028 + 1040), a3);
    v5 = qword_1ED49C028;
  }

  v6 = v5;

  return v5;
}

void __78__UICompatibilityInputViewController_deferredInputModeControllerWithKeyboard___block_invoke()
{
  v0 = [[UICompatibilityInputViewController alloc] _initAsDeferredController];
  v1 = qword_1ED49C028;
  qword_1ED49C028 = v0;
}

- (void)setDeferredSystemView:(id)a3
{
  v5 = a3;
  if (self->_deferredSystemView != v5)
  {
    v6 = v5;
    [(UICompatibilityInputViewController *)self tearDownInputController];
    objc_storeStrong(&self->_deferredSystemView, a3);
    v5 = v6;
  }
}

- (void)killIncomingExtension
{
  v3 = [(UIKeyboardInputMode *)self->_incomingExtensionInputMode extension];
  [v3 _kill:3];

  incomingExtensionInputMode = self->_incomingExtensionInputMode;
  self->_incomingExtensionInputMode = 0;
}

- (void)didSuspend:(id)a3
{
  [(UICompatibilityInputViewController *)self didMoveToParentViewController:0];
  self->_shouldSuppressRemoteInputController = 1;
  self->_lastSuspendedTime = CFAbsoluteTimeGetCurrent();
  if (self->_incomingExtensionInputMode)
  {
    if (CFAbsoluteTimeGetCurrent() - self->_incomingExtensionInputModeTime > 0.5)
    {
      [(UICompatibilityInputViewController *)self killIncomingExtension];
      v4 = TIGetKeyboardExtensionNoAutoFallbackValue();
      v5 = [v4 BOOLValue];

      if ((v5 & 1) == 0)
      {
        v8 = +[UIKeyboardImpl activeInstance];
        v6 = +[UIKeyboardInputModeController sharedInputModeController];
        v7 = [v6 currentSystemInputMode];
        [v8 setKeyboardInputMode:v7 userInitiated:1];
      }
    }
  }
}

- (void)isHosted:(id)a3
{
  if (self->_shouldSuppressRemoteInputController)
  {
    [(UICompatibilityInputViewController *)self willResume:a3];
  }
}

- (void)willResume:(id)a3
{
  self->_shouldSuppressRemoteInputController = 0;
  self->_currentResumeTime = CFAbsoluteTimeGetCurrent();
  v4 = +[UIKeyboardImpl activeInstance];
  if (v4 && (v9 = v4, v5 = [(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode], v4 = v9, v5))
  {
    v6 = [(UICompatibilityInputViewController *)self inputController];
    if (v6)
    {
    }

    else
    {
      incomingExtensionInputMode = self->_incomingExtensionInputMode;

      if (!incomingExtensionInputMode)
      {
        inputMode = self->_inputMode;

        [(UICompatibilityInputViewController *)self setInputMode:inputMode];
      }
    }
  }

  else
  {
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    v4 = [(UICompatibilityInputViewController *)self inputController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {

      [(UICompatibilityInputViewController *)self tearDownInputController];
    }
  }
}

+ (id)inputSnapshotViewForInputMode:(id)a3 orientation:(int64_t)a4
{
  v5 = __snapshotViews;
  v6 = [a3 identifier];
  v7 = [v6 stringByAppendingFormat:@"%d", (a4 - 3) < 2];
  v8 = [v5 objectForKey:v7];

  return v8;
}

- (void)takeSnapshotView
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UICompatibilityInputViewController_takeSnapshotView__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void __54__UICompatibilityInputViewController_takeSnapshotView__block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 1032) isExtensionInputMode])
  {
    return;
  }

  v17 = [*(a1 + 32) view];
  v2 = [v17 window];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) view];
    [v4 frame];
    v6 = v5;

    if (v6 <= 0.0)
    {
      return;
    }

    if (!__snapshotViews)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = __snapshotViews;
      __snapshotViews = v7;
    }

    v9 = [*(a1 + 32) view];
    v10 = [v9 _rootInputWindowController];
    v11 = [*(a1 + 32) view];
    v17 = [v10 inputViewSnapshotOfView:v11 afterScreenUpdates:0];

    v12 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    [v17 frame];
    if (v13 > 0.0)
    {
      v14 = __snapshotViews;
      v15 = [*(*(a1 + 32) + 1032) identifier];
      v16 = [v15 stringByAppendingFormat:@"%d", (+[UIKeyboardSceneDelegate interfaceOrientation](UIKeyboardSceneDelegate, "interfaceOrientation") - 3) < 2];
      [v14 setObject:v17 forKey:v16];
    }
  }

  v12 = v17;
LABEL_10:
}

- (void)addSnapshotViewForInputMode:(id)a3
{
  v19 = a3;
  v4 = [(UICompatibilityInputViewController *)self _compatibilityController];
  v5 = [v4 _compatView];

  if (v5)
  {
    v6 = [(UICompatibilityInputViewController *)self _compatibilityController];
    v7 = [v6 _compatView];
    v8 = [v7 snapshotView];

    if (!v8)
    {
      v9 = [objc_opt_class() inputSnapshotViewForInputMode:v19 orientation:{+[UIKeyboardSceneDelegate interfaceOrientation](UIKeyboardSceneDelegate, "interfaceOrientation")}];
      if (!v9)
      {
        v10 = +[UIKeyboardImpl activeInstance];
        v11 = [v10 _layout];
        v12 = [(UIViewController *)self view];
        [v11 updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:v12];

        v13 = [(UIViewController *)self view];
        v14 = [v13 _rootInputWindowController];
        v15 = [(UIViewController *)self view];
        v9 = [v14 inputViewSnapshotOfView:v15 afterScreenUpdates:1];
      }

      v16 = [(UIViewController *)self view];
      [v16 addSubview:v9];

      v17 = [(UICompatibilityInputViewController *)self _compatibilityController];
      v18 = [v17 _compatView];
      [v18 setSnapshotView:v9];
    }
  }
}

- (void)shouldUpdateInputMode:(id)a3
{
  v13 = a3;
  v4 = [v13 userInfo];
  v5 = [v4 objectForKey:@"UICompatibilityInputViewControllerScreenKey"];

  if (v5)
  {
    v6 = [(UIResponder *)self _responderWindow];
    v7 = [v6 screen];
    if (v7)
    {
      v8 = v7;
      v9 = [(UIResponder *)self _responderWindow];
      v10 = [v9 screen];

      if (v5 != v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v11 = [v13 userInfo];
  v12 = [v11 objectForKey:@"UICompatibilityInputViewControllerInputModeKey"];

  if (v12)
  {
    [(UICompatibilityInputViewController *)self setInputMode:v12];
  }

LABEL_9:
}

- (id)_systemViewControllerForInputMode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 viewControllerClass]) != 0)
  {
    v6 = objc_alloc_init(v5);
    v7 = [(UIViewController *)self view];
    v8 = [v7 _inheritedRenderConfig];
    if ([v8 lightKeyboard])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [v6 traitOverrides];
    [v10 setUserInterfaceStyle:v9];
  }

  else
  {
    v6 = [UICompatibilityInputViewController inputViewControllerWithView:self->_deferredSystemView];
  }

  return v6;
}

- (void)resetInputModeInMainThread
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_resetInputModeTime >= 0.3 && !self->_shouldSuppressRemoteInputController)
  {
    if (-[UIKeyboardInputMode isExtensionInputMode](self->_inputMode, "isExtensionInputMode") && (TIGetKeyboardExtensionNoAutoFallbackValue(), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLValue], v4, v5))
    {
      inputMode = self->_inputMode;

      [(UICompatibilityInputViewController *)self setInputMode:inputMode];
    }

    else
    {
      v7 = [(UIKeyboardInputMode *)self->_inputMode identifier];
      objc_initWeak(&location, v7);

      v8 = +[UIKeyboardInputModeController sharedInputModeController];
      [v8 switchToCurrentSystemInputMode];

      if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode])
      {
        v9 = _MergedGlobals_15_5;
        v10 = objc_loadWeakRetained(&location);
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          if (Current - self->_resetInputModeTime > 3.0)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __64__UICompatibilityInputViewController_resetInputModeInMainThread__block_invoke;
            v18[3] = &unk_1E710E520;
            objc_copyWeak(v19, &location);
            v18[4] = self;
            v19[1] = *&Current;
            dispatch_async(MEMORY[0x1E69E96A0], v18);
            objc_destroyWeak(v19);
          }
        }

        else
        {
          v12 = +[UIKeyboardInputModeController sharedInputModeController];
          [v12 _inputModeChangedWhileContextTracked];

          v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v14 = [v13 preferencesActions];
          v15 = +[UIKeyboardInputModeController sharedInputModeController];
          v16 = [v15 currentInputMode];
          v17 = [v16 identifier];
          [v14 setLanguageAwareInputModeLastUsed:v17];
        }
      }

      objc_destroyWeak(&location);
    }
  }
}

void __64__UICompatibilityInputViewController_resetInputModeInMainThread__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 setInputMode:WeakRetained];

  *(*(a1 + 32) + 1088) = *(a1 + 48);
}

- (void)resetInputMode
{
  +[_UIKeyboardUsageTracking keyboardExtensionCrashed];
  v3 = [(UIKeyboardInputMode *)self->_inputMode extension];
  [v3 setRequestInterruptionBlock:0];

  if (pthread_main_np() == 1)
  {

    [(UICompatibilityInputViewController *)self resetInputModeInMainThread];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__UICompatibilityInputViewController_resetInputMode__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

- (void)assertCurrentInputModeIfNecessary
{
  inputMode = self->_inputMode;
  if (inputMode && ![(UIKeyboardInputMode *)inputMode isDisplayed])
  {
    v5 = self->_inputMode;

    [(UICompatibilityInputViewController *)self setInputMode:v5];
  }

  else
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v4 currentInputMode];

    if (([v6 isDisplayed] & 1) == 0)
    {
      [(UICompatibilityInputViewController *)self setInputMode:v6];
    }
  }
}

- (void)validateInputModeIsDisplayed
{
  inputMode = self->_inputMode;
  if (inputMode && ![(UIKeyboardInputMode *)inputMode isDisplayed])
  {
    v4 = self->_inputMode;

    [(UICompatibilityInputViewController *)self setInputMode:v4];
  }
}

- (void)setInputMode:(id)a3
{
  v5 = a3;
  if (qword_1ED49C038 != -1)
  {
    dispatch_once(&qword_1ED49C038, &__block_literal_global_262_0);
  }

  if ([(UIKeyboardInputMode *)v5 isExtensionInputMode])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    if ([v6 _shouldSuppressSoftwareKeyboard])
    {
      v7 = +[UIKeyboardImpl isFloatingForced];

      if (!v7)
      {
        goto LABEL_75;
      }
    }

    else
    {
    }
  }

  if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode]|| [(UIKeyboardInputMode *)v5 isExtensionInputMode])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(UIKeyboardInputMode *)self->_inputMode normalizedIdentifier];
    if (UIKeyboardInputModeUsesKBStar(v9))
    {
      v10 = [(UIKeyboardInputMode *)v5 normalizedIdentifier];
      v8 = UIKeyboardInputModeUsesKBStar(v10);
    }

    else
    {
      v8 = 0;
    }
  }

  if (![(UIKeyboardInputMode *)self->_inputMode isEqual:v5]&& !v8)
  {
    goto LABEL_17;
  }

  v19 = [(UICompatibilityInputViewController *)self inputController];
  v20 = [v19 view];
  v21 = [v20 superview];
  v22 = [(UIViewController *)self view];
  if (v21 == v22)
  {
  }

  else
  {
    incomingExtensionInputMode = self->_incomingExtensionInputMode;

    if (!incomingExtensionInputMode)
    {
      goto LABEL_17;
    }
  }

  v47 = +[UIDevice currentDevice];
  if ([v47 _predictionGraphicsQuality] == 100)
  {
    v48 = 3.0;
  }

  else
  {
    v48 = 5.0;
  }

  if ([(UIKeyboardInputMode *)v5 isExtensionInputMode]&& self->_incomingExtensionInputMode && (Current = CFAbsoluteTimeGetCurrent(), incomingExtensionInputModeTime = self->_incomingExtensionInputModeTime, Current - incomingExtensionInputModeTime > v48) && vabdd_f64(self->_lastSuspendedTime, incomingExtensionInputModeTime) > v48)
  {
    [(UICompatibilityInputViewController *)self killIncomingExtension];
    [(UICompatibilityInputViewController *)self resetInputMode];
  }

  else if (!self->_incomingExtensionInputMode)
  {
    if (!self->_tearingDownInputController || !-[UIKeyboardInputMode isExtensionInputMode](self->_inputMode, "isExtensionInputMode") && (-[UICompatibilityInputViewController inputController](self, "inputController"), v51 = objc_claimAutoreleasedReturnValue(), [v51 view], v52 = objc_claimAutoreleasedReturnValue(), -[UICompatibilityInputViewController _keyboard](self, "_keyboard"), v53 = objc_claimAutoreleasedReturnValue(), v53, v52, v51, v52 == v53))
    {
      [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:0];
      objc_storeStrong(&self->_inputMode, a3);
LABEL_74:
      [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:1];
      goto LABEL_75;
    }

    [(UICompatibilityInputViewController *)self tearDownInputController];
LABEL_17:
    v11 = [(UIViewController *)self view];
    v12 = [v11 _rootInputWindowController];
    [v12 registerPowerLogEvent:1];

    if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode]&& self->_shouldSuppressRemoteInputController)
    {
      inputMode = self->_inputMode;
    }

    else
    {
      v14 = [(UIKeyboardInputMode *)v5 isExtensionInputMode];
      inputMode = v5;
      if (!v14)
      {
LABEL_22:
        [(UICompatibilityInputViewController *)self tearDownInputController];
        objc_storeStrong(&self->_inputMode, a3);
        if ([(UIKeyboardInputMode *)v5 isExtensionInputMode])
        {
          if (!self->_shouldSuppressRemoteInputController && !+[UIKeyboard usesInputSystemUI])
          {
            v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            v16 = [v15 keyboardIsForSystemService];

            if ((v16 & 1) == 0)
            {
              objc_storeStrong(&self->_incomingExtensionInputMode, a3);
              self->_incomingExtensionInputModeTime = CFAbsoluteTimeGetCurrent();
              v81[0] = MEMORY[0x1E69E9820];
              v81[1] = 3221225472;
              v81[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_2;
              v81[3] = &unk_1E710E548;
              v81[4] = self;
              v61 = [(UIKeyboardInputMode *)v5 extension];
              [v61 setRequestInterruptionBlock:v81];

              v62 = [(UIKeyboardInputMode *)v5 extension];
              v79[0] = MEMORY[0x1E69E9820];
              v79[1] = 3221225472;
              v79[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_4;
              v79[3] = &unk_1E710E570;
              v79[4] = self;
              v80 = v5;
              [v62 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v79];

              v63 = _MergedGlobals_15_5;
              v64 = [(UIKeyboardInputMode *)self->_incomingExtensionInputMode identifier];
              v65 = [v63 objectForKey:v64];

              v66 = 3.0;
              if (self->_lastSuspendedTime <= self->_currentResumeTime)
              {
                if (CFAbsoluteTimeGetCurrent() - self->_currentResumeTime >= 1.0)
                {
                  v66 = 0.5;
                }

                else
                {
                  v66 = 3.0;
                }
              }

              if (v65)
              {
                [v65 floatValue];
                v68 = ((v66 + (v67 + v67)) * 1000000000.0);
              }

              else
              {
                v68 = 5000000000;
              }

              v70 = dispatch_time(0, v68);
              self->_latestDelayTime = v70;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_6;
              block[3] = &unk_1E70F32F0;
              block[4] = self;
              block[5] = v70;
              dispatch_after(v70, MEMORY[0x1E69E96A0], block);

              goto LABEL_74;
            }
          }
        }

        v17 = [(UIKeyboardInputMode *)v5 identifier];
        if ([v17 isEqualToString:@"autofillsignup"])
        {
          if (!self->_incomingExtensionInputMode)
          {

LABEL_55:
            v54 = +[UIKeyboardImpl activeInstance];
            v40 = [v54 _autofillContext];

            v55 = [v40 objectForKey:@"_automaticPasswordKeyboard"];

            if (!v55)
            {

              v40 = 0;
            }

            v56 = +[UIKeyboardImpl activeInstance];
            v57 = [v56 _passwordRules];

            if (get_SFAutomaticPasswordInputViewControllerClass() && ![(UIKeyboardInputMode *)self->_inputMode isDisplayed])
            {
              v58 = dispatch_semaphore_create(0);
              v71 = MEMORY[0x1E69E9820];
              v72 = 3221225472;
              v73 = __51__UICompatibilityInputViewController_setInputMode___block_invoke_7;
              v74 = &unk_1E710E598;
              v75 = self;
              v76 = v5;
              v59 = v58;
              v77 = v59;
              v60 = _Block_copy(&v71);
              if ([UIKeyboard isKeyboardProcess:v71])
              {
                objc_storeStrong(&self->_incomingExtensionInputMode, self->_inputMode);
              }

              else
              {
                get_SFAutomaticPasswordInputViewControllerClass();
                if (objc_opt_respondsToSelector())
                {
                  objc_storeStrong(&self->_incomingExtensionInputMode, self->_inputMode);
                  [get_SFAutomaticPasswordInputViewControllerClass() inputViewControllerWithAutoFillContext:v40 passwordRules:v57 completion:v60];
                  v69 = dispatch_time(0, 500000000);
                  dispatch_semaphore_wait(v59, v69);
                }

                else
                {
                  [(UICompatibilityInputViewController *)self resetInputMode];
                }
              }
            }

LABEL_73:
            goto LABEL_74;
          }

          v18 = +[UIKeyboard isKeyboardProcess];

          if (v18)
          {
            goto LABEL_55;
          }
        }

        else
        {
        }

        if ([(UIKeyboardInputMode *)v5 isExtensionInputMode])
        {
          goto LABEL_74;
        }

        if (!self->_deferredSystemView)
        {
          goto LABEL_74;
        }

        v24 = [(UIKeyboardInputMode *)v5 identifier];
        v25 = [v24 isEqualToString:@"autofillsignup"];

        if (v25)
        {
          goto LABEL_74;
        }

        [(UICompatibilityInputViewController *)self removeSnapshotView];
        v26 = [(UICompatibilityInputViewController *)self _systemViewControllerForInputMode:v5];
        [(UICompatibilityInputViewController *)self setInputController:v26];

        v27 = [(UIInputViewController *)self _proxyInterface];
        [v27 setForwardingInterface:0];

        v28 = [(UICompatibilityInputViewController *)self inputController];
        [(UIViewController *)self addChildViewController:v28];

        v29 = [(UIViewController *)self view];
        v30 = [(UICompatibilityInputViewController *)self inputController];
        v31 = [v30 view];
        [v29 addSubview:v31];

        v32 = [(UICompatibilityInputViewController *)self _compatView];
        v33 = [(UICompatibilityInputViewController *)self inputController];
        v34 = [v33 view];
        [v32 setTouchableView:v34];

        v35 = [(UICompatibilityInputViewController *)self inputController];
        [v35 didMoveToParentViewController:self];

        [(UICompatibilityInputViewController *)self rebuildChildConstraints];
        if (![(UIKeyboard *)self->_deferredSystemView isActive])
        {
          [(UIKeyboard *)self->_deferredSystemView activate];
        }

        v36 = [(UICompatibilityInputViewController *)self inputController];
        v37 = [v36 view];
        [v37 frame];
        v40 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v38, v39];

        [v40 setSplitWidthsChanged:1];
        [v40 setUpdateAssistantView:1];
        v41 = [(UIViewController *)self view];
        v42 = [v41 superview];
        [v42 _didChangeKeyplaneWithContext:v40];

        v43 = [(UICompatibilityInputViewController *)self inputController];
        v44 = [v43 view];
        v45 = [(UIViewController *)self view];
        v46 = [v45 _inheritedRenderConfig];
        [v44 _setRenderConfig:v46];

        +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
        goto LABEL_73;
      }
    }

    [(UICompatibilityInputViewController *)self addSnapshotViewForInputMode:inputMode];
    goto LABEL_22;
  }

LABEL_75:
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _MergedGlobals_15_5;
  _MergedGlobals_15_5 = v0;
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_3;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (*(v10 + 1048) == *(v10 + 1032) && (*(v10 + 1081) & 1) == 0)
  {
    if (v8)
    {
      [v10 removeSnapshotView];
      [*(a1 + 32) setInputController:v8];
      v15 = *(a1 + 32);
      v16 = objc_alloc_init(_UITextDocumentInterface);
      [v15 _setTextDocumentProxy:v16];

      v17 = [*(a1 + 40) extension];
      v18 = [v17 _extensionContextForUUID:v7];

      v19 = [*(a1 + 32) _proxyInterface];
      [v19 setForwardingInterface:v18];

      v20 = *(a1 + 32);
      v21 = [v20 inputController];
      [v20 addChildViewController:v21];

      v22 = [*(a1 + 32) view];
      v23 = [*(a1 + 32) inputController];
      v24 = [v23 view];
      [v22 addSubview:v24];

      v25 = [*(a1 + 32) _compatView];
      v26 = [*(a1 + 32) inputController];
      v27 = [v26 view];
      [v25 setTouchableView:v27];

      v28 = [*(a1 + 32) inputController];
      [v28 didMoveToParentViewController:*(a1 + 32)];

      [*(a1 + 32) rebuildChildConstraints];
      v29 = [*(a1 + 32) inputController];
      v30 = [v29 view];
      [v30 frame];
      v33 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v31, v32];

      [v33 setSplitWidthsChanged:1];
      [v33 setUpdateAssistantView:1];
      v34 = [*(a1 + 32) view];
      v35 = [v34 superview];
      [v35 _didChangeKeyplaneWithContext:v33];

      Current = CFAbsoluteTimeGetCurrent();
      v37 = *(a1 + 32);
      v38 = Current - *(v37 + 1056);
      v39 = _MergedGlobals_15_5;
      v40 = [*(v37 + 1048) identifier];
      v41 = [v39 objectForKey:v40];
      [v41 floatValue];
      v43 = v42;
      v44 = v42;

      if (v43 == 0.0 || vabdd_f64(v38, v44) > 0.2)
      {
        v45 = (v38 + v44) * 0.5;
        if (v43 <= 0.0)
        {
          v45 = v38;
        }

        v46 = _MergedGlobals_15_5;
        *&v45 = v45;
        v47 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
        v48 = [*(*(a1 + 32) + 1048) identifier];
        [v46 setObject:v47 forKey:v48];
      }

      [*(a1 + 32) takeSnapshotView];
      +[UIAssistantBarButtonItemProvider updateFloatingAssistantBarIfNeeded];
    }

    else if (v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_5;
      block[3] = &unk_1E70F3590;
      block[4] = v10;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v49 = *(a1 + 32);
    v50 = *(v49 + 1048);
    *(v49 + 1048) = 0;
  }

  else if (![*(v10 + 1032) isExtensionInputMode] || *(*(a1 + 32) + 1081) == 1)
  {
    v11 = [*(a1 + 40) extension];
    v12 = [v11 _extensionContextForUUID:v7];

    [v12 _tearDownRemoteService];
    v13 = *(a1 + 32);
    v14 = *(v13 + 1048);
    *(v13 + 1048) = 0;
  }
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke_5(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  if (Current - v3[136] >= 0.3)
  {
LABEL_4:

    [v3 resetInputMode];
    return;
  }

  v4 = TIGetKeyboardExtensionNoAutoFallbackValue();
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v3 = *(a1 + 32);
    goto LABEL_4;
  }

  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  [v6 switchToCurrentSystemInputMode];
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1096) == *(a1 + 40))
  {
    v3 = *(v1 + 1048);
    if (v3 == *(v1 + 1032) && (*(v1 + 1081) & 1) == 0)
    {
      v4 = [v3 identifier];
      [*(a1 + 32) killIncomingExtension];
      [*(a1 + 32) resetInputMode];
      [_MergedGlobals_15_5 removeObjectForKey:v4];
    }
  }
}

void __51__UICompatibilityInputViewController_setInputMode___block_invoke_7(uint64_t a1, void *a2)
{
  v27 = a2;
  if (v27)
  {
    v3 = [*(*(a1 + 32) + 1032) identifier];
    v4 = [v3 isEqualToString:@"autofillsignup"];

    if (!v4)
    {
      goto LABEL_9;
    }

    [*(a1 + 32) removeSnapshotView];
    [*(a1 + 32) setInputController:v27];
    v5 = *(a1 + 32);
    v6 = objc_alloc_init(_UITextDocumentInterface);
    [v5 _setTextDocumentProxy:v6];

    v7 = *(a1 + 32);
    v8 = [v7 inputController];
    [v7 addChildViewController:v8];

    v9 = [*(a1 + 32) view];
    v10 = [*(a1 + 32) inputController];
    v11 = [v10 view];
    [v9 addSubview:v11];

    v12 = [*(a1 + 32) _compatView];
    v13 = [*(a1 + 32) inputController];
    v14 = [v13 view];
    [v12 setTouchableView:v14];

    v15 = [*(a1 + 32) inputController];
    [v15 didMoveToParentViewController:*(a1 + 32)];

    [*(a1 + 32) rebuildChildConstraints];
    v16 = [*(a1 + 32) inputController];
    v17 = [v16 view];
    [v17 bounds];
    v20 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v18, v19];

    [v20 setSplitWidthsChanged:1];
    v21 = [*(a1 + 32) view];
    v22 = [v21 superview];
    [v22 _didChangeKeyplaneWithContext:v20];

    [*(a1 + 32) takeSnapshotView];
    goto LABEL_8;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    [*(a1 + 40) clearViewControllerClass];
  }

  [*(a1 + 32) resetInputMode];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v23 = +[UIKeyboardImpl activeInstance];
    [v23 setSkipRecomputeInputMode:1];

    v24 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v24 forceReloadInputViews];

    v20 = +[UIKeyboardImpl activeInstance];
    [v20 setSkipRecomputeInputMode:0];
LABEL_8:
  }

LABEL_9:
  v25 = *(a1 + 32);
  v26 = *(v25 + 1048);
  *(v25 + 1048) = 0;

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)preferredFocusedView
{
  v2 = [(UICompatibilityInputViewController *)self inputController];
  v3 = [v2 view];

  return v3;
}

- (void)keyboardWillChangeFromDelegate:(id)a3 toDelegate:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UICompatibilityInputViewController *)self inputController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UICompatibilityInputViewController *)self inputController];
    [v9 keyboardWillChangeFromDelegate:v10 toDelegate:v6];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UICompatibilityInputViewController;
  [(UIViewController *)&v6 viewWillDisappear:a3];
  v3 = +[UIInputSwitcherView activeInstance];
  v4 = [v3 isVisible];

  if (v4)
  {
    v5 = +[UIInputSwitcherView activeInstance];
    [v5 hide];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UICompatibilityInputViewController;
  [(UIViewController *)&v7 viewWillAppear:a3];
  v4 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    v6 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
    [v6 activate];
  }
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  v7 = [v6 isActive];

  if (v7)
  {
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 prepareLayoutForInterfaceOrientation:a3];
  }

  v9 = [(UICompatibilityInputViewController *)self inputController];
  if (v9)
  {
    goto LABEL_4;
  }

  v12 = [(UIViewController *)self childViewControllers];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(UICompatibilityInputViewController *)self _compatView];
    v9 = [v14 touchableView];

    if ([v9 _hasAutolayoutHeightConstraint])
    {
      if (v9)
      {
        v15 = [v9 _disableLayoutFlushingCount];
        if (v15 >= 1)
        {
          v16 = v15 + 1;
        }

        else
        {
          v16 = 1;
        }

        [v9 _setDisableLayoutFlushingCount:v16];
        [v9 _disableLayoutFlushing];
      }

      [v9 _removeAutolayoutSizingConstraints];
      self->_shouldRegenerateSizingConstraints = 1;
    }

LABEL_4:
  }

  v10 = +[UIInputSwitcherView activeInstance];
  v11 = [v10 isVisible];

  if (v11)
  {
    v17 = +[UIInputSwitcherView activeInstance];
    [v17 hide];
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  v7 = [v6 isActive];

  if (v7)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 updateLayoutToCurrentInterfaceOrientation];
  }

  else
  {
    deferredSystemView = self->_deferredSystemView;

    [(UIKeyboard *)deferredSystemView setOrientation:a3];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 finishLayoutToCurrentInterfaceOrientation];
  }

  v7 = [(UICompatibilityInputViewController *)self inputController];
  if (!v7)
  {
    v8 = [(UIViewController *)self childViewControllers];
    v9 = [v8 count];

    if (!v9 || !self->_shouldRegenerateSizingConstraints)
    {
      return;
    }

    self->_shouldRegenerateSizingConstraints = 0;
    v10 = [(UICompatibilityInputViewController *)self _compatView];
    v11 = [v10 touchableView];

    [v11 _convertToAutolayoutSizingIfNecessary];
    [(UIView *)v11 _popDisableLayoutFlushing];
    v7 = v11;
  }
}

- (void)willBeginTranslation
{
  v3 = [(UICompatibilityInputViewController *)self _keyboard];
  v4 = [v3 isActive];

  if (v4)
  {
    if (![(UIInputViewController *)self _isPlaceholder])
    {
      v5 = [(UICompatibilityInputViewController *)self blinkAssertion];
      [v5 invalidate];

      v6 = +[UIKeyboardImpl activeInstance];
      v7 = [v6 _activeAssertionController];
      v8 = [v7 nonBlinkingAssertionWithReason:@"Split/Floating Keyboard Translation"];
      [(UICompatibilityInputViewController *)self setBlinkAssertion:v8];

      v9 = +[UIKeyboardImpl activeInstance];
      v10 = [v9 autocorrectPrompt];

      if (v10)
      {
        v11 = +[UIKeyboardImpl activeInstance];
        [v11 prepareForGeometryChange];
      }
    }

    v12 = [(UICompatibilityInputViewController *)self _keyboard];
    if (v12)
    {
      v13 = v12;
      v14 = +[UIKeyboardImpl activeInstance];
      v15 = [v14 showsCandidateBar];

      if (v15)
      {
        v16 = +[UIKeyboardImpl activeInstance];
        v17 = [v16 candidateController];

        if ([v17 barIsExtended])
        {
          [v17 collapse];
        }
      }
    }

    v19 = +[UIKeyboardImpl activeInstance];
    v18 = [v19 _layout];
    [v18 deactivateActiveKeys];
  }
}

- (void)finishSplitTransition:(BOOL)a3
{
  if (![(UIInputViewController *)self _isPlaceholder])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__UICompatibilityInputViewController_finishSplitTransition___block_invoke;
    aBlock[3] = &__block_descriptor_33_e5_v8__0l;
    v11 = a3;
    v5 = _Block_copy(aBlock);
    v6 = [(UICompatibilityInputViewController *)self _keyboard];
    v7 = [v6 isActive];

    if (v7)
    {
      v5[2](v5);
    }

    else
    {
      v8 = [(UICompatibilityInputViewController *)self _keyboard];
      v9 = +[UIKeyboard activeKeyboard];

      if (v8 == v9)
      {
        [UIView performWithoutAnimation:v5];
      }
    }
  }
}

void __60__UICompatibilityInputViewController_finishSplitTransition___block_invoke(uint64_t a1)
{
  if (+[UIKeyboardImpl rivenPreference])
  {
    v2 = +[UIKeyboardImpl activeInstance];
    v4 = v2;
    v3 = 0.0;
    if (*(a1 + 32))
    {
      v3 = 1.0;
    }

    [v2 finishSplitTransitionWithProgress:v3];
  }
}

- (void)didFinishTranslation
{
  v6 = [(UICompatibilityInputViewController *)self _keyboard];
  if ([v6 isActive])
  {
    v3 = [(UIInputViewController *)self _isPlaceholder];

    if (v3)
    {
      return;
    }

    v4 = [(UICompatibilityInputViewController *)self blinkAssertion];
    [v4 invalidate];

    [(UICompatibilityInputViewController *)self setBlinkAssertion:0];
    v5 = +[UIKeyboardImpl activeInstance];
    LODWORD(v4) = [v5 geometryIsChanging];

    if (!v4)
    {
      return;
    }

    v6 = +[UIKeyboardImpl activeInstance];
    [v6 geometryChangeDone:1];
  }
}

- (void)_tvUpdateAppearanceForUserInterfaceStyle
{
  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v6 = v4 != 2 && v4 != 1000;
  v7 = [(UIViewController *)self view];
  v8 = [v7 _inheritedRenderConfig];
  v10 = [v8 copy];

  [v10 setLightKeyboard:v6];
  v9 = [(UIViewController *)self view];
  [v9 _setRenderConfig:v10];
}

- (UILayoutGuide)focusSafeAreaLayoutGuide
{
  v34[4] = *MEMORY[0x1E69E9840];
  focusSafeAreaLayoutGuide = self->_focusSafeAreaLayoutGuide;
  if (!focusSafeAreaLayoutGuide)
  {
    +[UIKeyboard _keyboardFocusGuideMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = objc_alloc_init(UILayoutGuide);
    v13 = [(UIViewController *)self view];
    [v13 addLayoutGuide:v12];

    v26 = MEMORY[0x1E69977A0];
    v32 = [(UILayoutGuide *)v12 topAnchor];
    v33 = [(UIViewController *)self view];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:v5];
    v34[0] = v30;
    v28 = [(UILayoutGuide *)v12 leftAnchor];
    v29 = [(UIViewController *)self view];
    v27 = [v29 leftAnchor];
    v25 = [v28 constraintEqualToAnchor:v27 constant:v7];
    v34[1] = v25;
    v24 = [(UIViewController *)self view];
    v23 = [v24 bottomAnchor];
    v14 = [(UILayoutGuide *)v12 bottomAnchor];
    v15 = [v23 constraintEqualToAnchor:v14 constant:v9];
    v34[2] = v15;
    v16 = [(UIViewController *)self view];
    v17 = [v16 rightAnchor];
    v18 = [(UILayoutGuide *)v12 rightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:v11];
    v34[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v26 activateConstraints:v20];

    v21 = self->_focusSafeAreaLayoutGuide;
    self->_focusSafeAreaLayoutGuide = v12;

    focusSafeAreaLayoutGuide = self->_focusSafeAreaLayoutGuide;
  }

  return focusSafeAreaLayoutGuide;
}

@end