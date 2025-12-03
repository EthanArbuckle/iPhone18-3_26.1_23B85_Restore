@interface STSTransactionHandler
- (STSSession)parent;
- (STSTransactionHandler)initWithParent:(id)parent;
@end

@implementation STSTransactionHandler

- (STSTransactionHandler)initWithParent:(id)parent
{
  parentCopy = parent;
  v8.receiver = self;
  v8.super_class = STSTransactionHandler;
  v5 = [(STSTransactionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
  }

  return v6;
}

- (STSSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end