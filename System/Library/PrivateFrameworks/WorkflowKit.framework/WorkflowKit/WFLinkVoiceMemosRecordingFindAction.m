@interface WFLinkVoiceMemosRecordingFindAction
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkVoiceMemosRecordingFindAction

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Recordings", @"Recordings");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkVoiceMemosRecordingFindAction - Action Name", @"Find Recordings");
  v5 = [v3 localize:v4];

  return v5;
}

@end