@interface UIFocusContainerGuide
- (id)fallbackItemProvider;
- (void)setFallbackItemProvider:(id)a3;
@end

@implementation UIFocusContainerGuide

- (void)setFallbackItemProvider:(id)a3
{
  v4 = a3;
  v5 = [(UIFocusGuide *)self _impl];
  [v5 setFallbackItemProvider:v4];
}

- (id)fallbackItemProvider
{
  v2 = [(UIFocusGuide *)self _impl];
  v3 = [v2 fallbackItemProvider];

  return v3;
}

@end