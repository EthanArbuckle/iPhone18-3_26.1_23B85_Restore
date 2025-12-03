@interface CellFallbackTrialExperimentHandler
- (CellFallbackTrialExperimentHandler)initWithQueue:(id)queue;
- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration;
- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName;
@end

@implementation CellFallbackTrialExperimentHandler

- (CellFallbackTrialExperimentHandler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CellFallbackTrialExperimentHandler;
  v5 = [(CellFallbackTrialExperimentHandler *)&v9 init];
  if (v5)
  {
    v6 = [[SymptomsTrialManager alloc] initWithTrialProjectID:862 namespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" factorName:@"SWDefinedParamPlist" queue:queueCopy];
    trialManager = v5->_trialManager;
    v5->_trialManager = v6;
  }

  return v5;
}

- (void)trialExperimentWithProjectIDHasBegun:(int)begun namespaceName:(id)name factorName:(id)factorName treatmentID:(id)d trialConfiguration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  dCopy = d;
  configurationCopy = configuration;
  v16 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109890;
    *v23 = begun;
    *&v23[4] = 2112;
    *&v23[6] = nameCopy;
    v24 = 2112;
    v25 = factorNameCopy;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasBegun for %d/%@/%@/%@", &v22, 0x26u);
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    *v23 = configurationCopy;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CFSM: Trial configuration: %@", &v22, 0xCu);
  }

  v18 = [dCopy copy];
  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:v18];

  v19 = [configurationCopy objectForKeyedSubscript:@"ForceTurboRNF"];
  if (v19)
  {
    v20 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      *v23 = v19;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasBegun forceTurboRNFNum is %@", &v22, 0xCu);
    }

    -[CellFallbackTrialExperimentHandler setTrialTurboRNF:](self, "setTrialTurboRNF:", [v19 unsignedIntValue]);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)trialExperimentWithProjectIDHasEnded:(int)ended namespaceName:(id)name factorName:(id)factorName
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  factorNameCopy = factorName;
  v10 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = ended;
    v13 = 2112;
    v14 = nameCopy;
    v15 = 2112;
    v16 = factorNameCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasEnded for %d/%@/%@", v12, 0x1Cu);
  }

  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:0];
  [(CellFallbackTrialExperimentHandler *)self setTrialTurboRNF:0];

  v11 = *MEMORY[0x277D85DE8];
}

@end