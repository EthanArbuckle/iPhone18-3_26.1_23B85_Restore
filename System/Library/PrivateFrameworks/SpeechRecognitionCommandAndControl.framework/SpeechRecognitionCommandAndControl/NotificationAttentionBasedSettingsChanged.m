@interface NotificationAttentionBasedSettingsChanged
@end

@implementation NotificationAttentionBasedSettingsChanged

void ___NotificationAttentionBasedSettingsChanged_block_invoke()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _attentionAwareSettingChanged];
}

@end