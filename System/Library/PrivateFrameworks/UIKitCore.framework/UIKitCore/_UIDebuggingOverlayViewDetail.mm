@interface _UIDebuggingOverlayViewDetail
- (void)_updateForInspectedViewController:(id)controller;
@end

@implementation _UIDebuggingOverlayViewDetail

- (void)_updateForInspectedViewController:(id)controller
{
  controllerCopy = controller;
  v9 = objc_alloc_init(UIDebuggingInformationInspectorDetailViewController);
  viewIfLoaded = [controllerCopy viewIfLoaded];
  [(UIDebuggingInformationInspectorDetailViewController *)v9 inspectView:viewIfLoaded];

  [(_UIDebuggingOverlayViewControllerDetail *)self setViewController:v9];
  viewIfLoaded2 = [controllerCopy viewIfLoaded];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(_UIDebuggingOverlayDetail *)self setDetail:v8];
}

@end