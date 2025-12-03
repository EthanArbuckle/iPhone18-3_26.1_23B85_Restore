@interface WFLinkNotesRemoveTagsFromNotesAction
- (id)localizedCategoryWithContext:(id)context;
- (id)parameterSummary;
@end

@implementation WFLinkNotesRemoveTagsFromNotesAction

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
  v3 = WFLocalizedStringResourceWithKey(@"Remove ${tags} from ${notes}", @"Remove ${tags} from ${notes}");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

@end