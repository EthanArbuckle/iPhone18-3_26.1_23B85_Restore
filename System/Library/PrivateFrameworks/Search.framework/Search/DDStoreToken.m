@interface DDStoreToken
- (DDStoreToken)initWithStore:(id)a3;
@end

@implementation DDStoreToken

- (DDStoreToken)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDStoreToken;
  v6 = [(DDStoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_type = 8;
  }

  return v7;
}

@end