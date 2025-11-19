@interface CSDSimulatedConversationManager
- (void)createIncomingConversationWithHandles:(id)a3;
- (void)removeRemoteParticipant:(id)a3 fromConversationWithGroupUUID:(id)a4;
@end

@implementation CSDSimulatedConversationManager

- (void)removeRemoteParticipant:(id)a3 fromConversationWithGroupUUID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  sub_10032C8EC();

  (*(v7 + 8))(v11, v6);
}

- (void)createIncomingConversationWithHandles:(id)a3
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10032D160();
}

@end