@interface VUINavigationController
- (void)viewDidLayoutSubviews;
@end

@implementation VUINavigationController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUINavigationController;
  [(VUINavigationController *)&v5 viewDidLayoutSubviews];
  [(VUINavigationController *)self setNavigationBarHidden:[(VUIDocumentUIConfiguration *)self->_configuration isNavigationBarHidden]];
  if ([(VUIDocumentUIConfiguration *)self->_configuration isInteractivePopGestureAllowed])
  {
    interactivePopGestureRecognizer = [(VUINavigationController *)self interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setDelegate:self];

    interactivePopGestureRecognizer2 = [(VUINavigationController *)self interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer2 setEnabled:1];
  }
}

@end