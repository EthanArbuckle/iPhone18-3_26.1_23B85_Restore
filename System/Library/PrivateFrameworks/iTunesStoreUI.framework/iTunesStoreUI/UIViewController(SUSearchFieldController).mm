@interface UIViewController(SUSearchFieldController)
- (uint64_t)iTunesStoreUI_searchFieldController;
@end

@implementation UIViewController(SUSearchFieldController)

- (uint64_t)iTunesStoreUI_searchFieldController
{
  parentViewController = [self parentViewController];

  return [parentViewController iTunesStoreUI_searchFieldController];
}

@end