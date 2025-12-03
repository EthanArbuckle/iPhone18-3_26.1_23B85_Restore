@interface CSDRTCReporter
- (void)reportingController:(id)controller AVCBlobRecoveryStartedForConversation:(id)conversation;
- (void)reportingController:(id)controller AVCBlobRecoveryTimedOutForConversation:(id)conversation;
- (void)reportingController:(id)controller activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)reportingController:(id)controller addedActiveConversation:(id)conversation;
- (void)reportingController:(id)controller callUUID:(id)d withUserScore:(int)score;
- (void)reportingController:(id)controller createConversationReportingSessionForConversation:(id)conversation;
- (void)reportingController:(id)controller oneToOneModeSwitchFailureForConversation:(id)conversation isOneToOneMode:(BOOL)mode;
- (void)reportingController:(id)controller participantClusterChangedForConversation:(id)conversation;
- (void)reportingController:(id)controller pickedRoute:(id)route forCall:(id)call;
- (void)reportingController:(id)controller receivedConnectionSetupReport:(id)report eventType:(int64_t)type forConversation:(id)conversation;
- (void)reportingController:(id)controller receivedHandoffReport:(id)report forConversation:(id)conversation;
- (void)reportingController:(id)controller receivedIDSChat:(id)chat;
- (void)reportingController:(id)controller receivedIDSReports:(id)reports forSessionWithUUID:(id)d;
- (void)reportingController:(id)controller receivedLetMeInRequestForConversation:(id)conversation;
- (void)reportingController:(id)controller remoteMemberNotInMemberListForConversation:(id)conversation;
- (void)reportingController:(id)controller remoteMembersChangedForConversation:(id)conversation;
- (void)reportingController:(id)controller removedActiveConversation:(id)conversation;
- (void)reportingController:(id)controller sentLetMeInResponseForConversation:(id)conversation isApproved:(BOOL)approved;
- (void)reportingController:(id)controller stateChangedForConversation:(id)conversation;
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
- (void)reportingController:(id)controller timedOutPickingRoute:(id)route forCall:(id)call;
- (void)reportingController:(id)controller transitionAttemptForConversation:(id)conversation;
@end

@implementation CSDRTCReporter

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  controllerCopy = controller;
  callCopy = call;
  selfCopy = self;
  sub_100036140();
}

- (void)reportingController:(id)controller createConversationReportingSessionForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller timedOutPickingRoute:(id)route forCall:(id)call
{
  controllerCopy = controller;
  routeCopy = route;
  callCopy = call;
  selfCopy = self;
  sub_1002BF808();
}

- (void)reportingController:(id)controller pickedRoute:(id)route forCall:(id)call
{
  controllerCopy = controller;
  routeCopy = route;
  callCopy = call;
  selfCopy = self;
  sub_1002BF808();
}

- (void)reportingController:(id)controller stateChangedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C2044();
}

- (void)reportingController:(id)controller remoteMembersChangedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller participantClusterChangedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller activeRemoteParticipantsChangedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller addedActiveConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller removedActiveConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C2044();
}

- (void)reportingController:(id)controller AVCBlobRecoveryStartedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller remoteMemberNotInMemberListForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller transitionAttemptForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller AVCBlobRecoveryTimedOutForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller oneToOneModeSwitchFailureForConversation:(id)conversation isOneToOneMode:(BOOL)mode
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5F30();
}

- (void)reportingController:(id)controller receivedIDSChat:(id)chat
{
  controllerCopy = controller;
  chatCopy = chat;
  selfCopy = self;
  sub_1002C2044();
}

- (void)reportingController:(id)controller receivedIDSReports:(id)reports forSessionWithUUID:(id)d
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1002C27B4();

  (*(v8 + 8))(v12, v7);
}

- (void)reportingController:(id)controller receivedHandoffReport:(id)report forConversation:(id)conversation
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C49A8();
}

- (void)reportingController:(id)controller receivedConnectionSetupReport:(id)report eventType:(int64_t)type forConversation:(id)conversation
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C3F14();
}

- (void)reportingController:(id)controller receivedLetMeInRequestForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)controller sentLetMeInResponseForConversation:(id)conversation isApproved:(BOOL)approved
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002C5F30();
}

- (void)reportingController:(id)controller callUUID:(id)d withUserScore:(int)score
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1002BE480();
}

@end