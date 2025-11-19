@interface UIInterfaceActionGroupView(SKUIAdditions)
- (uint64_t)newActionSeparatorView;
@end

@implementation UIInterfaceActionGroupView(SKUIAdditions)

- (uint64_t)newActionSeparatorView
{
  v2 = [a1 visualStyle];
  v3 = [a1 visualStyle];
  v4 = [v3 groupViewState];
  v5 = [v2 newActionSeparatorViewForGroupViewState:v4];

  return v5;
}

@end