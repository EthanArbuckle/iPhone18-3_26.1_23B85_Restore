@interface PKPaymentTransactionAppProtectionShieldCell
- (void)configureWithParentViewController:(id)controller;
- (void)prepareForReuse;
- (void)setShieldConfiguration:(id)configuration;
- (void)setupAppProtectionShieldController;
@end

@implementation PKPaymentTransactionAppProtectionShieldCell

- (void)setupAppProtectionShieldController
{
  v33[5] = *MEMORY[0x1E69E9840];
  if (self->_shieldConfiguration)
  {
    v3 = [PKAppProtectionShieldViewController createShieldViewControllerWithConfiguration:?];
    shieldViewController = self->_shieldViewController;
    self->_shieldViewController = v3;

    contentView = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    view = [(UIViewController *)self->_shieldViewController view];
    [contentView addSubview:view];

    view2 = [(UIViewController *)self->_shieldViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = MEMORY[0x1E696ACD8];
    view3 = [(UIViewController *)self->_shieldViewController view];
    topAnchor = [view3 topAnchor];
    contentView2 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:36.0];
    v33[0] = v28;
    view4 = [(UIViewController *)self->_shieldViewController view];
    leadingAnchor = [view4 leadingAnchor];
    contentView3 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[1] = v23;
    view5 = [(UIViewController *)self->_shieldViewController view];
    trailingAnchor = [view5 trailingAnchor];
    contentView4 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[2] = v8;
    view6 = [(UIViewController *)self->_shieldViewController view];
    bottomAnchor = [view6 bottomAnchor];
    contentView5 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v13;
    view7 = [(UIViewController *)self->_shieldViewController view];
    heightAnchor = [view7 heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:160.0];
    v33[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
    [v22 activateConstraints:v17];
  }
}

- (void)configureWithParentViewController:(id)controller
{
  shieldViewController = self->_shieldViewController;
  if (shieldViewController)
  {
    controllerCopy = controller;
    [controllerCopy addChildViewController:shieldViewController];
    [(UIViewController *)self->_shieldViewController didMoveToParentViewController:controllerCopy];
  }
}

- (void)setShieldConfiguration:(id)configuration
{
  objc_storeStrong(&self->_shieldConfiguration, configuration);

  [(PKPaymentTransactionAppProtectionShieldCell *)self setupAppProtectionShieldController];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKPaymentTransactionAppProtectionShieldCell;
  [(PKPaymentTransactionAppProtectionShieldCell *)&v7 prepareForReuse];
  shieldViewController = self->_shieldViewController;
  if (shieldViewController)
  {
    [(UIViewController *)shieldViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_shieldViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_shieldViewController removeFromParentViewController];
    v5 = self->_shieldViewController;
    self->_shieldViewController = 0;
  }

  shieldConfiguration = self->_shieldConfiguration;
  self->_shieldConfiguration = 0;
}

@end