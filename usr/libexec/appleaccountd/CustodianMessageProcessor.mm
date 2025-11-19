@interface CustodianMessageProcessor
- (_TtC13appleaccountd25CustodianMessageProcessor)init;
- (void)messageService:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5 sentToHandleUri:(id)a6;
@end

@implementation CustodianMessageProcessor

- (void)messageService:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5 sentToHandleUri:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v19 = self;
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