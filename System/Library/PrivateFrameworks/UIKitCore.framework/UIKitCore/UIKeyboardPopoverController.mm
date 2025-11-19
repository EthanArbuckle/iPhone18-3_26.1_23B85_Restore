@interface UIKeyboardPopoverController
- (BOOL)isPresented;
- (UIKeyboardPopoverController)init;
- (void)_setupContentView;
- (void)setContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation UIKeyboardPopoverController

- (UIKeyboardPopoverController)init
{
  v3.receiver = self;
  v3.super_class = UIKeyboardPopoverController;
  return [(UIViewController *)&v3 initWithNibName:0 bundle:0];
}

- (BOOL)isPresented
{
  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    v4 = ![(UIViewController *)self isBeingDismissed];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIKeyboardPopoverController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(UIKeyboardPopoverController *)self _setupContentView];
}

- (void)setContentView:(id)a3
{
  objc_storeStrong(&self->_contentView, a3);
  v4 = [(UIViewController *)self viewIfLoaded];

  if (v4)
  {

    [(UIKeyboardPopoverController *)self _setupContentView];
  }
}

- (void)_setupContentView
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (self->_contentView)
  {
    v3 = [(UIViewController *)self view];
    [v3 addSubview:self->_contentView];

    [(UIView *)self->_contentView setNeedsLayout];
    v16 = MEMORY[0x1E69977A0];
    v24 = [(UIView *)self->_contentView topAnchor];
    v25 = [(UIViewController *)self view];
    v23 = [v25 safeAreaLayoutGuide];
    v22 = [v23 topAnchor];
    v21 = [v24 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v19 = [(UIView *)self->_contentView bottomAnchor];
    v20 = [(UIViewController *)self view];
    v18 = [v20 safeAreaLayoutGuide];
    v17 = [v18 bottomAnchor];
    v15 = [v19 constraintEqualToAnchor:v17];
    v26[1] = v15;
    v14 = [(UIView *)self->_contentView leadingAnchor];
    v4 = [(UIViewController *)self view];
    v5 = [v4 safeAreaLayoutGuide];
    v6 = [v5 leadingAnchor];
    v7 = [v14 constraintEqualToAnchor:v6];
    v26[2] = v7;
    v8 = [(UIView *)self->_contentView trailingAnchor];
    v9 = [(UIViewController *)self view];
    v10 = [v9 safeAreaLayoutGuide];
    v11 = [v10 trailingAnchor];
    v12 = [v8 constraintEqualToAnchor:v11];
    v26[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v16 activateConstraints:v13];
  }
}

@end