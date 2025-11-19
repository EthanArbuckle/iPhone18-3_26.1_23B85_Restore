@interface WBSPasswordBreachContext
- (WBSPasswordBreachContext)initWithConfiguration:(id)a3 store:(id)a4;
@end

@implementation WBSPasswordBreachContext

- (WBSPasswordBreachContext)initWithConfiguration:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachContext;
  v9 = [(WBSPasswordBreachContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [[WBSPasswordBreachCryptographicOperations alloc] initWithConfiguration:v7];
    cryptographicOperations = v10->_cryptographicOperations;
    v10->_cryptographicOperations = v11;

    objc_storeStrong(&v10->_store, a4);
    v13 = v10;
  }

  return v10;
}

@end