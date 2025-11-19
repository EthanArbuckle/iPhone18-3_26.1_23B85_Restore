@interface SUUIBetaUpdatesOperationScanResults
- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)a3 currentSeedingDevice:(id)a4 betaPrograms:(id)a5;
- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)a3 currentSeedingDevice:(id)a4 betaPrograms:(id)a5 enrolledBetaProgram:(id)a6;
@end

@implementation SUUIBetaUpdatesOperationScanResults

- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)a3 currentSeedingDevice:(id)a4 betaPrograms:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v5 = v13;
  v13 = 0;
  v13 = [(SUUIBetaUpdatesOperationScanResults *)v5 initWithIdentifier:location[0] currentSeedingDevice:v11 betaPrograms:v10 enrolledBetaProgram:0];
  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)a3 currentSeedingDevice:(id)a4 betaPrograms:(id)a5 enrolledBetaProgram:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v6 = v18;
  v18 = 0;
  v13.receiver = v6;
  v13.super_class = SUUIBetaUpdatesOperationScanResults;
  v12 = [(SUUIBetaUpdatesOperationScanResults *)&v13 init];
  v18 = v12;
  objc_storeStrong(&v18, v12);
  if (v12)
  {
    [(SUUIBetaUpdatesOperationScanResults *)v18 setIdentifier:location[0]];
    [(SUUIBetaUpdatesOperationScanResults *)v18 setCurrentSeedingDevice:v16];
    [(SUUIBetaUpdatesOperationScanResults *)v18 setBetaPrograms:v15];
    [(SUUIBetaUpdatesOperationScanResults *)v18 setEnrolledBetaProgram:v14];
  }

  v8 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v8;
}

@end