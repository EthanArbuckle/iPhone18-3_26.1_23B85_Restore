@interface InheritanceMessageProcessor
- (_TtC13appleaccountd27InheritanceMessageProcessor)init;
- (void)messageService:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5 sentToHandleUri:(id)a6;
@end

@implementation InheritanceMessageProcessor

- (void)messageService:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5 sentToHandleUri:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22 = self;
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