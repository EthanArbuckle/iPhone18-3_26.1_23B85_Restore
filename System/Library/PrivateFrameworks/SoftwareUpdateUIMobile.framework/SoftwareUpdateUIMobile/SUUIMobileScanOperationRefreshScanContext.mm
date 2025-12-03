@interface SUUIMobileScanOperationRefreshScanContext
- (SUUIMobileScanOperationRefreshScanContext)initWithPreviousDownload:(id)download previousEncounteredError:(id)error currentAutoInstallOperation:(id)operation andAgreementStatusRegistry:(id)registry;
@end

@implementation SUUIMobileScanOperationRefreshScanContext

- (SUUIMobileScanOperationRefreshScanContext)initWithPreviousDownload:(id)download previousEncounteredError:(id)error currentAutoInstallOperation:(id)operation andAgreementStatusRegistry:(id)registry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v16 = 0;
  objc_storeStrong(&v16, error);
  v15 = 0;
  objc_storeStrong(&v15, operation);
  v14 = 0;
  objc_storeStrong(&v14, registry);
  v6 = selfCopy;
  selfCopy = 0;
  v13.receiver = v6;
  v13.super_class = SUUIMobileScanOperationRefreshScanContext;
  v12 = [(SUUIScanOperationRefreshScanContext *)&v13 initWithPreviousDownload:location[0] previousEncounteredError:v16];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_currentAutoInstallOperation, v15);
    objc_storeStrong(&selfCopy->_agreementStatusRegistry, v14);
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