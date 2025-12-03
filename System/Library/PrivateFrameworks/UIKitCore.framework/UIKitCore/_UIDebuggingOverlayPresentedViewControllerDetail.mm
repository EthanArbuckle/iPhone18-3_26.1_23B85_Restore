@interface _UIDebuggingOverlayPresentedViewControllerDetail
- (void)_updateForInspectedViewController:(id)controller;
@end

@implementation _UIDebuggingOverlayPresentedViewControllerDetail

- (void)_updateForInspectedViewController:(id)controller
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];

  if (presentedViewController)
  {
    v5 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
    presentedViewController2 = [controllerCopy presentedViewController];
    [(UIDebuggingInformationVCDetailViewController *)v5 inspectVC:presentedViewController2];

    [(_UIDebuggingOverlayViewControllerDetail *)self setViewController:v5];
    presentedViewController3 = [controllerCopy presentedViewController];
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