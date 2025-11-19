@interface TSCellularPlanProximityTransferController
- (ESIMProxTransferControllerDelegate)delegate;
- (TSCellularPlanProximityTransferController)initWithESIMDelegate:(id)a3;
- (void)attemptFailed;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)a3;
@end

@implementation TSCellularPlanProximityTransferController

- (TSCellularPlanProximityTransferController)initWithESIMDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSCellularPlanProximityTransferController;
  v5 = [(TSCellularPlanProximityTransferController *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CC37B0]);
    v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
    client = v5->_client;
    v5->_client = v7;

    [(CoreTelephonyClient *)v5->_client setDelegate:v5];
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)viewControllerDidComplete:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain();
  WeakRetained = v5;
  if (a3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TSCellularPlanProximityTransferController viewControllerDidComplete:]";
      _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "view did complete @%s", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didComplete];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [TSCellularPlanProximityTransferController viewControllerDidComplete:?];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)userDidTapCancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSCellularPlanProximityTransferController userDidTapCancel]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "user canceled secure intent flow @%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didComplete];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)attemptFailed
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSCellularPlanProximityTransferController attemptFailed]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "secure intent attempt failed @%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didComplete];

  v5 = *MEMORY[0x277D85DE8];
}

void __155__TSCellularPlanProximityTransferController_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = _TSLogDomain();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = "[TSCellularPlanProximityTransferController launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "present %@ @%s", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained delegate];
    [v7 didRequestPresentationForProxCard:*(a1 + 32)];
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 138412546;
    v11 = v8;
    v12 = 2080;
    v13 = "[TSCellularPlanProximityTransferController launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%@ not required @%s", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (ESIMProxTransferControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewControllerDidComplete:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanProximityTransferController viewControllerDidComplete:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid view controller @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end