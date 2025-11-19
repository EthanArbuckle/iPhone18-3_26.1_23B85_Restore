@interface WFLinkShortcutsSearchShortcutsAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkShortcutsSearchShortcutsAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"ShortcutsSubcategoryShortcuts", @"Shortcuts");
  v5 = [v3 localize:v4];

  return v5;
}

@end