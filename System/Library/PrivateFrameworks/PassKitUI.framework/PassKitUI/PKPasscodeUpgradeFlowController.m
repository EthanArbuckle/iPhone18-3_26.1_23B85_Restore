@interface PKPasscodeUpgradeFlowController
- (PKPasscodeUpgradeFlowController)initWithContext:(int64_t)a3 completion:(id)a4;
- (void)_completeWithShouldContinue:(BOOL)a3 error:(id)a4;
- (void)beginShowingViewController;
- (void)endedShowingViewController;
@end

@implementation PKPasscodeUpgradeFlowController

- (PKPasscodeUpgradeFlowController)initWithContext:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PKPasscodeUpgradeFlowController;
  v7 = [(PKPasscodeUpgradeFlowController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_context = a3;
    v9 = _Block_copy(v6);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;
  }

  return v8;
}

- (void)beginShowingViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Passcode Upgrade Flow: Beginning showing view controller", v4, 2u);
  }

  ++self->_presentedViewControllerCount;
}

- (void)endedShowingViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Passcode Upgrade Flow: Ended showing view controller", buf, 2u);
  }

  presentedViewControllerCount = self->_presentedViewControllerCount;
  self->_presentedViewControllerCount = presentedViewControllerCount - 1;
  if (presentedViewControllerCount <= 1 && self->_completionHandler)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Passcode Upgrade Flow: Last view controller removed, dismissing flow...", v5, 2u);
    }

    [(PKPasscodeUpgradeFlowController *)self _completeWithShouldContinue:0 error:0];
  }
}

- (void)_completeWithShouldContinue:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    v15 = self;
    v16 = 2112;
    if (v4)
    {
      v8 = @"YES";
    }

    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%@: Called complete with shouldContinue:%@ error:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPasscodeUpgradeFlowController__completeWithShouldContinue_error___block_invoke;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v12, buf);
  v13 = v4;
  v11 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __69__PKPasscodeUpgradeFlowController__completeWithShouldContinue_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    if (v4)
    {
      v6 = v3;
      (*(v4 + 16))(v4, *(a1 + 48), *(a1 + 32));
      v5 = v6[2];
      v6[2] = 0;

      v3 = v6;
    }
  }
}

@end