@interface WBSPasswordBreachContext
- (WBSPasswordBreachContext)initWithConfiguration:(id)configuration store:(id)store;
@end

@implementation WBSPasswordBreachContext

- (WBSPasswordBreachContext)initWithConfiguration:(id)configuration store:(id)store
{
  configurationCopy = configuration;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachContext;
  v9 = [(WBSPasswordBreachContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    v11 = [[WBSPasswordBreachCryptographicOperations alloc] initWithConfiguration:configurationCopy];
    cryptographicOperations = v10->_cryptographicOperations;
    v10->_cryptographicOperations = v11;

    objc_storeStrong(&v10->_store, store);
    v13 = v10;
  }

  return v10;
}

@end