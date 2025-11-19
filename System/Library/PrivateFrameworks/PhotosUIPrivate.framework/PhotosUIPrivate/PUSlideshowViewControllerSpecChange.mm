@interface PUSlideshowViewControllerSpecChange
- (BOOL)changed;
@end

@implementation PUSlideshowViewControllerSpecChange

- (BOOL)changed
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewControllerSpecChange;
  return [(PUViewControllerSpecChange *)&v4 changed]|| [(PUSlideshowViewControllerSpecChange *)self shouldShowPlaceholderChanged]|| [(PUSlideshowViewControllerSpecChange *)self shouldShowChromeBarsChanged]|| [(PUSlideshowViewControllerSpecChange *)self shouldObserveAirplayRouteChanged]|| [(PUSlideshowViewControllerSpecChange *)self shouldShowAirplayButtonChanged];
}

@end