@interface WFLinkVoiceMemosChangeRecordingPlaybackSettingAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkVoiceMemosChangeRecordingPlaybackSettingAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategorySettings", @"Settings");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end