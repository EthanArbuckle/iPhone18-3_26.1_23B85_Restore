@interface CSDPendingConversationMessageHandler
- (CSDPendingConversationMessageHandler)initWithQueue:(id)queue serverBag:(id)bag featureFlags:(id)flags;
- (void)enqueueMessageRetryAttemptForMessage:(id)message messageID:(id)d attemptCount:(int64_t)count processingBlock:(id)block;
- (void)retryMessagesForGroupUUID:(id)d;
@end

@implementation CSDPendingConversationMessageHandler

- (CSDPendingConversationMessageHandler)initWithQueue:(id)queue serverBag:(id)bag featureFlags:(id)flags
{
  queueCopy = queue;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1002FE184(queueCopy, bag, flags);
}

- (void)enqueueMessageRetryAttemptForMessage:(id)message messageID:(id)d attemptCount:(int64_t)count processingBlock:(id)block
{
  v9 = _Block_copy(block);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  messageCopy = message;
  selfCopy = self;
  sub_1002FE24C(messageCopy, v10, v12, count, sub_10001755C, v13);
}

- (void)retryMessagesForGroupUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002FF404(v9);

  (*(v5 + 8))(v9, v4);
}

@end