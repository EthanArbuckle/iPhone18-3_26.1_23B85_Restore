@interface PXFullscreenOverlayViewControllerFactory
+ (id)makeViewControllerWithOverlayControllers:(id)controllers;
- (PXFullscreenOverlayViewControllerFactory)init;
@end

@implementation PXFullscreenOverlayViewControllerFactory

+ (id)makeViewControllerWithOverlayControllers:(id)controllers
{
  controllersCopy = controllers;
  if (controllers)
  {
    sub_1A3DE7610();
    controllersCopy = sub_1A524CA34();
  }

  v4 = sub_1A3DE7458(controllersCopy);

  return v4;
}

- (PXFullscreenOverlayViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory();
  return [(PXFullscreenOverlayViewControllerFactory *)&v3 init];
}

@end