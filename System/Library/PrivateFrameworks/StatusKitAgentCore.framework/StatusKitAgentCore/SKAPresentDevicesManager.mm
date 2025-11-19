@interface SKAPresentDevicesManager
- (SKAPresentDevicesManager)init;
- (SKAPresentDevicesManager)initWithChannelManager:(id)a3 databaseManager:(id)a4 messagingProvider:(id)a5 delegate:(id)a6;
- (void)activePresentDevicesForChannel:(id)a3 withCompletion:(id)a4;
- (void)clearPresentDevicesForChannel:(id)a3;
- (void)handleParticipantPayloads:(id)a3 forChannel:(id)a4 withUpdateType:(int)a5 resetState:(BOOL)a6;
- (void)setParticipantPayloads:(id)a3 forChannel:(id)a4;
- (void)setParticipantPayloads:(id)a3 forChannel:(id)a4 withCompletion:(id)a5;
@end

@implementation SKAPresentDevicesManager

- (SKAPresentDevicesManager)initWithChannelManager:(id)a3 databaseManager:(id)a4 messagingProvider:(id)a5 delegate:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAPresentDevicesManager.init(channelManager:databaseManager:messagingProvider:delegate:)(a3, a4, a5, a6);
}

- (void)activePresentDevicesForChannel:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = a3;
  v9[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> ();
  v9[5] = v7;
  v10 = a3;
  v11 = self;
  v12 = v10;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)partial apply, v9);
}

- (void)clearPresentDevicesForChannel:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v7 = a3;
  v8 = self;
  v9 = v7;
  SKAAsyncQueue.enqueue(_:_:)("clearPresentDevices(for:)", 25, 2, &closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)partial apply, v6);
}

- (void)setParticipantPayloads:(id)a3 forChannel:(id)a4
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = self;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0;
  *(v9 + 72) = ObjectType;
  v10 = a4;
  v11 = self;
  v13 = v10;
  v12 = v11;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v9);
}

- (void)setParticipantPayloads:(id)a3 forChannel:(id)a4 withCompletion:(id)a5
{
  ObjectType = swift_getObjectType();
  v9 = _Block_copy(a5);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = self;
  *(v13 + 32) = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  *(v13 + 40) = v11;
  *(v13 + 48) = 1;
  *(v13 + 56) = v10;
  *(v13 + 64) = 0;
  *(v13 + 72) = ObjectType;
  v14 = a4;
  v15 = self;
  v16 = v14;
  v17 = v15;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v13);
}

- (void)handleParticipantPayloads:(id)a3 forChannel:(id)a4 withUpdateType:(int)a5 resetState:(BOOL)a6
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.isa + OBJC_IVAR___SKAPresentDevicesManager_queue);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = self;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = a6;
  *(v13 + 56) = v11;
  *(v13 + 64) = a5;
  *(v13 + 72) = ObjectType;
  v14 = a4;
  v15 = self;
  v17 = v14;
  v16 = v15;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v13);
}

- (SKAPresentDevicesManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end