@interface WFLinkShortcutsSearchShortcutsAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkShortcutsSearchShortcutsAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"ShortcutsSubcategoryShortcuts", @"Shortcuts");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end