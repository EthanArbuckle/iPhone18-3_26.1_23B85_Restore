@interface StructuredConsumer
- (id)consumeInteractionWithContext:(id)context;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)request;
@end

@implementation StructuredConsumer

- (id)deleteDataDerivedFromContentMatchingRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_23224DF64(requestCopy);

  return v6;
}

- (id)consumerName
{
  sub_23224FDE4();
  v2 = sub_232401168();

  return v2;
}

- (id)consumeInteractionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232256EB8(contextCopy);

  return v6;
}

@end