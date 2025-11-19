@interface STYAbcHelper
- (void)shareSeedDiagnosticsWithABC:(id)a3 tailspinFilenamePrefix:(id)a4;
@end

@implementation STYAbcHelper

- (void)shareSeedDiagnosticsWithABC:(id)a3 tailspinFilenamePrefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[STYFrameworkHelper sharedHelper];
  v8 = [v7 sharedSerialQueueAtUtility];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__STYAbcHelper_shareSeedDiagnosticsWithABC_tailspinFilenamePrefix___block_invoke;
  v11[3] = &unk_279B9B4C0;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

void __67__STYAbcHelper_shareSeedDiagnosticsWithABC_tailspinFilenamePrefix___block_invoke(uint64_t a1)
{
  v23[7] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D82D38];
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) scenario];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "appProcessID")}];
  v5 = *MEMORY[0x277D82D00];
  v6 = MEMORY[0x277CBEC38];
  v23[0] = v4;
  v23[1] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D82CF0];
  v22[1] = v5;
  v22[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "scenarioStartTime")}];
  v23[2] = v8;
  v22[3] = *MEMORY[0x277D82CD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "scenarioEndTime")}];
  v10 = *MEMORY[0x277D82CC8];
  v23[3] = v9;
  v23[4] = v6;
  v11 = *MEMORY[0x277D82D08];
  v22[4] = v10;
  v22[5] = v11;
  v22[6] = *MEMORY[0x277D82D18];
  v23[5] = *(a1 + 40);
  v23[6] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];

  v13 = [*(a1 + 32) symptomsSignatureForReport];
  v14 = *MEMORY[0x277D6B130];
  v19 = v12;
  v20 = v14;
  v18 = @"com.apple.DiagnosticExtensions.tailspin";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  _reportToAbc(v13, v16);
  v17 = *MEMORY[0x277D85DE8];
}

@end