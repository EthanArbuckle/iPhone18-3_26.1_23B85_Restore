@interface WFLinkNotesDeleteFoldersAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkNotesDeleteFoldersAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryFolders", @"Folders");
  v5 = [v3 localize:v4];

  return v5;
}

@end