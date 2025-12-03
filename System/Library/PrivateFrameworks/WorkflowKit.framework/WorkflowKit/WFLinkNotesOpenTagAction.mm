@interface WFLinkNotesOpenTagAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkNotesOpenTagAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryTags", @"Tags");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end