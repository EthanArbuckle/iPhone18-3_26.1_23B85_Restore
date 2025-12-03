@interface UIKeyboardNumberpadPopoverController
- (CGSize)preferredContentSize;
- (UIKeyboardNumberpadPopoverController)initWithTextInputTraits:(id)traits keyboardInputMode:(id)mode;
- (void)setContentView:(id)view;
- (void)shouldDismissNotification:(id)notification;
- (void)showKeyboardLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UIKeyboardNumberpadPopoverController

- (UIKeyboardNumberpadPopoverController)initWithTextInputTraits:(id)traits keyboardInputMode:(id)mode
{
  traitsCopy = traits;
  modeCopy = mode;
  v18.receiver = self;
  v18.super_class = UIKeyboardNumberpadPopoverController;
  v9 = [(UIKeyboardPopoverController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyboardInputMode, mode);
    objc_storeStrong(&v10->_textInputTraits, traits);
    v11 = [UIKBScreenTraits traitsForPopoverEmulatingWidth:1 minorEdge:1 orientation:0 idiom:267.0];
    screenTraits = v10->_screenTraits;
    v10->_screenTraits = v11;

    identifier = [(UIKeyboardInputMode *)v10->_keyboardInputMode identifier];
    v14 = UIKeyboardGetKBStarName(identifier, v10->_screenTraits, 0, 0);

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_shouldDismissNotification_ name:@"UIKeyboardNumberpadPopoverControllerShouldDismiss" object:0];

  v4 = objc_alloc_init(UIKeyboardLayoutStar);
  layout = self->_layout;
  self->_layout = v4;

  [(UIKeyboardLayoutStar *)self->_layout setDelegate:self];
  [(UIKeyboardLayoutStar *)self->_layout setPreventPaddlesForPointerTouches:1];
  [(UIView *)self->_layout setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardNumberpadPopoverController *)self setContentView:self->_layout];
}

- (void)setContentView:(id)view
{
  v49[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v4 = [UIView alloc];
  v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(UIViewController *)self view];
  [view addSubview:v5];

  v28 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)v5 topAnchor];
  view2 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[0] = v37;
  bottomAnchor = [(UIView *)v5 bottomAnchor];
  view3 = [(UIViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[1] = v27;
  leadingAnchor = [(UIView *)v5 leadingAnchor];
  view4 = [(UIViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[2] = v9;
  trailingAnchor = [(UIView *)v5 trailingAnchor];
  view5 = [(UIViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v28 activateConstraints:v15];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v5 addSubview:viewCopy];
  v32 = MEMORY[0x1E69977A0];
  bottomAnchor3 = [viewCopy bottomAnchor];
  safeAreaLayoutGuide5 = [(UIView *)v5 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide5 bottomAnchor];
  v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[0] = v40;
  topAnchor3 = [viewCopy topAnchor];
  safeAreaLayoutGuide6 = [(UIView *)v5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide6 topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v48[1] = v30;
  leadingAnchor3 = [viewCopy leadingAnchor];
  safeAreaLayoutGuide7 = [(UIView *)v5 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide7 leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48[2] = v19;
  trailingAnchor3 = [viewCopy trailingAnchor];

  safeAreaLayoutGuide8 = [(UIView *)v5 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide8 trailingAnchor];
  v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v48[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  [v32 activateConstraints:v24];
}

- (CGSize)preferredContentSize
{
  dynamicLayout = [(UIKBTree *)self->_keyboard dynamicLayout];
  v3 = 320.0;
  if (dynamicLayout)
  {
    v3 = 267.0;
  }

  v4 = 220.0;
  if (dynamicLayout)
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
  _inheritedRenderConfig = [(UIView *)self->_layout _inheritedRenderConfig];
  v4 = _inheritedRenderConfig;
  if (_inheritedRenderConfig)
  {
    v5 = _inheritedRenderConfig;
  }

  else
  {
    v5 = +[UIKBRenderConfig defaultConfig];
  }

  v6 = v5;

  v9 = [v6 copy];
  layout = self->_layout;
  identifier = [(UIKeyboardInputMode *)self->_keyboardInputMode identifier];
  [(UIKeyboardLayoutStar *)layout showKeyboardWithInputMode:identifier renderConfig:v9 inputTraits:self->_textInputTraits screenTraits:self->_screenTraits splitTraits:0];
}

- (void)shouldDismissNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = notificationCopy;
  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    containerView = [popoverPresentationController containerView];
    view = [object2 view];
    v11 = [(UIView *)containerView _containsView:view];

    if (v11)
    {
      v12 = +[UIKeyboardImpl activeInstance];
      [v12 dismissNumberpadPopover];
    }

    v6 = notificationCopy;
  }
}

@end