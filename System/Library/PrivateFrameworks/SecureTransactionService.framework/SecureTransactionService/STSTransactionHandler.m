@interface STSTransactionHandler
- (STSSession)parent;
- (STSTransactionHandler)initWithParent:(id)a3;
@end

@implementation STSTransactionHandler

- (STSTransactionHandler)initWithParent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STSTransactionHandler;
  v5 = [(STSTransactionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, v4);
  }

  return v6;
}

- (STSSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end