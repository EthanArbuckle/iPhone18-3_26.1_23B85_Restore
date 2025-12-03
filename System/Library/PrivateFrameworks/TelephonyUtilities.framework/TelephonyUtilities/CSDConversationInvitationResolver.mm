@interface CSDConversationInvitationResolver
- (BOOL)shouldShowInvitationRingingUIForConversation:(id)conversation handle:(id)handle;
- (BOOL)shouldShowInvitationRingingUIForConversation:(id)conversation handle:(id)handle invitationMessagePreferences:(id)preferences;
- (BOOL)shouldShowInvitationUserNotificationForConversation:(id)conversation handle:(id)handle;
- (BOOL)shouldStartRingingTimeoutForConversation:(id)conversation handle:(id)handle;
@end

@implementation CSDConversationInvitationResolver

- (BOOL)shouldShowInvitationUserNotificationForConversation:(id)conversation handle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  selfCopy = self;
  LOBYTE(handle) = sub_1003C7C74(conversationCopy, handle, 2);

  return handle & 1;
}

- (BOOL)shouldShowInvitationRingingUIForConversation:(id)conversation handle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  selfCopy = self;
  LOBYTE(handle) = sub_1003C7C74(conversationCopy, handle, 4);

  return handle & 1;
}

- (BOOL)shouldShowInvitationRingingUIForConversation:(id)conversation handle:(id)handle invitationMessagePreferences:(id)preferences
{
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  conversationCopy = conversation;
  handleCopy = handle;
  selfCopy = self;
  LOBYTE(handle) = sub_1003C7DC0(conversationCopy, handle, v8);

  return handle & 1;
}

- (BOOL)shouldStartRingingTimeoutForConversation:(id)conversation handle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  selfCopy = self;
  LOBYTE(handle) = sub_1003C7F60(conversationCopy, handle);

  return handle & 1;
}

@end