@interface SUCoreConfigParam
- (SUCoreConfigParam)initWithError:(id)a3 operation:(unint64_t)a4;
- (SUCoreConfigParam)initWithLocatedAsset:(id)a3;
- (id)description;
@end

@implementation SUCoreConfigParam

- (SUCoreConfigParam)initWithError:(id)a3 operation:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SUCoreConfigParam;
  v8 = [(SUCoreConfigParam *)&v12 init];
  v9 = v8;
  if (v8)
  {
    locatedAsset = v8->_locatedAsset;
    v8->_locatedAsset = 0;

    objc_storeStrong(&v9->_error, a3);
    v9->_operation = a4;
  }

  return v9;
}

- (SUCoreConfigParam)initWithLocatedAsset:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUCoreConfigParam;
  v6 = [(SUCoreConfigParam *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locatedAsset, a3);
    error = v7->_error;
    v7->_error = 0;

    v7->_operation = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(SUCoreConfigParam *)self locatedAsset];
  v5 = [(SUCoreConfigParam *)self error];
  v6 = [v5 domain];
  v7 = [(SUCoreConfigParam *)self error];
  v8 = [v3 stringWithFormat:@"SUCoreConfigParam(locatedAsset:%@, error:%@ %ld, operation:%ld)", v4, v6, objc_msgSend(v7, "code"), -[SUCoreConfigParam operation](self, "operation")];

  return v8;
}

@end