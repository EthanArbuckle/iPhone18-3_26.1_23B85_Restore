@interface _UISearchBarNavigationItem
- (void)setTitleView:(id)a3;
@end

@implementation _UISearchBarNavigationItem

- (void)setTitleView:(id)a3
{
  v5 = a3;
  v6 = [(UINavigationItem *)self titleView];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:3300 description:@"Search bar navigation items do not allow setting titleView"];
  }

  v8.receiver = self;
  v8.super_class = _UISearchBarNavigationItem;
  [(UINavigationItem *)&v8 setTitleView:v5];
}

@end