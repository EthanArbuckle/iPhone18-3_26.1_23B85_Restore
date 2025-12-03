@interface WFLinkVoiceMemosRecordingFindAction
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkVoiceMemosRecordingFindAction

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Recordings", @"Recordings");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkVoiceMemosRecordingFindAction - Action Name", @"Find Recordings");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end