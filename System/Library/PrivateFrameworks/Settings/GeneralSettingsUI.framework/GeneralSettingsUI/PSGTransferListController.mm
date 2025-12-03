@interface PSGTransferListController
- (id)specifiers;
- (void)beginPrebuddy:(id)prebuddy;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PSGTransferListController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PSGTransferListController;
  [(PSGTransferListController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"PreBuddyText" target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

    v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
    aa_primaryAppleAccount = [v9 aa_primaryAppleAccount];
    v11 = PSUsedByManagedAccount();
    v12 = MEMORY[0x277D3FAD8];
    v13 = PSG_LocalizedStringForReset(@"GET_STARTED");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v14 setProperty:@"prebuddyBegin" forKey:*MEMORY[0x277D3FFB8]];
    [v14 setObject:&unk_282E8FEF0 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    [v14 setButtonAction:sel_beginPrebuddy_];
    v15 = v8 == 2 && aa_primaryAppleAccount == 0;
    if (v15 || v11)
    {
      [v14 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [v5 addObject:v6];
    [v5 addObject:v14];
    v16 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)beginPrebuddy:(id)prebuddy
{
  mEMORY[0x277D28A50] = [MEMORY[0x277D28A50] sharedManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PSGTransferListController_beginPrebuddy___block_invoke;
  v5[3] = &unk_278325418;
  v5[4] = self;
  [mEMORY[0x277D28A50] followupAction:v5];
}

void __43__PSGTransferListController_beginPrebuddy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PSGLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "Initializing followup object", buf, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277CFE548]);
  v6 = [MEMORY[0x277D28A50] baseFollowupItem];
  v7 = [v5 initWithItem:v6];

  objc_initWeak(buf, *(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__PSGTransferListController_beginPrebuddy___block_invoke_28;
  v10[3] = &unk_2783253C8;
  objc_copyWeak(&v11, buf);
  [v7 setExtensionRequestedViewControllerPresentation:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PSGTransferListController_beginPrebuddy___block_invoke_2;
  v8[3] = &unk_2783253F0;
  objc_copyWeak(&v9, buf);
  v8[4] = *(a1 + 32);
  [v7 handleExtensionBasedAction:v3 completionWithUserInfo:v8];
  [*(a1 + 32) setPrebuddyActionHandler:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __43__PSGTransferListController_beginPrebuddy___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];
}

void __43__PSGTransferListController_beginPrebuddy___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "followup handler completion block", buf, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D28A30]];

  v7 = [v6 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v10 = _PSGLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "followup handler finished", v17, 2u);
    }

    v11 = [*(a1 + 32) navigationController];
    v12 = [v11 navigationController];

    v13 = [v12 viewControllers];
    v14 = [v13 firstObject];
    v15 = [v14 table];
    [v15 _scrollToTopIfPossible:0];

    v16 = [v12 popToRootViewControllerAnimated:1];
  }

  else
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  [v9 setPrebuddyActionHandler:0];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  viewIfLoaded = [(PSGTransferListController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    v10 = [lCopy objectForKeyedSubscript:@"path"];
    if ([v10 length])
    {
      if (([v10 isEqualToString:@"exitBuddy"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"exitBuddyUpSellTradeIn"))
      {
        -[PSGTransferListController presentExitBuddyWithUpsellTradeIn:withCompletion:](self, "presentExitBuddyWithUpsellTradeIn:withCompletion:", [v10 isEqualToString:@"exitBuddyUpSellTradeIn"], completionCopy);
      }

      else
      {
        [(PSGTransferListController *)&v12 handleURL:lCopy withCompletion:completionCopy, v11.receiver, v11.super_class, self, PSGTransferListController];
      }
    }

    else
    {
      [(PSGTransferListController *)&v11 handleURL:lCopy withCompletion:completionCopy, self, PSGTransferListController, v12.receiver, v12.super_class];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PSGTransferListController;
    [(PSGTransferListController *)&v13 handleURL:lCopy withCompletion:completionCopy];
  }
}

@end