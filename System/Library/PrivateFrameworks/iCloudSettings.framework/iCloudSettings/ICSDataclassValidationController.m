@interface ICSDataclassValidationController
- (BOOL)_isDataclassAllowlisted:(id)a3;
- (BOOL)_isEligibleForWalrus;
- (BOOL)isDataclassAvailable:(id)a3;
- (ICSDataclassValidationController)initWithAccount:(id)a3 presentingViewController:(id)a4;
- (ICSDataclassValidationControllerDelegate)delegate;
- (UIViewController)presentingViewController;
- (unint64_t)_currentWalrusStatus;
- (void)_reloadSpecifiers;
- (void)_startObservingManateeAvailabilityNotification;
- (void)_startObservingNotifications;
- (void)_startObservingWalrusStateChangeNotification;
- (void)_stopObservingManateeAvailabilityNotification;
- (void)_stopObservingNotifications;
- (void)_stopObservingWalrusStateChangeNotification;
- (void)_walrusPresentUnknownErrorWithCompletionHandler:(id)a3;
- (void)_walrusValidateAccessForDataclass:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)validateAccessForDataclass:(id)a3 completion:(id)a4;
@end

@implementation ICSDataclassValidationController

- (ICSDataclassValidationController)initWithAccount:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ICSDataclassValidationController;
  v9 = [(ICSDataclassValidationController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeWeak(&v10->_presentingViewController, v8);
    v11 = dispatch_semaphore_create(1);
    validationAccessSemaphore = v10->_validationAccessSemaphore;
    v10->_validationAccessSemaphore = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.validation-access-queue", v13);
    validationAccessQueue = v10->_validationAccessQueue;
    v10->_validationAccessQueue = v14;

    [(ICSDataclassValidationController *)v10 _startObservingNotifications];
  }

  return v10;
}

- (void)dealloc
{
  [(ICSDataclassValidationController *)self _stopObservingNotifications];
  v3.receiver = self;
  v3.super_class = ICSDataclassValidationController;
  [(ICSDataclassValidationController *)&v3 dealloc];
}

- (BOOL)isDataclassAvailable:(id)a3
{
  v4 = a3;
  v5 = self->_manateeAvailable || [(ICSDataclassValidationController *)self _currentWalrusStatus]== 2 || [(ICSDataclassValidationController *)self _isDataclassAllowlisted:v4];

  return v5;
}

- (void)validateAccessForDataclass:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "[ICSDataclassValidationController validateAccessForDataclass] dataclass: %@", buf, 0xCu);
  }

  if (self->_manateeAvailable || [(ICSDataclassValidationController *)self _currentWalrusStatus]== 2 || [(ICSDataclassValidationController *)self _isDataclassAllowlisted:v6])
  {
    v7[2](v7, 1);
  }

  else
  {
    objc_initWeak(buf, self);
    v10 = self->_validationAccessSemaphore;
    validationAccessQueue = self->_validationAccessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke;
    v13[3] = &unk_27A666288;
    v14 = v10;
    v12 = v10;
    objc_copyWeak(&v17, buf);
    v16 = v7;
    v15 = v6;
    dispatch_async(validationAccessQueue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_2;
  aBlock[3] = &unk_27A666210;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v3 = _Block_copy(aBlock);
  if (WeakRetained)
  {
    v4 = [WeakRetained _currentWalrusStatus];
    v5 = LogSubsystem();
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_cold_1();
      }

      [WeakRetained _walrusValidateAccessForDataclass:*(a1 + 40) completion:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "ICSDataclassValidationController: Dataclass access cannot be validated, walrus status is unknown", buf, 2u);
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_39;
      v8[3] = &unk_27A666260;
      v9 = WeakRetained;
      v10 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_cold_2();
    }

    (*(v3 + 2))(v3, 0);
  }
}

void __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_2(uint64_t a1, char a2)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_3;
  v4[3] = &unk_27A6661E8;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_39(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__ICSDataclassValidationController_validateAccessForDataclass_completion___block_invoke_2_40;
  v2[3] = &unk_27A666238;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _walrusPresentUnknownErrorWithCompletionHandler:v2];
}

- (void)_startObservingNotifications
{
  [(ICSDataclassValidationController *)self _startObservingWalrusStateChangeNotification];

  [(ICSDataclassValidationController *)self _startObservingManateeAvailabilityNotification];
}

- (void)_stopObservingNotifications
{
  [(ICSDataclassValidationController *)self _stopObservingWalrusStateChangeNotification];

  [(ICSDataclassValidationController *)self _stopObservingManateeAvailabilityNotification];
}

- (void)_reloadSpecifiers
{
  v3 = [(ICSDataclassValidationController *)self delegate];
  [v3 reloadSpecifiersForDataclassValidationController:self];
}

- (BOOL)_isEligibleForWalrus
{
  v2 = [(ICSDataclassValidationController *)self account];
  v3 = [v2 aa_isAccountClass:*MEMORY[0x277CEC688]];

  return v3;
}

- (unint64_t)_currentWalrusStatus
{
  if ([(ICSDataclassValidationController *)self _isEligibleForWalrus])
  {
    return self->_currentWalrusStatus;
  }

  else
  {
    return 2;
  }
}

- (void)_startObservingWalrusStateChangeNotification
{
  if ([(ICSDataclassValidationController *)self _isEligibleForWalrus])
  {
    v3 = objc_alloc_init(MEMORY[0x277CFD568]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke;
    aBlock[3] = &unk_27A666300;
    v9 = v3;
    v10 = self;
    v4 = v3;
    v7 = _Block_copy(aBlock);
    v5 = v7[2];
    v6 = v7;
    v5();
  }

  else
  {
    v4 = LogSubsystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICSDataclassValidationController _startObservingWalrusStateChangeNotification];
    }
  }
}

void __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Fetching current walrus status...", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_41;
  v7[3] = &unk_27A6662D8;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v6 = v3;
  [v5 walrusStatusWithCompletion:v7];
}

void __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_41_cold_1(v5, a2, v6);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_42;
  block[3] = &unk_27A6662B0;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = a2;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_42(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 48);
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Setting current walrus status to: %lu", &v8, 0xCu);
  }

  *(*(a1 + 32) + 8) = *(a1 + 48);
  if (v2 != v3)
  {
    [*(a1 + 32) _reloadSpecifiers];
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 32));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_45(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = [v3 defaultCenter];
  v6 = *MEMORY[0x277CFD420];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_2;
  v9[3] = &unk_27A666328;
  v10 = *(a1 + 32);
  v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v9];
  v8 = v4[3];
  v4[3] = v7;
}

uint64_t __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_2(uint64_t a1)
{
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Received walrus state change notification.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_stopObservingWalrusStateChangeNotification
{
  v5 = self->_walrusStateChangeNotificationObserver;
  if (v5)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:v5];
  }

  walrusStateChangeNotificationObserver = self->_walrusStateChangeNotificationObserver;
  self->_walrusStateChangeNotificationObserver = 0;
}

- (void)_startObservingManateeAvailabilityNotification
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Failed to determine manatee availability: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __82__ICSDataclassValidationController__startObservingManateeAvailabilityNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKey:*MEMORY[0x277CFD410]];

  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 BOOLValue];
      v7 = WeakRetained[16];
      WeakRetained[16] = v6;
      if (v7 != v6)
      {
        [WeakRetained _reloadSpecifiers];
      }
    }
  }
}

- (void)_stopObservingManateeAvailabilityNotification
{
  v5 = self->_manateeAvailabilityNotificationObserver;
  if (v5)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:v5];
  }

  manateeAvailabilityNotificationObserver = self->_manateeAvailabilityNotificationObserver;
  self->_manateeAvailabilityNotificationObserver = 0;
}

- (void)_walrusValidateAccessForDataclass:(id)a3 completion:(id)a4
{
  v5 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke;
  aBlock[3] = &unk_27A6663A0;
  v6 = v5;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  if ([(ICSDataclassValidationController *)self _isEligibleForWalrus])
  {
    v8 = [objc_alloc(MEMORY[0x277CECA18]) initWithType:4];
    v9 = objc_alloc(MEMORY[0x277CECA70]);
    v10 = [(ICSDataclassValidationController *)self presentingViewController];
    v11 = [v9 initWithFlowContext:v8 withPresentingViewController:v10];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke_57;
    v13[3] = &unk_27A6663A0;
    v14 = v7;
    [v11 verifyAndRepairManateeWithCompletion:v13];
  }

  else
  {
    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Account not eligible for walrus, will not perform dataclass access validation", buf, 2u);
    }

    (*(v7 + 2))(v7, 1, 0);
  }
}

void __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke_cold_1(v5, v7);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke_57(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke_2;
  block[3] = &unk_27A6663C8;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_walrusPresentUnknownErrorWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACCESS_DATACLASS_VALIDATION_FAILED_TITLE" value:&stru_288487370 table:@"Localizable-Walrus"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACCESS_DATACLASS_VALIDATION_FAILED_MESSAGE" value:&stru_288487370 table:@"Localizable-Walrus"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ACCESS_DATACLASS_VALIDATION_FAILED_BUTTON_TITLE" value:&stru_288487370 table:@"Localizable-Walrus"];
  v13 = [v5 alertWithTitle:v7 message:v9 buttonTitle:v11];

  v12 = [(ICSDataclassValidationController *)self presentingViewController];
  [v12 presentViewController:v13 animated:1 completion:v4];
}

- (BOOL)_isDataclassAllowlisted:(id)a3
{
  v3 = _isDataclassAllowlisted__once;
  v4 = a3;
  if (v3 != -1)
  {
    [ICSDataclassValidationController _isDataclassAllowlisted:];
  }

  v5 = [_isDataclassAllowlisted__allowlistedDataclasses containsObject:v4];

  return v5;
}

void __60__ICSDataclassValidationController__isDataclassAllowlisted___block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CB8968];
  v6[0] = *MEMORY[0x277CB8958];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CB89C8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = _isDataclassAllowlisted__allowlistedDataclasses;
  _isDataclassAllowlisted__allowlistedDataclasses = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (ICSDataclassValidationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __80__ICSDataclassValidationController__startObservingWalrusStateChangeNotification__block_invoke_41_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_275819000, log, OS_LOG_TYPE_ERROR, "Failed to determine walrus status (%lu) with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __81__ICSDataclassValidationController__walrusValidateAccessForDataclass_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Failed to repair manatee state for walrus account with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end