@interface WFLinkNotesCreateFolderAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkNotesCreateFolderAction

- (id)overrideLabelsByParameter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"name";
  v2 = WFLocalizedStringResourceWithKey(@"Folder Name", @"Folder Name");
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryFolders", @"Folders");
  v5 = [v3 localize:v4];

  return v5;
}

@end