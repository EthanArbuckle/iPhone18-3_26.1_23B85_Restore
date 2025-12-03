@interface CALayer(UIPageCurlAdditions)
- (uint64_t)uiHasFilterWithName:()UIPageCurlAdditions;
@end

@implementation CALayer(UIPageCurlAdditions)

- (uint64_t)uiHasFilterWithName:()UIPageCurlAdditions
{
  v4 = a3;
  filters = [self filters];
  v6 = [filters valueForKey:@"name"];
  v7 = [v6 containsObject:v4];

  return v7;
}

@end