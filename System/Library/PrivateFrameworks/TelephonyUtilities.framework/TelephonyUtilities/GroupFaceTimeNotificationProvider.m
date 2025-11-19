@interface GroupFaceTimeNotificationProvider
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 conversation:(id)a4 requestedScreenShareForParticipant:(id)a5;
- (void)conversationManager:(id)a3 handoffEligibilityChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 handoffEligibilityChangedToConversation:(id)a4 fromPreviousConversation:(id)a5;
- (void)conversationManager:(id)a3 letMeInRequestStateChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 pendingMembersChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 trackedPendingMember:(id)a4 forConversationLink:(id)a5;
- (void)conversationsChangedForConversationManager:(id)a3;
@end

@implementation GroupFaceTimeNotificationProvider

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D53F4();
}

- (void)conversationManager:(id)a3 letMeInRequestStateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D5F24(v8, v7);
}

- (void)conversationManager:(id)a3 remoteMembersChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D617C();
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D67B8(v8, v7);
}

- (void)conversationManager:(id)a3 pendingMembersChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D6920(v8, v7);
}

- (void)conversationManager:(id)a3 trackedPendingMember:(id)a4 forConversationLink:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1002D6C88();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D766C();
}

- (void)conversationManager:(id)a3 conversation:(id)a4 requestedScreenShareForParticipant:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1002D7FC4(v11, v9, v10);
}

- (void)conversationsChangedForConversationManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002D8304();
}

- (void)conversationManager:(id)a3 handoffEligibilityChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002D9DF8();
}

- (void)conversationManager:(id)a3 handoffEligibilityChangedToConversation:(id)a4 fromPreviousConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1002DA198();
}

@end