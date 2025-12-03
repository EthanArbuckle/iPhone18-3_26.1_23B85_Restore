@interface _UIDatePickerNumericKeyboardViewController
- (_UIDatePickerNumericKeyboardViewController)init;
- (void)_updateKeyboardRenderConfiguration;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UIDatePickerNumericKeyboardViewController

- (_UIDatePickerNumericKeyboardViewController)init
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerNumericKeyboardViewController;
  v2 = [(UIViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UIViewController *)v2 setModalPresentationStyle:7];
    popoverPresentationController = [(UIViewController *)v3 popoverPresentationController];
    [popoverPresentationController _setIgnoresKeyboardNotifications:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = _UIDatePickerNumericKeyboardViewController;
  [(UIViewController *)&v25 viewDidLoad];
  v3 = [UIKeyboard alloc];
  v4 = [(UIKeyboard *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  keyboard = self->_keyboard;
  self->_keyboard = v4;

  [(UIView *)self->_keyboard setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(UIViewController *)self view];
  [view addSubview:self->_keyboard];

  view2 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];

  v19 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)self->_keyboard topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  leadingAnchor = [(UIView *)self->_keyboard leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[1] = v9;
  trailingAnchor = [(UIView *)self->_keyboard trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[2] = v12;
  bottomAnchor = [(UIView *)self->_keyboard bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v19 activateConstraints:v16];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v18 = [(UIViewController *)self registerForTraitChanges:v17 withAction:sel__updateKeyboardRenderConfiguration];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = _UIDatePickerNumericKeyboardViewController;
  [(UIViewController *)&v16 viewWillAppear:appear];
  keyboard = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [keyboard updateLayout];

  v5 = +[UIKeyboardImpl activeInstance];
  _layout = [v5 _layout];

  [_layout frame];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:0 idiom:320.0];
    keyboardName = [_layout keyboardName];
    v13 = [UIKeyboardLayoutStar keyboardWithName:keyboardName screenTraits:v11];

    [v13 frame];
    v8 = v14;
    v10 = v15 + 17.0;
  }

  [(UIViewController *)self setPreferredContentSize:v8, v10];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerNumericKeyboardViewController;
  [(UIViewController *)&v5 viewWillDisappear:disappear];
  keyboard = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [keyboard deactivate];
}

- (void)_updateKeyboardRenderConfiguration
{
  v3 = [UITextInputTraits configuredAppearanceForAppearance:0 withTraitEnvironment:self];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];
  v8 = [UIKBRenderConfig configForAppearance:v3 inputMode:currentInputMode traitEnvironment:0];

  keyboard = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [keyboard _setRenderConfig:v8];

  view = [(UIViewController *)self view];
  [view setNeedsLayout];
}

@end