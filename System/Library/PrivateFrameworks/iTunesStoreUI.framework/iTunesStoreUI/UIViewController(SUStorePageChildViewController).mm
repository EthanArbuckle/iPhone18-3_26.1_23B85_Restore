@interface UIViewController(SUStorePageChildViewController)
- (double)documentBounds;
- (uint64_t)storePageProtocolDidChange;
@end

@implementation UIViewController(SUStorePageChildViewController)

- (double)documentBounds
{
  if (![self isViewLoaded])
  {
    return *MEMORY[0x1E695F050];
  }

  [objc_msgSend(self "view")];
  return result;
}

- (uint64_t)storePageProtocolDidChange
{
  parentViewController = [self parentViewController];

  return [parentViewController storePageProtocolDidChange];
}

@end