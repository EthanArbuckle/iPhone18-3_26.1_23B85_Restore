@interface WFLinkVoiceMemosOpenRecordingAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkVoiceMemosOpenRecordingAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryRecordings", @"Recordings");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end