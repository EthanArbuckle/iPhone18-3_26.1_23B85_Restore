@interface UIViewController(SUStorePageAdditions)
- (uint64_t)handleStoreFailureWithError:()SUStorePageAdditions;
- (uint64_t)loadMoreWithURL:()SUStorePageAdditions;
- (uint64_t)pushStorePage:()SUStorePageAdditions withTarget:animated:;
- (uint64_t)reloadWithURLRequestProperties:()SUStorePageAdditions;
@end

@implementation UIViewController(SUStorePageAdditions)

- (uint64_t)handleStoreFailureWithError:()SUStorePageAdditions
{
  v4 = [a1 parentViewController];

  return [v4 handleStoreFailureWithError:a3];
}

- (uint64_t)loadMoreWithURL:()SUStorePageAdditions
{
  v4 = [a1 parentViewController];

  return [v4 loadMoreWithURL:a3];
}

- (uint64_t)pushStorePage:()SUStorePageAdditions withTarget:animated:
{
  v8 = [a1 parentViewController];

  return [v8 pushStorePage:a3 withTarget:a4 animated:a5];
}

- (uint64_t)reloadWithURLRequestProperties:()SUStorePageAdditions
{
  v4 = [a1 parentViewController];

  return [v4 reloadWithURLRequestProperties:a3];
}

@end