@interface _UIDebuggingOverlayPresentingViewControllerDetail
- (void)_updateForInspectedViewController:(id)controller;
@end

@implementation _UIDebuggingOverlayPresentingViewControllerDetail

- (void)_updateForInspectedViewController:(id)controller
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];

  if (presentingViewController)
  {
    v5 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
    presentingViewController2 = [controllerCopy presentingViewController];
    [(UIDebuggingInformationVCDetailViewController *)v5 inspectVC:presentingViewController2];

    [(_UIDebuggingOverlayViewControllerDetail *)self setViewController:v5];
    presentingViewController3 = [controllerCopy presentingViewController];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(_UIDebuggingOverlayDetail *)self setDetail:v9];
  }

  else
  {
    [(_UIDebuggingOverlayDetail *)self setDetail:@"None"];
  }
}

@end