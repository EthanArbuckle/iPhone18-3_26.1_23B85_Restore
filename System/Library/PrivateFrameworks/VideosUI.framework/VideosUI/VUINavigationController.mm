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
    v3 = [(VUINavigationController *)self interactivePopGestureRecognizer];
    [v3 setDelegate:self];

    v4 = [(VUINavigationController *)self interactivePopGestureRecognizer];
    [v4 setEnabled:1];
  }
}

@end