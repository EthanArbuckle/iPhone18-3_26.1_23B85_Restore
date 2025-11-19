@interface SUUIMobileScanOperationFullScanContext
- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5 scanOptions:(id)a6 agreementStatusRegistry:(id)a7 currentSeedingDevice:(id)a8;
- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5 scanOptions:(id)a6 andAgreementStatusRegistry:(id)a7;
@end

@implementation SUUIMobileScanOperationFullScanContext

- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5 scanOptions:(id)a6 andAgreementStatusRegistry:(id)a7
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a5;
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v14 = 0;
  objc_storeStrong(&v14, a7);
  v7 = v19;
  v19 = 0;
  v19 = [(SUUIMobileScanOperationFullScanContext *)v7 initWithPreviousThirdPartyScanResults:location[0] previousScanError:v17 forceReloadScanResults:v16 scanOptions:v15 agreementStatusRegistry:v14 currentSeedingDevice:0];
  v13 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v13;
}

- (SUUIMobileScanOperationFullScanContext)initWithPreviousThirdPartyScanResults:(id)a3 previousScanError:(id)a4 forceReloadScanResults:(BOOL)a5 scanOptions:(id)a6 agreementStatusRegistry:(id)a7 currentSeedingDevice:(id)a8
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = 0;
  objc_storeStrong(&v18, a8);
  v8 = v24;
  v24 = 0;
  v17.receiver = v8;
  v17.super_class = SUUIMobileScanOperationFullScanContext;
  v16 = [(SUUIScanOperationFullScanContext *)&v17 initWithPreviousThirdPartyScanResults:location[0] previousScanError:v22 forceReloadScanResults:v21];
  v24 = v16;
  objc_storeStrong(&v24, v16);
  if (v16)
  {
    objc_storeStrong(&v24->_scanOptions, v20);
    objc_storeStrong(&v24->_currentSeedingDevice, v18);
    objc_storeStrong(&v24->_agreementStatusRegistry, v19);
  }

  v10 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v10;
}

@end