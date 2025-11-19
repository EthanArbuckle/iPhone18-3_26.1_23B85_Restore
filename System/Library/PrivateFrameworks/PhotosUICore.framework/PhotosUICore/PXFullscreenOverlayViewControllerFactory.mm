@interface PXFullscreenOverlayViewControllerFactory
+ (id)makeViewControllerWithOverlayControllers:(id)a3;
- (PXFullscreenOverlayViewControllerFactory)init;
@end

@implementation PXFullscreenOverlayViewControllerFactory

+ (id)makeViewControllerWithOverlayControllers:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1A3DE7610();
    v3 = sub_1A524CA34();
  }

  v4 = sub_1A3DE7458(v3);

  return v4;
}

- (PXFullscreenOverlayViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory();
  return [(PXFullscreenOverlayViewControllerFactory *)&v3 init];
}

@end