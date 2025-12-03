@interface _UISearchBarNavigationItem
- (void)setTitleView:(id)view;
@end

@implementation _UISearchBarNavigationItem

- (void)setTitleView:(id)view
{
  viewCopy = view;
  titleView = [(UINavigationItem *)self titleView];

  if (titleView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchBar.m" lineNumber:3300 description:@"Search bar navigation items do not allow setting titleView"];
  }

  v8.receiver = self;
  v8.super_class = _UISearchBarNavigationItem;
  [(UINavigationItem *)&v8 setTitleView:viewCopy];
}

@end