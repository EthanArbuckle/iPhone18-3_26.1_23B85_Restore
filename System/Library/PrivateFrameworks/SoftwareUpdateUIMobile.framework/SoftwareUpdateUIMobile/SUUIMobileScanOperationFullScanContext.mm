@interface SUUIMobileScanOperationFullScanContext
- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults scanOptions:(id)options agreementStatusRegistry:(id)registry currentSeedingDevice:(id)device;
- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults scanOptions:(id)options andAgreementStatusRegistry:(id)registry;
@end

@implementation SUUIMobileScanOperationFullScanContext

- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults scanOptions:(id)options andAgreementStatusRegistry:(id)registry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v17 = 0;
  objc_storeStrong(&v17, error);
  scanResultsCopy = scanResults;
  v15 = 0;
  objc_storeStrong(&v15, options);
  v14 = 0;
  objc_storeStrong(&v14, registry);
  v7 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUUIMobileScanOperationFullScanContext *)v7 initWithPreviousThirdPartyScanResults:location[0] previousScanError:v17 forceReloadScanResults:scanResultsCopy scanOptions:v15 agreementStatusRegistry:v14 currentSeedingDevice:0];
  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)results previousScanError:(id)error forceReloadScanResults:(BOOL)scanResults scanOptions:(id)options agreementStatusRegistry:(id)registry currentSeedingDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v22 = 0;
  objc_storeStrong(&v22, error);
  scanResultsCopy = scanResults;
  v20 = 0;
  objc_storeStrong(&v20, options);
  v19 = 0;
  objc_storeStrong(&v19, registry);
  v18 = 0;
  objc_storeStrong(&v18, device);
  v8 = selfCopy;
  selfCopy = 0;
  v17.receiver = v8;
  v17.super_class = SUUIMobileScanOperationFullScanContext;
  v16 = [(SUUIScanOperationFullScanContext *)&v17 initWithPreviousThirdPartyScanResults:location[0] previousScanError:v22 forceReloadScanResults:scanResultsCopy];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    objc_storeStrong(&selfCopy->_scanOptions, v20);
    objc_storeStrong(&selfCopy->_currentSeedingDevice, v18);
    objc_storeStrong(&selfCopy->_agreementStatusRegistry, v19);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

@end