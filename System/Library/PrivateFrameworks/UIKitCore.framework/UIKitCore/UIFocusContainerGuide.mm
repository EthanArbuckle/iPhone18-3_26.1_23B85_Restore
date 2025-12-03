@interface UIFocusContainerGuide
- (id)fallbackItemProvider;
- (void)setFallbackItemProvider:(id)provider;
@end

@implementation UIFocusContainerGuide

- (void)setFallbackItemProvider:(id)provider
{
  providerCopy = provider;
  _impl = [(UIFocusGuide *)self _impl];
  [_impl setFallbackItemProvider:providerCopy];
}

- (id)fallbackItemProvider
{
  _impl = [(UIFocusGuide *)self _impl];
  fallbackItemProvider = [_impl fallbackItemProvider];

  return fallbackItemProvider;
}

@end