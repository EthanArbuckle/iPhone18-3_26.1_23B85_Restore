@interface _UIDatePickerContainerViewController
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3;
- (_UIDatePickerContainerViewController)initWithPresentation:(id)a3;
- (_UIDatePickerOverlayPresentation)presentation;
- (id)keyCommands;
- (void)_didReceiveEscapeKey:(id)a3;
- (void)dealloc;
- (void)didChangeKeyboardAvoidanceAdjustmentDeferral;
- (void)keyboardFrameWillChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIDatePickerContainerViewController

- (id)keyCommands
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel__didReceiveEscapeKey_];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (_UIDatePickerOverlayPresentation)presentation
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 presentation];

  return v3;
}

- (_UIDatePickerContainerViewController)initWithPresentation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIDatePickerContainerViewController;
  v5 = [(UIViewController *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setPresentation:v4];
    v7 = [v6 passthroughInteraction];
    [v7 setDelegate:v5];

    [(UIViewController *)v5 setView:v6];
    [(UIViewController *)v5 setModalPresentationStyle:5];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel_keyboardFrameWillChange_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardWillChangeFrameNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v4 dealloc];
}

- (void)_didReceiveEscapeKey:(id)a3
{
  v3 = [(_UIDatePickerContainerViewController *)self presentation];
  [v3 dismissPresentationAnimated:1];
}

- (void)keyboardFrameWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v6 doubleValue];
  v8 = v7;

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x4010000000;
  v23[3] = "";
  v24 = 0u;
  v25 = 0u;
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"UIKeyboardFrameEndUserInfoKey"];
  [v10 CGRectValue];
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v15 = [v4 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
  v17 = [v16 integerValue];

  v22[3] = v17;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = fmax(v8, 0.25);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke;
  v20[3] = &unk_1E71290F8;
  v20[4] = self;
  v20[5] = v23;
  v20[6] = v21;
  v20[7] = v22;
  v18 = _Block_copy(v20);
  v19 = [(_UIDatePickerContainerViewController *)self presentation];
  LODWORD(v16) = [v19 defersAutomaticKeyboardAvoidanceAdjustments];

  if (v16)
  {
    [(_UIDatePickerContainerViewController *)self setPendingKeyboardAdjustment:v18];
  }

  else
  {
    v18[2](v18);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
}

- (void)didChangeKeyboardAvoidanceAdjustmentDeferral
{
  v3 = [(_UIDatePickerContainerViewController *)self pendingKeyboardAdjustment];

  if (v3)
  {
    v4 = [(_UIDatePickerContainerViewController *)self pendingKeyboardAdjustment];
    v4[2]();

    [(_UIDatePickerContainerViewController *)self setPendingKeyboardAdjustment:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(_UIDatePickerContainerViewController *)self presentation];
  [v5 dismissPresentationAnimated:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v8 viewDidDisappear:?];
  if ([(UIViewController *)self isBeingDismissed])
  {
    v5 = [(_UIDatePickerContainerViewController *)self presentation];
    v6 = [v5 containerViewController];

    if (v6 == self)
    {
      v7 = [(_UIDatePickerContainerViewController *)self presentation];
      [v7 dismissPresentationAnimated:v3];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v14.receiver = self;
  v14.super_class = _UIDatePickerContainerViewController;
  v6 = a3;
  [(UIViewController *)&v14 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [v6 horizontalSizeClass];
  v8 = [(UIViewController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = [v6 verticalSizeClass];
  v11 = [(UIViewController *)self traitCollection];
  v12 = [v11 verticalSizeClass];

  if (![(UIViewController *)self isBeingPresented]&& (v7 != v9 || v10 != v12))
  {
    v13 = [(_UIDatePickerContainerViewController *)self presentation];
    [v13 dismissPresentationAnimated:0];
  }
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3
{
  v3 = [(_UIDatePickerContainerViewController *)self presentation];
  [v3 dismissPresentationAnimated:1];

  return 1;
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(UIViewController *)self presentedViewController];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(UIViewController *)self view];
    v12 = [(UIViewController *)self _window];
    [v12 convertPoint:v11 fromView:{x, y}];
    v14 = v13;
    v16 = v15;

    [v11 setLastHitTestWasPassedThrough:0];
    v17 = [(UIViewController *)self _window];
    v18 = [v17 hitTest:v8 withEvent:{v14, v16}];

    v10 = [v11 lastHitTestWasPassedThrough];
  }

  return v10;
}

@end