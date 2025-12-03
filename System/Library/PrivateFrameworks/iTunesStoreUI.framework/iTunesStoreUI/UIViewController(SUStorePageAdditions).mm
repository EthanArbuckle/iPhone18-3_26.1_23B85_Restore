@interface UIViewController(SUStorePageAdditions)
- (uint64_t)handleStoreFailureWithError:()SUStorePageAdditions;
- (uint64_t)loadMoreWithURL:()SUStorePageAdditions;
- (uint64_t)pushStorePage:()SUStorePageAdditions withTarget:animated:;
- (uint64_t)reloadWithURLRequestProperties:()SUStorePageAdditions;
@end

@implementation UIViewController(SUStorePageAdditions)

- (uint64_t)handleStoreFailureWithError:()SUStorePageAdditions
{
  parentViewController = [self parentViewController];

  return [parentViewController handleStoreFailureWithError:a3];
}

- (uint64_t)loadMoreWithURL:()SUStorePageAdditions
{
  parentViewController = [self parentViewController];

  return [parentViewController loadMoreWithURL:a3];
}

- (uint64_t)pushStorePage:()SUStorePageAdditions withTarget:animated:
{
  parentViewController = [self parentViewController];

  return [parentViewController pushStorePage:a3 withTarget:a4 animated:a5];
}

- (uint64_t)reloadWithURLRequestProperties:()SUStorePageAdditions
{
  parentViewController = [self parentViewController];

  return [parentViewController reloadWithURLRequestProperties:a3];
}

@end