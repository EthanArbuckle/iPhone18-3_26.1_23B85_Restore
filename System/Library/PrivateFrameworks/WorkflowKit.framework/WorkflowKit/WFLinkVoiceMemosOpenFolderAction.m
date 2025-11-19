@interface WFLinkVoiceMemosOpenFolderAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkVoiceMemosOpenFolderAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"VoiceMemosSubcategoryFolders", @"Folders");
  v5 = [v3 localize:v4];

  return v5;
}

@end