@interface _UISearchControllerLimitedUIShieldViewController
- (void)_backButtonPressed:(id)a3;
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

  v5 = [(_UISearchControllerLimitedUIShieldViewController *)self limitedAccessView];
  v6 = [v5 backButton];
  [v6 addTarget:self action:sel__backButtonPressed_ forControlEvents:0x2000];

  v7 = [(_UISearchControllerLimitedUIShieldViewController *)self limitedAccessView];
  [(UIViewController *)self setView:v7];
}

- (void)_backButtonPressed:(id)a3
{
  v4 = [(_UISearchControllerLimitedUIShieldViewController *)self dismissAction];

  if (v4)
  {
    v5 = [(_UISearchControllerLimitedUIShieldViewController *)self dismissAction];
    v5[2]();
  }
}

@end