@interface UIKeyboardNumberpadPopoverController
- (CGSize)preferredContentSize;
- (UIKeyboardNumberpadPopoverController)initWithTextInputTraits:(id)a3 keyboardInputMode:(id)a4;
- (void)setContentView:(id)a3;
- (void)shouldDismissNotification:(id)a3;
- (void)showKeyboardLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UIKeyboardNumberpadPopoverController

- (UIKeyboardNumberpadPopoverController)initWithTextInputTraits:(id)a3 keyboardInputMode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = UIKeyboardNumberpadPopoverController;
  v9 = [(UIKeyboardPopoverController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyboardInputMode, a4);
    objc_storeStrong(&v10->_textInputTraits, a3);
    v11 = [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:0 idiom:267.0];
    screenTraits = v10->_screenTraits;
    v10->_screenTraits = v11;

    v13 = [(UIKeyboardInputMode *)v10->_keyboardInputMode identifier];
    v14 = UIKeyboardGetKBStarName(v13, v10->_screenTraits, 0, 0);

    v15 = [UIKeyboardLayoutStar keyboardWithName:v14 screenTraits:v10->_screenTraits];
    keyboard = v10->_keyboard;
    v10->_keyboard = v15;
  }

  return v10;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UIKeyboardNumberpadPopoverController;
  [(UIKeyboardPopoverController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_shouldDismissNotification_ name:@"UIKeyboardNumberpadPopoverControllerShouldDismiss" object:0];

  v4 = objc_alloc_init(UIKeyboardLayoutStar);
  layout = self->_layout;
  self->_layout = v4;

  [(UIKeyboardLayoutStar *)self->_layout setDelegate:self];
  [(UIKeyboardLayoutStar *)self->_layout setPreventPaddlesForPointerTouches:1];
  [(UIView *)self->_layout setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardNumberpadPopoverController *)self setContentView:self->_layout];
}

- (void)setContentView:(id)a3
{
  v49[4] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v4 = [UIView alloc];
  v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(UIViewController *)self view];
  [v6 addSubview:v5];

  v28 = MEMORY[0x1E69977A0];
  v43 = [(UIView *)v5 topAnchor];
  v45 = [(UIViewController *)self view];
  v41 = [v45 safeAreaLayoutGuide];
  v39 = [v41 topAnchor];
  v37 = [v43 constraintEqualToAnchor:v39];
  v49[0] = v37;
  v33 = [(UIView *)v5 bottomAnchor];
  v35 = [(UIViewController *)self view];
  v31 = [v35 safeAreaLayoutGuide];
  v29 = [v31 bottomAnchor];
  v27 = [v33 constraintEqualToAnchor:v29];
  v49[1] = v27;
  v25 = [(UIView *)v5 leadingAnchor];
  v26 = [(UIViewController *)self view];
  v7 = [v26 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v25 constraintEqualToAnchor:v8];
  v49[2] = v9;
  v10 = [(UIView *)v5 trailingAnchor];
  v11 = [(UIViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v49[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v28 activateConstraints:v15];

  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v5 addSubview:v47];
  v32 = MEMORY[0x1E69977A0];
  v44 = [v47 bottomAnchor];
  v46 = [(UIView *)v5 safeAreaLayoutGuide];
  v42 = [v46 bottomAnchor];
  v40 = [v44 constraintEqualToAnchor:v42];
  v48[0] = v40;
  v36 = [v47 topAnchor];
  v38 = [(UIView *)v5 safeAreaLayoutGuide];
  v34 = [v38 topAnchor];
  v30 = [v36 constraintEqualToAnchor:v34];
  v48[1] = v30;
  v16 = [v47 leadingAnchor];
  v17 = [(UIView *)v5 safeAreaLayoutGuide];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v48[2] = v19;
  v20 = [v47 trailingAnchor];

  v21 = [(UIView *)v5 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v48[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  [v32 activateConstraints:v24];
}

- (CGSize)preferredContentSize
{
  v2 = [(UIKBTree *)self->_keyboard dynamicLayout];
  v3 = 320.0;
  if (v2)
  {
    v3 = 267.0;
  }

  v4 = 220.0;
  if (v2)
  {
    v4 = 248.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKeyboardNumberpadPopoverController;
  [(UIViewController *)&v3 viewDidLayoutSubviews];
  if (!self->_shownKeyboardLayout)
  {
    self->_shownKeyboardLayout = 1;
    [(UIKeyboardNumberpadPopoverController *)self showKeyboardLayout];
  }
}

- (void)showKeyboardLayout
{
  v3 = [(UIView *)self->_layout _inheritedRenderConfig];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[UIKBRenderConfig defaultConfig];
  }

  v6 = v5;

  v9 = [v6 copy];
  layout = self->_layout;
  v8 = [(UIKeyboardInputMode *)self->_keyboardInputMode identifier];
  [(UIKeyboardLayoutStar *)layout showKeyboardWithInputMode:v8 renderConfig:v9 inputTraits:self->_textInputTraits screenTraits:self->_screenTraits splitTraits:0];
}

- (void)shouldDismissNotification:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v13;
  if (isKindOfClass)
  {
    v7 = [v13 object];
    v8 = [(UIViewController *)self popoverPresentationController];
    v9 = [v8 containerView];
    v10 = [v7 view];
    v11 = [(UIView *)v9 _containsView:v10];

    if (v11)
    {
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 dismissNumberpadPopover];
    }

    v6 = v13;
  }
}

@end