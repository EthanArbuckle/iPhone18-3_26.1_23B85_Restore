@interface PKPeerPaymentReceiverRemoteAlertViewController
- (void)_cleanup;
- (void)configureWithContext:(id)context completion:(id)completion;
@end

@implementation PKPeerPaymentReceiverRemoteAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PKPeerPaymentReceiverRemoteAlertViewController_configureWithContext_completion___block_invoke;
  v11[3] = &unk_1E80111F8;
  objc_copyWeak(&v14, &location);
  v8 = contextCopy;
  v12 = v8;
  v9 = completionCopy;
  v13 = v9;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentReceiverRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v10 configureWithContext:v8 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __82__PKPeerPaymentReceiverRemoteAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) actions];
  v3 = [v2 anyObject];
  v4 = WeakRetained[130];
  WeakRetained[130] = v3;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)_cleanup
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentReceiverRemoteAlertViewController;
  [(PKNearbyPeerPaymentRemoteAlertViewController *)&v6 _cleanup];
  userInfo = [(PKNearbyPeerPaymentRemoteAlertViewController *)self userInfo];
  replyAction = [userInfo objectForKeyedSubscript:@"uiHost"];
  if (!replyAction)
  {
    canSendResponse = [(BSAction *)self->_replyAction canSendResponse];

    if (!canSendResponse)
    {
      return;
    }

    userInfo = [MEMORY[0x1E698E600] responseWithInfo:0];
    [(BSAction *)self->_replyAction sendResponse:userInfo];
    replyAction = self->_replyAction;
    self->_replyAction = 0;
  }
}

@end