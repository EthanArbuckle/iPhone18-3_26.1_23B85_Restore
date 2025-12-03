@interface SPCalculationDatastoreToken
- (SPCalculationDatastoreToken)initWithStore:(id)store;
@end

@implementation SPCalculationDatastoreToken

- (SPCalculationDatastoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SPCalculationDatastoreToken;
  v6 = [(SPCalculationDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 2;
  }

  return v7;
}

@end