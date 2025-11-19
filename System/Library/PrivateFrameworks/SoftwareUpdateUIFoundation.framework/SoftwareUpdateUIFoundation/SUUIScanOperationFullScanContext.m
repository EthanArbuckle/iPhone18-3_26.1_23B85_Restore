@interface SUUIScanOperationFullScanContext
- (SUUIScanOperationFullScanContext)init;
- (SUUIScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5;
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

- (SUUIScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  v5 = v17;
  v17 = 0;
  v13.receiver = v5;
  v13.super_class = SUUIScanOperationFullScanContext;
  v12 = [(SUUIScanOperationFullScanContext *)&v13 init];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    v6 = [location[0] copy];
    previousThirdPartyScanResults = v17->_previousThirdPartyScanResults;
    v17->_previousThirdPartyScanResults = v6;
    MEMORY[0x277D82BD8](previousThirdPartyScanResults);
    objc_storeStrong(&v17->_previousScanError, v15);
    v17->_forceReloadScanResults = v14;
  }

  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

@end