@interface CustodianMessageProcessor
- (_TtC13appleaccountd25CustodianMessageProcessor)init;
- (void)messageService:(id)service didReceiveMessage:(id)message fromID:(id)d sentToHandleUri:(id)uri;
@end

@implementation CustodianMessageProcessor

- (void)messageService:(id)service didReceiveMessage:(id)message fromID:(id)d sentToHandleUri:(id)uri
{
  swift_unknownObjectRetain();
  messageCopy = message;
  dCopy = d;
  uriCopy = uri;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_1000EA604(v13, v15, v16, v18);

  sub_100012324(v13, v15);
  swift_unknownObjectRelease();
}

- (_TtC13appleaccountd25CustodianMessageProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end