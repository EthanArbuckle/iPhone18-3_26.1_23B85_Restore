@interface SUCoreConfigParam
- (SUCoreConfigParam)initWithError:(id)error operation:(unint64_t)operation;
- (SUCoreConfigParam)initWithLocatedAsset:(id)asset;
- (id)description;
@end

@implementation SUCoreConfigParam

- (SUCoreConfigParam)initWithError:(id)error operation:(unint64_t)operation
{
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = SUCoreConfigParam;
  v8 = [(SUCoreConfigParam *)&v12 init];
  v9 = v8;
  if (v8)
  {
    locatedAsset = v8->_locatedAsset;
    v8->_locatedAsset = 0;

    objc_storeStrong(&v9->_error, error);
    v9->_operation = operation;
  }

  return v9;
}

- (SUCoreConfigParam)initWithLocatedAsset:(id)asset
{
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = SUCoreConfigParam;
  v6 = [(SUCoreConfigParam *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locatedAsset, asset);
    error = v7->_error;
    v7->_error = 0;

    v7->_operation = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  locatedAsset = [(SUCoreConfigParam *)self locatedAsset];
  error = [(SUCoreConfigParam *)self error];
  domain = [error domain];
  error2 = [(SUCoreConfigParam *)self error];
  v8 = [v3 stringWithFormat:@"SUCoreConfigParam(locatedAsset:%@, error:%@ %ld, operation:%ld)", locatedAsset, domain, objc_msgSend(error2, "code"), -[SUCoreConfigParam operation](self, "operation")];

  return v8;
}

@end