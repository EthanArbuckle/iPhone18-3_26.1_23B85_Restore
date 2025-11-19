@interface PKPaymentTransactionAppProtectionShieldCell
- (void)configureWithParentViewController:(id)a3;
- (void)prepareForReuse;
- (void)setShieldConfiguration:(id)a3;
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

    v5 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    v6 = [(UIViewController *)self->_shieldViewController view];
    [v5 addSubview:v6];

    v7 = [(UIViewController *)self->_shieldViewController view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = MEMORY[0x1E696ACD8];
    v32 = [(UIViewController *)self->_shieldViewController view];
    v30 = [v32 topAnchor];
    v31 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    v29 = [v31 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:36.0];
    v33[0] = v28;
    v27 = [(UIViewController *)self->_shieldViewController view];
    v25 = [v27 leadingAnchor];
    v26 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v33[1] = v23;
    v21 = [(UIViewController *)self->_shieldViewController view];
    v19 = [v21 trailingAnchor];
    v20 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    v18 = [v20 trailingAnchor];
    v8 = [v19 constraintEqualToAnchor:v18];
    v33[2] = v8;
    v9 = [(UIViewController *)self->_shieldViewController view];
    v10 = [v9 bottomAnchor];
    v11 = [(PKPaymentTransactionAppProtectionShieldCell *)self contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v33[3] = v13;
    v14 = [(UIViewController *)self->_shieldViewController view];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant:160.0];
    v33[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
    [v22 activateConstraints:v17];
  }
}

- (void)configureWithParentViewController:(id)a3
{
  shieldViewController = self->_shieldViewController;
  if (shieldViewController)
  {
    v5 = a3;
    [v5 addChildViewController:shieldViewController];
    [(UIViewController *)self->_shieldViewController didMoveToParentViewController:v5];
  }
}

- (void)setShieldConfiguration:(id)a3
{
  objc_storeStrong(&self->_shieldConfiguration, a3);

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
    v4 = [(UIViewController *)self->_shieldViewController view];
    [v4 removeFromSuperview];

    [(UIViewController *)self->_shieldViewController removeFromParentViewController];
    v5 = self->_shieldViewController;
    self->_shieldViewController = 0;
  }

  shieldConfiguration = self->_shieldConfiguration;
  self->_shieldConfiguration = 0;
}

@end