@interface CSDRTCReporter
- (void)reportingController:(id)a3 AVCBlobRecoveryStartedForConversation:(id)a4;
- (void)reportingController:(id)a3 AVCBlobRecoveryTimedOutForConversation:(id)a4;
- (void)reportingController:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)reportingController:(id)a3 addedActiveConversation:(id)a4;
- (void)reportingController:(id)a3 callUUID:(id)a4 withUserScore:(int)a5;
- (void)reportingController:(id)a3 createConversationReportingSessionForConversation:(id)a4;
- (void)reportingController:(id)a3 oneToOneModeSwitchFailureForConversation:(id)a4 isOneToOneMode:(BOOL)a5;
- (void)reportingController:(id)a3 participantClusterChangedForConversation:(id)a4;
- (void)reportingController:(id)a3 pickedRoute:(id)a4 forCall:(id)a5;
- (void)reportingController:(id)a3 receivedConnectionSetupReport:(id)a4 eventType:(int64_t)a5 forConversation:(id)a6;
- (void)reportingController:(id)a3 receivedHandoffReport:(id)a4 forConversation:(id)a5;
- (void)reportingController:(id)a3 receivedIDSChat:(id)a4;
- (void)reportingController:(id)a3 receivedIDSReports:(id)a4 forSessionWithUUID:(id)a5;
- (void)reportingController:(id)a3 receivedLetMeInRequestForConversation:(id)a4;
- (void)reportingController:(id)a3 remoteMemberNotInMemberListForConversation:(id)a4;
- (void)reportingController:(id)a3 remoteMembersChangedForConversation:(id)a4;
- (void)reportingController:(id)a3 removedActiveConversation:(id)a4;
- (void)reportingController:(id)a3 sentLetMeInResponseForConversation:(id)a4 isApproved:(BOOL)a5;
- (void)reportingController:(id)a3 stateChangedForConversation:(id)a4;
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
- (void)reportingController:(id)a3 timedOutPickingRoute:(id)a4 forCall:(id)a5;
- (void)reportingController:(id)a3 transitionAttemptForConversation:(id)a4;
@end

@implementation CSDRTCReporter

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100036140();
}

- (void)reportingController:(id)a3 createConversationReportingSessionForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 timedOutPickingRoute:(id)a4 forCall:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1002BF808();
}

- (void)reportingController:(id)a3 pickedRoute:(id)a4 forCall:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1002BF808();
}

- (void)reportingController:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C2044();
}

- (void)reportingController:(id)a3 remoteMembersChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 participantClusterChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 addedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C2044();
}

- (void)reportingController:(id)a3 AVCBlobRecoveryStartedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 remoteMemberNotInMemberListForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 transitionAttemptForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 AVCBlobRecoveryTimedOutForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 oneToOneModeSwitchFailureForConversation:(id)a4 isOneToOneMode:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002C5F30();
}

- (void)reportingController:(id)a3 receivedIDSChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C2044();
}

- (void)reportingController:(id)a3 receivedIDSReports:(id)a4 forSessionWithUUID:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_1002C27B4();

  (*(v8 + 8))(v12, v7);
}

- (void)reportingController:(id)a3 receivedHandoffReport:(id)a4 forConversation:(id)a5
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_1002C49A8();
}

- (void)reportingController:(id)a3 receivedConnectionSetupReport:(id)a4 eventType:(int64_t)a5 forConversation:(id)a6
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a6;
  v11 = self;
  sub_1002C3F14();
}

- (void)reportingController:(id)a3 receivedLetMeInRequestForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002C5B54();
}

- (void)reportingController:(id)a3 sentLetMeInResponseForConversation:(id)a4 isApproved:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002C5F30();
}

- (void)reportingController:(id)a3 callUUID:(id)a4 withUserScore:(int)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1002BE480();
}

@end