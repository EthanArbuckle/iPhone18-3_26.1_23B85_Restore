@interface PKPeerPaymentMessagesContentBaseViewController
- (PKPeerPaymentMessagesContentBaseViewController)initWithContentDelegate:(id)delegate;
- (PKPeerPaymentMessagesContentDelegate)contentDelegate;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPeerPaymentMessagesContentBaseViewController

- (PKPeerPaymentMessagesContentBaseViewController)initWithContentDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentMessagesContentBaseViewController;
  v5 = [(PKPeerPaymentMessagesContentBaseViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p>: Initialized.", buf, 0x16u);
    }

    objc_storeWeak(&v5->_contentDelegate, delegateCopy);
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(PKPeerPaymentMessagesContentView);
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;

  [(PKPeerPaymentMessagesContentBaseViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesContentBaseViewController;
  [(PKPeerPaymentMessagesContentBaseViewController *)&v4 viewWillAppear:appear];
  [(PKPeerPaymentMessagesContentBaseViewController *)self reloadContent];
}

- (PKPeerPaymentMessagesContentDelegate)contentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentDelegate);

  return WeakRetained;
}

@end