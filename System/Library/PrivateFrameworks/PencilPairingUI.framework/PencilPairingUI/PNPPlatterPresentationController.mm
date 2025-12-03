@interface PNPPlatterPresentationController
- (PNPPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
@end

@implementation PNPPlatterPresentationController

- (PNPPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v6.receiver = self;
  v6.super_class = PNPPlatterPresentationController;
  v4 = [(PNPPlatterPresentationController *)&v6 initWithPresentedViewController:controller presentingViewController:viewController];
  [(PNPPlatterPresentationController *)v4 _setContainerIgnoresDirectTouchEvents:1];
  return v4;
}

@end