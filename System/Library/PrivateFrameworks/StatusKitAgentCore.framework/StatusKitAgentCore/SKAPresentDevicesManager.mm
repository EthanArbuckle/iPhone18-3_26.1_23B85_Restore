@interface SKAPresentDevicesManager
- (SKAPresentDevicesManager)init;
- (SKAPresentDevicesManager)initWithChannelManager:(id)manager databaseManager:(id)databaseManager messagingProvider:(id)provider delegate:(id)delegate;
- (void)activePresentDevicesForChannel:(id)channel withCompletion:(id)completion;
- (void)clearPresentDevicesForChannel:(id)channel;
- (void)handleParticipantPayloads:(id)payloads forChannel:(id)channel withUpdateType:(int)type resetState:(BOOL)state;
- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel;
- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel withCompletion:(id)completion;
@end

@implementation SKAPresentDevicesManager

- (SKAPresentDevicesManager)initWithChannelManager:(id)manager databaseManager:(id)databaseManager messagingProvider:(id)provider delegate:(id)delegate
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAPresentDevicesManager.init(channelManager:databaseManager:messagingProvider:delegate:)(manager, databaseManager, provider, delegate);
}

- (void)activePresentDevicesForChannel:(id)channel withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = channel;
  v9[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> ();
  v9[5] = v7;
  channelCopy = channel;
  selfCopy = self;
  v12 = channelCopy;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)partial apply, v9);
}

- (void)clearPresentDevicesForChannel:(id)channel
{
  v5 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = channel;
  channelCopy = channel;
  selfCopy = self;
  v9 = channelCopy;
  SKAAsyncQueue.enqueue(_:_:)("clearPresentDevices(for:)", 25, 2, &closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)partial apply, v6);
}

- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = channel;
  *(v9 + 24) = self;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0;
  *(v9 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v13 = channelCopy;
  v12 = selfCopy;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v9);
}

- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel withCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v9 = _Block_copy(completion);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = channel;
  *(v13 + 24) = self;
  *(v13 + 32) = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  *(v13 + 40) = v11;
  *(v13 + 48) = 1;
  *(v13 + 56) = v10;
  *(v13 + 64) = 0;
  *(v13 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v16 = channelCopy;
  v17 = selfCopy;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v13);
}

- (void)handleParticipantPayloads:(id)payloads forChannel:(id)channel withUpdateType:(int)type resetState:(BOOL)state
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = channel;
  *(v13 + 24) = self;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = state;
  *(v13 + 56) = v11;
  *(v13 + 64) = type;
  *(v13 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v17 = channelCopy;
  v16 = selfCopy;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v13);
}

- (SKAPresentDevicesManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end