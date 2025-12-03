@interface WFLinkVoiceMemosDeleteRecordingsAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkVoiceMemosDeleteRecordingsAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryRecordings", @"Recordings");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end