@interface UIViewController(SXHostable)
- (uint64_t)viewingLocation;
@end

@implementation UIViewController(SXHostable)

- (uint64_t)viewingLocation
{
  v1 = [a1 parentViewController];
  v2 = [v1 viewingLocation];

  return v2;
}

@end