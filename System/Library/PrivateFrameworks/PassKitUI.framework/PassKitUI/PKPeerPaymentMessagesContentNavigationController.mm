@interface PKPeerPaymentMessagesContentNavigationController
- (BOOL)reportAnalyticsInternally;
- (PKPeerPaymentMessagesContentNavigationController)init;
- (PKPeerPaymentMessagesContentView)contentView;
- (void)reloadContent;
@end

@implementation PKPeerPaymentMessagesContentNavigationController

- (PKPeerPaymentMessagesContentNavigationController)init
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKPeerPaymentMessagesContentNavigationController;
  v2 = [(PKNavigationController *)&v7 init];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138543618;
      v9 = v5;
      v10 = 2048;
      v11 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p>: Initialized.", buf, 0x16u);
    }
  }

  return v2;
}

- (void)reloadContent
{
  v2 = [(PKPeerPaymentMessagesContentNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  [v3 reloadContent];
}

- (PKPeerPaymentMessagesContentView)contentView
{
  v2 = [(PKPeerPaymentMessagesContentNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  v4 = [v3 contentView];

  return v4;
}

- (BOOL)reportAnalyticsInternally
{
  v2 = [(PKPeerPaymentMessagesContentNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 reportAnalyticsInternally];
  return v2;
}

@end