@interface WFLinkNotesOpenAppLocationAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkNotesOpenAppLocationAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryApp", @"App");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end