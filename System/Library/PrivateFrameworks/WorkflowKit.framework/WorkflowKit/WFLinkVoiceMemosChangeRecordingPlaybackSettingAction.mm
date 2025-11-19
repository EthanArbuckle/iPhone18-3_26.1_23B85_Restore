@interface WFLinkVoiceMemosChangeRecordingPlaybackSettingAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkVoiceMemosChangeRecordingPlaybackSettingAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategorySettings", @"Settings");
  v5 = [v3 localize:v4];

  return v5;
}

@end