@interface WFLinkNotesAddTagsToNotesAction
- (id)localizedCategoryWithContext:(id)context;
- (id)parameterSummary;
@end

@implementation WFLinkNotesAddTagsToNotesAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryTags", @"Tags");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Add ${tags} to ${notes}", @"Add ${tags} to ${notes}");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

@end