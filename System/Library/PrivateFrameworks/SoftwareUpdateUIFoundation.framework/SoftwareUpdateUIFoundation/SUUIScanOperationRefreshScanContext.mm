@interface SUUIScanOperationRefreshScanContext
- (SUUIScanOperationRefreshScanContext)init;
- (SUUIScanOperationRefreshScanContext)initWithPreviousDownload:(id)download previousEncounteredError:(id)error;
@end

@implementation SUUIScanOperationRefreshScanContext

- (SUUIScanOperationRefreshScanContext)init
{
  v4 = 0;
  v4 = [(SUUIScanOperationRefreshScanContext *)self initWithPreviousDownload:0 previousEncounteredError:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (SUUIScanOperationRefreshScanContext)initWithPreviousDownload:(id)download previousEncounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUUIScanOperationRefreshScanContext;
  v8 = [(SUUIScanOperationRefreshScanContext *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_previousDownload, location[0]);
    objc_storeStrong(&selfCopy->_previousEncounteredError, v10);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end