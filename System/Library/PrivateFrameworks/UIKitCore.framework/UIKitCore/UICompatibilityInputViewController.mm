@interface UICompatibilityInputViewController
+ (id)deferredInputModeControllerWithKeyboard:(id)keyboard;
+ (id)inputSnapshotViewForInputMode:(id)mode orientation:(int64_t)orientation;
+ (id)inputViewControllerWithView:(id)view;
- (UILayoutGuide)focusSafeAreaLayoutGuide;
- (id)_compatView;
- (id)_compatibilityController;
- (id)_initAsDeferredController;
- (id)_keyboard;
- (id)_keyboardForThisViewController;
- (id)_systemViewControllerForInputMode:(id)mode;
- (id)animatableElement;
- (id)childCompatibilityController;
- (id)preferredFocusedView;
- (void)_tvUpdateAppearanceForUserInterfaceStyle;
- (void)addSnapshotViewForInputMode:(id)mode;
- (void)assertCurrentInputModeIfNecessary;
- (void)dealloc;
- (void)didFinishTranslation;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)didSuspend:(id)suspend;
- (void)finishSplitTransition:(BOOL)transition;
- (void)generateCompatibleSizeConstraintsIfNecessary;
- (void)isHosted:(id)hosted;
- (void)keyboardWillChangeFromDelegate:(id)delegate toDelegate:(id)toDelegate;
- (void)killIncomingExtension;
- (void)loadView;
- (void)rebuildChildConstraints;
- (void)removeSnapshotView;
- (void)resetInputMode;
- (void)resetInputModeInMainThread;
- (void)setDeferredSystemView:(id)view;
- (void)setInputMode:(id)mode;
- (void)shouldUpdateInputMode:(id)mode;
- (void)takeSnapshotView;
- (void)tearDownInputController;
- (void)validateInputModeIsDisplayed;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willBeginTranslation;
- (void)willResume:(id)resume;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation UICompatibilityInputViewController

- (id)_compatibilityController
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initAsDeferredController
{
  v7.receiver = self;
  v7.super_class = UICompatibilityInputViewController;
  v2 = [(UIViewController *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_isHosted_ name:@"UITextEffectsWindowIsHostedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_shouldUpdateInputMode_ name:@"UICompatibilityInputViewControllerShouldUpdateNotification" object:0];
    if ([UIApp isSuspended])
    {
      v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerWindow = [v4 containerWindow];
      v2->_shouldSuppressRemoteInputController = [containerWindow _isHostedInAnotherProcess] ^ 1;
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
  skipTearDownInputController = [v3 skipTearDownInputController];

  if ((skipTearDownInputController & 1) == 0)
  {
    [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:0];
    if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode])
    {
      extension = [(UIKeyboardInputMode *)self->_inputMode extension];
      [extension setRequestInterruptionBlock:0];
    }

    inputController = [(UICompatibilityInputViewController *)self inputController];

    if (inputController)
    {
      _proxyInterface = [(UIInputViewController *)self _proxyInterface];
      forwardingInterface = [_proxyInterface forwardingInterface];
      [forwardingInterface _tearDownRemoteService];

      _proxyInterface2 = [(UIInputViewController *)self _proxyInterface];
      [_proxyInterface2 setForwardingInterface:0];

      _compatView = [(UICompatibilityInputViewController *)self _compatView];
      [_compatView setTouchableView:0];

      inputController2 = [(UICompatibilityInputViewController *)self inputController];
      view = [inputController2 view];
      [view removeFromSuperview];

      inputController3 = [(UICompatibilityInputViewController *)self inputController];
      [inputController3 removeFromParentViewController];

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

  view = [(UIViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)removeSnapshotView
{
  _compatibilityController = [(UICompatibilityInputViewController *)self _compatibilityController];
  _compatView = [_compatibilityController _compatView];
  snapshotView = [_compatView snapshotView];

  if (snapshotView)
  {
    _compatibilityController2 = [(UICompatibilityInputViewController *)self _compatibilityController];
    _compatView2 = [_compatibilityController2 _compatView];
    snapshotView2 = [_compatView2 snapshotView];
    [snapshotView2 removeFromSuperview];

    _compatibilityController3 = [(UICompatibilityInputViewController *)self _compatibilityController];
    _compatView3 = [_compatibilityController3 _compatView];
    [_compatView3 setSnapshotView:0];
  }
}

- (id)_compatView
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(UIViewController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (void)rebuildChildConstraints
{
  internalEdgeMatchConstraints = [(UICompatibilityInputViewController *)self internalEdgeMatchConstraints];

  if (internalEdgeMatchConstraints)
  {
    view = [(UIViewController *)self view];
    internalEdgeMatchConstraints2 = [(UICompatibilityInputViewController *)self internalEdgeMatchConstraints];
    [view removeConstraints:internalEdgeMatchConstraints2];

    [(UICompatibilityInputViewController *)self setInternalEdgeMatchConstraints:0];
  }

  inputController = [(UICompatibilityInputViewController *)self inputController];
  view2 = [inputController view];

  if (!view2)
  {
    _compatView = [(UICompatibilityInputViewController *)self _compatView];
    view2 = [_compatView touchableView];
  }

  view3 = [(UIViewController *)self view];
  v9 = [view2 isDescendantOfView:view3];

  if (v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = MEMORY[0x1E69977A0];
    view4 = [(UIViewController *)self view];
    v13 = [v11 constraintWithItem:view4 attribute:1 relatedBy:0 toItem:view2 attribute:1 multiplier:1.0 constant:0.0];
    [array addObject:v13];

    v14 = MEMORY[0x1E69977A0];
    view5 = [(UIViewController *)self view];
    v16 = [v14 constraintWithItem:view5 attribute:2 relatedBy:0 toItem:view2 attribute:2 multiplier:1.0 constant:0.0];
    [array addObject:v16];

    v17 = MEMORY[0x1E69977A0];
    view6 = [(UIViewController *)self view];
    v19 = [v17 constraintWithItem:view6 attribute:3 relatedBy:0 toItem:view2 attribute:3 multiplier:1.0 constant:0.0];
    [array addObject:v19];

    v20 = MEMORY[0x1E69977A0];
    view7 = [(UIViewController *)self view];
    v22 = [v20 constraintWithItem:view7 attribute:4 relatedBy:0 toItem:view2 attribute:4 multiplier:1.0 constant:0.0];
    [array addObject:v22];

    inputController2 = [(UICompatibilityInputViewController *)self inputController];
    view8 = [inputController2 view];
    [view8 setTranslatesAutoresizingMaskIntoConstraints:0];

    view9 = [(UIViewController *)self view];
    [view9 addConstraints:array];

    [(UICompatibilityInputViewController *)self setInternalEdgeMatchConstraints:array];
  }

  view10 = [(UIViewController *)self view];
  [view10 invalidateIntrinsicContentSize];

  view11 = [(UIViewController *)self view];
  [view11 setNeedsLayout];

  view12 = [(UIViewController *)self view];
  _rootInputWindowController = [view12 _rootInputWindowController];
  [_rootInputWindowController updateViewSizingConstraints];
}

- (id)childCompatibilityController
{
  inputController = [(UICompatibilityInputViewController *)self inputController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    inputController2 = [(UICompatibilityInputViewController *)self inputController];
  }

  else
  {
    inputController2 = 0;
  }

  return inputController2;
}

- (void)generateCompatibleSizeConstraintsIfNecessary
{
  view = [(UIViewController *)self view];
  if ([view translatesAutoresizingMaskIntoConstraints])
  {
    view2 = [(UIViewController *)self view];
    v5 = ([view2 autoresizingMask] >> 4) & 1;
  }

  else
  {
    LODWORD(v5) = 1;
  }

  view3 = [(UIViewController *)self view];
  [view3 intrinsicContentSize];
  v8 = v7;
  v10 = v9;

  _keyboard = [(UICompatibilityInputViewController *)self _keyboard];
  if (_keyboard)
  {

LABEL_9:
    view4 = [(UIViewController *)self view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

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
  view5 = [(UIViewController *)self view];
  [view5 _convertToAutolayoutSizingIfNecessary];
}

- (id)_keyboard
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(UIViewController *)self view];

    if (view2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if ([(UIInputViewController *)self _isPlaceholder])
  {
    view3 = [(UIViewController *)self view];
    placeheldView = [view3 placeheldView];
    v7 = [UIViewController viewControllerForView:placeheldView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view2 = [v7 _keyboard];

      if (view2)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  childCompatibilityController = [(UICompatibilityInputViewController *)self childCompatibilityController];
  view2 = [childCompatibilityController _keyboard];

LABEL_11:

  return view2;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationDidEnterBackgroundNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v6[2] = @"UITextEffectsWindowIsHostedNotification";
  v6[3] = @"UICompatibilityInputViewControllerShouldUpdateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

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
  parentViewController = [(UIViewController *)self parentViewController];
  if ([parentViewController conformsToProtocol:&unk_1F003A0E0])
  {
    controllerDelegate = [parentViewController controllerDelegate];
    [controllerDelegate controllerDidLayoutSubviews:parentViewController];
  }
}

- (id)_keyboardForThisViewController
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(UIViewController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (id)animatableElement
{
  v2 = +[UIKeyboardImpl activeInstance];
  _layout = [v2 _layout];
  animatableLayout = [_layout animatableLayout];

  return animatableLayout;
}

+ (id)inputViewControllerWithView:(id)view
{
  viewCopy = view;
  v4 = [UIViewController viewControllerForView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_13;
  }

  superview = [viewCopy superview];
  v7 = [UIViewController viewControllerForView:superview];

  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    superview2 = [viewCopy superview];
    [UIViewController removeViewControllerForView:superview2];

LABEL_7:
    v9 = [(UIInputViewController *)[UICompatibilityInputViewController alloc] initWithNibName:0 bundle:0];
    v5 = v9;
    if (v4)
    {
      [viewCopy _convertToAutolayoutSizingIfNecessary];
      [(UIViewController *)v5 addChildViewController:v4];
      view = [(UIViewController *)v5 view];
      [view addSubview:viewCopy];

      [v4 didMoveToParentViewController:v5];
      [(UICompatibilityInputViewController *)v5 rebuildChildConstraints];
    }

    else
    {
      [(UIInputViewController *)v9 setView:viewCopy];
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

+ (id)deferredInputModeControllerWithKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (qword_1ED49C030 != -1)
  {
    dispatch_once(&qword_1ED49C030, &__block_literal_global_344);
  }

  v5 = qword_1ED49C028;
  if (*(qword_1ED49C028 + 1040) != keyboardCopy)
  {
    [qword_1ED49C028 tearDownInputController];
    objc_storeStrong((qword_1ED49C028 + 1040), keyboard);
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

- (void)setDeferredSystemView:(id)view
{
  viewCopy = view;
  if (self->_deferredSystemView != viewCopy)
  {
    v6 = viewCopy;
    [(UICompatibilityInputViewController *)self tearDownInputController];
    objc_storeStrong(&self->_deferredSystemView, view);
    viewCopy = v6;
  }
}

- (void)killIncomingExtension
{
  extension = [(UIKeyboardInputMode *)self->_incomingExtensionInputMode extension];
  [extension _kill:3];

  incomingExtensionInputMode = self->_incomingExtensionInputMode;
  self->_incomingExtensionInputMode = 0;
}

- (void)didSuspend:(id)suspend
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
      bOOLValue = [v4 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v8 = +[UIKeyboardImpl activeInstance];
        v6 = +[UIKeyboardInputModeController sharedInputModeController];
        currentSystemInputMode = [v6 currentSystemInputMode];
        [v8 setKeyboardInputMode:currentSystemInputMode userInitiated:1];
      }
    }
  }
}

- (void)isHosted:(id)hosted
{
  if (self->_shouldSuppressRemoteInputController)
  {
    [(UICompatibilityInputViewController *)self willResume:hosted];
  }
}

- (void)willResume:(id)resume
{
  self->_shouldSuppressRemoteInputController = 0;
  self->_currentResumeTime = CFAbsoluteTimeGetCurrent();
  v4 = +[UIKeyboardImpl activeInstance];
  if (v4 && (v9 = v4, v5 = [(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode], v4 = v9, v5))
  {
    inputController = [(UICompatibilityInputViewController *)self inputController];
    if (inputController)
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

- (void)didMoveToParentViewController:(id)controller
{
  if (!controller)
  {
    inputController = [(UICompatibilityInputViewController *)self inputController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {

      [(UICompatibilityInputViewController *)self tearDownInputController];
    }
  }
}

+ (id)inputSnapshotViewForInputMode:(id)mode orientation:(int64_t)orientation
{
  v5 = __snapshotViews;
  identifier = [mode identifier];
  v7 = [identifier stringByAppendingFormat:@"%d", (orientation - 3) < 2];
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

- (void)addSnapshotViewForInputMode:(id)mode
{
  modeCopy = mode;
  _compatibilityController = [(UICompatibilityInputViewController *)self _compatibilityController];
  _compatView = [_compatibilityController _compatView];

  if (_compatView)
  {
    _compatibilityController2 = [(UICompatibilityInputViewController *)self _compatibilityController];
    _compatView2 = [_compatibilityController2 _compatView];
    snapshotView = [_compatView2 snapshotView];

    if (!snapshotView)
    {
      v9 = [objc_opt_class() inputSnapshotViewForInputMode:modeCopy orientation:{+[UIKeyboardSceneDelegate interfaceOrientation](UIKeyboardSceneDelegate, "interfaceOrientation")}];
      if (!v9)
      {
        v10 = +[UIKeyboardImpl activeInstance];
        _layout = [v10 _layout];
        view = [(UIViewController *)self view];
        [_layout updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:view];

        view2 = [(UIViewController *)self view];
        _rootInputWindowController = [view2 _rootInputWindowController];
        view3 = [(UIViewController *)self view];
        v9 = [_rootInputWindowController inputViewSnapshotOfView:view3 afterScreenUpdates:1];
      }

      view4 = [(UIViewController *)self view];
      [view4 addSubview:v9];

      _compatibilityController3 = [(UICompatibilityInputViewController *)self _compatibilityController];
      _compatView3 = [_compatibilityController3 _compatView];
      [_compatView3 setSnapshotView:v9];
    }
  }
}

- (void)shouldUpdateInputMode:(id)mode
{
  modeCopy = mode;
  userInfo = [modeCopy userInfo];
  v5 = [userInfo objectForKey:@"UICompatibilityInputViewControllerScreenKey"];

  if (v5)
  {
    _responderWindow = [(UIResponder *)self _responderWindow];
    screen = [_responderWindow screen];
    if (screen)
    {
      v8 = screen;
      _responderWindow2 = [(UIResponder *)self _responderWindow];
      screen2 = [_responderWindow2 screen];

      if (v5 != screen2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  userInfo2 = [modeCopy userInfo];
  v12 = [userInfo2 objectForKey:@"UICompatibilityInputViewControllerInputModeKey"];

  if (v12)
  {
    [(UICompatibilityInputViewController *)self setInputMode:v12];
  }

LABEL_9:
}

- (id)_systemViewControllerForInputMode:(id)mode
{
  modeCopy = mode;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [modeCopy viewControllerClass]) != 0)
  {
    v6 = objc_alloc_init(v5);
    view = [(UIViewController *)self view];
    _inheritedRenderConfig = [view _inheritedRenderConfig];
    if ([_inheritedRenderConfig lightKeyboard])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    traitOverrides = [v6 traitOverrides];
    [traitOverrides setUserInterfaceStyle:v9];
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
      identifier = [(UIKeyboardInputMode *)self->_inputMode identifier];
      objc_initWeak(&location, identifier);

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
          preferencesActions = [v13 preferencesActions];
          v15 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode = [v15 currentInputMode];
          identifier2 = [currentInputMode identifier];
          [preferencesActions setLanguageAwareInputModeLastUsed:identifier2];
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
  extension = [(UIKeyboardInputMode *)self->_inputMode extension];
  [extension setRequestInterruptionBlock:0];

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
    currentInputMode = [v4 currentInputMode];

    if (([currentInputMode isDisplayed] & 1) == 0)
    {
      [(UICompatibilityInputViewController *)self setInputMode:currentInputMode];
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

- (void)setInputMode:(id)mode
{
  modeCopy = mode;
  if (qword_1ED49C038 != -1)
  {
    dispatch_once(&qword_1ED49C038, &__block_literal_global_262_0);
  }

  if ([(UIKeyboardInputMode *)modeCopy isExtensionInputMode])
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

  if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode]|| [(UIKeyboardInputMode *)modeCopy isExtensionInputMode])
  {
    v8 = 0;
  }

  else
  {
    normalizedIdentifier = [(UIKeyboardInputMode *)self->_inputMode normalizedIdentifier];
    if (UIKeyboardInputModeUsesKBStar(normalizedIdentifier))
    {
      normalizedIdentifier2 = [(UIKeyboardInputMode *)modeCopy normalizedIdentifier];
      v8 = UIKeyboardInputModeUsesKBStar(normalizedIdentifier2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (![(UIKeyboardInputMode *)self->_inputMode isEqual:modeCopy]&& !v8)
  {
    goto LABEL_17;
  }

  inputController = [(UICompatibilityInputViewController *)self inputController];
  view = [inputController view];
  superview = [view superview];
  view2 = [(UIViewController *)self view];
  if (superview == view2)
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

  if ([(UIKeyboardInputMode *)modeCopy isExtensionInputMode]&& self->_incomingExtensionInputMode && (Current = CFAbsoluteTimeGetCurrent(), incomingExtensionInputModeTime = self->_incomingExtensionInputModeTime, Current - incomingExtensionInputModeTime > v48) && vabdd_f64(self->_lastSuspendedTime, incomingExtensionInputModeTime) > v48)
  {
    [(UICompatibilityInputViewController *)self killIncomingExtension];
    [(UICompatibilityInputViewController *)self resetInputMode];
  }

  else if (!self->_incomingExtensionInputMode)
  {
    if (!self->_tearingDownInputController || !-[UIKeyboardInputMode isExtensionInputMode](self->_inputMode, "isExtensionInputMode") && (-[UICompatibilityInputViewController inputController](self, "inputController"), v51 = objc_claimAutoreleasedReturnValue(), [v51 view], v52 = objc_claimAutoreleasedReturnValue(), -[UICompatibilityInputViewController _keyboard](self, "_keyboard"), v53 = objc_claimAutoreleasedReturnValue(), v53, v52, v51, v52 == v53))
    {
      [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:0];
      objc_storeStrong(&self->_inputMode, mode);
LABEL_74:
      [(UIKeyboardInputMode *)self->_inputMode setIsDisplayed:1];
      goto LABEL_75;
    }

    [(UICompatibilityInputViewController *)self tearDownInputController];
LABEL_17:
    view3 = [(UIViewController *)self view];
    _rootInputWindowController = [view3 _rootInputWindowController];
    [_rootInputWindowController registerPowerLogEvent:1];

    if ([(UIKeyboardInputMode *)self->_inputMode isExtensionInputMode]&& self->_shouldSuppressRemoteInputController)
    {
      inputMode = self->_inputMode;
    }

    else
    {
      isExtensionInputMode = [(UIKeyboardInputMode *)modeCopy isExtensionInputMode];
      inputMode = modeCopy;
      if (!isExtensionInputMode)
      {
LABEL_22:
        [(UICompatibilityInputViewController *)self tearDownInputController];
        objc_storeStrong(&self->_inputMode, mode);
        if ([(UIKeyboardInputMode *)modeCopy isExtensionInputMode])
        {
          if (!self->_shouldSuppressRemoteInputController && !+[UIKeyboard usesInputSystemUI])
          {
            v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
            keyboardIsForSystemService = [v15 keyboardIsForSystemService];

            if ((keyboardIsForSystemService & 1) == 0)
            {
              objc_storeStrong(&self->_incomingExtensionInputMode, mode);
              self->_incomingExtensionInputModeTime = CFAbsoluteTimeGetCurrent();
              v81[0] = MEMORY[0x1E69E9820];
              v81[1] = 3221225472;
              v81[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_2;
              v81[3] = &unk_1E710E548;
              v81[4] = self;
              extension = [(UIKeyboardInputMode *)modeCopy extension];
              [extension setRequestInterruptionBlock:v81];

              extension2 = [(UIKeyboardInputMode *)modeCopy extension];
              v79[0] = MEMORY[0x1E69E9820];
              v79[1] = 3221225472;
              v79[2] = __51__UICompatibilityInputViewController_setInputMode___block_invoke_4;
              v79[3] = &unk_1E710E570;
              v79[4] = self;
              v80 = modeCopy;
              [extension2 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v79];

              v63 = _MergedGlobals_15_5;
              identifier = [(UIKeyboardInputMode *)self->_incomingExtensionInputMode identifier];
              v65 = [v63 objectForKey:identifier];

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

        identifier2 = [(UIKeyboardInputMode *)modeCopy identifier];
        if ([identifier2 isEqualToString:@"autofillsignup"])
        {
          if (!self->_incomingExtensionInputMode)
          {

LABEL_55:
            v54 = +[UIKeyboardImpl activeInstance];
            _autofillContext = [v54 _autofillContext];

            v55 = [_autofillContext objectForKey:@"_automaticPasswordKeyboard"];

            if (!v55)
            {

              _autofillContext = 0;
            }

            v56 = +[UIKeyboardImpl activeInstance];
            _passwordRules = [v56 _passwordRules];

            if (get_SFAutomaticPasswordInputViewControllerClass() && ![(UIKeyboardInputMode *)self->_inputMode isDisplayed])
            {
              v58 = dispatch_semaphore_create(0);
              v71 = MEMORY[0x1E69E9820];
              v72 = 3221225472;
              v73 = __51__UICompatibilityInputViewController_setInputMode___block_invoke_7;
              v74 = &unk_1E710E598;
              selfCopy = self;
              v76 = modeCopy;
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
                  [get_SFAutomaticPasswordInputViewControllerClass() inputViewControllerWithAutoFillContext:_autofillContext passwordRules:_passwordRules completion:v60];
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

        if ([(UIKeyboardInputMode *)modeCopy isExtensionInputMode])
        {
          goto LABEL_74;
        }

        if (!self->_deferredSystemView)
        {
          goto LABEL_74;
        }

        identifier3 = [(UIKeyboardInputMode *)modeCopy identifier];
        v25 = [identifier3 isEqualToString:@"autofillsignup"];

        if (v25)
        {
          goto LABEL_74;
        }

        [(UICompatibilityInputViewController *)self removeSnapshotView];
        v26 = [(UICompatibilityInputViewController *)self _systemViewControllerForInputMode:modeCopy];
        [(UICompatibilityInputViewController *)self setInputController:v26];

        _proxyInterface = [(UIInputViewController *)self _proxyInterface];
        [_proxyInterface setForwardingInterface:0];

        inputController2 = [(UICompatibilityInputViewController *)self inputController];
        [(UIViewController *)self addChildViewController:inputController2];

        view4 = [(UIViewController *)self view];
        inputController3 = [(UICompatibilityInputViewController *)self inputController];
        view5 = [inputController3 view];
        [view4 addSubview:view5];

        _compatView = [(UICompatibilityInputViewController *)self _compatView];
        inputController4 = [(UICompatibilityInputViewController *)self inputController];
        view6 = [inputController4 view];
        [_compatView setTouchableView:view6];

        inputController5 = [(UICompatibilityInputViewController *)self inputController];
        [inputController5 didMoveToParentViewController:self];

        [(UICompatibilityInputViewController *)self rebuildChildConstraints];
        if (![(UIKeyboard *)self->_deferredSystemView isActive])
        {
          [(UIKeyboard *)self->_deferredSystemView activate];
        }

        inputController6 = [(UICompatibilityInputViewController *)self inputController];
        view7 = [inputController6 view];
        [view7 frame];
        _autofillContext = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v38, v39];

        [_autofillContext setSplitWidthsChanged:1];
        [_autofillContext setUpdateAssistantView:1];
        view8 = [(UIViewController *)self view];
        superview2 = [view8 superview];
        [superview2 _didChangeKeyplaneWithContext:_autofillContext];

        inputController7 = [(UICompatibilityInputViewController *)self inputController];
        view9 = [inputController7 view];
        view10 = [(UIViewController *)self view];
        _inheritedRenderConfig = [view10 _inheritedRenderConfig];
        [view9 _setRenderConfig:_inheritedRenderConfig];

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
  inputController = [(UICompatibilityInputViewController *)self inputController];
  view = [inputController view];

  return view;
}

- (void)keyboardWillChangeFromDelegate:(id)delegate toDelegate:(id)toDelegate
{
  delegateCopy = delegate;
  toDelegateCopy = toDelegate;
  inputController = [(UICompatibilityInputViewController *)self inputController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    inputController2 = [(UICompatibilityInputViewController *)self inputController];
    [inputController2 keyboardWillChangeFromDelegate:delegateCopy toDelegate:toDelegateCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = UICompatibilityInputViewController;
  [(UIViewController *)&v6 viewWillDisappear:disappear];
  v3 = +[UIInputSwitcherView activeInstance];
  isVisible = [v3 isVisible];

  if (isVisible)
  {
    v5 = +[UIInputSwitcherView activeInstance];
    [v5 hide];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = UICompatibilityInputViewController;
  [(UIViewController *)&v7 viewWillAppear:appear];
  _keyboardForThisViewController = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  isActive = [_keyboardForThisViewController isActive];

  if ((isActive & 1) == 0)
  {
    _keyboardForThisViewController2 = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
    [_keyboardForThisViewController2 activate];
  }
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _keyboardForThisViewController = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  isActive = [_keyboardForThisViewController isActive];

  if (isActive)
  {
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 prepareLayoutForInterfaceOrientation:orientation];
  }

  inputController = [(UICompatibilityInputViewController *)self inputController];
  if (inputController)
  {
    goto LABEL_4;
  }

  childViewControllers = [(UIViewController *)self childViewControllers];
  v13 = [childViewControllers count];

  if (v13)
  {
    _compatView = [(UICompatibilityInputViewController *)self _compatView];
    inputController = [_compatView touchableView];

    if ([inputController _hasAutolayoutHeightConstraint])
    {
      if (inputController)
      {
        _disableLayoutFlushingCount = [inputController _disableLayoutFlushingCount];
        if (_disableLayoutFlushingCount >= 1)
        {
          v16 = _disableLayoutFlushingCount + 1;
        }

        else
        {
          v16 = 1;
        }

        [inputController _setDisableLayoutFlushingCount:v16];
        [inputController _disableLayoutFlushing];
      }

      [inputController _removeAutolayoutSizingConstraints];
      self->_shouldRegenerateSizingConstraints = 1;
    }

LABEL_4:
  }

  v10 = +[UIInputSwitcherView activeInstance];
  isVisible = [v10 isVisible];

  if (isVisible)
  {
    v17 = +[UIInputSwitcherView activeInstance];
    [v17 hide];
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _keyboardForThisViewController = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  isActive = [_keyboardForThisViewController isActive];

  if (isActive)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 updateLayoutToCurrentInterfaceOrientation];
  }

  else
  {
    deferredSystemView = self->_deferredSystemView;

    [(UIKeyboard *)deferredSystemView setOrientation:orientation];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  _keyboardForThisViewController = [(UICompatibilityInputViewController *)self _keyboardForThisViewController];
  isActive = [_keyboardForThisViewController isActive];

  if (isActive)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 finishLayoutToCurrentInterfaceOrientation];
  }

  inputController = [(UICompatibilityInputViewController *)self inputController];
  if (!inputController)
  {
    childViewControllers = [(UIViewController *)self childViewControllers];
    v9 = [childViewControllers count];

    if (!v9 || !self->_shouldRegenerateSizingConstraints)
    {
      return;
    }

    self->_shouldRegenerateSizingConstraints = 0;
    _compatView = [(UICompatibilityInputViewController *)self _compatView];
    touchableView = [_compatView touchableView];

    [touchableView _convertToAutolayoutSizingIfNecessary];
    [(UIView *)touchableView _popDisableLayoutFlushing];
    inputController = touchableView;
  }
}

- (void)willBeginTranslation
{
  _keyboard = [(UICompatibilityInputViewController *)self _keyboard];
  isActive = [_keyboard isActive];

  if (isActive)
  {
    if (![(UIInputViewController *)self _isPlaceholder])
    {
      blinkAssertion = [(UICompatibilityInputViewController *)self blinkAssertion];
      [blinkAssertion invalidate];

      v6 = +[UIKeyboardImpl activeInstance];
      _activeAssertionController = [v6 _activeAssertionController];
      v8 = [_activeAssertionController nonBlinkingAssertionWithReason:@"Split/Floating Keyboard Translation"];
      [(UICompatibilityInputViewController *)self setBlinkAssertion:v8];

      v9 = +[UIKeyboardImpl activeInstance];
      autocorrectPrompt = [v9 autocorrectPrompt];

      if (autocorrectPrompt)
      {
        v11 = +[UIKeyboardImpl activeInstance];
        [v11 prepareForGeometryChange];
      }
    }

    _keyboard2 = [(UICompatibilityInputViewController *)self _keyboard];
    if (_keyboard2)
    {
      v13 = _keyboard2;
      v14 = +[UIKeyboardImpl activeInstance];
      showsCandidateBar = [v14 showsCandidateBar];

      if (showsCandidateBar)
      {
        v16 = +[UIKeyboardImpl activeInstance];
        candidateController = [v16 candidateController];

        if ([candidateController barIsExtended])
        {
          [candidateController collapse];
        }
      }
    }

    v19 = +[UIKeyboardImpl activeInstance];
    _layout = [v19 _layout];
    [_layout deactivateActiveKeys];
  }
}

- (void)finishSplitTransition:(BOOL)transition
{
  if (![(UIInputViewController *)self _isPlaceholder])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__UICompatibilityInputViewController_finishSplitTransition___block_invoke;
    aBlock[3] = &__block_descriptor_33_e5_v8__0l;
    transitionCopy = transition;
    v5 = _Block_copy(aBlock);
    _keyboard = [(UICompatibilityInputViewController *)self _keyboard];
    isActive = [_keyboard isActive];

    if (isActive)
    {
      v5[2](v5);
    }

    else
    {
      _keyboard2 = [(UICompatibilityInputViewController *)self _keyboard];
      v9 = +[UIKeyboard activeKeyboard];

      if (_keyboard2 == v9)
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
  _keyboard = [(UICompatibilityInputViewController *)self _keyboard];
  if ([_keyboard isActive])
  {
    _isPlaceholder = [(UIInputViewController *)self _isPlaceholder];

    if (_isPlaceholder)
    {
      return;
    }

    blinkAssertion = [(UICompatibilityInputViewController *)self blinkAssertion];
    [blinkAssertion invalidate];

    [(UICompatibilityInputViewController *)self setBlinkAssertion:0];
    v5 = +[UIKeyboardImpl activeInstance];
    LODWORD(blinkAssertion) = [v5 geometryIsChanging];

    if (!blinkAssertion)
    {
      return;
    }

    _keyboard = +[UIKeyboardImpl activeInstance];
    [_keyboard geometryChangeDone:1];
  }
}

- (void)_tvUpdateAppearanceForUserInterfaceStyle
{
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v6 = userInterfaceStyle != 2 && userInterfaceStyle != 1000;
  view = [(UIViewController *)self view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];
  v10 = [_inheritedRenderConfig copy];

  [v10 setLightKeyboard:v6];
  view2 = [(UIViewController *)self view];
  [view2 _setRenderConfig:v10];
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
    view = [(UIViewController *)self view];
    [view addLayoutGuide:v12];

    v26 = MEMORY[0x1E69977A0];
    topAnchor = [(UILayoutGuide *)v12 topAnchor];
    view2 = [(UIViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];
    v34[0] = v30;
    leftAnchor = [(UILayoutGuide *)v12 leftAnchor];
    view3 = [(UIViewController *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v7];
    v34[1] = v25;
    view4 = [(UIViewController *)self view];
    bottomAnchor = [view4 bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)v12 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v9];
    v34[2] = v15;
    view5 = [(UIViewController *)self view];
    rightAnchor = [view5 rightAnchor];
    rightAnchor2 = [(UILayoutGuide *)v12 rightAnchor];
    v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v11];
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