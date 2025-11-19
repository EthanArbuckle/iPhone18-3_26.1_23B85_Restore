@interface StructuredConsumer
- (id)consumeInteractionWithContext:(id)a3;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3;
@end

@implementation StructuredConsumer

- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23224DF64(v4);

  return v6;
}

- (id)consumerName
{
  sub_23224FDE4();
  v2 = sub_232401168();

  return v2;
}

- (id)consumeInteractionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232256EB8(v4);

  return v6;
}

@end