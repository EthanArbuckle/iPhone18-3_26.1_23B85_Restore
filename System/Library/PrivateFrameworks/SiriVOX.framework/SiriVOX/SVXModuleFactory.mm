@interface SVXModuleFactory
- (SVXModuleFactory)initWithInstanceContext:(id)context preferences:(id)preferences analytics:(id)analytics;
- (id)createModuleWithIdentifier:(id)identifier class:(Class)class performer:(id)performer;
@end

@implementation SVXModuleFactory

- (id)createModuleWithIdentifier:(id)identifier class:(Class)class performer:(id)performer
{
  performerCopy = performer;
  identifierCopy = identifier;
  v10 = [[SVXModule alloc] initWithIdentifier:identifierCopy instanceClass:class instanceContext:self->_instanceContext preferences:self->_preferences analytics:self->_analytics performer:performerCopy];

  return v10;
}

- (SVXModuleFactory)initWithInstanceContext:(id)context preferences:(id)preferences analytics:(id)analytics
{
  contextCopy = context;
  preferencesCopy = preferences;
  analyticsCopy = analytics;
  v15.receiver = self;
  v15.super_class = SVXModuleFactory;
  v12 = [(SVXModuleFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instanceContext, context);
    objc_storeStrong(&v13->_preferences, preferences);
    objc_storeStrong(&v13->_analytics, analytics);
  }

  return v13;
}

@end