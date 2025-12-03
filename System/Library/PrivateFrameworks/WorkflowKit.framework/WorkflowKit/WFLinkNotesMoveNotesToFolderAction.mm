@interface WFLinkNotesMoveNotesToFolderAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)parameterSummary;
@end

@implementation WFLinkNotesMoveNotesToFolderAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryFolders", @"Folders");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Move ${entities} to ${container}", @"Move ${entities} to ${container}");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkNotesMoveNotesToFolderAction - Action Name", @"Move Notes to Folder");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end