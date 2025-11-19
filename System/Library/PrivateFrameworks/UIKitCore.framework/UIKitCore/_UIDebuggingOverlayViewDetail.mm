@interface _UIDebuggingOverlayViewDetail
- (void)_updateForInspectedViewController:(id)a3;
@end

@implementation _UIDebuggingOverlayViewDetail

- (void)_updateForInspectedViewController:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(UIDebuggingInformationInspectorDetailViewController);
  v5 = [v4 viewIfLoaded];
  [(UIDebuggingInformationInspectorDetailViewController *)v9 inspectView:v5];

  [(_UIDebuggingOverlayViewControllerDetail *)self setViewController:v9];
  v6 = [v4 viewIfLoaded];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(_UIDebuggingOverlayDetail *)self setDetail:v8];
}

@end