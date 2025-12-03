@interface WFLinkNotesOpenAccountAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkNotesOpenAccountAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"NotesSubcategoryAccounts", @"Accounts");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end