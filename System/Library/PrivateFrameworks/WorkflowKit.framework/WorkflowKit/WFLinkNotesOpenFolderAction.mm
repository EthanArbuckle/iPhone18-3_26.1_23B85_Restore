@interface WFLinkNotesOpenFolderAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkNotesOpenFolderAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryFolders", @"Folders");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end