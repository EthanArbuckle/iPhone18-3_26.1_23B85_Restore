@interface SFDeviceAssetRequestConfiguration
- (SFDeviceAssetRequestConfiguration)initWithQueryResultHandler:(id)handler;
- (id)description;
@end

@implementation SFDeviceAssetRequestConfiguration

- (SFDeviceAssetRequestConfiguration)initWithQueryResultHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = SFDeviceAssetRequestConfiguration;
  v5 = [(SFDeviceAssetRequestConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    queryResultHandler = v5->_queryResultHandler;
    v5->_queryResultHandler = v6;
  }

  return v5;
}

- (id)description
{
  v12 = objc_opt_class();
  NSAppendPrintF();
  v3 = 0;
  [(SFDeviceAssetRequestConfiguration *)self timeout:v12];
  if (fabs(v4) >= 0.00000011920929)
  {
    [(SFDeviceAssetRequestConfiguration *)self timeout];
    v13 = v5;
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  downloadCompletionHandler = [(SFDeviceAssetRequestConfiguration *)self downloadCompletionHandler];

  if (downloadCompletionHandler)
  {
    downloadCompletionHandler2 = [(SFDeviceAssetRequestConfiguration *)self downloadCompletionHandler];
    NSAppendPrintF();
    v9 = v3;

    v3 = v9;
  }

  NSAppendPrintF();
  v10 = v3;

  return v3;
}

@end