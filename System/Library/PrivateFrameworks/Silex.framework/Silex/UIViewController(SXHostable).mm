@interface UIViewController(SXHostable)
- (uint64_t)viewingLocation;
@end

@implementation UIViewController(SXHostable)

- (uint64_t)viewingLocation
{
  parentViewController = [self parentViewController];
  viewingLocation = [parentViewController viewingLocation];

  return viewingLocation;
}

@end