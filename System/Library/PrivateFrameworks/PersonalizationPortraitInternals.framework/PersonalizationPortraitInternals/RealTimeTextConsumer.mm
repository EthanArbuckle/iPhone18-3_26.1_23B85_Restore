@interface RealTimeTextConsumer
- (id)consumeInteractionWithContext:(id)a3;
- (id)consumeMessagesContentWithContext:(id)a3;
- (id)consumeRemindersContentWithContext:(id)a3;
- (id)consumeSafariContentWithContext:(id)a3;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3;
@end

@implementation RealTimeTextConsumer

- (id)consumerName
{
  sub_23224DEE8();
  v2 = sub_232401168();

  return v2;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23224DF64(v4);

  return v6;
}

- (id)consumeInteractionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23225174C(v4);

  return v6;
}

- (id)consumeSafariContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232258E4C(v4);

  return v6;
}

- (id)consumeMessagesContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232258EE4(v4);

  return v6;
}

- (id)consumeRemindersContentWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_232259048(v4);

  return v6;
}

@end