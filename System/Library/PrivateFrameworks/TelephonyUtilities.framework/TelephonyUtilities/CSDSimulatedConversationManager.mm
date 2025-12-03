@interface CSDSimulatedConversationManager
- (void)createIncomingConversationWithHandles:(id)handles;
- (void)removeRemoteParticipant:(id)participant fromConversationWithGroupUUID:(id)d;
@end

@implementation CSDSimulatedConversationManager

- (void)removeRemoteParticipant:(id)participant fromConversationWithGroupUUID:(id)d
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  participantCopy = participant;
  selfCopy = self;
  sub_10032C8EC();

  (*(v7 + 8))(v11, v6);
}

- (void)createIncomingConversationWithHandles:(id)handles
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10032D160();
}

@end