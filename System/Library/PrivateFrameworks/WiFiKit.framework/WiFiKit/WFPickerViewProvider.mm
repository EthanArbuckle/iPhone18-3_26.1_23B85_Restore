@interface WFPickerViewProvider
- (WFPickerViewProvider)initWithRootViewController:(id)controller;
- (WFPickerViewProviderDelegate)delegate;
- (id)_promptForEnterpriseJoin:(id)join;
- (id)credentialsViewControllerWithContext:(id)context;
- (id)networkErrorViewControllerWithContext:(id)context;
@end

@implementation WFPickerViewProvider

- (id)_promptForEnterpriseJoin:(id)join
{
  v30 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v5 = [WFEnterpriseJoinPromptOperation enterpriseJoinPromptOperationWithDeviceCapability:WFCurrentDeviceCapability()];
  network = [joinCopy network];
  v7 = WFLogForCategory(3uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315650;
    v25 = "[WFPickerViewProvider _promptForEnterpriseJoin:]";
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = network;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: prompt (%@) for enterprise join %@", buf, 0x20u);
  }

  objc_initWeak(buf, v5);
  objc_initWeak(&location, self);
  objc_initWeak(&from, network);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke;
  v16[3] = &unk_279EBE500;
  objc_copyWeak(&v19, buf);
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v9 = network;
  v17 = v9;
  v10 = joinCopy;
  v18 = v10;
  [v5 setCompletionBlock:v16];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v5];

  v12 = v18;
  v13 = v5;

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke_2;
  block[3] = &unk_279EBE500;
  objc_copyWeak(&v5, a1 + 6);
  objc_copyWeak(&v6, a1 + 7);
  objc_copyWeak(&v7, a1 + 8);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained result];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = [v4 delegate];
    v6 = objc_loadWeakRetained((a1 + 64));
    [v5 openSettingsForScanRecord:v6];

    v7 = WFLogForCategory(3uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v8))
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v10 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[WFPickerViewProvider _promptForEnterpriseJoin:]_block_invoke_2";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        v11 = "%s: user accepted join prompt (%@) for enterprise network %@";
LABEL_10:
        _os_log_impl(&dword_273ECD000, v7, v8, v11, &v14, 0x20u);

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [*(a1 + 40) cancel];
    v7 = WFLogForCategory(3uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v8))
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v12 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[WFPickerViewProvider _promptForEnterpriseJoin:]_block_invoke";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v12;
        v11 = "%s: user cancelled join prompt (%@) for enterprise network %@";
        goto LABEL_10;
      }

LABEL_11:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)credentialsViewControllerWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(WFPickerViewProvider *)self _canHandleCredentialsContext:contextCopy])
  {
    v5 = [WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:contextCopy];
    v6 = WFLogForCategory(3uLL);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v13 = 136315650;
      v14 = "[WFPickerViewProvider credentialsViewControllerWithContext:]";
      v15 = 2112;
      v16 = contextCopy;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: can handle credentials context %@, using prompt %@", &v13, 0x20u);
    }

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v5];
  }

  else
  {
    v9 = WFLogForCategory(3uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v13 = 136315394;
      v14 = "[WFPickerViewProvider credentialsViewControllerWithContext:]";
      v15 = 2112;
      v16 = contextCopy;
      _os_log_impl(&dword_273ECD000, v9, v10, "%s: unhandled credentials context %@, launching settings", &v13, 0x16u);
    }

    v5 = [(WFPickerViewProvider *)self _promptForEnterpriseJoin:contextCopy];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)networkErrorViewControllerWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = [WFErrorPromptOperation errorPromptOperationWithContext:contextCopy];
  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v4)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      v13 = 136315650;
      v14 = "[WFPickerViewProvider networkErrorViewControllerWithContext:]";
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = contextCopy;
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: error prompt %@ for context %@", &v13, 0x20u);
    }

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v4];

    v10 = v4;
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      v13 = 136315394;
      v14 = "[WFPickerViewProvider networkErrorViewControllerWithContext:]";
      v15 = 2112;
      v16 = contextCopy;
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: failed to create error alert for context %@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (WFPickerViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WFPickerViewProvider)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = WFPickerViewProvider;
  v6 = [(WFPickerViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, controller);
  }

  return v7;
}

@end