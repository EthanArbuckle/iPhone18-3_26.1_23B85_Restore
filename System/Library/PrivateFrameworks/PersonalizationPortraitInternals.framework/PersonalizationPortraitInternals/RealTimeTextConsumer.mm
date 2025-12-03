@interface RealTimeTextConsumer
- (id)consumeInteractionWithContext:(id)context;
- (id)consumeMessagesContentWithContext:(id)context;
- (id)consumeRemindersContentWithContext:(id)context;
- (id)consumeSafariContentWithContext:(id)context;
- (id)consumerName;
- (id)deleteDataDerivedFromContentMatchingRequest:(id)request;
@end

@implementation RealTimeTextConsumer

- (id)consumerName
{
  sub_23224DEE8();
  v2 = sub_232401168();

  return v2;
}

- (id)deleteDataDerivedFromContentMatchingRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_23224DF64(requestCopy);

  return v6;
}

- (id)consumeInteractionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_23225174C(contextCopy);

  return v6;
}

- (id)consumeSafariContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232258E4C(contextCopy);

  return v6;
}

- (id)consumeMessagesContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232258EE4(contextCopy);

  return v6;
}

- (id)consumeRemindersContentWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_232259048(contextCopy);

  return v6;
}

@end