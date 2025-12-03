@interface GroupFaceTimeNotificationProvider
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation requestedScreenShareForParticipant:(id)participant;
- (void)conversationManager:(id)manager handoffEligibilityChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager handoffEligibilityChangedToConversation:(id)conversation fromPreviousConversation:(id)previousConversation;
- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager pendingMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager trackedPendingMember:(id)member forConversationLink:(id)link;
- (void)conversationsChangedForConversationManager:(id)manager;
@end

@implementation GroupFaceTimeNotificationProvider

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D53F4();
}

- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D5F24(selfCopy, conversationCopy);
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D617C();
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D67B8(selfCopy, conversationCopy);
}

- (void)conversationManager:(id)manager pendingMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D6920(selfCopy, conversationCopy);
}

- (void)conversationManager:(id)manager trackedPendingMember:(id)member forConversationLink:(id)link
{
  managerCopy = manager;
  memberCopy = member;
  linkCopy = link;
  selfCopy = self;
  sub_1002D6C88();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D766C();
}

- (void)conversationManager:(id)manager conversation:(id)conversation requestedScreenShareForParticipant:(id)participant
{
  managerCopy = manager;
  conversationCopy = conversation;
  participantCopy = participant;
  selfCopy = self;
  sub_1002D7FC4(selfCopy, conversationCopy, participantCopy);
}

- (void)conversationsChangedForConversationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1002D8304();
}

- (void)conversationManager:(id)manager handoffEligibilityChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_1002D9DF8();
}

- (void)conversationManager:(id)manager handoffEligibilityChangedToConversation:(id)conversation fromPreviousConversation:(id)previousConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  previousConversationCopy = previousConversation;
  selfCopy = self;
  sub_1002DA198();
}

@end