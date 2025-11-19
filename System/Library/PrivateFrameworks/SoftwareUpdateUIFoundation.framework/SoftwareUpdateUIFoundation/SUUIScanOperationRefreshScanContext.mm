@interface SUUIScanOperationRefreshScanContext
- (SUUIScanOperationRefreshScanContext)init;
- (SUUIScanOperationRefreshScanContext)initWithPreviousDownload:(id)a3 previousEncounteredError:(id)a4;
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

- (SUUIScanOperationRefreshScanContext)initWithPreviousDownload:(id)a3 previousEncounteredError:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = SUUIScanOperationRefreshScanContext;
  v8 = [(SUUIScanOperationRefreshScanContext *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_previousDownload, location[0]);
    objc_storeStrong(&v12->_previousEncounteredError, v10);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

@end