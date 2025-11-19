@interface SVXModuleFactory
- (SVXModuleFactory)initWithInstanceContext:(id)a3 preferences:(id)a4 analytics:(id)a5;
- (id)createModuleWithIdentifier:(id)a3 class:(Class)a4 performer:(id)a5;
@end

@implementation SVXModuleFactory

- (id)createModuleWithIdentifier:(id)a3 class:(Class)a4 performer:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[SVXModule alloc] initWithIdentifier:v9 instanceClass:a4 instanceContext:self->_instanceContext preferences:self->_preferences analytics:self->_analytics performer:v8];

  return v10;
}

- (SVXModuleFactory)initWithInstanceContext:(id)a3 preferences:(id)a4 analytics:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SVXModuleFactory;
  v12 = [(SVXModuleFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instanceContext, a3);
    objc_storeStrong(&v13->_preferences, a4);
    objc_storeStrong(&v13->_analytics, a5);
  }

  return v13;
}

@end