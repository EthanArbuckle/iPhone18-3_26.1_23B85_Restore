@interface UIInterfaceActionGroupView(SKUIAdditions)
- (uint64_t)newActionSeparatorView;
@end

@implementation UIInterfaceActionGroupView(SKUIAdditions)

- (uint64_t)newActionSeparatorView
{
  visualStyle = [self visualStyle];
  visualStyle2 = [self visualStyle];
  groupViewState = [visualStyle2 groupViewState];
  v5 = [visualStyle newActionSeparatorViewForGroupViewState:groupViewState];

  return v5;
}

@end