@interface _UISearchControllerLimitedUIShieldViewController
- (void)_backButtonPressed:(id)pressed;
- (void)dealloc;
- (void)loadView;
@end

@implementation _UISearchControllerLimitedUIShieldViewController

- (void)dealloc
{
  dismissAction = self->_dismissAction;
  self->_dismissAction = 0;

  v4.receiver = self;
  v4.super_class = _UISearchControllerLimitedUIShieldViewController;
  [(UIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [_UISearchControllerLimitedAccessView alloc];
  v4 = [(_UISearchControllerLimitedAccessView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_UISearchControllerLimitedUIShieldViewController *)self setLimitedAccessView:v4];

  limitedAccessView = [(_UISearchControllerLimitedUIShieldViewController *)self limitedAccessView];
  backButton = [limitedAccessView backButton];
  [backButton addTarget:self action:sel__backButtonPressed_ forControlEvents:0x2000];

  limitedAccessView2 = [(_UISearchControllerLimitedUIShieldViewController *)self limitedAccessView];
  [(UIViewController *)self setView:limitedAccessView2];
}

- (void)_backButtonPressed:(id)pressed
{
  dismissAction = [(_UISearchControllerLimitedUIShieldViewController *)self dismissAction];

  if (dismissAction)
  {
    dismissAction2 = [(_UISearchControllerLimitedUIShieldViewController *)self dismissAction];
    dismissAction2[2]();
  }
}

@end