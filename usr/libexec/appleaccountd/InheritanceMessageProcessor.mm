@interface InheritanceMessageProcessor
- (_TtC13appleaccountd27InheritanceMessageProcessor)init;
- (void)messageService:(id)service didReceiveMessage:(id)message fromID:(id)d sentToHandleUri:(id)uri;
@end

@implementation InheritanceMessageProcessor

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

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_1001DD8C8(v13, v15, v16, v18, v19, v21);

  sub_100012324(v13, v15);
  swift_unknownObjectRelease();
}

- (_TtC13appleaccountd27InheritanceMessageProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end