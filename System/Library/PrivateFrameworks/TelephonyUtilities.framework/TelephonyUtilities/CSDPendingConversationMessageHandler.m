@interface CSDPendingConversationMessageHandler
- (CSDPendingConversationMessageHandler)initWithQueue:(id)a3 serverBag:(id)a4 featureFlags:(id)a5;
- (void)enqueueMessageRetryAttemptForMessage:(id)a3 messageID:(id)a4 attemptCount:(int64_t)a5 processingBlock:(id)a6;
- (void)retryMessagesForGroupUUID:(id)a3;
@end

@implementation CSDPendingConversationMessageHandler

- (CSDPendingConversationMessageHandler)initWithQueue:(id)a3 serverBag:(id)a4 featureFlags:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1002FE184(v7, a4, a5);
}

- (void)enqueueMessageRetryAttemptForMessage:(id)a3 messageID:(id)a4 attemptCount:(int64_t)a5 processingBlock:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = a3;
  v15 = self;
  sub_1002FE24C(v14, v10, v12, a5, sub_10001755C, v13);
}

- (void)retryMessagesForGroupUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_1002FF404(v9);

  (*(v5 + 8))(v9, v4);
}

@end