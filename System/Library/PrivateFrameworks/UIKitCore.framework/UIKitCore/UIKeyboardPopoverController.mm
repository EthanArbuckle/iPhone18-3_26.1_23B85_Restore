@interface UIKeyboardPopoverController
- (BOOL)isPresented;
- (UIKeyboardPopoverController)init;
- (void)_setupContentView;
- (void)setContentView:(id)view;
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
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
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
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  [(UIKeyboardPopoverController *)self _setupContentView];
}

- (void)setContentView:(id)view
{
  objc_storeStrong(&self->_contentView, view);
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {

    [(UIKeyboardPopoverController *)self _setupContentView];
  }
}

- (void)_setupContentView
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (self->_contentView)
  {
    view = [(UIViewController *)self view];
    [view addSubview:self->_contentView];

    [(UIView *)self->_contentView setNeedsLayout];
    v16 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)self->_contentView topAnchor];
    view2 = [(UIViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v21;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    view3 = [(UIViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[1] = v15;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    view4 = [(UIViewController *)self view];
    safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[2] = v7;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    view5 = [(UIViewController *)self view];
    safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v16 activateConstraints:v13];
  }
}

@end