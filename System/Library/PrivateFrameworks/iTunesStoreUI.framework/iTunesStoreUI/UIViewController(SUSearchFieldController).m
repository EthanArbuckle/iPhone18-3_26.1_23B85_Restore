@interface UIViewController(SUSearchFieldController)
- (uint64_t)iTunesStoreUI_searchFieldController;
@end

@implementation UIViewController(SUSearchFieldController)

- (uint64_t)iTunesStoreUI_searchFieldController
{
  v1 = [a1 parentViewController];

  return [v1 iTunesStoreUI_searchFieldController];
}

@end