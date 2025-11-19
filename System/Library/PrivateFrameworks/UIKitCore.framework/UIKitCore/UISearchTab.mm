@interface UISearchTab
- (UISearchTab)initWithViewControllerProvider:(id)a3;
- (id)_overrideTabBarItem;
- (void)setCustomSearchFieldConfiguration:(id)a3;
@end

@implementation UISearchTab

- (id)_overrideTabBarItem
{
  v2 = [[UITabBarItem alloc] initWithTabBarSystemItem:8 tag:0];

  return v2;
}

- (UISearchTab)initWithViewControllerProvider:(id)a3
{
  v4 = a3;
  if (qword_1ED4A0800 != -1)
  {
    dispatch_once(&qword_1ED4A0800, &__block_literal_global_505);
  }

  v8.receiver = self;
  v8.super_class = UISearchTab;
  v5 = [(UITab *)&v8 initWithTitle:_MergedGlobals_1271 image:qword_1ED4A07F8 identifier:@"com.apple.UIKit.Search" viewControllerProvider:v4];
  v6 = v5;
  if (v5)
  {
    [(UITab *)v5 setPreferredPlacement:4];
  }

  return v6;
}

void __46__UISearchTab_initWithViewControllerProvider___block_invoke()
{
  v0 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
  v1 = _MergedGlobals_1271;
  _MergedGlobals_1271 = v0;

  v2 = [UIImage systemImageNamed:@"magnifyingglass"];
  v3 = qword_1ED4A07F8;
  qword_1ED4A07F8 = v2;
}

- (void)setCustomSearchFieldConfiguration:(id)a3
{
  v5 = a3;
  if (self->_customSearchFieldConfiguration != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_customSearchFieldConfiguration, a3);
    v6 = [(UITab *)self _tabModel];
    [v6 tabContentDidChange:self];

    v5 = v7;
  }
}

@end