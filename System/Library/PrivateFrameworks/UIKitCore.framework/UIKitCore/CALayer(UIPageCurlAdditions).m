@interface CALayer(UIPageCurlAdditions)
- (uint64_t)uiHasFilterWithName:()UIPageCurlAdditions;
@end

@implementation CALayer(UIPageCurlAdditions)

- (uint64_t)uiHasFilterWithName:()UIPageCurlAdditions
{
  v4 = a3;
  v5 = [a1 filters];
  v6 = [v5 valueForKey:@"name"];
  v7 = [v6 containsObject:v4];

  return v7;
}

@end