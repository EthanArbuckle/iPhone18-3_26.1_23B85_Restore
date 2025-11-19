@interface SUUIMobileScanOperationRefreshScanContext
- (SUUIMobileScanOperationRefreshScanContext)initWithPreviousDownload:(id)a3 previousEncounteredError:(id)a4 currentAutoInstallOperation:(id)a5 andAgreementStatusRegistry:(id)a6;
@end

@implementation SUUIMobileScanOperationRefreshScanContext

- (SUUIMobileScanOperationRefreshScanContext)initWithPreviousDownload:(id)a3 previousEncounteredError:(id)a4 currentAutoInstallOperation:(id)a5 andAgreementStatusRegistry:(id)a6
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
  v13.super_class = SUUIMobileScanOperationRefreshScanContext;
  v12 = [(SUUIScanOperationRefreshScanContext *)&v13 initWithPreviousDownload:location[0] previousEncounteredError:v16];
  v18 = v12;
  objc_storeStrong(&v18, v12);
  if (v12)
  {
    objc_storeStrong(&v18->_currentAutoInstallOperation, v15);
    objc_storeStrong(&v18->_agreementStatusRegistry, v14);
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