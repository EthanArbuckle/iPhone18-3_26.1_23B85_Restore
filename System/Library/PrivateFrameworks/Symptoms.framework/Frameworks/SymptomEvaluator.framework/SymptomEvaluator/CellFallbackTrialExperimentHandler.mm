@interface CellFallbackTrialExperimentHandler
- (CellFallbackTrialExperimentHandler)initWithQueue:(id)a3;
- (void)trialExperimentWithProjectIDHasBegun:(int)a3 namespaceName:(id)a4 factorName:(id)a5 treatmentID:(id)a6 trialConfiguration:(id)a7;
- (void)trialExperimentWithProjectIDHasEnded:(int)a3 namespaceName:(id)a4 factorName:(id)a5;
@end

@implementation CellFallbackTrialExperimentHandler

- (CellFallbackTrialExperimentHandler)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CellFallbackTrialExperimentHandler;
  v5 = [(CellFallbackTrialExperimentHandler *)&v9 init];
  if (v5)
  {
    v6 = [[SymptomsTrialManager alloc] initWithTrialProjectID:862 namespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" factorName:@"SWDefinedParamPlist" queue:v4];
    trialManager = v5->_trialManager;
    v5->_trialManager = v6;
  }

  return v5;
}

- (void)trialExperimentWithProjectIDHasBegun:(int)a3 namespaceName:(id)a4 factorName:(id)a5 treatmentID:(id)a6 trialConfiguration:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109890;
    *v23 = a3;
    *&v23[4] = 2112;
    *&v23[6] = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasBegun for %d/%@/%@/%@", &v22, 0x26u);
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    *v23 = v15;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CFSM: Trial configuration: %@", &v22, 0xCu);
  }

  v18 = [v14 copy];
  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:v18];

  v19 = [v15 objectForKeyedSubscript:@"ForceTurboRNF"];
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

- (void)trialExperimentWithProjectIDHasEnded:(int)a3 namespaceName:(id)a4 factorName:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = a3;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM: trialExperimentWithProjectIDHasEnded for %d/%@/%@", v12, 0x1Cu);
  }

  [(CellFallbackTrialExperimentHandler *)self setTreatmentID:0];
  [(CellFallbackTrialExperimentHandler *)self setTrialTurboRNF:0];

  v11 = *MEMORY[0x277D85DE8];
}

@end