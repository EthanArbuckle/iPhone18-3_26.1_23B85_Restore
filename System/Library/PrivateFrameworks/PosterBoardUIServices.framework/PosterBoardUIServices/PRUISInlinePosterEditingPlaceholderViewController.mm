@interface PRUISInlinePosterEditingPlaceholderViewController
- (PRUISInlinePosterEditingPlaceholderViewControllerDelegate)delegate;
- (void)_dismissRecognizerTapped:(id)a3;
- (void)_updateBackgroundColorForWindow:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillMoveToWindow:(id)a3;
@end

@implementation PRUISInlinePosterEditingPlaceholderViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__dismissRecognizerTapped_];
  v4 = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  [v4 addGestureRecognizer:v3];
}

- (void)_dismissRecognizerTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained placeholderViewController:self requestsDismissalWithAnimation:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v6 viewWillAppear:a3];
  v4 = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  v5 = [v4 window];
  [(PRUISInlinePosterEditingPlaceholderViewController *)self _updateBackgroundColorForWindow:v5];
}

- (void)viewWillMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = PRUISInlinePosterEditingPlaceholderViewController;
  v4 = a3;
  [(PRUISInlinePosterEditingPlaceholderViewController *)&v5 viewWillMoveToWindow:v4];
  [(PRUISInlinePosterEditingPlaceholderViewController *)self _updateBackgroundColorForWindow:v4, v5.receiver, v5.super_class];
}

- (void)_updateBackgroundColorForWindow:(id)a3
{
  v4 = [a3 windowScene];
  v5 = [v4 screen];
  v6 = [v5 displayConfiguration];
  v7 = [v6 isExternal];

  v8 = [(PRUISInlinePosterEditingPlaceholderViewController *)self view];
  if (v7)
  {
    v11 = v8;
    v9 = [MEMORY[0x1E69DC888] systemGrayColor];
    v10 = [v9 colorWithAlphaComponent:0.5];
    [v11 setBackgroundColor:v10];

    v8 = v11;
  }
}

- (PRUISInlinePosterEditingPlaceholderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end