@interface WFLinkNotesRemoveTagsFromNotesAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)parameterSummary;
@end

@implementation WFLinkNotesRemoveTagsFromNotesAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryTags", @"Tags");
  v5 = [v3 localize:v4];

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