@interface VoicemailNotificationProvider
- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
@end

@implementation VoicemailNotificationProvider

- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  selfCopy = self;
  sub_10041D0D4();
}

@end