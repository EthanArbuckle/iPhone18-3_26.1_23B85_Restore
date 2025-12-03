@interface SUUIScanOperationFullScanContext
- (SUUIScanOperationFullScanContext)init;
- (SUUIScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults;
@end

@implementation SUUIScanOperationFullScanContext

- (SUUIScanOperationFullScanContext)init
{
  v4 = 0;
  v4 = [(SUUIScanOperationFullScanContext *)self initWithPreviousThirdPartyScanResults:0 previousScanError:0 forceReloadScanResults:0];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUUIScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v15 = 0;
  objc_storeStrong(&v15, error);
  scanResultsCopy = scanResults;
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = SUUIScanOperationFullScanContext;
  v12 = [(SUUIScanOperationFullScanContext *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v6 = [location[0] copy];
    previousThirdPartyScanResults = selfCopy->_previousThirdPartyScanResults;
    selfCopy->_previousThirdPartyScanResults = v6;
    MEMORY[0x277D82BD8](previousThirdPartyScanResults);
    objc_storeStrong(&selfCopy->_previousScanError, v15);
    selfCopy->_forceReloadScanResults = scanResultsCopy;
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end