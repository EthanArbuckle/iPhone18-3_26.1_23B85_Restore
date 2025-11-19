@interface SUViewControllerFactory
- (id)newComposeReviewViewControllerWithCompositionURL:(id)a3;
- (id)newNetworkLockoutViewControllerWithSection:(id)a3;
- (id)newStorePageViewControllerWithSection:(id)a3;
- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4;
@end

@implementation SUViewControllerFactory

- (id)newComposeReviewViewControllerWithCompositionURL:(id)a3
{
  v4 = [SUComposeReviewViewController alloc];

  return [(SUComposeReviewViewController *)v4 initWithCompositionURL:a3];
}

- (id)newNetworkLockoutViewControllerWithSection:(id)a3
{
  v4 = [SUNetworkLockoutViewController alloc];

  return [(SUViewController *)v4 initWithSection:a3];
}

- (id)newStorePageViewControllerWithSection:(id)a3
{
  v4 = [SUStorePageViewController alloc];

  return [(SUViewController *)v4 initWithSection:a3];
}

- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4
{
  if (a4 > 4)
  {
    return 0;
  }

  else
  {
    return objc_alloc_init(*off_1E8165080[a4]);
  }
}

@end