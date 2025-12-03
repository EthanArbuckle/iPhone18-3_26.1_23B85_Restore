@interface WFLinkVoiceMemosDeleteFoldersAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkVoiceMemosDeleteFoldersAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryFolders", @"Folders");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end