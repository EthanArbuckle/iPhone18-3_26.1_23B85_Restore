@interface _UIDatePickerNumericKeyboardViewController
- (_UIDatePickerNumericKeyboardViewController)init;
- (void)_updateKeyboardRenderConfiguration;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v4 = [(UIViewController *)v3 popoverPresentationController];
    [v4 _setIgnoresKeyboardNotifications:1];
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
  v6 = [(UIViewController *)self view];
  [v6 addSubview:self->_keyboard];

  v7 = [(UIViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];

  v19 = MEMORY[0x1E69977A0];
  v24 = [(UIView *)self->_keyboard topAnchor];
  v23 = [v8 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(UIView *)self->_keyboard leadingAnchor];
  v20 = [v8 leadingAnchor];
  v9 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v9;
  v10 = [(UIView *)self->_keyboard trailingAnchor];
  v11 = [v8 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v27[2] = v12;
  v13 = [(UIView *)self->_keyboard bottomAnchor];
  v14 = [v8 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v19 activateConstraints:v16];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v18 = [(UIViewController *)self registerForTraitChanges:v17 withAction:sel__updateKeyboardRenderConfiguration];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = _UIDatePickerNumericKeyboardViewController;
  [(UIViewController *)&v16 viewWillAppear:a3];
  v4 = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [v4 updateLayout];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 _layout];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:0 idiom:320.0];
    v12 = [v6 keyboardName];
    v13 = [UIKeyboardLayoutStar keyboardWithName:v12 screenTraits:v11];

    [v13 frame];
    v8 = v14;
    v10 = v15 + 17.0;
  }

  [(UIViewController *)self setPreferredContentSize:v8, v10];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerNumericKeyboardViewController;
  [(UIViewController *)&v5 viewWillDisappear:a3];
  v4 = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [v4 deactivate];
}

- (void)_updateKeyboardRenderConfiguration
{
  v3 = [UITextInputTraits configuredAppearanceForAppearance:0 withTraitEnvironment:self];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  v8 = [UIKBRenderConfig configForAppearance:v3 inputMode:v5 traitEnvironment:0];

  v6 = [(_UIDatePickerNumericKeyboardViewController *)self keyboard];
  [v6 _setRenderConfig:v8];

  v7 = [(UIViewController *)self view];
  [v7 setNeedsLayout];
}

@end