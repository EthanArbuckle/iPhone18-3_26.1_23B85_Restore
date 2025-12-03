@interface PRUISInlinePosterEditingPlaceholderViewController
- (PRUISInlinePosterEditingPlaceholderViewControllerDelegate)delegate;
- (void)_dismissRecognizerTapped:(id)tapped;
- (void)_updateBackgroundColorForWindow:(id)window;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation PRUISInlinePosterEditingPlaceholderViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__dismissRecognizerTapped_];
  view = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  [view addGestureRecognizer:v3];
}

- (void)_dismissRecognizerTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained placeholderViewController:self requestsDismissalWithAnimation:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v6 viewWillAppear:appear];
  view = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  window = [view window];
  [(PRUISInlinePosterEditingPlaceholderViewController *)self _updateBackgroundColorForWindow:window];
}

- (void)viewWillMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  windowCopy = window;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v5 viewWillMoveToWindow:windowCopy];
  [(PRUISInlinePosterEditingPlaceholderViewController *)self _updateBackgroundColorForWindow:windowCopy, v5.receiver, v5.super_class];
}

- (void)_updateBackgroundColorForWindow:(id)window
{
  windowScene = [window windowScene];
  screen = [windowScene screen];
  displayConfiguration = [screen displayConfiguration];
  isExternal = [displayConfiguration isExternal];

  view = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  if (isExternal)
  {
    v11 = view;
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v10 = [systemGrayColor colorWithAlphaComponent:0.5];
    [v11 setBackgroundColor:v10];

    view = v11;
  }
}

- (PRUISInlinePosterEditingPlaceholderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end