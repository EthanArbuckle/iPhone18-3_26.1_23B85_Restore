@interface DDStoreToken
- (DDStoreToken)initWithStore:(id)store;
@end

@implementation DDStoreToken

- (DDStoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = DDStoreToken;
  v6 = [(DDStoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 8;
  }

  return v7;
}

@end