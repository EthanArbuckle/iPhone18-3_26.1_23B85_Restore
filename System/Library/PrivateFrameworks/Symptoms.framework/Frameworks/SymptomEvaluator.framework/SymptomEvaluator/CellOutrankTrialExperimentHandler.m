@interface CellOutrankTrialExperimentHandler
- (CellOutrankTrialExperimentDelegate)delegate;
- (CellOutrankTrialExperimentHandler)initWithQueue:(id)a3;
- (void)subscribeToTrialUpdates:(id)a3;
- (void)trialExperimentWithProjectIDHasBegun:(int)a3 namespaceName:(id)a4 factorName:(id)a5 treatmentID:(id)a6 trialConfiguration:(id)a7;
- (void)trialExperimentWithProjectIDHasEnded:(int)a3 namespaceName:(id)a4 factorName:(id)a5;
- (void)unsubscribeFromTrialUpdates;
@end

@implementation CellOutrankTrialExperimentHandler

- (CellOutrankTrialExperimentHandler)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CellOutrankTrialExperimentHandler;
  v6 = [(CellOutrankTrialExperimentHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [[SymptomsTrialManager alloc] initWithTrialProjectID:862 namespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" factorName:@"SWDefinedParamPlist" queue:v7->_queue];
    trialManager = v7->_trialManager;
    v7->_trialManager = v8;

    v10 = [MEMORY[0x277CBEAC0] dictionary];
    trialParameters = v7->_trialParameters;
    v7->_trialParameters = v10;
  }

  return v7;
}

- (void)subscribeToTrialUpdates:(id)a3
{
  [(CellOutrankTrialExperimentHandler *)self setDelegate:a3];
  trialManager = self->_trialManager;

  [(SymptomsTrialManager *)trialManager addDelegate:self];
}

- (void)unsubscribeFromTrialUpdates
{
  [(CellOutrankTrialExperimentHandler *)self setDelegate:0];
  trialManager = self->_trialManager;

  [(SymptomsTrialManager *)trialManager removeDelegate:self];
}

- (void)trialExperimentWithProjectIDHasBegun:(int)a3 namespaceName:(id)a4 factorName:(id)a5 treatmentID:(id)a6 trialConfiguration:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109634;
    *v23 = a3;
    *&v23[4] = 2112;
    *&v23[6] = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "COSM: trialExperimentWithProjectIDHasBegun for %d/%@/%@", &v22, 0x1Cu);
  }

  v17 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    *v23 = v15;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSM: Trial configuration: %@", &v22, 0xCu);
  }

  [(CellOutrankTrialExperimentHandler *)self setTreatmentID:v14];
  [(CellOutrankTrialExperimentHandler *)self setTrialParameters:v15];
  v18 = [v15 objectForKeyedSubscript:@"waiveOutrankReason"];
  if (v18)
  {
    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      *v23 = v18;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "COSM: trialExperimentWithProjectIDHasBegun waiveOutrankReason is %@", &v22, 0xCu);
    }

    -[CellOutrankTrialExperimentHandler setWaiveOutrankReason:](self, "setWaiveOutrankReason:", [v18 BOOLValue]);
  }

  v20 = [(CellOutrankTrialExperimentHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v20 trialExperimentHasBegun:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)trialExperimentWithProjectIDHasEnded:(int)a3 namespaceName:(id)a4 factorName:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a3;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "COSM: trialExperimentWithProjectIDHasEnded for %d/%@/%@", v13, 0x1Cu);
  }

  [(CellOutrankTrialExperimentHandler *)self setTreatmentID:0];
  [(CellOutrankTrialExperimentHandler *)self setTrialParameters:0];
  [(CellOutrankTrialExperimentHandler *)self setWaiveOutrankReason:0];
  v11 = [(CellOutrankTrialExperimentHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 trialExperimentHasEnded];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (CellOutrankTrialExperimentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end