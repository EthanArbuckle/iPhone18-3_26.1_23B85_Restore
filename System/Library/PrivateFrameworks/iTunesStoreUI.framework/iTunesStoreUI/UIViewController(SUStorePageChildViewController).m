@interface UIViewController(SUStorePageChildViewController)
- (double)documentBounds;
- (uint64_t)storePageProtocolDidChange;
@end

@implementation UIViewController(SUStorePageChildViewController)

- (double)documentBounds
{
  if (![a1 isViewLoaded])
  {
    return *MEMORY[0x1E695F050];
  }

  [objc_msgSend(a1 "view")];
  return result;
}

- (uint64_t)storePageProtocolDidChange
{
  v1 = [a1 parentViewController];

  return [v1 storePageProtocolDidChange];
}

@end