@interface SUUIBetaUpdatesOperationScanResults
- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)identifier currentSeedingDevice:(id)device betaPrograms:(id)programs;
- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)identifier currentSeedingDevice:(id)device betaPrograms:(id)programs enrolledBetaProgram:(id)program;
@end

@implementation SUUIBetaUpdatesOperationScanResults

- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)identifier currentSeedingDevice:(id)device betaPrograms:(id)programs
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v11 = 0;
  objc_storeStrong(&v11, device);
  v10 = 0;
  objc_storeStrong(&v10, programs);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUUIBetaUpdatesOperationScanResults *)v5 initWithIdentifier:location[0] currentSeedingDevice:v11 betaPrograms:v10 enrolledBetaProgram:0];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (SUUIBetaUpdatesOperationScanResults)initWithIdentifier:(id)identifier currentSeedingDevice:(id)device betaPrograms:(id)programs enrolledBetaProgram:(id)program
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v16 = 0;
  objc_storeStrong(&v16, device);
  v15 = 0;
  objc_storeStrong(&v15, programs);
  v14 = 0;
  objc_storeStrong(&v14, program);
  v6 = selfCopy;
  selfCopy = 0;
  v13.receiver = v6;
  v13.super_class = SUUIBetaUpdatesOperationScanResults;
  v12 = [(SUUIBetaUpdatesOperationScanResults *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    [(SUUIBetaUpdatesOperationScanResults *)selfCopy setIdentifier:location[0]];
    [(SUUIBetaUpdatesOperationScanResults *)selfCopy setCurrentSeedingDevice:v16];
    [(SUUIBetaUpdatesOperationScanResults *)selfCopy setBetaPrograms:v15];
    [(SUUIBetaUpdatesOperationScanResults *)selfCopy setEnrolledBetaProgram:v14];
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

@end