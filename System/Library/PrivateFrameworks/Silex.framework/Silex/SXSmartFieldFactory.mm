@interface SXSmartFieldFactory
- (SXSmartFieldFactory)initWithActionProvider:(id)provider actionSerializer:(id)serializer;
- (id)smartFieldForAddition:(id)addition withContext:(id)context;
@end

@implementation SXSmartFieldFactory

- (SXSmartFieldFactory)initWithActionProvider:(id)provider actionSerializer:(id)serializer
{
  providerCopy = provider;
  serializerCopy = serializer;
  v12.receiver = self;
  v12.super_class = SXSmartFieldFactory;
  v9 = [(SXSmartFieldFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionProvider, provider);
    objc_storeStrong(&v10->_actionSerializer, serializer);
  }

  return v10;
}

- (id)smartFieldForAddition:(id)addition withContext:(id)context
{
  contextCopy = context;
  additionCopy = addition;
  actionProvider = [(SXSmartFieldFactory *)self actionProvider];
  v9 = [actionProvider actionForAddition:additionCopy];

  if (v9)
  {
    actionSerializer = [(SXSmartFieldFactory *)self actionSerializer];
    v11 = [actionSerializer URLForAction:v9 type:1];

    v12 = [[SXSmartField alloc] initWithContext:contextCopy URL:v11 action:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end