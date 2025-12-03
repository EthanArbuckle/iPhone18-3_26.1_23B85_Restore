@interface CellOutrankTrialExperimentHandler
- (CellOutrankTrialExperimentDelegate)delegate;
- (CellOutrankTrialExperimentHandler)initWithQueue:(id)queue;
- (void)subscribeToTrialUpdates:(id)updates;
- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration;
- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName;
- (void)unsubscribeFromTrialUpdates;
@end

@implementation CellOutrankTrialExperimentHandler

- (CellOutrankTrialExperimentHandler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CellOutrankTrialExperimentHandler;
  v6 = [(CellOutrankTrialExperimentHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[SymptomsTrialManager alloc] initWithTrialProjectID:862 namespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" factorName:@"SWDefinedParamPlist" queue:v7->_queue];
    trialManager = v7->_trialManager;
    v7->_trialManager = v8;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    trialParameters = v7->_trialParameters;
    v7->_trialParameters = dictionary;
  }

  return v7;
}

- (void)subscribeToTrialUpdates:(id)updates
{
  [(CellOutrankTrialExperimentHandler *)self setDelegate:updates];
  trialManager = self->_trialManager;

  [(SymptomsTrialManager *)trialManager addDelegate:self];
}

- (void)unsubscribeFromTrialUpdates
{
  [(CellOutrankTrialExperimentHandler *)self setDelegate:0];
  trialManager = self->_trialManager;

  [(SymptomsTrialManager *)trialManager removeDelegate:self];
}

- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  dCopy = d;
  configurationCopy = configuration;
  v16 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109634;
    *v23 = begun;
    *&v23[4] = 2112;
    *&v23[6] = nameCopy;
    v24 = 2112;
    v25 = factorNameCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "COSM: trialExperimentWithProjectIDHasBegun for %d/%@/%@", &v22, 0x1Cu);
  }

  v17 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    *v23 = configurationCopy;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSM: Trial configuration: %@", &v22, 0xCu);
  }

  [(CellOutrankTrialExperimentHandler *)self setTreatmentID:dCopy];
  [(CellOutrankTrialExperimentHandler *)self setTrialParameters:configurationCopy];
  v18 = [configurationCopy objectForKeyedSubscript:@"waiveOutrankReason"];
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

  delegate = [(CellOutrankTrialExperimentHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate trialExperimentHasBegun:configurationCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  v10 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = ended;
    v14 = 2112;
    v15 = nameCopy;
    v16 = 2112;
    v17 = factorNameCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "COSM: trialExperimentWithProjectIDHasEnded for %d/%@/%@", v13, 0x1Cu);
  }

  [(CellOutrankTrialExperimentHandler *)self setTreatmentID:0];
  [(CellOutrankTrialExperimentHandler *)self setTrialParameters:0];
  [(CellOutrankTrialExperimentHandler *)self setWaiveOutrankReason:0];
  delegate = [(CellOutrankTrialExperimentHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate trialExperimentHasEnded];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (CellOutrankTrialExperimentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end