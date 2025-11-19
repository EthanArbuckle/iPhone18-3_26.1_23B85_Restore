@interface CSDConversationInvitationResolver
- (BOOL)shouldShowInvitationRingingUIForConversation:(id)a3 handle:(id)a4;
- (BOOL)shouldShowInvitationRingingUIForConversation:(id)a3 handle:(id)a4 invitationMessagePreferences:(id)a5;
- (BOOL)shouldShowInvitationUserNotificationForConversation:(id)a3 handle:(id)a4;
- (BOOL)shouldStartRingingTimeoutForConversation:(id)a3 handle:(id)a4;
@end

@implementation CSDConversationInvitationResolver

- (BOOL)shouldShowInvitationUserNotificationForConversation:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_1003C7C74(v6, a4, 2);

  return a4 & 1;
}

- (BOOL)shouldShowInvitationRingingUIForConversation:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_1003C7C74(v6, a4, 4);

  return a4 & 1;
}

- (BOOL)shouldShowInvitationRingingUIForConversation:(id)a3 handle:(id)a4 invitationMessagePreferences:(id)a5
{
  sub_1003C8570();
  sub_1003C85B4();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(a4) = sub_1003C7DC0(v9, a4, v8);

  return a4 & 1;
}

- (BOOL)shouldStartRingingTimeoutForConversation:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_1003C7F60(v6, a4);

  return a4 & 1;
}

@end