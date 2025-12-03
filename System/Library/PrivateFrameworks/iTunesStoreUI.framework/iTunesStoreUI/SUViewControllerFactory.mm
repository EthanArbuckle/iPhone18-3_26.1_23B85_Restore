@interface SUViewControllerFactory
- (id)newComposeReviewViewControllerWithCompositionURL:(id)l;
- (id)newNetworkLockoutViewControllerWithSection:(id)section;
- (id)newStorePageViewControllerWithSection:(id)section;
- (id)newViewControllerForPage:(id)page ofType:(int64_t)type;
@end

@implementation SUViewControllerFactory

- (id)newComposeReviewViewControllerWithCompositionURL:(id)l
{
  v4 = [SUComposeReviewViewController alloc];

  return [(SUComposeReviewViewController *)v4 initWithCompositionURL:l];
}

- (id)newNetworkLockoutViewControllerWithSection:(id)section
{
  v4 = [SUNetworkLockoutViewController alloc];

  return [(SUViewController *)v4 initWithSection:section];
}

- (id)newStorePageViewControllerWithSection:(id)section
{
  v4 = [SUStorePageViewController alloc];

  return [(SUViewController *)v4 initWithSection:section];
}

- (id)newViewControllerForPage:(id)page ofType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return objc_alloc_init(*off_1E8165080[type]);
  }
}

@end