@interface TSPRXPasscodeEntryViewController
- (TSPRXPasscodeEntryViewController)initWithBtDevice:(id)a3 passcodeType:(int)a4;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_handlePINCodeUpdate:(id)a3;
- (void)retry;
@end

@implementation TSPRXPasscodeEntryViewController

- (TSPRXPasscodeEntryViewController)initWithBtDevice:(id)a3 passcodeType:(int)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = TSPRXPasscodeEntryViewController;
  v8 = [(TSPRXPasscodeEntryViewController *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_btDevice, a3);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PRXCARD_AUTHENTICATION_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [(TSPRXPasscodeEntryViewController *)v9 setTitle:v11];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"PRXCARD_AUTHENTICATION_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
    [(TSPRXPasscodeEntryViewController *)v9 setSubtitle:v13];

    [(TSPRXPasscodeEntryViewController *)v9 setDismissalType:3];
    [(PRXPasscodeEntryViewController *)v9 setNumberOfDigits:6];
    v14 = a4 + 1;
    if ((a4 + 1) <= 0xA)
    {
      if (((1 << v14) & 0x7C1) != 0)
      {
        v15 = _TSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [TSPRXPasscodeEntryViewController initWithBtDevice:a4 passcodeType:v15];
        }

        goto LABEL_12;
      }

      if (((1 << v14) & 0x24) != 0)
      {
        v16 = v9;
        v17 = 4;
LABEL_11:
        [(PRXPasscodeEntryViewController *)v16 setNumberOfDigits:v17];
        goto LABEL_12;
      }

      if (a4 == 3)
      {
        v16 = v9;
        v17 = 8;
        goto LABEL_11;
      }
    }

LABEL_12:
    objc_initWeak(&location, v9);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__TSPRXPasscodeEntryViewController_initWithBtDevice_passcodeType___block_invoke;
    v19[3] = &unk_279B45108;
    objc_copyWeak(&v20, &location);
    [(PRXPasscodeEntryViewController *)v9 setTextEntryCompletionHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__TSPRXPasscodeEntryViewController_initWithBtDevice_passcodeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePINCodeUpdate:v3];
}

- (void)retry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSPRXPasscodeEntryViewController_retry__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__TSPRXPasscodeEntryViewController_retry__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) passcodeEntryView];
  [v1 setText:&stru_28753DF48];
}

- (void)_handlePINCodeUpdate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = "[TSPRXPasscodeEntryViewController _handlePINCodeUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "auth code = %@ @%s", &v7, 0x16u);
  }

  [(SSProximityDevice *)self->_btDevice verifyPIN:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)initWithBtDevice:(int)a1 passcodeType:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2080;
  v5 = "[TSPRXPasscodeEntryViewController initWithBtDevice:passcodeType:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unsupported passcode type : %d @%s", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end