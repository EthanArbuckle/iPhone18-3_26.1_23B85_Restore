@interface UIDictationFloatingStarkView
- (CGPoint)positionForShow;
- (UIDictationFloatingStarkView)initWithFrame:(CGRect)frame;
- (void)dimmingViewWasTapped:(id)tapped;
- (void)endpointButtonPressed;
- (void)finishReturnToKeyboard;
- (void)layoutSubviews;
- (void)prepareForReturnToKeyboard;
- (void)returnToKeyboard;
- (void)setInputViewsHiddenForDictation:(BOOL)dictation;
- (void)setState:(int)state;
- (void)show;
@end

@implementation UIDictationFloatingStarkView

- (UIDictationFloatingStarkView)initWithFrame:(CGRect)frame
{
  v25[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = UIDictationFloatingStarkView;
  v3 = [(UIDictationView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_applicationEnteredBackground name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];

    v6 = [(UIButton *)UIKeyboardDictationStarkDoneButton buttonWithType:0];
    endpointButton = v3->super._endpointButton;
    v3->super._endpointButton = v6;

    [(UIControl *)v3->super._endpointButton addTarget:v3 action:sel_endpointButtonPressed forControlEvents:64];
    [(UIButton *)v3->super._endpointButton setFrame:0.0, 0.0, 143.0, 48.0];
    v23 = *off_1E70EC918;
    v8 = [off_1E70ECC18 systemFontOfSize:20.0];
    v25[0] = v8;
    v24 = *off_1E70EC920;
    v9 = v24;
    v10 = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
    v25[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v23 count:2];

    v12 = _UIKitBundle();
    v13 = [v12 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];

    v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:v11];
    [(UIButton *)v3->super._endpointButton setAttributedTitle:v14 forState:0];
    v15 = [v14 mutableCopy];
    v21 = v9;
    v16 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    v22 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    [v15 addAttributes:v17 range:{0, objc_msgSend(v13, "length")}];
    [(UIButton *)v3->super._endpointButton setAttributedTitle:v15 forState:1];
    v18 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = UIDictationFloatingStarkView;
  [(UIView *)&v22 layoutSubviews];
  window = [(UIView *)self window];
  v4 = __UIStatusBarManagerForWindow(window);
  [v4 statusBarHeight];
  v6 = v5;

  v7 = v6 + 20.0;
  v8 = v6 + 20.0 + 100.0 + 20.0;
  [(UIView *)self frame];
  v10 = v9 * 0.5;
  [(UIView *)self frame];
  v12 = v11 - v8;
  [(UIView *)self->super._endpointButton frame];
  [(UIView *)self->super._endpointButton setCenter:v10, v12 - v13 * 0.5];
  v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v14 scene];
  screen = [scene screen];

  v17 = [screen _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
  integerValue = [v17 integerValue];

  superview = [(UIView *)self->super._endpointButton superview];

  if (integerValue == 2)
  {
    if (superview == self)
    {
      [(UIView *)self->super._endpointButton removeFromSuperview];
    }
  }

  else if (superview != self)
  {
    [(UIView *)self addSubview:self->super._endpointButton];
  }

  [(UIView *)self frame];
  v21 = v20 + -100.0 - v7;
  [(UIView *)self frame];
  [(SUICFlamesView *)self->super._flamesView setFrame:0.0, v21];
  [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
}

- (void)finishReturnToKeyboard
{
  automaticAppearanceWasEnabled = self->super._automaticAppearanceWasEnabled;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v3 setAutomaticAppearanceEnabled:automaticAppearanceWasEnabled];
}

- (void)prepareForReturnToKeyboard
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  self->super._automaticAppearanceWasEnabled = [v3 automaticAppearanceEnabled];

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 setAutomaticAppearanceEnabled:1];
}

- (void)setState:(int)state
{
  v3 = *&state;
  if (state == 2)
  {
    [(UIView *)self bounds];
    v6 = v5;
    SUICFlamesViewClass = getSUICFlamesViewClass();
    flamesView = self->super._flamesView;
    if (flamesView)
    {
      [(SUICFlamesView *)flamesView setFrame:0.0, 0.0, v6, 100.0];
    }

    else
    {
      v9 = [SUICFlamesViewClass alloc];
      mainScreen = [objc_opt_self() mainScreen];
      v11 = [v9 initWithFrame:mainScreen screen:2 fidelity:{0.0, 0.0, v6, 100.0}];
      v12 = self->super._flamesView;
      self->super._flamesView = v11;
    }

    [(SUICFlamesView *)self->super._flamesView setDelegate:self];
    [(SUICFlamesView *)self->super._flamesView setMode:1];
    [(SUICFlamesView *)self->super._flamesView setState:1];
    [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
    [(UIView *)self addSubview:self->super._flamesView];
    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v13 scene];
    screen = [scene screen];

    v16 = [screen _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
    integerValue = [v16 integerValue];

    if (integerValue != 2)
    {
      [(UIView *)self addSubview:self->super._endpointButton];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__UIDictationFloatingStarkView_setState___block_invoke;
    v19[3] = &unk_1E70F3590;
    v19[4] = self;
    [UIView animateWithDuration:0 delay:v19 options:&__block_literal_global_258 animations:0.1 completion:0.0];
    [(UIView *)self setNeedsLayout];
  }

  v18.receiver = self;
  v18.super_class = UIDictationFloatingStarkView;
  [(UIDictationView *)&v18 setState:v3];
}

- (void)setInputViewsHiddenForDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerView = [v4 containerView];

  if (dictationCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__UIDictationFloatingStarkView_setInputViewsHiddenForDictation___block_invoke;
    v12[3] = &unk_1E70F3590;
    v6 = &v13;
    v13 = containerView;
    v7 = containerView;
    [UIView animateWithDuration:v12 animations:&__block_literal_global_261 completion:0.25];
  }

  else
  {
    v8 = +[UIKeyboard activeKeyboard];
    [v8 setMinimized:0];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__UIDictationFloatingStarkView_setInputViewsHiddenForDictation___block_invoke_3;
    v10[3] = &unk_1E70F3590;
    v6 = &v11;
    v11 = containerView;
    v9 = containerView;
    [UIView animateWithDuration:0x20000 delay:v10 options:0 animations:0.25 completion:0.25];
  }
}

void __64__UIDictationFloatingStarkView_setInputViewsHiddenForDictation___block_invoke_2()
{
  v0 = +[UIKeyboard activeKeyboard];
  [v0 setMinimized:1];
}

- (void)dimmingViewWasTapped:(id)tapped
{
  v3 = +[UIDictationController sharedInstance];
  [v3 cancelDictation];
}

- (void)returnToKeyboard
{
  automaticAppearanceWasEnabled = self->super._automaticAppearanceWasEnabled;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 setAutomaticAppearanceEnabled:automaticAppearanceWasEnabled];

  v5 = +[UIPeripheralHost sharedInstance];
  [v5 disableInterfaceAutorotation:0];

  [(UIDictationFloatingStarkView *)self prepareForReturnToKeyboard];
  self->super._keyboardInTransition = 1;
  v6 = +[UIPeripheralHost sharedInstance];
  [v6 disableInterfaceAutorotation:1];

  v7[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__UIDictationFloatingStarkView_returnToKeyboard__block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UIDictationFloatingStarkView_returnToKeyboard__block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0x20000 delay:v8 options:v7 animations:0.125 completion:0.0];
  [(UIDictationFloatingStarkView *)self finishReturnToKeyboard];
}

uint64_t __48__UIDictationFloatingStarkView_returnToKeyboard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setInputViewsHiddenForDictation:0];
  [*(a1 + 32) performSelector:sel_keyboardDidShow_ withObject:0 afterDelay:0.1];
  [*(*(a1 + 32) + 440) removeFromSuperview];
  [*(*(a1 + 32) + 440) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;

  v4 = *(*(a1 + 32) + 416);

  return [v4 removeFromSuperview];
}

- (CGPoint)positionForShow
{
  [(UIDictationView *)self currentScreenSize];
  v3 = v2 * 0.5;
  v5 = v4 * 0.5;
  result.y = v5;
  result.x = v3;
  return result;
}

- (void)show
{
  v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  self->super._automaticAppearanceWasEnabled = [v12 automaticAppearanceEnabled];
  [v12 setAutomaticAppearanceEnabled:0];
  v3 = +[UIPeripheralHost sharedInstance];
  [v3 disableInterfaceAutorotation:1];

  containerWindow = [v12 containerWindow];
  [containerWindow beginDisablingInterfaceAutorotation];

  [(UIDictationFloatingStarkView *)self setInputViewsHiddenForDictation:1];
  v5 = +[UIWindowScene _keyWindowScene];
  v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v5];

  +[UIDictationView viewSize];
  v8 = v7;
  v10 = v9;
  [v6 frame];
  [(UIView *)self setFrame:0.0, v11 - v10, v8, v10];
  [v6 addSubview:self];
  [(UIView *)self setAlpha:1.0];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self->super._endpointButton setAlpha:0.0];
}

- (void)endpointButtonPressed
{
  v2 = +[UIDictationController sharedInstance];
  [v2 stopDictation];
}

@end