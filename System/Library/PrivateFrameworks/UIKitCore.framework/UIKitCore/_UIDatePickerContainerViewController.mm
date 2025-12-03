@interface _UIDatePickerContainerViewController
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize;
- (_UIDatePickerContainerViewController)initWithPresentation:(id)presentation;
- (_UIDatePickerOverlayPresentation)presentation;
- (id)keyCommands;
- (void)_didReceiveEscapeKey:(id)key;
- (void)dealloc;
- (void)didChangeKeyboardAvoidanceAdjustmentDeferral;
- (void)keyboardFrameWillChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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
  view = [(UIViewController *)self view];
  presentation = [view presentation];

  return presentation;
}

- (_UIDatePickerContainerViewController)initWithPresentation:(id)presentation
{
  presentationCopy = presentation;
  v10.receiver = self;
  v10.super_class = _UIDatePickerContainerViewController;
  v5 = [(UIViewController *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setPresentation:presentationCopy];
    passthroughInteraction = [v6 passthroughInteraction];
    [passthroughInteraction setDelegate:v5];

    [(UIViewController *)v5 setView:v6];
    [(UIViewController *)v5 setModalPresentationStyle:5];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_keyboardFrameWillChange_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardWillChangeFrameNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v4 dealloc];
}

- (void)_didReceiveEscapeKey:(id)key
{
  presentation = [(_UIDatePickerContainerViewController *)self presentation];
  [presentation dismissPresentationAnimated:1];
}

- (void)keyboardFrameWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v6 doubleValue];
  v8 = v7;

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x4010000000;
  v23[3] = "";
  v24 = 0u;
  v25 = 0u;
  userInfo2 = [changeCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"UIKeyboardFrameEndUserInfoKey"];
  [v10 CGRectValue];
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  userInfo3 = [changeCopy userInfo];
  v16 = [userInfo3 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
  integerValue = [v16 integerValue];

  v22[3] = integerValue;
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
  presentation = [(_UIDatePickerContainerViewController *)self presentation];
  LODWORD(v16) = [presentation defersAutomaticKeyboardAvoidanceAdjustments];

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
  pendingKeyboardAdjustment = [(_UIDatePickerContainerViewController *)self pendingKeyboardAdjustment];

  if (pendingKeyboardAdjustment)
  {
    pendingKeyboardAdjustment2 = [(_UIDatePickerContainerViewController *)self pendingKeyboardAdjustment];
    pendingKeyboardAdjustment2[2]();

    [(_UIDatePickerContainerViewController *)self setPendingKeyboardAdjustment:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  presentation = [(_UIDatePickerContainerViewController *)self presentation];
  [presentation dismissPresentationAnimated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = _UIDatePickerContainerViewController;
  [(UIViewController *)&v8 viewDidDisappear:?];
  if ([(UIViewController *)self isBeingDismissed])
  {
    presentation = [(_UIDatePickerContainerViewController *)self presentation];
    containerViewController = [presentation containerViewController];

    if (containerViewController == self)
    {
      presentation2 = [(_UIDatePickerContainerViewController *)self presentation];
      [presentation2 dismissPresentationAnimated:disappearCopy];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v14.receiver = self;
  v14.super_class = _UIDatePickerContainerViewController;
  collectionCopy = collection;
  [(UIViewController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection2 = [(UIViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection2 verticalSizeClass];

  if (![(UIViewController *)self isBeingPresented]&& (horizontalSizeClass != horizontalSizeClass2 || verticalSizeClass != verticalSizeClass2))
  {
    presentation = [(_UIDatePickerContainerViewController *)self presentation];
    [presentation dismissPresentationAnimated:0];
  }
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize
{
  presentation = [(_UIDatePickerContainerViewController *)self presentation];
  [presentation dismissPresentationAnimated:1];

  return 1;
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  presentedViewController = [(UIViewController *)self presentedViewController];

  if (presentedViewController)
  {
    lastHitTestWasPassedThrough = 0;
  }

  else
  {
    view = [(UIViewController *)self view];
    _window = [(UIViewController *)self _window];
    [_window convertPoint:view fromView:{x, y}];
    v14 = v13;
    v16 = v15;

    [view setLastHitTestWasPassedThrough:0];
    _window2 = [(UIViewController *)self _window];
    v18 = [_window2 hitTest:eventCopy withEvent:{v14, v16}];

    lastHitTestWasPassedThrough = [view lastHitTestWasPassedThrough];
  }

  return lastHitTestWasPassedThrough;
}

@end